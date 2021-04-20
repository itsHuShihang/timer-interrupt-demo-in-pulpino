
hello:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0x104000>:
   0:	27e0006f          	j	27e <reset_handler>
   4:	00000013          	nop
   8:	00000013          	nop
   c:	00000013          	nop
  10:	00000013          	nop
  14:	00000013          	nop
  18:	00000013          	nop
  1c:	00000013          	nop
  20:	00000013          	nop
  24:	00000013          	nop
  28:	00000013          	nop
  2c:	00000013          	nop
  30:	00000013          	nop
  34:	00000013          	nop
  38:	00000013          	nop
  3c:	00000013          	nop
  40:	00000013          	nop
  44:	00000013          	nop
  48:	00000013          	nop
  4c:	00000013          	nop
  50:	00000013          	nop
  54:	00000013          	nop
  58:	2880006f          	j	2e0 <ISR_SRAM_ASM>
  5c:	2980006f          	j	2f4 <ISR_I2C_ASM>
  60:	2a80006f          	j	308 <ISR_UART_ASM>
  64:	2b80006f          	j	31c <ISR_GPIO_ASM>
  68:	2c80006f          	j	330 <ISR_SPIM0_ASM>
  6c:	2d80006f          	j	344 <ISR_SPIM1_ASM>
  70:	2fc0006f          	j	36c <ISR_TA_OVF_ASM>
  74:	2e40006f          	j	358 <ISR_TA_CMP_ASM>
  78:	31c0006f          	j	394 <ISR_TB_OVF_ASM>
  7c:	3040006f          	j	380 <ISR_TB_CMP_ASM>
  80:	1fe0006f          	j	27e <reset_handler>
  84:	3240006f          	j	3a8 <illegal_insn_handler>
  88:	3340006f          	j	3bc <ecall_insn_handler>

Disassembly of section .text:

0000008c <reset_timer>:
      8c:	1141                	addi	sp,sp,-16
      8e:	c622                	sw	s0,12(sp)
      90:	0800                	addi	s0,sp,16
      92:	1a1037b7          	lui	a5,0x1a103
      96:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19fff000>
      9a:	0001                	nop
      9c:	4432                	lw	s0,12(sp)
      9e:	0141                	addi	sp,sp,16
      a0:	8082                	ret

000000a2 <start_timer>:
      a2:	1141                	addi	sp,sp,-16
      a4:	c622                	sw	s0,12(sp)
      a6:	0800                	addi	s0,sp,16
      a8:	1a1037b7          	lui	a5,0x1a103
      ac:	0791                	addi	a5,a5,4
      ae:	4705                	li	a4,1
      b0:	c398                	sw	a4,0(a5)
      b2:	0001                	nop
      b4:	4432                	lw	s0,12(sp)
      b6:	0141                	addi	sp,sp,16
      b8:	8082                	ret

000000ba <stop_timer>:
      ba:	1141                	addi	sp,sp,-16
      bc:	c622                	sw	s0,12(sp)
      be:	0800                	addi	s0,sp,16
      c0:	1a1037b7          	lui	a5,0x1a103
      c4:	0791                	addi	a5,a5,4
      c6:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19fff000>
      ca:	0001                	nop
      cc:	4432                	lw	s0,12(sp)
      ce:	0141                	addi	sp,sp,16
      d0:	8082                	ret

000000d2 <get_time>:
      d2:	1141                	addi	sp,sp,-16
      d4:	c622                	sw	s0,12(sp)
      d6:	0800                	addi	s0,sp,16
      d8:	1a1037b7          	lui	a5,0x1a103
      dc:	439c                	lw	a5,0(a5)
      de:	853e                	mv	a0,a5
      e0:	4432                	lw	s0,12(sp)
      e2:	0141                	addi	sp,sp,16
      e4:	8082                	ret

000000e6 <exit>:
      e6:	1101                	addi	sp,sp,-32
      e8:	ce06                	sw	ra,28(sp)
      ea:	cc22                	sw	s0,24(sp)
      ec:	1000                	addi	s0,sp,32
      ee:	fea42623          	sw	a0,-20(s0)
      f2:	fec42503          	lw	a0,-20(s0)
      f6:	2011                	jal	fa <eoc>
      f8:	a001                	j	f8 <exit+0x12>

000000fa <eoc>:
      fa:	1101                	addi	sp,sp,-32
      fc:	ce22                	sw	s0,28(sp)
      fe:	1000                	addi	s0,sp,32
     100:	fea42623          	sw	a0,-20(s0)
     104:	fec42783          	lw	a5,-20(s0)
     108:	c799                	beqz	a5,116 <eoc+0x1c>
     10a:	1a1077b7          	lui	a5,0x1a107
     10e:	07d1                	addi	a5,a5,20
     110:	4705                	li	a4,1
     112:	c398                	sw	a4,0(a5)
     114:	a031                	j	120 <eoc+0x26>
     116:	1a1077b7          	lui	a5,0x1a107
     11a:	07d1                	addi	a5,a5,20
     11c:	0007a023          	sw	zero,0(a5) # 1a107000 <_stack_start+0x1a003000>
     120:	1a1077b7          	lui	a5,0x1a107
     124:	0791                	addi	a5,a5,4
     126:	4398                	lw	a4,0(a5)
     128:	1a1077b7          	lui	a5,0x1a107
     12c:	0791                	addi	a5,a5,4
     12e:	00476713          	ori	a4,a4,4
     132:	c398                	sw	a4,0(a5)
     134:	0001                	nop
     136:	4472                	lw	s0,28(sp)
     138:	6105                	addi	sp,sp,32
     13a:	8082                	ret

0000013c <sleep_busy>:
     13c:	7179                	addi	sp,sp,-48
     13e:	d622                	sw	s0,44(sp)
     140:	1800                	addi	s0,sp,48
     142:	fca42e23          	sw	a0,-36(s0)
     146:	fe042623          	sw	zero,-20(s0)
     14a:	a039                	j	158 <sleep_busy+0x1c>
     14c:	0001                	nop
     14e:	fec42783          	lw	a5,-20(s0)
     152:	0785                	addi	a5,a5,1
     154:	fef42623          	sw	a5,-20(s0)
     158:	fdc42783          	lw	a5,-36(s0)
     15c:	fec42703          	lw	a4,-20(s0)
     160:	fef746e3          	blt	a4,a5,14c <sleep_busy+0x10>
     164:	0001                	nop
     166:	0001                	nop
     168:	5432                	lw	s0,44(sp)
     16a:	6145                	addi	sp,sp,48
     16c:	8082                	ret

0000016e <cpu_perf_set>:
     16e:	1101                	addi	sp,sp,-32
     170:	ce06                	sw	ra,28(sp)
     172:	cc22                	sw	s0,24(sp)
     174:	1000                	addi	s0,sp,32
     176:	fea42623          	sw	a0,-20(s0)
     17a:	feb42423          	sw	a1,-24(s0)
     17e:	6785                	lui	a5,0x1
     180:	61478513          	addi	a0,a5,1556 # 1614 <__DTOR_END__>
     184:	22f000ef          	jal	ra,bb2 <puts>
     188:	0001                	nop
     18a:	40f2                	lw	ra,28(sp)
     18c:	4462                	lw	s0,24(sp)
     18e:	6105                	addi	sp,sp,32
     190:	8082                	ret

00000192 <cpu_perf_get>:
     192:	7179                	addi	sp,sp,-48
     194:	d606                	sw	ra,44(sp)
     196:	d422                	sw	s0,40(sp)
     198:	1800                	addi	s0,sp,48
     19a:	fca42e23          	sw	a0,-36(s0)
     19e:	fe042623          	sw	zero,-20(s0)
     1a2:	fdc42703          	lw	a4,-36(s0)
     1a6:	47bd                	li	a5,15
     1a8:	0ae7ec63          	bltu	a5,a4,260 <cpu_perf_get+0xce>
     1ac:	fdc42783          	lw	a5,-36(s0)
     1b0:	00279713          	slli	a4,a5,0x2
     1b4:	6785                	lui	a5,0x1
     1b6:	65478793          	addi	a5,a5,1620 # 1654 <__DTOR_END__+0x40>
     1ba:	97ba                	add	a5,a5,a4
     1bc:	439c                	lw	a5,0(a5)
     1be:	8782                	jr	a5
     1c0:	780027f3          	csrr	a5,0x780
     1c4:	fef42623          	sw	a5,-20(s0)
     1c8:	a065                	j	270 <cpu_perf_get+0xde>
     1ca:	781027f3          	csrr	a5,0x781
     1ce:	fef42623          	sw	a5,-20(s0)
     1d2:	a879                	j	270 <cpu_perf_get+0xde>
     1d4:	782027f3          	csrr	a5,0x782
     1d8:	fef42623          	sw	a5,-20(s0)
     1dc:	a851                	j	270 <cpu_perf_get+0xde>
     1de:	783027f3          	csrr	a5,0x783
     1e2:	fef42623          	sw	a5,-20(s0)
     1e6:	a069                	j	270 <cpu_perf_get+0xde>
     1e8:	784027f3          	csrr	a5,0x784
     1ec:	fef42623          	sw	a5,-20(s0)
     1f0:	a041                	j	270 <cpu_perf_get+0xde>
     1f2:	785027f3          	csrr	a5,0x785
     1f6:	fef42623          	sw	a5,-20(s0)
     1fa:	a89d                	j	270 <cpu_perf_get+0xde>
     1fc:	786027f3          	csrr	a5,0x786
     200:	fef42623          	sw	a5,-20(s0)
     204:	a0b5                	j	270 <cpu_perf_get+0xde>
     206:	787027f3          	csrr	a5,0x787
     20a:	fef42623          	sw	a5,-20(s0)
     20e:	a08d                	j	270 <cpu_perf_get+0xde>
     210:	788027f3          	csrr	a5,0x788
     214:	fef42623          	sw	a5,-20(s0)
     218:	a8a1                	j	270 <cpu_perf_get+0xde>
     21a:	789027f3          	csrr	a5,0x789
     21e:	fef42623          	sw	a5,-20(s0)
     222:	a0b9                	j	270 <cpu_perf_get+0xde>
     224:	78a027f3          	csrr	a5,0x78a
     228:	fef42623          	sw	a5,-20(s0)
     22c:	a091                	j	270 <cpu_perf_get+0xde>
     22e:	78b027f3          	csrr	a5,0x78b
     232:	fef42623          	sw	a5,-20(s0)
     236:	a82d                	j	270 <cpu_perf_get+0xde>
     238:	78c027f3          	csrr	a5,0x78c
     23c:	fef42623          	sw	a5,-20(s0)
     240:	a805                	j	270 <cpu_perf_get+0xde>
     242:	78d027f3          	csrr	a5,0x78d
     246:	fef42623          	sw	a5,-20(s0)
     24a:	a01d                	j	270 <cpu_perf_get+0xde>
     24c:	78e027f3          	csrr	a5,0x78e
     250:	fef42623          	sw	a5,-20(s0)
     254:	a831                	j	270 <cpu_perf_get+0xde>
     256:	78f027f3          	csrr	a5,0x78f
     25a:	fef42623          	sw	a5,-20(s0)
     25e:	a809                	j	270 <cpu_perf_get+0xde>
     260:	fdc42583          	lw	a1,-36(s0)
     264:	6785                	lui	a5,0x1
     266:	63878513          	addi	a0,a5,1592 # 1638 <__DTOR_END__+0x24>
     26a:	0f9000ef          	jal	ra,b62 <printf>
     26e:	0001                	nop
     270:	fec42783          	lw	a5,-20(s0)
     274:	853e                	mv	a0,a5
     276:	50b2                	lw	ra,44(sp)
     278:	5422                	lw	s0,40(sp)
     27a:	6145                	addi	sp,sp,48
     27c:	8082                	ret

0000027e <reset_handler>:
     27e:	30501073          	csrw	mtvec,zero
     282:	00000093          	li	ra,0
     286:	8106                	mv	sp,ra
     288:	8186                	mv	gp,ra
     28a:	8206                	mv	tp,ra
     28c:	8286                	mv	t0,ra
     28e:	8306                	mv	t1,ra
     290:	8386                	mv	t2,ra
     292:	8406                	mv	s0,ra
     294:	8486                	mv	s1,ra
     296:	8506                	mv	a0,ra
     298:	8586                	mv	a1,ra
     29a:	8606                	mv	a2,ra
     29c:	8686                	mv	a3,ra
     29e:	8706                	mv	a4,ra
     2a0:	8786                	mv	a5,ra
     2a2:	00104117          	auipc	sp,0x104
     2a6:	d5e10113          	addi	sp,sp,-674 # 104000 <_stack_start>

000002aa <_start>:
     2aa:	00001717          	auipc	a4,0x1
     2ae:	40270713          	addi	a4,a4,1026 # 16ac <led_num_cmp>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	3fe78793          	addi	a5,a5,1022 # 16b0 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	124010ef          	jal	ra,13f0 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	25a000ef          	jal	ra,52e <main>
     2d8:	842a                	mv	s0,a0
     2da:	26e010ef          	jal	ra,1548 <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0b00106f          	j	13a0 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0a40106f          	j	13a8 <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0980106f          	j	13b0 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	08c0106f          	j	13b8 <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0800106f          	j	13c0 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	0740106f          	j	13c8 <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	1680006f          	j	4d0 <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	0540106f          	j	13d0 <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	0580106f          	j	13e8 <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	03c0106f          	j	13e0 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	7d90006f          	j	1390 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	7cd0006f          	j	1398 <ecall_insn_handler_c>

