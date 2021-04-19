#include "stdio.h"
#include "gpio.h"
#include "timer.h"
#include "event.h"
#include "int.h"

#define LED_TOTAL 5

int led_num = 0;

void configure(void)
{
    // turn off all leds
    for (int i = 0; i < LED_TOTAL; i++)
    {
        set_gpio_pin_direction(i, 1);
        set_gpio_pin_value(i, 0);
    }

    // config interrput and timer
    //reset_timer();
    //start_timer();

    // config registers about event and interrupt
    ECP = 0xFFFFFFFF;
    ICP = 0xFFFFFFFF;
    IER = (1 << 28) | (1 << 29); // enable timer A cmp and ovr
    int_enable();

    // enable timer and wait for 1000 cycles before triggering
    TPRA  = 0x0;
    TIRA  = 0x0;
    TOCRA = 0x000FFFFF;
    TPRA  = 0x1;

    // monitor
    set_gpio_pin_value(5, 1);
}

void ISR_TA_OVF(void)
{
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
    configure();

    int mi = 0;
    while (1)
    {
        set_gpio_pin_value(6, 1);
        set_gpio_pin_value(7, mi);
        if (mi == 0)
        {
            mi = 1;
        }
        else
        {
            mi = 0;
        }
        for(int j = 0; j < 1000000; ++j);
        //sleep();
    }

    int_disable();
    stop_timer();
    return 0;
} 