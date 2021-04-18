#include "stdio.h"
#include "gpio.h"
#include "timer.h"
#include "event.h"
#include "int.h"

#define LED_TOTAL 5

int led_num = 2;

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

void ISR_TA_OVF(void)
{
    //ICP = (1 << 29); // clear pending interrupt of the 28th bit
    if (led_num < LED_TOTAL)
    {
        led_num++;
    }
    else
    {
        led_num = 0;
    }
    set_gpio_pin_value(led_num, 1);
}

void ISR_TB_OVF(void)
{
    //ICP = (1 << 29); // clear pending interrupt of the 28th bit
    if (led_num < LED_TOTAL)
    {
        led_num++;
    }
    else
    {
        led_num = 0;
    }
    set_gpio_pin_value(led_num, 1);
}

int main()
{
    // turn off all leds
    for (int i = 0; i < LED_TOTAL; i++)
    {
        set_gpio_pin_direction(i, 1);
        set_gpio_pin_value(i, 0);
    }

    //TOCRA = 0x80;
    int_enable(); // enable interrupt
    reset_timer();
    start_timer(); // start timer

    set_gpio_pin_value(3, 1);

    configure();

    set_gpio_pin_value(4, 1);
    int mi = 0;
    while (1)
    {
        mi = 0;
        set_gpio_pin_value(6, 1);
        if (mi == 0)
        {
            mi = 1;
        }
        else
        {
            mi = 0;
        }
        set_gpio_pin_value(5, mi);
        //sleep();
    }

    int_disable();
    stop_timer();
    return 0;
} 