000003d0 <store_regs>:
     3d0:	c00e                	sw	gp,0(sp)
     3d2:	c212                	sw	tp,4(sp)
     3d4:	c416                	sw	t0,8(sp)
     3d6:	c61a                	sw	t1,12(sp)
     3d8:	c81e                	sw	t2,16(sp)
     3da:	ca2a                	sw	a0,20(sp)
     3dc:	cc2e                	sw	a1,24(sp)
     3de:	ce32                	sw	a2,28(sp)
     3e0:	d036                	sw	a3,32(sp)
     3e2:	d23a                	sw	a4,36(sp)
     3e4:	d43e                	sw	a5,40(sp)
     3e6:	00008067          	ret

000003ea <end_except>:
     3ea:	4182                	lw	gp,0(sp)
     3ec:	4212                	lw	tp,4(sp)
     3ee:	42a2                	lw	t0,8(sp)
     3f0:	4332                	lw	t1,12(sp)
     3f2:	43c2                	lw	t2,16(sp)
     3f4:	4552                	lw	a0,20(sp)
     3f6:	45e2                	lw	a1,24(sp)
     3f8:	4672                	lw	a2,28(sp)
     3fa:	5682                	lw	a3,32(sp)
     3fc:	5712                	lw	a4,36(sp)
     3fe:	57a2                	lw	a5,40(sp)
     400:	40f6                	lw	ra,92(sp)
     402:	6125                	addi	sp,sp,96
     404:	30200073          	mret

00000408 <_fini>:
     408:	8082                	ret

0000040a <sleep>:
     40a:	1141                	addi	sp,sp,-16
     40c:	c622                	sw	s0,12(sp)
     40e:	0800                	addi	s0,sp,16
     410:	1a1047b7          	lui	a5,0x1a104
     414:	02078793          	addi	a5,a5,32 # 1a104020 <_stack_start+0x1a000020>
     418:	4705                	li	a4,1
     41a:	c398                	sw	a4,0(a5)
     41c:	0001                	nop
     41e:	0001                	nop
     420:	10500073          	wfi
     424:	0001                	nop
     426:	4432                	lw	s0,12(sp)
     428:	0141                	addi	sp,sp,16
     42a:	8082                	ret

0000042c <int_enable>:
     42c:	1101                	addi	sp,sp,-32
     42e:	ce22                	sw	s0,28(sp)
     430:	1000                	addi	s0,sp,32
     432:	300027f3          	csrr	a5,mstatus
     436:	fef42623          	sw	a5,-20(s0)
     43a:	fec42783          	lw	a5,-20(s0)
     43e:	0087e793          	ori	a5,a5,8
     442:	fef42623          	sw	a5,-20(s0)
     446:	fec42783          	lw	a5,-20(s0)
     44a:	30079073          	csrw	mstatus,a5
     44e:	0001                	nop
     450:	4472                	lw	s0,28(sp)
     452:	6105                	addi	sp,sp,32
     454:	8082                	ret

00000456 <configure>:
     456:	1101                	addi	sp,sp,-32
     458:	ce06                	sw	ra,28(sp)
     45a:	cc22                	sw	s0,24(sp)
     45c:	1000                	addi	s0,sp,32
     45e:	6785                	lui	a5,0x1
     460:	4705                	li	a4,1
     462:	6ae7a623          	sw	a4,1708(a5) # 16ac <led_num_cmp>
     466:	fe042623          	sw	zero,-20(s0)
     46a:	a005                	j	48a <configure+0x34>
     46c:	4585                	li	a1,1
     46e:	fec42503          	lw	a0,-20(s0)
     472:	1ed000ef          	jal	ra,e5e <set_gpio_pin_direction>
     476:	4581                	li	a1,0
     478:	fec42503          	lw	a0,-20(s0)
     47c:	275000ef          	jal	ra,ef0 <set_gpio_pin_value>
     480:	fec42783          	lw	a5,-20(s0)
     484:	0785                	addi	a5,a5,1
     486:	fef42623          	sw	a5,-20(s0)
     48a:	fec42703          	lw	a4,-20(s0)
     48e:	479d                	li	a5,7
     490:	fce7dee3          	bge	a5,a4,46c <configure+0x16>
     494:	1a1047b7          	lui	a5,0x1a104
     498:	07f1                	addi	a5,a5,28
     49a:	577d                	li	a4,-1
     49c:	c398                	sw	a4,0(a5)
     49e:	1a1047b7          	lui	a5,0x1a104
     4a2:	07b1                	addi	a5,a5,12
     4a4:	577d                	li	a4,-1
     4a6:	c398                	sw	a4,0(a5)
     4a8:	1a1047b7          	lui	a5,0x1a104
     4ac:	20000737          	lui	a4,0x20000
     4b0:	c398                	sw	a4,0(a5)
     4b2:	3fad                	jal	42c <int_enable>
     4b4:	1a1037b7          	lui	a5,0x1a103
     4b8:	07a1                	addi	a5,a5,8
     4ba:	01000737          	lui	a4,0x1000
     4be:	177d                	addi	a4,a4,-1
     4c0:	c398                	sw	a4,0(a5)
     4c2:	36e9                	jal	8c <reset_timer>
     4c4:	3ef9                	jal	a2 <start_timer>
     4c6:	0001                	nop
     4c8:	40f2                	lw	ra,28(sp)
     4ca:	4462                	lw	s0,24(sp)
     4cc:	6105                	addi	sp,sp,32
     4ce:	8082                	ret

000004d0 <ISR_TA_CMP>:
     4d0:	1141                	addi	sp,sp,-16
     4d2:	c606                	sw	ra,12(sp)
     4d4:	c422                	sw	s0,8(sp)
     4d6:	0800                	addi	s0,sp,16
     4d8:	1a1047b7          	lui	a5,0x1a104
     4dc:	07b1                	addi	a5,a5,12
     4de:	20000737          	lui	a4,0x20000
     4e2:	c398                	sw	a4,0(a5)
     4e4:	6785                	lui	a5,0x1
     4e6:	6ac7a703          	lw	a4,1708(a5) # 16ac <led_num_cmp>
     4ea:	47a5                	li	a5,9
     4ec:	02f77733          	remu	a4,a4,a5
     4f0:	6785                	lui	a5,0x1
     4f2:	6ae7a623          	sw	a4,1708(a5) # 16ac <led_num_cmp>
     4f6:	6785                	lui	a5,0x1
     4f8:	6ac7a783          	lw	a5,1708(a5) # 16ac <led_num_cmp>
     4fc:	17fd                	addi	a5,a5,-1
     4fe:	4581                	li	a1,0
     500:	853e                	mv	a0,a5
     502:	1ef000ef          	jal	ra,ef0 <set_gpio_pin_value>
     506:	6785                	lui	a5,0x1
     508:	6ac7a783          	lw	a5,1708(a5) # 16ac <led_num_cmp>
     50c:	4585                	li	a1,1
     50e:	853e                	mv	a0,a5
     510:	1e1000ef          	jal	ra,ef0 <set_gpio_pin_value>
     514:	6785                	lui	a5,0x1
     516:	6ac7a783          	lw	a5,1708(a5) # 16ac <led_num_cmp>
     51a:	00178713          	addi	a4,a5,1
     51e:	6785                	lui	a5,0x1
     520:	6ae7a623          	sw	a4,1708(a5) # 16ac <led_num_cmp>
     524:	0001                	nop
     526:	40b2                	lw	ra,12(sp)
     528:	4422                	lw	s0,8(sp)
     52a:	0141                	addi	sp,sp,16
     52c:	8082                	ret

0000052e <main>:
     52e:	1141                	addi	sp,sp,-16
     530:	c606                	sw	ra,12(sp)
     532:	c422                	sw	s0,8(sp)
     534:	0800                	addi	s0,sp,16
     536:	3705                	jal	456 <configure>
     538:	3dc9                	jal	40a <sleep>
     53a:	bffd                	j	538 <main+0xa>

0000053c <divu10>:
     53c:	7179                	addi	sp,sp,-48
     53e:	d622                	sw	s0,44(sp)
     540:	1800                	addi	s0,sp,48
     542:	fca42e23          	sw	a0,-36(s0)
     546:	fdc42783          	lw	a5,-36(s0)
     54a:	0017d713          	srli	a4,a5,0x1
     54e:	fdc42783          	lw	a5,-36(s0)
     552:	8389                	srli	a5,a5,0x2
     554:	97ba                	add	a5,a5,a4
     556:	fef42623          	sw	a5,-20(s0)
     55a:	fec42783          	lw	a5,-20(s0)
     55e:	8391                	srli	a5,a5,0x4
     560:	fec42703          	lw	a4,-20(s0)
     564:	97ba                	add	a5,a5,a4
     566:	fef42623          	sw	a5,-20(s0)
     56a:	fec42783          	lw	a5,-20(s0)
     56e:	83a1                	srli	a5,a5,0x8
     570:	fec42703          	lw	a4,-20(s0)
     574:	97ba                	add	a5,a5,a4
     576:	fef42623          	sw	a5,-20(s0)
     57a:	fec42783          	lw	a5,-20(s0)
     57e:	83c1                	srli	a5,a5,0x10
     580:	fec42703          	lw	a4,-20(s0)
     584:	97ba                	add	a5,a5,a4
     586:	fef42623          	sw	a5,-20(s0)
     58a:	fec42783          	lw	a5,-20(s0)
     58e:	838d                	srli	a5,a5,0x3
     590:	fef42623          	sw	a5,-20(s0)
     594:	fec42703          	lw	a4,-20(s0)
     598:	87ba                	mv	a5,a4
     59a:	078a                	slli	a5,a5,0x2
     59c:	97ba                	add	a5,a5,a4
     59e:	0786                	slli	a5,a5,0x1
     5a0:	873e                	mv	a4,a5
     5a2:	fdc42783          	lw	a5,-36(s0)
     5a6:	8f99                	sub	a5,a5,a4
     5a8:	fef42423          	sw	a5,-24(s0)
     5ac:	fe842783          	lw	a5,-24(s0)
     5b0:	0799                	addi	a5,a5,6
     5b2:	0047d713          	srli	a4,a5,0x4
     5b6:	fec42783          	lw	a5,-20(s0)
     5ba:	97ba                	add	a5,a5,a4
     5bc:	853e                	mv	a0,a5
     5be:	5432                	lw	s0,44(sp)
     5c0:	6145                	addi	sp,sp,48
     5c2:	8082                	ret

000005c4 <remu10>:
     5c4:	1101                	addi	sp,sp,-32
     5c6:	ce22                	sw	s0,28(sp)
     5c8:	1000                	addi	s0,sp,32
     5ca:	fea42623          	sw	a0,-20(s0)
     5ce:	fec42703          	lw	a4,-20(s0)
     5d2:	1999a7b7          	lui	a5,0x1999a
     5d6:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     5da:	02f70733          	mul	a4,a4,a5
     5de:	fec42783          	lw	a5,-20(s0)
     5e2:	8385                	srli	a5,a5,0x1
     5e4:	973e                	add	a4,a4,a5
     5e6:	fec42783          	lw	a5,-20(s0)
     5ea:	838d                	srli	a5,a5,0x3
     5ec:	97ba                	add	a5,a5,a4
     5ee:	83f1                	srli	a5,a5,0x1c
     5f0:	fef42623          	sw	a5,-20(s0)
     5f4:	6785                	lui	a5,0x1
     5f6:	69c78713          	addi	a4,a5,1692 # 169c <remu10_table>
     5fa:	fec42783          	lw	a5,-20(s0)
     5fe:	97ba                	add	a5,a5,a4
     600:	0007c783          	lbu	a5,0(a5)
     604:	853e                	mv	a0,a5
     606:	4472                	lw	s0,28(sp)
     608:	6105                	addi	sp,sp,32
     60a:	8082                	ret

0000060c <putchar>:
     60c:	1101                	addi	sp,sp,-32
     60e:	ce06                	sw	ra,28(sp)
     610:	cc22                	sw	s0,24(sp)
     612:	1000                	addi	s0,sp,32
     614:	fea42623          	sw	a0,-20(s0)
     618:	fec42783          	lw	a5,-20(s0)
     61c:	0ff7f793          	andi	a5,a5,255
     620:	853e                	mv	a0,a5
     622:	6f9000ef          	jal	ra,151a <uart_sendchar>
     626:	fec42783          	lw	a5,-20(s0)
     62a:	853e                	mv	a0,a5
     62c:	40f2                	lw	ra,28(sp)
     62e:	4462                	lw	s0,24(sp)
     630:	6105                	addi	sp,sp,32
     632:	8082                	ret

00000634 <qprintchar>:
     634:	1101                	addi	sp,sp,-32
     636:	ce06                	sw	ra,28(sp)
     638:	cc22                	sw	s0,24(sp)
     63a:	1000                	addi	s0,sp,32
     63c:	fea42623          	sw	a0,-20(s0)
     640:	feb42423          	sw	a1,-24(s0)
     644:	fec42783          	lw	a5,-20(s0)
     648:	c39d                	beqz	a5,66e <qprintchar+0x3a>
     64a:	fec42783          	lw	a5,-20(s0)
     64e:	439c                	lw	a5,0(a5)
     650:	fe842703          	lw	a4,-24(s0)
     654:	0ff77713          	andi	a4,a4,255
     658:	00e78023          	sb	a4,0(a5)
     65c:	fec42783          	lw	a5,-20(s0)
     660:	439c                	lw	a5,0(a5)
     662:	00178713          	addi	a4,a5,1
     666:	fec42783          	lw	a5,-20(s0)
     66a:	c398                	sw	a4,0(a5)
     66c:	a039                	j	67a <qprintchar+0x46>
     66e:	fe842783          	lw	a5,-24(s0)
     672:	0ff7f793          	andi	a5,a5,255
     676:	853e                	mv	a0,a5
     678:	3f51                	jal	60c <putchar>
     67a:	0001                	nop
     67c:	40f2                	lw	ra,28(sp)
     67e:	4462                	lw	s0,24(sp)
     680:	6105                	addi	sp,sp,32
     682:	8082                	ret

