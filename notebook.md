## Interrupt
use`void int_enable()` and `void int_disable()`to enable and disable the global interrupt

mstatus register: 第7位是PIE，第3位是IE。异常开始时，将IE的值传入PIE，当执行到`mret`指令时，将PIE的值写回IE。IE=1'b1时中断允许。

## Flow
使用`timer.c`文件中的函数控制计时器，在计时器溢出或者达到给定值的时候进入`ISR_TA_OVF()`或者`ISR_TA_OVF()`函数，

## Question
- EER, IER, TOCRA, TPRA等寄存器的说明在哪
- 下面这几句汇编不是很懂
```c
  int mstatus;
  asm volatile ("csrr %0, mstatus": "=r" (mstatus));
  mstatus &= 0xFFFFFFF7;
  asm volatile ("csrw mstatus, %0" : /* no output */ : "r" (mstatus));
  asm("csrw 0x300, %0" : : "r" (0x0) );
```
- 中断处理程序完成以后会自动复原吗，还是要写进中断处理函数里