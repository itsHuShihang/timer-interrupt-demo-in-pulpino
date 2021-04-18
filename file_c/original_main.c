/*
#include "sram.h"
#include "stdlib.h"
#include "gpio.h"
#include "uart.h"
#include "string_lib.h"
#include "spi.h"

unsigned char state = ADJUST;//begin to adjust
unsigned char dir = UP;
unsigned int D_avg_pre = 0xFFFFFFFF;
unsigned int err_pre = 0xFFFFFFFF;

char * hex_to_string(unsigned int hex)
{
	char numchar[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
	 'A', 'B', 'C', 'D', 'E', 'F'};
	static char str[9];

	for(int i = 0; i < 8; ++i)
		str[i] = numchar[(hex >> (4 * i)) & 0x0F];
	str[8] = '\0';
	return str;
}

void main()
{
	//configure();
	//for(int i = 0;i < 4;i ++){
	//	set_gpio_pin_direction(i,1);
	//	set_gpio_pin_value(i,1);
	//}
  	//for(int i = 4;i < 8;i ++){
	//	set_gpio_pin_direction(i,1);
	//	set_gpio_pin_value(i,0);
  	//}
	//while(1);
	
	char str[] = {'h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd', '!', '\n', '\0'};
	int addr;
	char c;
	unsigned int id[3];
	for(int i = 0; i < 8; i++)
	{
		set_gpio_pin_direction(i,1);
		set_gpio_pin_value(i, 1);
	}

	uart_set_cfg(0, 77);  //Core clock 12MHz, baud rate 9600 bps
	
	uart_send("hello world!\n", 12);

	spi_setup_master(1);
	for (int i = 0; i < 3000; i++) {
    // //wait some time to have proper power up of external flash
    // #ifdef __riscv__
    //     asm volatile ("nop");
    // #else
    //     asm volatile ("l.nop");
    // #endif
 	}

	//divide sys clock by 4 
	*(volatile int*) (SPI_REG_CLKDIV) = 0x4;

	// if (check_spi_flash()) {
	// 	uart_send("ERROR: Spansion SPI flash not found\n", 36);
	// 	while (1);
	// }

	uart_send("hello world!\n", 13);

	uart_send("Release Power down / Device ID\n", 31);

	spi_setup_dummy(24, 0);
	spi_setup_cmd_addr(0xAB, 8, 0, 0);
	spi_set_datalen(64);
	spi_start_transaction(SPI_CMD_RD, SPI_CSN0);
	spi_read_fifo(id, 64);

	uart_send(hex_to_string(id[0]), 8);
	uart_send("\r\n", 2);

	uart_send("JEDEC ID\n", 31);

	spi_setup_dummy(0, 0);
	spi_setup_cmd_addr(0x9F, 8, 0, 0);
	spi_set_datalen(64);
	spi_start_transaction(SPI_CMD_RD, SPI_CSN0);
	spi_read_fifo(id, 64);

	uart_send(hex_to_string(id[0]), 8);
	uart_send(hex_to_string(id[1]), 8);
	uart_send(hex_to_string(id[2]), 8);
	uart_send("\r\n", 2);
	
	while(1)
	{
		uart_send("hello world!\n", 13);
		for(int i = 0; i < 1000000; i++);
	}
}


void configure(void)
{
	ECP = 0xFFFFFFFF;
	IER = (1 << 29) | (1 << 22);//
	int_enable();
	  // enable timer and wait for 1000 cycles before triggering
	TPRA  = 0x0;
	TIRA  = 0x0;
	TOCRA = 0x000FFFFF;
	//TPRA  = 0x1;
}


void reset_ssram(void)
{
	SACR = 0;
	SCCR = 0;
	SECR = 0;
}

void ISR_TA_CMP(void)
{
	ICP = 1 << 29;
	SCFR = SCFR | (1 << 16);//start counter
	TPRA  = 0x0;//stop counter
}

void ISR_SRAM (void)
{
	unsigned int D_avg_cur;
	unsigned int access_count, total_time, err_cur;
	unsigned int tbl = SCFR & (0x00000FFF);//get tbl
	ICP = 1 << 22;
	access_count = SACR;
	total_time = SCCR;
	err_cur = SECR;
	D_avg_cur =  total_time / access_count;
	if(state)//adjust
	{
		if(D_avg_cur < D_avg_pre)
		{
			D_avg_pre = D_avg_cur;
			if(dir = UP)
			{
				tbl += 1;
			}
			else
			{
				tbl -= 1; 
			}
			err_pre = err_cur;
			SCFR = SCFR | (1 << 16);//start SRAM
		}
		else
		{
			if(dir = UP)
			{
				tbl -= 1;
			}
			else
			{
				tbl += 1; 
			}
			state = MONITOR;
			REG_FLL = 0x00100233;//<----------adjust clock
			TPRA  = 0x1;
			SCFR = SCFR & 0xFFFEFFFF;//stop count:set bit 16 as 0
		}
		reset_ssram();//reset ssram model,write tbl
		SCFR = (SCFR & (0xFFFFF000)) | tbl;//write tbl

	}
	else//monitor
	{
		if(abs(err_cur - err_pre) * 100 < 3 * err_cur)
		{
			TPRA  = 0x1;//start timer
		}
		else
		{
			TPRA  = 0x0;//close timer----->adjust
			if(err_cur < err_pre)
			{
				tbl -= 1;
				dir = DOWN;
			}
			else
			{
				REG_FLL = 0x00100277;//<----------adjust clock
				tbl += 1;
				dir = UP;
			}
			state = ADJUST;
			SCFR = (SCFR & (0xFFFFF000)) | tbl;//write tbl
			SCFR = SCFR | (1 << 16);//start counter
		}
		reset_ssram();//reset ssram model,write tbl
	}
}

#include "stdlib.h"
#include "gpio.h"
#include "uart.h"

void main()
{
	
	for(int i = 0; i < 8; i++)
	{
		set_gpio_pin_direction(i, 1);
		set_gpio_pin_value(i, 1);
	}

	//uart_set_cfg(0, 77);  //Core clock 12MHz, baud rate 9600 bps
	
	unsigned int j = 0;
	
	while(1)
	{
		set_gpio_pin_value((j - 1) & 0x07, 1);
		set_gpio_pin_value(j & 0x07, 0);
		for(int i = 0; i < 1000000; ++i);
		j++;
	}
	
	
}
*/