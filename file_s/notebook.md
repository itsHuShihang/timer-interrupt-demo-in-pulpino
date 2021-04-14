# Interrupt
use`void int_enable()` and `void int_disable()`to enable and disable the global interrupt

mstatus register: 第7位是PIE，第3位是IE。异常开始时，将IE的值传入PIE，当执行到`mret`指令时，将PIE的值写回IE。IE=1'b1时中断允许。

## 问题
- EER, IER, TOCRA, TPRA等寄存器等说明在哪
- 下面这几句汇编不是很懂
```c
  int mstatus;
  asm volatile ("csrr %0, mstatus": "=r" (mstatus));
  mstatus &= 0xFFFFFFF7;
  asm volatile ("csrw mstatus, %0" : /* no output */ : "r" (mstatus));
  asm("csrw 0x300, %0" : : "r" (0x0) );
```
- 