00000684 <qprints>:
     684:	7179                	addi	sp,sp,-48
     686:	d606                	sw	ra,44(sp)
     688:	d422                	sw	s0,40(sp)
     68a:	d226                	sw	s1,36(sp)
     68c:	d04a                	sw	s2,32(sp)
     68e:	ce4e                	sw	s3,28(sp)
     690:	cc52                	sw	s4,24(sp)
     692:	1800                	addi	s0,sp,48
     694:	fca42e23          	sw	a0,-36(s0)
     698:	fcb42c23          	sw	a1,-40(s0)
     69c:	fcc42a23          	sw	a2,-44(s0)
     6a0:	fcd42823          	sw	a3,-48(s0)
     6a4:	4481                	li	s1,0
     6a6:	02000a13          	li	s4,32
     6aa:	fd442783          	lw	a5,-44(s0)
     6ae:	02f05e63          	blez	a5,6ea <qprints+0x66>
     6b2:	4901                	li	s2,0
     6b4:	fd842983          	lw	s3,-40(s0)
     6b8:	a019                	j	6be <qprints+0x3a>
     6ba:	0905                	addi	s2,s2,1
     6bc:	0985                	addi	s3,s3,1
     6be:	0009c783          	lbu	a5,0(s3)
     6c2:	ffe5                	bnez	a5,6ba <qprints+0x36>
     6c4:	fd442783          	lw	a5,-44(s0)
     6c8:	00f94563          	blt	s2,a5,6d2 <qprints+0x4e>
     6cc:	fc042a23          	sw	zero,-44(s0)
     6d0:	a039                	j	6de <qprints+0x5a>
     6d2:	fd442783          	lw	a5,-44(s0)
     6d6:	412787b3          	sub	a5,a5,s2
     6da:	fcf42a23          	sw	a5,-44(s0)
     6de:	fd042783          	lw	a5,-48(s0)
     6e2:	8b89                	andi	a5,a5,2
     6e4:	c399                	beqz	a5,6ea <qprints+0x66>
     6e6:	03000a13          	li	s4,48
     6ea:	fd042783          	lw	a5,-48(s0)
     6ee:	8b85                	andi	a5,a5,1
     6f0:	ef9d                	bnez	a5,72e <qprints+0xaa>
     6f2:	a819                	j	708 <qprints+0x84>
     6f4:	85d2                	mv	a1,s4
     6f6:	fdc42503          	lw	a0,-36(s0)
     6fa:	3f2d                	jal	634 <qprintchar>
     6fc:	0485                	addi	s1,s1,1
     6fe:	fd442783          	lw	a5,-44(s0)
     702:	17fd                	addi	a5,a5,-1
     704:	fcf42a23          	sw	a5,-44(s0)
     708:	fd442783          	lw	a5,-44(s0)
     70c:	fef044e3          	bgtz	a5,6f4 <qprints+0x70>
     710:	a839                	j	72e <qprints+0xaa>
     712:	fd842783          	lw	a5,-40(s0)
     716:	0007c783          	lbu	a5,0(a5)
     71a:	85be                	mv	a1,a5
     71c:	fdc42503          	lw	a0,-36(s0)
     720:	3f11                	jal	634 <qprintchar>
     722:	0485                	addi	s1,s1,1
     724:	fd842783          	lw	a5,-40(s0)
     728:	0785                	addi	a5,a5,1
     72a:	fcf42c23          	sw	a5,-40(s0)
     72e:	fd842783          	lw	a5,-40(s0)
     732:	0007c783          	lbu	a5,0(a5)
     736:	fff1                	bnez	a5,712 <qprints+0x8e>
     738:	a819                	j	74e <qprints+0xca>
     73a:	85d2                	mv	a1,s4
     73c:	fdc42503          	lw	a0,-36(s0)
     740:	3dd5                	jal	634 <qprintchar>
     742:	0485                	addi	s1,s1,1
     744:	fd442783          	lw	a5,-44(s0)
     748:	17fd                	addi	a5,a5,-1
     74a:	fcf42a23          	sw	a5,-44(s0)
     74e:	fd442783          	lw	a5,-44(s0)
     752:	fef044e3          	bgtz	a5,73a <qprints+0xb6>
     756:	87a6                	mv	a5,s1
     758:	853e                	mv	a0,a5
     75a:	50b2                	lw	ra,44(sp)
     75c:	5422                	lw	s0,40(sp)
     75e:	5492                	lw	s1,36(sp)
     760:	5902                	lw	s2,32(sp)
     762:	49f2                	lw	s3,28(sp)
     764:	4a62                	lw	s4,24(sp)
     766:	6145                	addi	sp,sp,48
     768:	8082                	ret

0000076a <qprinti>:
     76a:	7159                	addi	sp,sp,-112
     76c:	d686                	sw	ra,108(sp)
     76e:	d4a2                	sw	s0,104(sp)
     770:	d2a6                	sw	s1,100(sp)
     772:	d0ca                	sw	s2,96(sp)
     774:	cece                	sw	s3,92(sp)
     776:	1880                	addi	s0,sp,112
     778:	faa42623          	sw	a0,-84(s0)
     77c:	fab42423          	sw	a1,-88(s0)
     780:	fac42223          	sw	a2,-92(s0)
     784:	fad42023          	sw	a3,-96(s0)
     788:	f8e42e23          	sw	a4,-100(s0)
     78c:	f8f42c23          	sw	a5,-104(s0)
     790:	87c2                	mv	a5,a6
     792:	f8f40ba3          	sb	a5,-105(s0)
     796:	4981                	li	s3,0
     798:	4901                	li	s2,0
     79a:	fa842783          	lw	a5,-88(s0)
     79e:	fcf42e23          	sw	a5,-36(s0)
     7a2:	fa842783          	lw	a5,-88(s0)
     7a6:	e39d                	bnez	a5,7cc <qprinti+0x62>
     7a8:	03000793          	li	a5,48
     7ac:	faf40c23          	sb	a5,-72(s0)
     7b0:	fa040ca3          	sb	zero,-71(s0)
     7b4:	fb840793          	addi	a5,s0,-72
     7b8:	f9842683          	lw	a3,-104(s0)
     7bc:	f9c42603          	lw	a2,-100(s0)
     7c0:	85be                	mv	a1,a5
     7c2:	fac42503          	lw	a0,-84(s0)
     7c6:	3d7d                	jal	684 <qprints>
     7c8:	87aa                	mv	a5,a0
     7ca:	a8fd                	j	8c8 <qprinti+0x15e>
     7cc:	fa042783          	lw	a5,-96(s0)
     7d0:	c38d                	beqz	a5,7f2 <qprinti+0x88>
     7d2:	fa442703          	lw	a4,-92(s0)
     7d6:	47a9                	li	a5,10
     7d8:	00f71d63          	bne	a4,a5,7f2 <qprinti+0x88>
     7dc:	fa842783          	lw	a5,-88(s0)
     7e0:	0007d963          	bgez	a5,7f2 <qprinti+0x88>
     7e4:	4985                	li	s3,1
     7e6:	fa842783          	lw	a5,-88(s0)
     7ea:	40f007b3          	neg	a5,a5
     7ee:	fcf42e23          	sw	a5,-36(s0)
     7f2:	fb840493          	addi	s1,s0,-72
     7f6:	04fd                	addi	s1,s1,31
     7f8:	00048023          	sb	zero,0(s1)
     7fc:	fa442703          	lw	a4,-92(s0)
     800:	47c1                	li	a5,16
     802:	06f71c63          	bne	a4,a5,87a <qprinti+0x110>
     806:	a0a1                	j	84e <qprinti+0xe4>
     808:	fdc42783          	lw	a5,-36(s0)
     80c:	8bbd                	andi	a5,a5,15
     80e:	fcf42c23          	sw	a5,-40(s0)
     812:	fd842703          	lw	a4,-40(s0)
     816:	47a5                	li	a5,9
     818:	00e7db63          	bge	a5,a4,82e <qprinti+0xc4>
     81c:	f9744783          	lbu	a5,-105(s0)
     820:	fc678793          	addi	a5,a5,-58
     824:	fd842703          	lw	a4,-40(s0)
     828:	97ba                	add	a5,a5,a4
     82a:	fcf42c23          	sw	a5,-40(s0)
     82e:	fd842783          	lw	a5,-40(s0)
     832:	0ff7f793          	andi	a5,a5,255
     836:	14fd                	addi	s1,s1,-1
     838:	03078793          	addi	a5,a5,48
     83c:	0ff7f793          	andi	a5,a5,255
     840:	00f48023          	sb	a5,0(s1)
     844:	fdc42783          	lw	a5,-36(s0)
     848:	8391                	srli	a5,a5,0x4
     84a:	fcf42e23          	sw	a5,-36(s0)
     84e:	fdc42783          	lw	a5,-36(s0)
     852:	fbdd                	bnez	a5,808 <qprinti+0x9e>
     854:	a035                	j	880 <qprinti+0x116>
     856:	fdc42503          	lw	a0,-36(s0)
     85a:	33ad                	jal	5c4 <remu10>
     85c:	87aa                	mv	a5,a0
     85e:	0ff7f793          	andi	a5,a5,255
     862:	14fd                	addi	s1,s1,-1
     864:	03078793          	addi	a5,a5,48
     868:	0ff7f793          	andi	a5,a5,255
     86c:	00f48023          	sb	a5,0(s1)
     870:	fdc42503          	lw	a0,-36(s0)
     874:	31e1                	jal	53c <divu10>
     876:	fca42e23          	sw	a0,-36(s0)
     87a:	fdc42783          	lw	a5,-36(s0)
     87e:	ffe1                	bnez	a5,856 <qprinti+0xec>
     880:	02098a63          	beqz	s3,8b4 <qprinti+0x14a>
     884:	f9c42783          	lw	a5,-100(s0)
     888:	c38d                	beqz	a5,8aa <qprinti+0x140>
     88a:	f9842783          	lw	a5,-104(s0)
     88e:	8b89                	andi	a5,a5,2
     890:	cf89                	beqz	a5,8aa <qprinti+0x140>
     892:	02d00593          	li	a1,45
     896:	fac42503          	lw	a0,-84(s0)
     89a:	3b69                	jal	634 <qprintchar>
     89c:	0905                	addi	s2,s2,1
     89e:	f9c42783          	lw	a5,-100(s0)
     8a2:	17fd                	addi	a5,a5,-1
     8a4:	f8f42e23          	sw	a5,-100(s0)
     8a8:	a031                	j	8b4 <qprinti+0x14a>
     8aa:	14fd                	addi	s1,s1,-1
     8ac:	02d00793          	li	a5,45
     8b0:	00f48023          	sb	a5,0(s1)
     8b4:	f9842683          	lw	a3,-104(s0)
     8b8:	f9c42603          	lw	a2,-100(s0)
     8bc:	85a6                	mv	a1,s1
     8be:	fac42503          	lw	a0,-84(s0)
     8c2:	33c9                	jal	684 <qprints>
     8c4:	87aa                	mv	a5,a0
     8c6:	97ca                	add	a5,a5,s2
     8c8:	853e                	mv	a0,a5
     8ca:	50b6                	lw	ra,108(sp)
     8cc:	5426                	lw	s0,104(sp)
     8ce:	5496                	lw	s1,100(sp)
     8d0:	5906                	lw	s2,96(sp)
     8d2:	49f6                	lw	s3,92(sp)
     8d4:	6165                	addi	sp,sp,112
     8d6:	8082                	ret

