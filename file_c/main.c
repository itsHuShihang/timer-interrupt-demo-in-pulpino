#include "stdio.h"
#include "gpio.h"
#include "timer.h"
#include "event.h"
#include "int.h"

#define LED_TOTAL 8

unsigned int led_num_cmp = 0;

void configure(void)
{
    led_num_cmp = 1;
    // turn off all leds
    for (int i = 0; i < LED_TOTAL; i++)
    {
        set_gpio_pin_direction(i, 1);
        set_gpio_pin_value(i, 0);
    }

    // config registers about event and interrupt
    ECP = 0xFFFFFFFF;
    ICP = 0xFFFFFFFF;
    IER = 1 << 29; // enable timer A cmp interrupt
    int_enable();

    // compare value setting
    TOCRA = 0x00FFFFFF;

    // config timer
    reset_timer();
    start_timer();
}

void ISR_TA_CMP(void)
{
    ICP = 1 << 29; // clear pending interrupt

    // led blink
    led_num_cmp %= LED_TOTAL + 1;
    set_gpio_pin_value(led_num_cmp - 1, 0);
    set_gpio_pin_value(led_num_cmp, 1);
    led_num_cmp++;
}

int main()
{
    configure();

    while (1)
    {
        sleep();
    }

    int_disable();
    stop_timer();

    return 0;
}