	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
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
	.section	.sdata,"aw"
	.align	2
	.type	led_num, @object
	.size	led_num, 4
led_num:
	.word	2
	.text
	.align	1
	.globl	configure
	.type	configure, @function
configure:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	li	a5,437272576
	addi	a5,a5,28
	li	a4,-1
	sw	a4,0(a5)
	li	a5,437272576
	li	a4,541065216
	sw	a4,0(a5)
	call	int_enable
	li	a5,437268480
	addi	a5,a5,4
	sw	zero,0(a5)
	li	a5,437268480
	sw	zero,0(a5)
	li	a5,437268480
	addi	a5,a5,8
	li	a4,1048576
	addi	a4,a4,-1
	sw	a4,0(a5)
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	configure, .-configure
	.align	1
	.globl	ISR_TA_OVF
	.type	ISR_TA_OVF, @function
ISR_TA_OVF:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(led_num)
	lw	a4,%lo(led_num)(a5)
	li	a5,4
	bgt	a4,a5,.L4
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	addi	a4,a5,1
	lui	a5,%hi(led_num)
	sw	a4,%lo(led_num)(a5)
	j	.L5
.L4:
	lui	a5,%hi(led_num)
	sw	zero,%lo(led_num)(a5)
.L5:
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	li	a1,1
	mv	a0,a5
	call	set_gpio_pin_value
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	ISR_TA_OVF, .-ISR_TA_OVF
	.align	1
	.globl	ISR_TB_OVF
	.type	ISR_TB_OVF, @function
ISR_TB_OVF:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	addi	s0,sp,16
	lui	a5,%hi(led_num)
	lw	a4,%lo(led_num)(a5)
	li	a5,4
	bgt	a4,a5,.L7
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	addi	a4,a5,1
	lui	a5,%hi(led_num)
	sw	a4,%lo(led_num)(a5)
	j	.L8
.L7:
	lui	a5,%hi(led_num)
	sw	zero,%lo(led_num)(a5)
.L8:
	lui	a5,%hi(led_num)
	lw	a5,%lo(led_num)(a5)
	li	a1,1
	mv	a0,a5
	call	set_gpio_pin_value
	nop
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	jr	ra
	.size	ISR_TB_OVF, .-ISR_TB_OVF
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	j	.L10
.L11:
	li	a1,1
	lw	a0,-20(s0)
	call	set_gpio_pin_direction
	li	a1,0
	lw	a0,-20(s0)
	call	set_gpio_pin_value
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L10:
	lw	a4,-20(s0)
	li	a5,4
	ble	a4,a5,.L11
	call	int_enable
	call	reset_timer
	call	start_timer
	li	a1,1
	li	a0,3
	call	set_gpio_pin_value
	call	configure
	li	a1,1
	li	a0,4
	call	set_gpio_pin_value
	sw	zero,-24(s0)
.L14:
	sw	zero,-24(s0)
	li	a1,1
	li	a0,6
	call	set_gpio_pin_value
	lw	a5,-24(s0)
	bne	a5,zero,.L12
	li	a5,1
	sw	a5,-24(s0)
	j	.L13
.L12:
	sw	zero,-24(s0)
.L13:
	lw	a1,-24(s0)
	li	a0,5
	call	set_gpio_pin_value
	j	.L14
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