000008d8 <qprint>:
     8d8:	7139                	addi	sp,sp,-64
     8da:	de06                	sw	ra,60(sp)
     8dc:	dc22                	sw	s0,56(sp)
     8de:	da26                	sw	s1,52(sp)
     8e0:	d84a                	sw	s2,48(sp)
     8e2:	d64e                	sw	s3,44(sp)
     8e4:	0080                	addi	s0,sp,64
     8e6:	fca42623          	sw	a0,-52(s0)
     8ea:	fcb42423          	sw	a1,-56(s0)
     8ee:	fcc42223          	sw	a2,-60(s0)
     8f2:	4481                	li	s1,0
     8f4:	ac35                	j	b30 <qprint+0x258>
     8f6:	fc842783          	lw	a5,-56(s0)
     8fa:	0007c703          	lbu	a4,0(a5)
     8fe:	02500793          	li	a5,37
     902:	20f71663          	bne	a4,a5,b0e <qprint+0x236>
     906:	fc842783          	lw	a5,-56(s0)
     90a:	0785                	addi	a5,a5,1
     90c:	fcf42423          	sw	a5,-56(s0)
     910:	4981                	li	s3,0
     912:	894e                	mv	s2,s3
     914:	fc842783          	lw	a5,-56(s0)
     918:	0007c783          	lbu	a5,0(a5)
     91c:	22078163          	beqz	a5,b3e <qprint+0x266>
     920:	fc842783          	lw	a5,-56(s0)
     924:	0007c703          	lbu	a4,0(a5)
     928:	02500793          	li	a5,37
     92c:	1ef70363          	beq	a4,a5,b12 <qprint+0x23a>
     930:	fc842783          	lw	a5,-56(s0)
     934:	0007c703          	lbu	a4,0(a5)
     938:	02d00793          	li	a5,45
     93c:	02f71063          	bne	a4,a5,95c <qprint+0x84>
     940:	fc842783          	lw	a5,-56(s0)
     944:	0785                	addi	a5,a5,1
     946:	fcf42423          	sw	a5,-56(s0)
     94a:	4985                	li	s3,1
     94c:	a801                	j	95c <qprint+0x84>
     94e:	fc842783          	lw	a5,-56(s0)
     952:	0785                	addi	a5,a5,1
     954:	fcf42423          	sw	a5,-56(s0)
     958:	0029e993          	ori	s3,s3,2
     95c:	fc842783          	lw	a5,-56(s0)
     960:	0007c703          	lbu	a4,0(a5)
     964:	03000793          	li	a5,48
     968:	fef703e3          	beq	a4,a5,94e <qprint+0x76>
     96c:	a015                	j	990 <qprint+0xb8>
     96e:	87ca                	mv	a5,s2
     970:	078a                	slli	a5,a5,0x2
     972:	97ca                	add	a5,a5,s2
     974:	0786                	slli	a5,a5,0x1
     976:	893e                	mv	s2,a5
     978:	fc842783          	lw	a5,-56(s0)
     97c:	0007c783          	lbu	a5,0(a5)
     980:	fd078793          	addi	a5,a5,-48
     984:	993e                	add	s2,s2,a5
     986:	fc842783          	lw	a5,-56(s0)
     98a:	0785                	addi	a5,a5,1
     98c:	fcf42423          	sw	a5,-56(s0)
     990:	fc842783          	lw	a5,-56(s0)
     994:	0007c703          	lbu	a4,0(a5)
     998:	02f00793          	li	a5,47
     99c:	00e7fa63          	bgeu	a5,a4,9b0 <qprint+0xd8>
     9a0:	fc842783          	lw	a5,-56(s0)
     9a4:	0007c703          	lbu	a4,0(a5)
     9a8:	03900793          	li	a5,57
     9ac:	fce7f1e3          	bgeu	a5,a4,96e <qprint+0x96>
     9b0:	fc842783          	lw	a5,-56(s0)
     9b4:	0007c703          	lbu	a4,0(a5)
     9b8:	07300793          	li	a5,115
     9bc:	02f71a63          	bne	a4,a5,9f0 <qprint+0x118>
     9c0:	fc442783          	lw	a5,-60(s0)
     9c4:	00478713          	addi	a4,a5,4
     9c8:	fce42223          	sw	a4,-60(s0)
     9cc:	0007a083          	lw	ra,0(a5)
     9d0:	00008463          	beqz	ra,9d8 <qprint+0x100>
     9d4:	8786                	mv	a5,ra
     9d6:	a021                	j	9de <qprint+0x106>
     9d8:	6785                	lui	a5,0x1
     9da:	69478793          	addi	a5,a5,1684 # 1694 <__DTOR_END__+0x80>
     9de:	86ce                	mv	a3,s3
     9e0:	864a                	mv	a2,s2
     9e2:	85be                	mv	a1,a5
     9e4:	fcc42503          	lw	a0,-52(s0)
     9e8:	3971                	jal	684 <qprints>
     9ea:	87aa                	mv	a5,a0
     9ec:	94be                	add	s1,s1,a5
     9ee:	aa25                	j	b26 <qprint+0x24e>
     9f0:	fc842783          	lw	a5,-56(s0)
     9f4:	0007c703          	lbu	a4,0(a5)
     9f8:	06400793          	li	a5,100
     9fc:	02f71563          	bne	a4,a5,a26 <qprint+0x14e>
     a00:	fc442783          	lw	a5,-60(s0)
     a04:	00478713          	addi	a4,a5,4
     a08:	fce42223          	sw	a4,-60(s0)
     a0c:	438c                	lw	a1,0(a5)
     a0e:	06100813          	li	a6,97
     a12:	87ce                	mv	a5,s3
     a14:	874a                	mv	a4,s2
     a16:	4685                	li	a3,1
     a18:	4629                	li	a2,10
     a1a:	fcc42503          	lw	a0,-52(s0)
     a1e:	33b1                	jal	76a <qprinti>
     a20:	87aa                	mv	a5,a0
     a22:	94be                	add	s1,s1,a5
     a24:	a209                	j	b26 <qprint+0x24e>
     a26:	fc842783          	lw	a5,-56(s0)
     a2a:	0007c703          	lbu	a4,0(a5)
     a2e:	07500793          	li	a5,117
     a32:	02f71663          	bne	a4,a5,a5e <qprint+0x186>
     a36:	fc442783          	lw	a5,-60(s0)
     a3a:	00478713          	addi	a4,a5,4
     a3e:	fce42223          	sw	a4,-60(s0)
     a42:	439c                	lw	a5,0(a5)
     a44:	85be                	mv	a1,a5
     a46:	06100813          	li	a6,97
     a4a:	87ce                	mv	a5,s3
     a4c:	874a                	mv	a4,s2
     a4e:	4681                	li	a3,0
     a50:	4629                	li	a2,10
     a52:	fcc42503          	lw	a0,-52(s0)
     a56:	3b11                	jal	76a <qprinti>
     a58:	87aa                	mv	a5,a0
     a5a:	94be                	add	s1,s1,a5
     a5c:	a0e9                	j	b26 <qprint+0x24e>
     a5e:	fc842783          	lw	a5,-56(s0)
     a62:	0007c703          	lbu	a4,0(a5)
     a66:	07800793          	li	a5,120
     a6a:	02f71663          	bne	a4,a5,a96 <qprint+0x1be>
     a6e:	fc442783          	lw	a5,-60(s0)
     a72:	00478713          	addi	a4,a5,4
     a76:	fce42223          	sw	a4,-60(s0)
     a7a:	439c                	lw	a5,0(a5)
     a7c:	85be                	mv	a1,a5
     a7e:	06100813          	li	a6,97
     a82:	87ce                	mv	a5,s3
     a84:	874a                	mv	a4,s2
     a86:	4681                	li	a3,0
     a88:	4641                	li	a2,16
     a8a:	fcc42503          	lw	a0,-52(s0)
     a8e:	39f1                	jal	76a <qprinti>
     a90:	87aa                	mv	a5,a0
     a92:	94be                	add	s1,s1,a5
     a94:	a849                	j	b26 <qprint+0x24e>
     a96:	fc842783          	lw	a5,-56(s0)
     a9a:	0007c703          	lbu	a4,0(a5)
     a9e:	05800793          	li	a5,88
     aa2:	02f71663          	bne	a4,a5,ace <qprint+0x1f6>
     aa6:	fc442783          	lw	a5,-60(s0)
     aaa:	00478713          	addi	a4,a5,4
     aae:	fce42223          	sw	a4,-60(s0)
     ab2:	439c                	lw	a5,0(a5)
     ab4:	85be                	mv	a1,a5
     ab6:	04100813          	li	a6,65
     aba:	87ce                	mv	a5,s3
     abc:	874a                	mv	a4,s2
     abe:	4681                	li	a3,0
     ac0:	4641                	li	a2,16
     ac2:	fcc42503          	lw	a0,-52(s0)
     ac6:	3155                	jal	76a <qprinti>
     ac8:	87aa                	mv	a5,a0
     aca:	94be                	add	s1,s1,a5
     acc:	a8a9                	j	b26 <qprint+0x24e>
     ace:	fc842783          	lw	a5,-56(s0)
     ad2:	0007c703          	lbu	a4,0(a5)
     ad6:	06300793          	li	a5,99
     ada:	04f71663          	bne	a4,a5,b26 <qprint+0x24e>
     ade:	fc442783          	lw	a5,-60(s0)
     ae2:	00478713          	addi	a4,a5,4
     ae6:	fce42223          	sw	a4,-60(s0)
     aea:	439c                	lw	a5,0(a5)
     aec:	0ff7f793          	andi	a5,a5,255
     af0:	fcf40e23          	sb	a5,-36(s0)
     af4:	fc040ea3          	sb	zero,-35(s0)
     af8:	fdc40793          	addi	a5,s0,-36
     afc:	86ce                	mv	a3,s3
     afe:	864a                	mv	a2,s2
     b00:	85be                	mv	a1,a5
     b02:	fcc42503          	lw	a0,-52(s0)
     b06:	3ebd                	jal	684 <qprints>
     b08:	87aa                	mv	a5,a0
     b0a:	94be                	add	s1,s1,a5
     b0c:	a829                	j	b26 <qprint+0x24e>
     b0e:	0001                	nop
     b10:	a011                	j	b14 <qprint+0x23c>
     b12:	0001                	nop
     b14:	fc842783          	lw	a5,-56(s0)
     b18:	0007c783          	lbu	a5,0(a5)
     b1c:	85be                	mv	a1,a5
     b1e:	fcc42503          	lw	a0,-52(s0)
     b22:	3e09                	jal	634 <qprintchar>
     b24:	0485                	addi	s1,s1,1
     b26:	fc842783          	lw	a5,-56(s0)
     b2a:	0785                	addi	a5,a5,1
     b2c:	fcf42423          	sw	a5,-56(s0)
     b30:	fc842783          	lw	a5,-56(s0)
     b34:	0007c783          	lbu	a5,0(a5)
     b38:	da079fe3          	bnez	a5,8f6 <qprint+0x1e>
     b3c:	a011                	j	b40 <qprint+0x268>
     b3e:	0001                	nop
     b40:	fcc42783          	lw	a5,-52(s0)
     b44:	c791                	beqz	a5,b50 <qprint+0x278>
     b46:	fcc42783          	lw	a5,-52(s0)
     b4a:	439c                	lw	a5,0(a5)
     b4c:	00078023          	sb	zero,0(a5)
     b50:	87a6                	mv	a5,s1
     b52:	853e                	mv	a0,a5
     b54:	50f2                	lw	ra,60(sp)
     b56:	5462                	lw	s0,56(sp)
     b58:	54d2                	lw	s1,52(sp)
     b5a:	5942                	lw	s2,48(sp)
     b5c:	59b2                	lw	s3,44(sp)
     b5e:	6121                	addi	sp,sp,64
     b60:	8082                	ret

00000b62 <printf>:
     b62:	715d                	addi	sp,sp,-80
     b64:	d606                	sw	ra,44(sp)
     b66:	d422                	sw	s0,40(sp)
     b68:	1800                	addi	s0,sp,48
     b6a:	fca42e23          	sw	a0,-36(s0)
     b6e:	c04c                	sw	a1,4(s0)
     b70:	c410                	sw	a2,8(s0)
     b72:	c454                	sw	a3,12(s0)
     b74:	c818                	sw	a4,16(s0)
     b76:	c85c                	sw	a5,20(s0)
     b78:	01042c23          	sw	a6,24(s0)
     b7c:	01142e23          	sw	a7,28(s0)
     b80:	02040793          	addi	a5,s0,32
     b84:	fcf42c23          	sw	a5,-40(s0)
     b88:	fd842783          	lw	a5,-40(s0)
     b8c:	1791                	addi	a5,a5,-28
     b8e:	fef42423          	sw	a5,-24(s0)
     b92:	fe842783          	lw	a5,-24(s0)
     b96:	863e                	mv	a2,a5
     b98:	fdc42583          	lw	a1,-36(s0)
     b9c:	4501                	li	a0,0
     b9e:	3b2d                	jal	8d8 <qprint>
     ba0:	fea42623          	sw	a0,-20(s0)
     ba4:	fec42783          	lw	a5,-20(s0)
     ba8:	853e                	mv	a0,a5
     baa:	50b2                	lw	ra,44(sp)
     bac:	5422                	lw	s0,40(sp)
     bae:	6161                	addi	sp,sp,80
     bb0:	8082                	ret

00000bb2 <puts>:
     bb2:	7179                	addi	sp,sp,-48
     bb4:	d606                	sw	ra,44(sp)
     bb6:	d422                	sw	s0,40(sp)
     bb8:	1800                	addi	s0,sp,48
     bba:	fca42e23          	sw	a0,-36(s0)
     bbe:	fe042623          	sw	zero,-20(s0)
     bc2:	a839                	j	be0 <puts+0x2e>
     bc4:	fec42783          	lw	a5,-20(s0)
     bc8:	00178713          	addi	a4,a5,1
     bcc:	fee42623          	sw	a4,-20(s0)
     bd0:	873e                	mv	a4,a5
     bd2:	fdc42783          	lw	a5,-36(s0)
     bd6:	97ba                	add	a5,a5,a4
     bd8:	0007c783          	lbu	a5,0(a5)
     bdc:	853e                	mv	a0,a5
     bde:	343d                	jal	60c <putchar>
     be0:	fec42783          	lw	a5,-20(s0)
     be4:	fdc42703          	lw	a4,-36(s0)
     be8:	97ba                	add	a5,a5,a4
     bea:	0007c783          	lbu	a5,0(a5)
     bee:	fbf9                	bnez	a5,bc4 <puts+0x12>
     bf0:	4529                	li	a0,10
     bf2:	3c29                	jal	60c <putchar>
     bf4:	fec42783          	lw	a5,-20(s0)
     bf8:	853e                	mv	a0,a5
     bfa:	50b2                	lw	ra,44(sp)
     bfc:	5422                	lw	s0,40(sp)
     bfe:	6145                	addi	sp,sp,48
     c00:	8082                	ret

