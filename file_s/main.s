	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	sleep, @function
sleep:
	addi	sp,sp,-16
	sw	s0,12(sp)
	addi	s0,sp,16
	li	a5,437272576
	addi	a5,a5,32
	li	a4,1
	sw	a4,0(a5)
 #APP
# 70 "./file_c/utils.h" 1
	nop;nop;wfi
# 0 "" 2
 #NO_APP
	nop
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	sleep, .-sleep
	.align	1
	.type	int_disable, @function
int_disable:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
 #APP
# 49 "./file_c/int.h" 1
	csrr a5, mstatus
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	andi	a5,a5,-9
	sw	a5,-20(s0)
	lw	a5,-20(s0)
 #APP
# 51 "./file_c/int.h" 1
	csrw mstatus, a5
# 0 "" 2
 #NO_APP
	li	a5,0
 #APP
# 52 "./file_c/int.h" 1
	csrw 0x300, a5
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	int_disable, .-int_disable
	.align	1
	.type	int_enable, @function
int_enable:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
 #APP
# 72 "./file_c/int.h" 1
	csrr a5, mstatus
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	ori	a5,a5,8
	sw	a5,-20(s0)
	lw	a5,-20(s0)
 #APP
# 74 "./file_c/int.h" 1
	csrw mstatus, a5
# 0 "" 2
 #NO_APP
	nop
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	int_enable, .-int_enable
	.globl	led_num
	.section	.sbss,"aw",@nobits
	.align	2
	.type	led_num, @object
	.size	led_num, 4
led_num:
	.zero	4
	.text
	.align	1
	.globl	ISR_TA_CMP
	.type	ISR_TA_CMP, @function
ISR_TA_CMP:
	addi	sp,sp,-16
	sw	s0,12(sp)
	addi	s0,sp,16
	li	a5,437272576
	addi	a5,a5,12
	li	a4,536870912
	sw	a4,0(a5)
	lui	a5,%hi(led_num)
	lw	a4,%lo(led_num)(a5)
	li	a5,4
	bgt	a4,a5,.L5
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	addi	a4,a5,1
	lui	a5,%hi(led_num)
	sw	a4,%lo(led_num)(a5)
	j	.L7
.L5:
	lui	a5,%hi(led_num)
	sw	zero,%lo(led_num)(a5)
.L7:
	nop
	lw	s0,12(sp)
	addi	sp,sp,16
	jr	ra
	.size	ISR_TA_CMP, .-ISR_TA_CMP
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	sw	zero,-24(s0)
	j	.L9
.L10:
	li	a1,1
	lw	a0,-24(s0)
	call	set_gpio_pin_direction
	li	a1,0
	lw	a0,-24(s0)
	call	set_gpio_pin_value
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L9:
	lw	a4,-24(s0)
	li	a5,4
	ble	a4,a5,.L10
	li	a5,437268480
	addi	a5,a5,8
	li	a4,128
	sw	a4,0(a5)
	call	int_enable
	call	reset_timer
	call	start_timer
	j	.L11
.L12:
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	li	a1,1
	mv	a0,a5
	call	set_gpio_pin_value
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	call	sleep
.L11:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L12
	call	int_disable
	call	stop_timer
	li	a5,0
	mv	a0,a5
	lw	ra,28(sp)
	lw	s0,24(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
