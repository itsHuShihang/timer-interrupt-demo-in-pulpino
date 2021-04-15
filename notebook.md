## Interrupt
use`void int_enable()` and `void int_disable()`to enable and disable the global interrupt

mstatus register: 第7位是PIE，第3位是IE。异常开始时，将IE的值传入PIE，当执行到`mret`指令时，将PIE的值写回IE。IE=1'b1时中断允许。

## Flow
使用`timer.c`文件中的函数控制计时器，在计时器溢出或者达到给定值的时候进入`ISR_TA_OVF()`或者`ISR_TA_OVF()`函数进行中断处理。