00000c02 <strcmp>:
     c02:	7179                	addi	sp,sp,-48
     c04:	d622                	sw	s0,44(sp)
     c06:	1800                	addi	s0,sp,48
     c08:	fca42e23          	sw	a0,-36(s0)
     c0c:	fcb42c23          	sw	a1,-40(s0)
     c10:	fdc42703          	lw	a4,-36(s0)
     c14:	fd842783          	lw	a5,-40(s0)
     c18:	8fd9                	or	a5,a5,a4
     c1a:	8b8d                	andi	a5,a5,3
     c1c:	e7c9                	bnez	a5,ca6 <strcmp+0xa4>
     c1e:	fdc42783          	lw	a5,-36(s0)
     c22:	fef42623          	sw	a5,-20(s0)
     c26:	fd842783          	lw	a5,-40(s0)
     c2a:	fef42423          	sw	a5,-24(s0)
     c2e:	a089                	j	c70 <strcmp+0x6e>
     c30:	fec42783          	lw	a5,-20(s0)
     c34:	4398                	lw	a4,0(a5)
     c36:	feff07b7          	lui	a5,0xfeff0
     c3a:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c3e:	973e                	add	a4,a4,a5
     c40:	fec42783          	lw	a5,-20(s0)
     c44:	439c                	lw	a5,0(a5)
     c46:	fff7c793          	not	a5,a5
     c4a:	8f7d                	and	a4,a4,a5
     c4c:	808087b7          	lui	a5,0x80808
     c50:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c54:	8ff9                	and	a5,a5,a4
     c56:	c399                	beqz	a5,c5c <strcmp+0x5a>
     c58:	4781                	li	a5,0
     c5a:	a041                	j	cda <strcmp+0xd8>
     c5c:	fec42783          	lw	a5,-20(s0)
     c60:	0791                	addi	a5,a5,4
     c62:	fef42623          	sw	a5,-20(s0)
     c66:	fe842783          	lw	a5,-24(s0)
     c6a:	0791                	addi	a5,a5,4
     c6c:	fef42423          	sw	a5,-24(s0)
     c70:	fec42783          	lw	a5,-20(s0)
     c74:	4398                	lw	a4,0(a5)
     c76:	fe842783          	lw	a5,-24(s0)
     c7a:	439c                	lw	a5,0(a5)
     c7c:	faf70ae3          	beq	a4,a5,c30 <strcmp+0x2e>
     c80:	fec42783          	lw	a5,-20(s0)
     c84:	fcf42e23          	sw	a5,-36(s0)
     c88:	fe842783          	lw	a5,-24(s0)
     c8c:	fcf42c23          	sw	a5,-40(s0)
     c90:	a819                	j	ca6 <strcmp+0xa4>
     c92:	fdc42783          	lw	a5,-36(s0)
     c96:	0785                	addi	a5,a5,1
     c98:	fcf42e23          	sw	a5,-36(s0)
     c9c:	fd842783          	lw	a5,-40(s0)
     ca0:	0785                	addi	a5,a5,1
     ca2:	fcf42c23          	sw	a5,-40(s0)
     ca6:	fdc42783          	lw	a5,-36(s0)
     caa:	0007c783          	lbu	a5,0(a5)
     cae:	cb99                	beqz	a5,cc4 <strcmp+0xc2>
     cb0:	fdc42783          	lw	a5,-36(s0)
     cb4:	0007c703          	lbu	a4,0(a5)
     cb8:	fd842783          	lw	a5,-40(s0)
     cbc:	0007c783          	lbu	a5,0(a5)
     cc0:	fcf709e3          	beq	a4,a5,c92 <strcmp+0x90>
     cc4:	fdc42783          	lw	a5,-36(s0)
     cc8:	0007c783          	lbu	a5,0(a5)
     ccc:	873e                	mv	a4,a5
     cce:	fd842783          	lw	a5,-40(s0)
     cd2:	0007c783          	lbu	a5,0(a5)
     cd6:	40f707b3          	sub	a5,a4,a5
     cda:	853e                	mv	a0,a5
     cdc:	5432                	lw	s0,44(sp)
     cde:	6145                	addi	sp,sp,48
     ce0:	8082                	ret

00000ce2 <memset>:
     ce2:	7179                	addi	sp,sp,-48
     ce4:	d622                	sw	s0,44(sp)
     ce6:	1800                	addi	s0,sp,48
     ce8:	fca42e23          	sw	a0,-36(s0)
     cec:	fcb42c23          	sw	a1,-40(s0)
     cf0:	fcc42a23          	sw	a2,-44(s0)
     cf4:	fdc42783          	lw	a5,-36(s0)
     cf8:	fef42623          	sw	a5,-20(s0)
     cfc:	a015                	j	d20 <memset+0x3e>
     cfe:	fec42783          	lw	a5,-20(s0)
     d02:	00178713          	addi	a4,a5,1
     d06:	fee42623          	sw	a4,-20(s0)
     d0a:	fd842703          	lw	a4,-40(s0)
     d0e:	0ff77713          	andi	a4,a4,255
     d12:	00e78023          	sb	a4,0(a5)
     d16:	fd442783          	lw	a5,-44(s0)
     d1a:	17fd                	addi	a5,a5,-1
     d1c:	fcf42a23          	sw	a5,-44(s0)
     d20:	fd442783          	lw	a5,-44(s0)
     d24:	ffe9                	bnez	a5,cfe <memset+0x1c>
     d26:	fdc42783          	lw	a5,-36(s0)
     d2a:	853e                	mv	a0,a5
     d2c:	5432                	lw	s0,44(sp)
     d2e:	6145                	addi	sp,sp,48
     d30:	8082                	ret

00000d32 <strcpy>:
     d32:	7179                	addi	sp,sp,-48
     d34:	d622                	sw	s0,44(sp)
     d36:	1800                	addi	s0,sp,48
     d38:	fca42e23          	sw	a0,-36(s0)
     d3c:	fcb42c23          	sw	a1,-40(s0)
     d40:	fdc42783          	lw	a5,-36(s0)
     d44:	fef42623          	sw	a5,-20(s0)
     d48:	fd842783          	lw	a5,-40(s0)
     d4c:	fef42423          	sw	a5,-24(s0)
     d50:	a01d                	j	d76 <strcpy+0x44>
     d52:	fe842783          	lw	a5,-24(s0)
     d56:	0007c703          	lbu	a4,0(a5)
     d5a:	fec42783          	lw	a5,-20(s0)
     d5e:	00e78023          	sb	a4,0(a5)
     d62:	fec42783          	lw	a5,-20(s0)
     d66:	0785                	addi	a5,a5,1
     d68:	fef42623          	sw	a5,-20(s0)
     d6c:	fe842783          	lw	a5,-24(s0)
     d70:	0785                	addi	a5,a5,1
     d72:	fef42423          	sw	a5,-24(s0)
     d76:	fe842783          	lw	a5,-24(s0)
     d7a:	0007c783          	lbu	a5,0(a5)
     d7e:	fbf1                	bnez	a5,d52 <strcpy+0x20>
     d80:	fdc42783          	lw	a5,-36(s0)
     d84:	853e                	mv	a0,a5
     d86:	5432                	lw	s0,44(sp)
     d88:	6145                	addi	sp,sp,48
     d8a:	8082                	ret

00000d8c <strlen>:
     d8c:	7179                	addi	sp,sp,-48
     d8e:	d622                	sw	s0,44(sp)
     d90:	1800                	addi	s0,sp,48
     d92:	fca42e23          	sw	a0,-36(s0)
     d96:	fdc42783          	lw	a5,-36(s0)
     d9a:	fef42623          	sw	a5,-20(s0)
     d9e:	fe042423          	sw	zero,-24(s0)
     da2:	fec42783          	lw	a5,-20(s0)
     da6:	eb81                	bnez	a5,db6 <strlen+0x2a>
     da8:	4781                	li	a5,0
     daa:	a00d                	j	dcc <strlen+0x40>
     dac:	fe842783          	lw	a5,-24(s0)
     db0:	0785                	addi	a5,a5,1
     db2:	fef42423          	sw	a5,-24(s0)
     db6:	fec42783          	lw	a5,-20(s0)
     dba:	00178713          	addi	a4,a5,1
     dbe:	fee42623          	sw	a4,-20(s0)
     dc2:	0007c783          	lbu	a5,0(a5)
     dc6:	f3fd                	bnez	a5,dac <strlen+0x20>
     dc8:	fe842783          	lw	a5,-24(s0)
     dcc:	853e                	mv	a0,a5
     dce:	5432                	lw	s0,44(sp)
     dd0:	6145                	addi	sp,sp,48
     dd2:	8082                	ret

00000dd4 <set_pin_function>:
     dd4:	7179                	addi	sp,sp,-48
     dd6:	d622                	sw	s0,44(sp)
     dd8:	1800                	addi	s0,sp,48
     dda:	fca42e23          	sw	a0,-36(s0)
     dde:	fcb42c23          	sw	a1,-40(s0)
     de2:	1a1077b7          	lui	a5,0x1a107
     de6:	439c                	lw	a5,0(a5)
     de8:	fef42623          	sw	a5,-20(s0)
     dec:	fdc42783          	lw	a5,-36(s0)
     df0:	4705                	li	a4,1
     df2:	00f717b3          	sll	a5,a4,a5
     df6:	fff7c713          	not	a4,a5
     dfa:	fec42783          	lw	a5,-20(s0)
     dfe:	8ff9                	and	a5,a5,a4
     e00:	fef42623          	sw	a5,-20(s0)
     e04:	fdc42783          	lw	a5,-36(s0)
     e08:	fd842703          	lw	a4,-40(s0)
     e0c:	00f71733          	sll	a4,a4,a5
     e10:	fec42783          	lw	a5,-20(s0)
     e14:	8fd9                	or	a5,a5,a4
     e16:	fef42623          	sw	a5,-20(s0)
     e1a:	1a1077b7          	lui	a5,0x1a107
     e1e:	fec42703          	lw	a4,-20(s0)
     e22:	c398                	sw	a4,0(a5)
     e24:	0001                	nop
     e26:	5432                	lw	s0,44(sp)
     e28:	6145                	addi	sp,sp,48
     e2a:	8082                	ret

00000e2c <get_pin_function>:
     e2c:	7179                	addi	sp,sp,-48
     e2e:	d622                	sw	s0,44(sp)
     e30:	1800                	addi	s0,sp,48
     e32:	fca42e23          	sw	a0,-36(s0)
     e36:	1a1077b7          	lui	a5,0x1a107
     e3a:	439c                	lw	a5,0(a5)
     e3c:	fef42623          	sw	a5,-20(s0)
     e40:	fec42703          	lw	a4,-20(s0)
     e44:	fdc42783          	lw	a5,-36(s0)
     e48:	40f757b3          	sra	a5,a4,a5
     e4c:	8b85                	andi	a5,a5,1
     e4e:	fef42623          	sw	a5,-20(s0)
     e52:	fec42783          	lw	a5,-20(s0)
     e56:	853e                	mv	a0,a5
     e58:	5432                	lw	s0,44(sp)
     e5a:	6145                	addi	sp,sp,48
     e5c:	8082                	ret

00000e5e <set_gpio_pin_direction>:
     e5e:	7179                	addi	sp,sp,-48
     e60:	d622                	sw	s0,44(sp)
     e62:	1800                	addi	s0,sp,48
     e64:	fca42e23          	sw	a0,-36(s0)
     e68:	fcb42c23          	sw	a1,-40(s0)
     e6c:	1a1017b7          	lui	a5,0x1a101
     e70:	439c                	lw	a5,0(a5)
     e72:	fef42623          	sw	a5,-20(s0)
     e76:	fd842783          	lw	a5,-40(s0)
     e7a:	ef91                	bnez	a5,e96 <set_gpio_pin_direction+0x38>
     e7c:	fdc42783          	lw	a5,-36(s0)
     e80:	4705                	li	a4,1
     e82:	00f717b3          	sll	a5,a4,a5
     e86:	fff7c713          	not	a4,a5
     e8a:	fec42783          	lw	a5,-20(s0)
     e8e:	8ff9                	and	a5,a5,a4
     e90:	fef42623          	sw	a5,-20(s0)
     e94:	a819                	j	eaa <set_gpio_pin_direction+0x4c>
     e96:	fdc42783          	lw	a5,-36(s0)
     e9a:	4705                	li	a4,1
     e9c:	00f71733          	sll	a4,a4,a5
     ea0:	fec42783          	lw	a5,-20(s0)
     ea4:	8fd9                	or	a5,a5,a4
     ea6:	fef42623          	sw	a5,-20(s0)
     eaa:	1a1017b7          	lui	a5,0x1a101
     eae:	fec42703          	lw	a4,-20(s0)
     eb2:	c398                	sw	a4,0(a5)
     eb4:	0001                	nop
     eb6:	5432                	lw	s0,44(sp)
     eb8:	6145                	addi	sp,sp,48
     eba:	8082                	ret

00000ebc <get_gpio_pin_direction>:
     ebc:	7179                	addi	sp,sp,-48
     ebe:	d622                	sw	s0,44(sp)
     ec0:	1800                	addi	s0,sp,48
     ec2:	fca42e23          	sw	a0,-36(s0)
     ec6:	1a1017b7          	lui	a5,0x1a101
     eca:	439c                	lw	a5,0(a5)
     ecc:	fef42623          	sw	a5,-20(s0)
     ed0:	fec42703          	lw	a4,-20(s0)
     ed4:	fdc42783          	lw	a5,-36(s0)
     ed8:	0786                	slli	a5,a5,0x1
     eda:	40f757b3          	sra	a5,a4,a5
     ede:	8b85                	andi	a5,a5,1
     ee0:	fef42623          	sw	a5,-20(s0)
     ee4:	fec42783          	lw	a5,-20(s0)
     ee8:	853e                	mv	a0,a5
     eea:	5432                	lw	s0,44(sp)
     eec:	6145                	addi	sp,sp,48
     eee:	8082                	ret

00000ef0 <set_gpio_pin_value>:
     ef0:	7179                	addi	sp,sp,-48
     ef2:	d622                	sw	s0,44(sp)
     ef4:	1800                	addi	s0,sp,48
     ef6:	fca42e23          	sw	a0,-36(s0)
     efa:	fcb42c23          	sw	a1,-40(s0)
     efe:	1a1017b7          	lui	a5,0x1a101
     f02:	07a1                	addi	a5,a5,8
     f04:	439c                	lw	a5,0(a5)
     f06:	fef42623          	sw	a5,-20(s0)
     f0a:	fd842783          	lw	a5,-40(s0)
     f0e:	ef91                	bnez	a5,f2a <set_gpio_pin_value+0x3a>
     f10:	fdc42783          	lw	a5,-36(s0)
     f14:	4705                	li	a4,1
     f16:	00f717b3          	sll	a5,a4,a5
     f1a:	fff7c713          	not	a4,a5
     f1e:	fec42783          	lw	a5,-20(s0)
     f22:	8ff9                	and	a5,a5,a4
     f24:	fef42623          	sw	a5,-20(s0)
     f28:	a819                	j	f3e <set_gpio_pin_value+0x4e>
     f2a:	fdc42783          	lw	a5,-36(s0)
     f2e:	4705                	li	a4,1
     f30:	00f71733          	sll	a4,a4,a5
     f34:	fec42783          	lw	a5,-20(s0)
     f38:	8fd9                	or	a5,a5,a4
     f3a:	fef42623          	sw	a5,-20(s0)
     f3e:	1a1017b7          	lui	a5,0x1a101
     f42:	07a1                	addi	a5,a5,8
     f44:	fec42703          	lw	a4,-20(s0)
     f48:	c398                	sw	a4,0(a5)
     f4a:	0001                	nop
     f4c:	5432                	lw	s0,44(sp)
     f4e:	6145                	addi	sp,sp,48
     f50:	8082                	ret

