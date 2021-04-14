	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sw	ra,28(sp)
	sw	s0,24(sp)
	addi	s0,sp,32
	sw	zero,-20(s0)
	j	.L2
.L3:
	li	a1,1
	lw	a0,-20(s0)
	call	set_gpio_pin_direction
	li	a1,1
	lw	a0,-20(s0)
	call	set_gpio_pin_value
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a4,-20(s0)
	li	a5,7
	ble	a4,a5,.L3
	sw	zero,-24(s0)
.L6:
	lw	a5,-24(s0)
	addi	a5,a5,-1
	andi	a5,a5,7
	li	a1,1
	mv	a0,a5
	call	set_gpio_pin_value
	lw	a5,-24(s0)
	andi	a5,a5,7
	li	a1,0
	mv	a0,a5
	call	set_gpio_pin_value
	sw	zero,-28(s0)
	j	.L4
.L5:
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a4,-28(s0)
	li	a5,999424
	addi	a5,a5,575
	ble	a4,a5,.L5
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L6
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
