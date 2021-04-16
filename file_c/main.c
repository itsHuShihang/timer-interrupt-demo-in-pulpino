#include "stdlib.h"
#include "gpio.h"
#include "timer.h"
#include "event.h"
#include "int.h"

#define LED_TOTAL 8

int led_num = 0;

void ISR_TA_OVF(void)
{
    ICP = (1 << 28); // clear pending interrupt of the 28th bit
    printf(led_num);
    printf(get_time());
    if (led_num < LED_TOTAL)
    {
        led_num++;
    }
    else
    {
        led_num = 0;
    }
}

int main()
{
    // close all leds
    for (int i = 0; i < LED_TOTAL; i++)
    {
        set_gpio_pin_direction(i, 1);
        set_gpio_pin_value(i, 0);
    }

    int_enable(); // enable interrupt
    start_timer(); // start timer

    while (1)
    {
        set_gpio_pin_value(led_num, 1);
        sleep();
    }

    int_disable();
    stop_timer();
    return 0;
}