00000f52 <get_gpio_pin_value>:
     f52:	7179                	addi	sp,sp,-48
     f54:	d622                	sw	s0,44(sp)
     f56:	1800                	addi	s0,sp,48
     f58:	fca42e23          	sw	a0,-36(s0)
     f5c:	1a1017b7          	lui	a5,0x1a101
     f60:	0791                	addi	a5,a5,4
     f62:	439c                	lw	a5,0(a5)
     f64:	fef42623          	sw	a5,-20(s0)
     f68:	fec42703          	lw	a4,-20(s0)
     f6c:	fdc42783          	lw	a5,-36(s0)
     f70:	40f757b3          	sra	a5,a4,a5
     f74:	8b85                	andi	a5,a5,1
     f76:	fef42623          	sw	a5,-20(s0)
     f7a:	fec42783          	lw	a5,-20(s0)
     f7e:	853e                	mv	a0,a5
     f80:	5432                	lw	s0,44(sp)
     f82:	6145                	addi	sp,sp,48
     f84:	8082                	ret

00000f86 <set_gpio_pin_irq_en>:
     f86:	7179                	addi	sp,sp,-48
     f88:	d622                	sw	s0,44(sp)
     f8a:	1800                	addi	s0,sp,48
     f8c:	fca42e23          	sw	a0,-36(s0)
     f90:	fcb42c23          	sw	a1,-40(s0)
     f94:	1a1017b7          	lui	a5,0x1a101
     f98:	07b1                	addi	a5,a5,12
     f9a:	439c                	lw	a5,0(a5)
     f9c:	fef42623          	sw	a5,-20(s0)
     fa0:	fd842783          	lw	a5,-40(s0)
     fa4:	ef91                	bnez	a5,fc0 <set_gpio_pin_irq_en+0x3a>
     fa6:	fdc42783          	lw	a5,-36(s0)
     faa:	4705                	li	a4,1
     fac:	00f717b3          	sll	a5,a4,a5
     fb0:	fff7c793          	not	a5,a5
     fb4:	fec42703          	lw	a4,-20(s0)
     fb8:	8ff9                	and	a5,a5,a4
     fba:	fef42623          	sw	a5,-20(s0)
     fbe:	a819                	j	fd4 <set_gpio_pin_irq_en+0x4e>
     fc0:	fdc42783          	lw	a5,-36(s0)
     fc4:	4705                	li	a4,1
     fc6:	00f717b3          	sll	a5,a4,a5
     fca:	fec42703          	lw	a4,-20(s0)
     fce:	8fd9                	or	a5,a5,a4
     fd0:	fef42623          	sw	a5,-20(s0)
     fd4:	1a1017b7          	lui	a5,0x1a101
     fd8:	07b1                	addi	a5,a5,12
     fda:	fec42703          	lw	a4,-20(s0)
     fde:	c398                	sw	a4,0(a5)
     fe0:	0001                	nop
     fe2:	5432                	lw	s0,44(sp)
     fe4:	6145                	addi	sp,sp,48
     fe6:	8082                	ret

00000fe8 <set_gpio_pin_irq_type>:
     fe8:	7179                	addi	sp,sp,-48
     fea:	d622                	sw	s0,44(sp)
     fec:	1800                	addi	s0,sp,48
     fee:	fca42e23          	sw	a0,-36(s0)
     ff2:	fcb42c23          	sw	a1,-40(s0)
     ff6:	1a1017b7          	lui	a5,0x1a101
     ffa:	07c1                	addi	a5,a5,16
     ffc:	439c                	lw	a5,0(a5)
     ffe:	fef42623          	sw	a5,-20(s0)
    1002:	1a1017b7          	lui	a5,0x1a101
    1006:	07d1                	addi	a5,a5,20
    1008:	439c                	lw	a5,0(a5)
    100a:	fef42423          	sw	a5,-24(s0)
    100e:	fd842783          	lw	a5,-40(s0)
    1012:	8b85                	andi	a5,a5,1
    1014:	ef91                	bnez	a5,1030 <_min_stack+0x30>
    1016:	fdc42783          	lw	a5,-36(s0)
    101a:	4705                	li	a4,1
    101c:	00f717b3          	sll	a5,a4,a5
    1020:	fff7c793          	not	a5,a5
    1024:	fec42703          	lw	a4,-20(s0)
    1028:	8ff9                	and	a5,a5,a4
    102a:	fef42623          	sw	a5,-20(s0)
    102e:	a819                	j	1044 <_min_stack+0x44>
    1030:	fdc42783          	lw	a5,-36(s0)
    1034:	4705                	li	a4,1
    1036:	00f717b3          	sll	a5,a4,a5
    103a:	fec42703          	lw	a4,-20(s0)
    103e:	8fd9                	or	a5,a5,a4
    1040:	fef42623          	sw	a5,-20(s0)
    1044:	fd842783          	lw	a5,-40(s0)
    1048:	8b89                	andi	a5,a5,2
    104a:	ef91                	bnez	a5,1066 <_min_stack+0x66>
    104c:	fdc42783          	lw	a5,-36(s0)
    1050:	4705                	li	a4,1
    1052:	00f717b3          	sll	a5,a4,a5
    1056:	fff7c793          	not	a5,a5
    105a:	fe842703          	lw	a4,-24(s0)
    105e:	8ff9                	and	a5,a5,a4
    1060:	fef42423          	sw	a5,-24(s0)
    1064:	a819                	j	107a <_min_stack+0x7a>
    1066:	fdc42783          	lw	a5,-36(s0)
    106a:	4705                	li	a4,1
    106c:	00f717b3          	sll	a5,a4,a5
    1070:	fe842703          	lw	a4,-24(s0)
    1074:	8fd9                	or	a5,a5,a4
    1076:	fef42423          	sw	a5,-24(s0)
    107a:	1a1017b7          	lui	a5,0x1a101
    107e:	07c1                	addi	a5,a5,16
    1080:	fec42703          	lw	a4,-20(s0)
    1084:	c398                	sw	a4,0(a5)
    1086:	1a1017b7          	lui	a5,0x1a101
    108a:	07d1                	addi	a5,a5,20
    108c:	fe842703          	lw	a4,-24(s0)
    1090:	c398                	sw	a4,0(a5)
    1092:	0001                	nop
    1094:	5432                	lw	s0,44(sp)
    1096:	6145                	addi	sp,sp,48
    1098:	8082                	ret

0000109a <get_gpio_irq_status>:
    109a:	1141                	addi	sp,sp,-16
    109c:	c622                	sw	s0,12(sp)
    109e:	0800                	addi	s0,sp,16
    10a0:	1a1017b7          	lui	a5,0x1a101
    10a4:	07e1                	addi	a5,a5,24
    10a6:	439c                	lw	a5,0(a5)
    10a8:	853e                	mv	a0,a5
    10aa:	4432                	lw	s0,12(sp)
    10ac:	0141                	addi	sp,sp,16
    10ae:	8082                	ret

000010b0 <spi_setup_slave>:
    10b0:	1141                	addi	sp,sp,-16
    10b2:	c606                	sw	ra,12(sp)
    10b4:	c422                	sw	s0,8(sp)
    10b6:	0800                	addi	s0,sp,16
    10b8:	4581                	li	a1,0
    10ba:	4511                	li	a0,4
    10bc:	3b21                	jal	dd4 <set_pin_function>
    10be:	4581                	li	a1,0
    10c0:	4515                	li	a0,5
    10c2:	3b09                	jal	dd4 <set_pin_function>
    10c4:	4581                	li	a1,0
    10c6:	4519                	li	a0,6
    10c8:	3331                	jal	dd4 <set_pin_function>
    10ca:	4581                	li	a1,0
    10cc:	451d                	li	a0,7
    10ce:	3319                	jal	dd4 <set_pin_function>
    10d0:	4581                	li	a1,0
    10d2:	450d                	li	a0,3
    10d4:	3301                	jal	dd4 <set_pin_function>
    10d6:	0001                	nop
    10d8:	40b2                	lw	ra,12(sp)
    10da:	4422                	lw	s0,8(sp)
    10dc:	0141                	addi	sp,sp,16
    10de:	8082                	ret

000010e0 <spi_setup_master>:
    10e0:	1101                	addi	sp,sp,-32
    10e2:	ce06                	sw	ra,28(sp)
    10e4:	cc22                	sw	s0,24(sp)
    10e6:	1000                	addi	s0,sp,32
    10e8:	fea42623          	sw	a0,-20(s0)
    10ec:	4581                	li	a1,0
    10ee:	453d                	li	a0,15
    10f0:	31d5                	jal	dd4 <set_pin_function>
    10f2:	4581                	li	a1,0
    10f4:	4539                	li	a0,14
    10f6:	39f9                	jal	dd4 <set_pin_function>
    10f8:	4581                	li	a1,0
    10fa:	4535                	li	a0,13
    10fc:	39e1                	jal	dd4 <set_pin_function>
    10fe:	4581                	li	a1,0
    1100:	4531                	li	a0,12
    1102:	39c9                	jal	dd4 <set_pin_function>
    1104:	fec42783          	lw	a5,-20(s0)
    1108:	00f05563          	blez	a5,1112 <spi_setup_master+0x32>
    110c:	4581                	li	a1,0
    110e:	4541                	li	a0,16
    1110:	31d1                	jal	dd4 <set_pin_function>
    1112:	fec42703          	lw	a4,-20(s0)
    1116:	4785                	li	a5,1
    1118:	00e7d563          	bge	a5,a4,1122 <spi_setup_master+0x42>
    111c:	4581                	li	a1,0
    111e:	452d                	li	a0,11
    1120:	3955                	jal	dd4 <set_pin_function>
    1122:	fec42703          	lw	a4,-20(s0)
    1126:	4789                	li	a5,2
    1128:	00e7d563          	bge	a5,a4,1132 <spi_setup_master+0x52>
    112c:	4581                	li	a1,0
    112e:	4501                	li	a0,0
    1130:	3155                	jal	dd4 <set_pin_function>
    1132:	fec42703          	lw	a4,-20(s0)
    1136:	478d                	li	a5,3
    1138:	00e7d563          	bge	a5,a4,1142 <spi_setup_master+0x62>
    113c:	4581                	li	a1,0
    113e:	4505                	li	a0,1
    1140:	3951                	jal	dd4 <set_pin_function>
    1142:	0001                	nop
    1144:	40f2                	lw	ra,28(sp)
    1146:	4462                	lw	s0,24(sp)
    1148:	6105                	addi	sp,sp,32
    114a:	8082                	ret

0000114c <spi_setup_cmd_addr>:
    114c:	7179                	addi	sp,sp,-48
    114e:	d622                	sw	s0,44(sp)
    1150:	1800                	addi	s0,sp,48
    1152:	fca42e23          	sw	a0,-36(s0)
    1156:	fcb42c23          	sw	a1,-40(s0)
    115a:	fcc42a23          	sw	a2,-44(s0)
    115e:	fcd42823          	sw	a3,-48(s0)
    1162:	02000713          	li	a4,32
    1166:	fd842783          	lw	a5,-40(s0)
    116a:	40f707b3          	sub	a5,a4,a5
    116e:	fdc42703          	lw	a4,-36(s0)
    1172:	00f717b3          	sll	a5,a4,a5
    1176:	fef42623          	sw	a5,-20(s0)
    117a:	1a1027b7          	lui	a5,0x1a102
    117e:	07a1                	addi	a5,a5,8
    1180:	fec42703          	lw	a4,-20(s0)
    1184:	c398                	sw	a4,0(a5)
    1186:	1a1027b7          	lui	a5,0x1a102
    118a:	07b1                	addi	a5,a5,12
    118c:	fd442703          	lw	a4,-44(s0)
    1190:	c398                	sw	a4,0(a5)
    1192:	fd842783          	lw	a5,-40(s0)
    1196:	03f7f693          	andi	a3,a5,63
    119a:	fd042783          	lw	a5,-48(s0)
    119e:	00879713          	slli	a4,a5,0x8
    11a2:	6791                	lui	a5,0x4
    11a4:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1850>
    11a8:	8f7d                	and	a4,a4,a5
    11aa:	1a1027b7          	lui	a5,0x1a102
    11ae:	07c1                	addi	a5,a5,16
    11b0:	8f55                	or	a4,a4,a3
    11b2:	c398                	sw	a4,0(a5)
    11b4:	0001                	nop
    11b6:	5432                	lw	s0,44(sp)
    11b8:	6145                	addi	sp,sp,48
    11ba:	8082                	ret

000011bc <spi_setup_dummy>:
    11bc:	1101                	addi	sp,sp,-32
    11be:	ce22                	sw	s0,28(sp)
    11c0:	1000                	addi	s0,sp,32
    11c2:	fea42623          	sw	a0,-20(s0)
    11c6:	feb42423          	sw	a1,-24(s0)
    11ca:	fe842783          	lw	a5,-24(s0)
    11ce:	07c2                	slli	a5,a5,0x10
    11d0:	86be                	mv	a3,a5
    11d2:	fec42703          	lw	a4,-20(s0)
    11d6:	67c1                	lui	a5,0x10
    11d8:	17fd                	addi	a5,a5,-1
    11da:	8ff9                	and	a5,a5,a4
    11dc:	00f6e733          	or	a4,a3,a5
    11e0:	1a1027b7          	lui	a5,0x1a102
    11e4:	07d1                	addi	a5,a5,20
    11e6:	c398                	sw	a4,0(a5)
    11e8:	0001                	nop
    11ea:	4472                	lw	s0,28(sp)
    11ec:	6105                	addi	sp,sp,32
    11ee:	8082                	ret

000011f0 <spi_set_datalen>:
    11f0:	7179                	addi	sp,sp,-48
    11f2:	d622                	sw	s0,44(sp)
    11f4:	1800                	addi	s0,sp,48
    11f6:	fca42e23          	sw	a0,-36(s0)
    11fa:	1a1027b7          	lui	a5,0x1a102
    11fe:	07c1                	addi	a5,a5,16
    1200:	439c                	lw	a5,0(a5)
    1202:	fef42623          	sw	a5,-20(s0)
    1206:	fdc42783          	lw	a5,-36(s0)
    120a:	07c2                	slli	a5,a5,0x10
    120c:	873e                	mv	a4,a5
    120e:	fec42783          	lw	a5,-20(s0)
    1212:	86be                	mv	a3,a5
    1214:	67c1                	lui	a5,0x10
    1216:	17fd                	addi	a5,a5,-1
    1218:	8ff5                	and	a5,a5,a3
    121a:	8fd9                	or	a5,a5,a4
    121c:	fef42623          	sw	a5,-20(s0)
    1220:	1a1027b7          	lui	a5,0x1a102
    1224:	07c1                	addi	a5,a5,16
    1226:	fec42703          	lw	a4,-20(s0)
    122a:	c398                	sw	a4,0(a5)
    122c:	0001                	nop
    122e:	5432                	lw	s0,44(sp)
    1230:	6145                	addi	sp,sp,48
    1232:	8082                	ret

00001234 <spi_start_transaction>:
    1234:	1101                	addi	sp,sp,-32
    1236:	ce22                	sw	s0,28(sp)
    1238:	1000                	addi	s0,sp,32
    123a:	fea42623          	sw	a0,-20(s0)
    123e:	feb42423          	sw	a1,-24(s0)
    1242:	fe842783          	lw	a5,-24(s0)
    1246:	07a1                	addi	a5,a5,8
    1248:	4705                	li	a4,1
    124a:	00f71733          	sll	a4,a4,a5
    124e:	6785                	lui	a5,0x1
    1250:	f0078793          	addi	a5,a5,-256 # f00 <set_gpio_pin_value+0x10>
    1254:	00f776b3          	and	a3,a4,a5
    1258:	fec42783          	lw	a5,-20(s0)
    125c:	4705                	li	a4,1
    125e:	00f717b3          	sll	a5,a4,a5
    1262:	0ff7f713          	andi	a4,a5,255
    1266:	1a1027b7          	lui	a5,0x1a102
    126a:	8f55                	or	a4,a4,a3
    126c:	c398                	sw	a4,0(a5)
    126e:	0001                	nop
    1270:	4472                	lw	s0,28(sp)
    1272:	6105                	addi	sp,sp,32
    1274:	8082                	ret

00001276 <spi_get_status>:
    1276:	1101                	addi	sp,sp,-32
    1278:	ce22                	sw	s0,28(sp)
    127a:	1000                	addi	s0,sp,32
    127c:	1a1027b7          	lui	a5,0x1a102
    1280:	439c                	lw	a5,0(a5)
    1282:	fef42623          	sw	a5,-20(s0)
    1286:	fec42783          	lw	a5,-20(s0)
    128a:	853e                	mv	a0,a5
    128c:	4472                	lw	s0,28(sp)
    128e:	6105                	addi	sp,sp,32
    1290:	8082                	ret

00001292 <spi_write_fifo>:
    1292:	7179                	addi	sp,sp,-48
    1294:	d622                	sw	s0,44(sp)
    1296:	1800                	addi	s0,sp,48
    1298:	fca42e23          	sw	a0,-36(s0)
    129c:	fcb42c23          	sw	a1,-40(s0)
    12a0:	fd842783          	lw	a5,-40(s0)
    12a4:	8795                	srai	a5,a5,0x5
    12a6:	7ff7f793          	andi	a5,a5,2047
    12aa:	fef42623          	sw	a5,-20(s0)
    12ae:	fd842783          	lw	a5,-40(s0)
    12b2:	8bfd                	andi	a5,a5,31
    12b4:	c791                	beqz	a5,12c0 <spi_write_fifo+0x2e>
    12b6:	fec42783          	lw	a5,-20(s0)
    12ba:	0785                	addi	a5,a5,1
    12bc:	fef42623          	sw	a5,-20(s0)
    12c0:	fe042423          	sw	zero,-24(s0)
    12c4:	a80d                	j	12f6 <spi_write_fifo+0x64>
    12c6:	0001                	nop
    12c8:	1a1027b7          	lui	a5,0x1a102
    12cc:	439c                	lw	a5,0(a5)
    12ce:	87e1                	srai	a5,a5,0x18
    12d0:	0f87f793          	andi	a5,a5,248
    12d4:	fbf5                	bnez	a5,12c8 <spi_write_fifo+0x36>
    12d6:	fe842783          	lw	a5,-24(s0)
    12da:	078a                	slli	a5,a5,0x2
    12dc:	fdc42703          	lw	a4,-36(s0)
    12e0:	973e                	add	a4,a4,a5
    12e2:	1a1027b7          	lui	a5,0x1a102
    12e6:	07e1                	addi	a5,a5,24
    12e8:	4318                	lw	a4,0(a4)
    12ea:	c398                	sw	a4,0(a5)
    12ec:	fe842783          	lw	a5,-24(s0)
    12f0:	0785                	addi	a5,a5,1
    12f2:	fef42423          	sw	a5,-24(s0)
    12f6:	fe842703          	lw	a4,-24(s0)
    12fa:	fec42783          	lw	a5,-20(s0)
    12fe:	fcf744e3          	blt	a4,a5,12c6 <spi_write_fifo+0x34>
    1302:	0001                	nop
    1304:	0001                	nop
    1306:	5432                	lw	s0,44(sp)
    1308:	6145                	addi	sp,sp,48
    130a:	8082                	ret

0000130c <spi_read_fifo>:
    130c:	7179                	addi	sp,sp,-48
    130e:	d622                	sw	s0,44(sp)
    1310:	1800                	addi	s0,sp,48
    1312:	fca42e23          	sw	a0,-36(s0)
    1316:	fcb42c23          	sw	a1,-40(s0)
    131a:	fd842783          	lw	a5,-40(s0)
    131e:	8795                	srai	a5,a5,0x5
    1320:	7ff7f793          	andi	a5,a5,2047
    1324:	fef42623          	sw	a5,-20(s0)
    1328:	fd842783          	lw	a5,-40(s0)
    132c:	8bfd                	andi	a5,a5,31
    132e:	c791                	beqz	a5,133a <spi_read_fifo+0x2e>
    1330:	fec42783          	lw	a5,-20(s0)
    1334:	0785                	addi	a5,a5,1
    1336:	fef42623          	sw	a5,-20(s0)
    133a:	fe042423          	sw	zero,-24(s0)
    133e:	a815                	j	1372 <spi_read_fifo+0x66>
    1340:	0001                	nop
    1342:	1a1027b7          	lui	a5,0x1a102
    1346:	439c                	lw	a5,0(a5)
    1348:	87c1                	srai	a5,a5,0x10
    134a:	0ff7f793          	andi	a5,a5,255
    134e:	dbf5                	beqz	a5,1342 <spi_read_fifo+0x36>
    1350:	1a1027b7          	lui	a5,0x1a102
    1354:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    1358:	fe842783          	lw	a5,-24(s0)
    135c:	078a                	slli	a5,a5,0x2
    135e:	fdc42683          	lw	a3,-36(s0)
    1362:	97b6                	add	a5,a5,a3
    1364:	4318                	lw	a4,0(a4)
    1366:	c398                	sw	a4,0(a5)
    1368:	fe842783          	lw	a5,-24(s0)
    136c:	0785                	addi	a5,a5,1
    136e:	fef42423          	sw	a5,-24(s0)
    1372:	fe842703          	lw	a4,-24(s0)
    1376:	fec42783          	lw	a5,-20(s0)
    137a:	fcf743e3          	blt	a4,a5,1340 <spi_read_fifo+0x34>
    137e:	0001                	nop
    1380:	0001                	nop
    1382:	5432                	lw	s0,44(sp)
    1384:	6145                	addi	sp,sp,48
    1386:	8082                	ret

00001388 <default_exception_handler_c>:
    1388:	1141                	addi	sp,sp,-16
    138a:	c622                	sw	s0,12(sp)
    138c:	0800                	addi	s0,sp,16
    138e:	a001                	j	138e <default_exception_handler_c+0x6>

00001390 <illegal_insn_handler_c>:
    1390:	1141                	addi	sp,sp,-16
    1392:	c622                	sw	s0,12(sp)
    1394:	0800                	addi	s0,sp,16
    1396:	a001                	j	1396 <illegal_insn_handler_c+0x6>

00001398 <ecall_insn_handler_c>:
    1398:	1141                	addi	sp,sp,-16
    139a:	c622                	sw	s0,12(sp)
    139c:	0800                	addi	s0,sp,16
    139e:	a001                	j	139e <ecall_insn_handler_c+0x6>

000013a0 <ISR_SRAM>:
    13a0:	1141                	addi	sp,sp,-16
    13a2:	c622                	sw	s0,12(sp)
    13a4:	0800                	addi	s0,sp,16
    13a6:	a001                	j	13a6 <ISR_SRAM+0x6>

000013a8 <ISR_I2C>:
    13a8:	1141                	addi	sp,sp,-16
    13aa:	c622                	sw	s0,12(sp)
    13ac:	0800                	addi	s0,sp,16
    13ae:	a001                	j	13ae <ISR_I2C+0x6>

000013b0 <ISR_UART>:
    13b0:	1141                	addi	sp,sp,-16
    13b2:	c622                	sw	s0,12(sp)
    13b4:	0800                	addi	s0,sp,16
    13b6:	a001                	j	13b6 <ISR_UART+0x6>

000013b8 <ISR_GPIO>:
    13b8:	1141                	addi	sp,sp,-16
    13ba:	c622                	sw	s0,12(sp)
    13bc:	0800                	addi	s0,sp,16
    13be:	a001                	j	13be <ISR_GPIO+0x6>

000013c0 <ISR_SPIM0>:
    13c0:	1141                	addi	sp,sp,-16
    13c2:	c622                	sw	s0,12(sp)
    13c4:	0800                	addi	s0,sp,16
    13c6:	a001                	j	13c6 <ISR_SPIM0+0x6>

000013c8 <ISR_SPIM1>:
    13c8:	1141                	addi	sp,sp,-16
    13ca:	c622                	sw	s0,12(sp)
    13cc:	0800                	addi	s0,sp,16
    13ce:	a001                	j	13ce <ISR_SPIM1+0x6>

000013d0 <ISR_TA_OVF>:
    13d0:	1141                	addi	sp,sp,-16
    13d2:	c622                	sw	s0,12(sp)
    13d4:	0800                	addi	s0,sp,16
    13d6:	a001                	j	13d6 <ISR_TA_OVF+0x6>
    13d8:	1141                	addi	sp,sp,-16
    13da:	c622                	sw	s0,12(sp)
    13dc:	0800                	addi	s0,sp,16
    13de:	a001                	j	13de <ISR_TA_OVF+0xe>

000013e0 <ISR_TB_OVF>:
    13e0:	1141                	addi	sp,sp,-16
    13e2:	c622                	sw	s0,12(sp)
    13e4:	0800                	addi	s0,sp,16
    13e6:	a001                	j	13e6 <ISR_TB_OVF+0x6>

000013e8 <ISR_TB_CMP>:
    13e8:	1141                	addi	sp,sp,-16
    13ea:	c622                	sw	s0,12(sp)
    13ec:	0800                	addi	s0,sp,16
    13ee:	a001                	j	13ee <ISR_TB_CMP+0x6>

000013f0 <uart_set_cfg>:
    13f0:	1101                	addi	sp,sp,-32
    13f2:	ce22                	sw	s0,28(sp)
    13f4:	1000                	addi	s0,sp,32
    13f6:	fea42623          	sw	a0,-20(s0)
    13fa:	87ae                	mv	a5,a1
    13fc:	fef41523          	sh	a5,-22(s0)
    1400:	1a1077b7          	lui	a5,0x1a107
    1404:	0791                	addi	a5,a5,4
    1406:	4398                	lw	a4,0(a5)
    1408:	1a1077b7          	lui	a5,0x1a107
    140c:	0791                	addi	a5,a5,4
    140e:	00276713          	ori	a4,a4,2
    1412:	c398                	sw	a4,0(a5)
    1414:	1a1007b7          	lui	a5,0x1a100
    1418:	07b1                	addi	a5,a5,12
    141a:	08300713          	li	a4,131
    141e:	c398                	sw	a4,0(a5)
    1420:	fea45783          	lhu	a5,-22(s0)
    1424:	83a1                	srli	a5,a5,0x8
    1426:	07c2                	slli	a5,a5,0x10
    1428:	83c1                	srli	a5,a5,0x10
    142a:	873e                	mv	a4,a5
    142c:	1a1007b7          	lui	a5,0x1a100
    1430:	0791                	addi	a5,a5,4
    1432:	0ff77713          	andi	a4,a4,255
    1436:	c398                	sw	a4,0(a5)
    1438:	fea45703          	lhu	a4,-22(s0)
    143c:	1a1007b7          	lui	a5,0x1a100
    1440:	0ff77713          	andi	a4,a4,255
    1444:	c398                	sw	a4,0(a5)
    1446:	1a1007b7          	lui	a5,0x1a100
    144a:	07a1                	addi	a5,a5,8
    144c:	0a700713          	li	a4,167
    1450:	c398                	sw	a4,0(a5)
    1452:	1a1007b7          	lui	a5,0x1a100
    1456:	07b1                	addi	a5,a5,12
    1458:	470d                	li	a4,3
    145a:	c398                	sw	a4,0(a5)
    145c:	1a1007b7          	lui	a5,0x1a100
    1460:	0791                	addi	a5,a5,4
    1462:	439c                	lw	a5,0(a5)
    1464:	0f07f713          	andi	a4,a5,240
    1468:	1a1007b7          	lui	a5,0x1a100
    146c:	0791                	addi	a5,a5,4
    146e:	00276713          	ori	a4,a4,2
    1472:	c398                	sw	a4,0(a5)
    1474:	0001                	nop
    1476:	4472                	lw	s0,28(sp)
    1478:	6105                	addi	sp,sp,32
    147a:	8082                	ret

0000147c <uart_send>:
    147c:	7179                	addi	sp,sp,-48
    147e:	d622                	sw	s0,44(sp)
    1480:	1800                	addi	s0,sp,48
    1482:	fca42e23          	sw	a0,-36(s0)
    1486:	fcb42c23          	sw	a1,-40(s0)
    148a:	a891                	j	14de <uart_send+0x62>
    148c:	0001                	nop
    148e:	1a1007b7          	lui	a5,0x1a100
    1492:	07d1                	addi	a5,a5,20
    1494:	439c                	lw	a5,0(a5)
    1496:	0207f793          	andi	a5,a5,32
    149a:	dbf5                	beqz	a5,148e <uart_send+0x12>
    149c:	fe042623          	sw	zero,-20(s0)
    14a0:	a035                	j	14cc <uart_send+0x50>
    14a2:	fdc42783          	lw	a5,-36(s0)
    14a6:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14aa:	fce42e23          	sw	a4,-36(s0)
    14ae:	0007c703          	lbu	a4,0(a5)
    14b2:	1a1007b7          	lui	a5,0x1a100
    14b6:	c398                	sw	a4,0(a5)
    14b8:	fd842783          	lw	a5,-40(s0)
    14bc:	17fd                	addi	a5,a5,-1
    14be:	fcf42c23          	sw	a5,-40(s0)
    14c2:	fec42783          	lw	a5,-20(s0)
    14c6:	0785                	addi	a5,a5,1
    14c8:	fef42623          	sw	a5,-20(s0)
    14cc:	fec42703          	lw	a4,-20(s0)
    14d0:	03f00793          	li	a5,63
    14d4:	00e7e563          	bltu	a5,a4,14de <uart_send+0x62>
    14d8:	fd842783          	lw	a5,-40(s0)
    14dc:	f3f9                	bnez	a5,14a2 <uart_send+0x26>
    14de:	fd842783          	lw	a5,-40(s0)
    14e2:	f7cd                	bnez	a5,148c <uart_send+0x10>
    14e4:	0001                	nop
    14e6:	0001                	nop
    14e8:	5432                	lw	s0,44(sp)
    14ea:	6145                	addi	sp,sp,48
    14ec:	8082                	ret

000014ee <uart_getchar>:
    14ee:	1141                	addi	sp,sp,-16
    14f0:	c622                	sw	s0,12(sp)
    14f2:	0800                	addi	s0,sp,16
    14f4:	0001                	nop
    14f6:	1a1007b7          	lui	a5,0x1a100
    14fa:	07d1                	addi	a5,a5,20
    14fc:	439c                	lw	a5,0(a5)
    14fe:	0017f713          	andi	a4,a5,1
    1502:	4785                	li	a5,1
    1504:	fef719e3          	bne	a4,a5,14f6 <uart_getchar+0x8>
    1508:	1a1007b7          	lui	a5,0x1a100
    150c:	439c                	lw	a5,0(a5)
    150e:	0ff7f793          	andi	a5,a5,255
    1512:	853e                	mv	a0,a5
    1514:	4432                	lw	s0,12(sp)
    1516:	0141                	addi	sp,sp,16
    1518:	8082                	ret

0000151a <uart_sendchar>:
    151a:	1101                	addi	sp,sp,-32
    151c:	ce22                	sw	s0,28(sp)
    151e:	1000                	addi	s0,sp,32
    1520:	87aa                	mv	a5,a0
    1522:	fef407a3          	sb	a5,-17(s0)
    1526:	0001                	nop
    1528:	1a1007b7          	lui	a5,0x1a100
    152c:	07d1                	addi	a5,a5,20
    152e:	439c                	lw	a5,0(a5)
    1530:	0207f793          	andi	a5,a5,32
    1534:	dbf5                	beqz	a5,1528 <uart_sendchar+0xe>
    1536:	1a1007b7          	lui	a5,0x1a100
    153a:	fef44703          	lbu	a4,-17(s0)
    153e:	c398                	sw	a4,0(a5)
    1540:	0001                	nop
    1542:	4472                	lw	s0,28(sp)
    1544:	6105                	addi	sp,sp,32
    1546:	8082                	ret

00001548 <uart_wait_tx_done>:
    1548:	1141                	addi	sp,sp,-16
    154a:	c622                	sw	s0,12(sp)
    154c:	0800                	addi	s0,sp,16
    154e:	0001                	nop
    1550:	1a1007b7          	lui	a5,0x1a100
    1554:	07d1                	addi	a5,a5,20
    1556:	439c                	lw	a5,0(a5)
    1558:	0407f793          	andi	a5,a5,64
    155c:	dbf5                	beqz	a5,1550 <uart_wait_tx_done+0x8>
    155e:	0001                	nop
    1560:	0001                	nop
    1562:	4432                	lw	s0,12(sp)
    1564:	0141                	addi	sp,sp,16
    1566:	8082                	ret

00001568 <uart_mysendstring>:
    1568:	7179                	addi	sp,sp,-48
    156a:	d606                	sw	ra,44(sp)
    156c:	d422                	sw	s0,40(sp)
    156e:	1800                	addi	s0,sp,48
    1570:	fca42e23          	sw	a0,-36(s0)
    1574:	fe042623          	sw	zero,-20(s0)
    1578:	a839                	j	1596 <uart_mysendstring+0x2e>
    157a:	fec42783          	lw	a5,-20(s0)
    157e:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    1582:	fee42623          	sw	a4,-20(s0)
    1586:	873e                	mv	a4,a5
    1588:	fdc42783          	lw	a5,-36(s0)
    158c:	97ba                	add	a5,a5,a4
    158e:	0007c783          	lbu	a5,0(a5)
    1592:	853e                	mv	a0,a5
    1594:	3759                	jal	151a <uart_sendchar>
    1596:	fec42783          	lw	a5,-20(s0)
    159a:	17fd                	addi	a5,a5,-1
    159c:	fdc42703          	lw	a4,-36(s0)
    15a0:	97ba                	add	a5,a5,a4
    15a2:	0007c703          	lbu	a4,0(a5)
    15a6:	47a9                	li	a5,10
    15a8:	00f70863          	beq	a4,a5,15b8 <uart_mysendstring+0x50>
    15ac:	fec42703          	lw	a4,-20(s0)
    15b0:	02700793          	li	a5,39
    15b4:	fce7d3e3          	bge	a5,a4,157a <uart_mysendstring+0x12>
    15b8:	0001                	nop
    15ba:	50b2                	lw	ra,44(sp)
    15bc:	5422                	lw	s0,40(sp)
    15be:	6145                	addi	sp,sp,48
    15c0:	8082                	ret

000015c2 <uart_getstring>:
    15c2:	1101                	addi	sp,sp,-32
    15c4:	ce06                	sw	ra,28(sp)
    15c6:	cc22                	sw	s0,24(sp)
    15c8:	ca26                	sw	s1,20(sp)
    15ca:	1000                	addi	s0,sp,32
    15cc:	fea42623          	sw	a0,-20(s0)
    15d0:	0001                	nop
    15d2:	fec42483          	lw	s1,-20(s0)
    15d6:	00148793          	addi	a5,s1,1
    15da:	fef42623          	sw	a5,-20(s0)
    15de:	3f01                	jal	14ee <uart_getchar>
    15e0:	87aa                	mv	a5,a0
    15e2:	00f48023          	sb	a5,0(s1)
    15e6:	0004c703          	lbu	a4,0(s1)
    15ea:	47a9                	li	a5,10
    15ec:	fef713e3          	bne	a4,a5,15d2 <uart_getstring+0x10>
    15f0:	fec42783          	lw	a5,-20(s0)
    15f4:	00078023          	sb	zero,0(a5)
    15f8:	0001                	nop
    15fa:	40f2                	lw	ra,28(sp)
    15fc:	4462                	lw	s0,24(sp)
    15fe:	44d2                	lw	s1,20(sp)
    1600:	6105                	addi	sp,sp,32
    1602:	8082                	ret

00001604 <__CTOR_LIST__>:
	...

0000160c <__CTOR_END__>:
	...

Disassembly of section .rodata:

00001614 <.rodata>:
    1614:	5f757063          	bgeu	a0,s7,1bf4 <_bss_end+0x544>
    1618:	6570                	flw	fa2,76(a0)
    161a:	6672                	flw	fa2,28(sp)
    161c:	735f 7465 203a      	0x203a7465735f
    1622:	6f6e                	flw	ft10,216(sp)
    1624:	2074                	fld	fa3,192(s0)
    1626:	6d69                	lui	s10,0x1a
    1628:	6c70                	flw	fa2,92(s0)
    162a:	6d65                	lui	s10,0x19
    162c:	6e65                	lui	t3,0x19
    162e:	6574                	flw	fa3,76(a0)
    1630:	2064                	fld	fs1,192(s0)
    1632:	6579                	lui	a0,0x1e
    1634:	0074                	addi	a3,sp,12
    1636:	0000                	unimp
    1638:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    163c:	6425                	lui	s0,0x9
    163e:	6e20                	flw	fs0,88(a2)
    1640:	7920746f          	jal	s0,8dd2 <_stack+0x6722>
    1644:	7465                	lui	s0,0xffff9
    1646:	7320                	flw	fs0,96(a4)
    1648:	7075                	c.lui	zero,0xffffd
    164a:	6f70                	flw	fa2,92(a4)
    164c:	7472                	flw	fs0,60(sp)
    164e:	6465                	lui	s0,0x19
    1650:	000a                	c.slli	zero,0x2
    1652:	0000                	unimp
    1654:	01c0                	addi	s0,sp,196
    1656:	0000                	unimp
    1658:	01ca                	slli	gp,gp,0x12
    165a:	0000                	unimp
    165c:	01d4                	addi	a3,sp,196
    165e:	0000                	unimp
    1660:	01de                	slli	gp,gp,0x17
    1662:	0000                	unimp
    1664:	01e8                	addi	a0,sp,204
    1666:	0000                	unimp
    1668:	01f2                	slli	gp,gp,0x1c
    166a:	0000                	unimp
    166c:	01fc                	addi	a5,sp,204
    166e:	0000                	unimp
    1670:	0206                	slli	tp,tp,0x1
    1672:	0000                	unimp
    1674:	0210                	addi	a2,sp,256
    1676:	0000                	unimp
    1678:	021a                	slli	tp,tp,0x6
    167a:	0000                	unimp
    167c:	0224                	addi	s1,sp,264
    167e:	0000                	unimp
    1680:	022e                	slli	tp,tp,0xb
    1682:	0000                	unimp
    1684:	0238                	addi	a4,sp,264
    1686:	0000                	unimp
    1688:	0242                	slli	tp,tp,0x10
    168a:	0000                	unimp
    168c:	024c                	addi	a1,sp,260
    168e:	0000                	unimp
    1690:	0256                	slli	tp,tp,0x15
    1692:	0000                	unimp
    1694:	6e28                	flw	fa0,88(a2)
    1696:	6c75                	lui	s8,0x1d
    1698:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

0000169b <.shbss>:
	...

Disassembly of section .data:

0000169c <remu10_table>:
    169c:	0100                	addi	s0,sp,128
    169e:	0202                	c.slli64	tp
    16a0:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x169a0>
    16a4:	0605                	addi	a2,a2,1
    16a6:	08080707          	0x8080707
    16aa:	0009                	c.nop	2

Disassembly of section .bss:

000016ac <led_num_cmp>:
    16ac:	0000                	unimp
	...

Disassembly of section .stack:

000016b0 <_stack-0x1000>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347          	fmsub.d	ft6,ft6,ft4,ft7,rmm
   4:	2820                	fld	fs0,80(s0)
   6:	29554e47          	fmsub.s	ft8,fa0,fs5,ft5,rmm
   a:	3120                	fld	fs0,96(a0)
   c:	2e30                	fld	fa2,88(a2)
   e:	2e32                	fld	ft8,264(sp)
  10:	0030                	addi	a2,sp,8

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	3841                	jal	fffff890 <_stack_start+0xffefb890>
   2:	0000                	unimp
   4:	7200                	flw	fs0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <__DYNAMIC+0x14>
   c:	002e                	c.slli	zero,0xb
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3376                	fld	ft6,376(sp)
  16:	6932                	flw	fs2,12(sp)
  18:	7032                	flw	ft0,44(sp)
  1a:	5f30                	lw	a2,120(a4)
  1c:	326d                	jal	fffff9c6 <_stack_start+0xffefb9c6>
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f30      	0x5f307032615f
  26:	3266                	fld	ft4,120(sp)
  28:	3070                	fld	fa2,224(s0)
  2a:	645f 7032 5f30      	0x5f307032645f
  30:	30703263          	0x30703263
  34:	0800                	addi	s0,sp,16
  36:	0a01                	addi	s4,s4,0
  38:	0b              	Address 0x0000000000000038 is out of bounds.

