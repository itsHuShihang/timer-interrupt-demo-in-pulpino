
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
     180:	65878513          	addi	a0,a5,1624 # 1658 <__DTOR_END__>
     184:	273000ef          	jal	ra,bf6 <puts>
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
     1b6:	69878793          	addi	a5,a5,1688 # 1698 <__DTOR_END__+0x40>
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
     266:	67c78513          	addi	a0,a5,1660 # 167c <__DTOR_END__+0x24>
     26a:	13d000ef          	jal	ra,ba6 <printf>
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
     2ae:	44a70713          	addi	a4,a4,1098 # 16f4 <_bss_end>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	44278793          	addi	a5,a5,1090 # 16f4 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	168010ef          	jal	ra,1434 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	230000ef          	jal	ra,504 <main>
     2d8:	842a                	mv	s0,a0
     2da:	2b2010ef          	jal	ra,158c <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0f40106f          	j	13e4 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0e80106f          	j	13ec <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0dc0106f          	j	13f4 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0d00106f          	j	13fc <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0c40106f          	j	1404 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	0b80106f          	j	140c <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	0b40106f          	j	141c <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	1000006f          	j	47c <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	09c0106f          	j	142c <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	11c0006f          	j	4c0 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	01c0106f          	j	13d4 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	0100106f          	j	13dc <ecall_insn_handler_c>

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

0000040a <int_enable>:
     40a:	1101                	addi	sp,sp,-32
     40c:	ce22                	sw	s0,28(sp)
     40e:	1000                	addi	s0,sp,32
     410:	300027f3          	csrr	a5,mstatus
     414:	fef42623          	sw	a5,-20(s0)
     418:	fec42783          	lw	a5,-20(s0)
     41c:	0087e793          	ori	a5,a5,8
     420:	fef42623          	sw	a5,-20(s0)
     424:	fec42783          	lw	a5,-20(s0)
     428:	30079073          	csrw	mstatus,a5
     42c:	0001                	nop
     42e:	4472                	lw	s0,28(sp)
     430:	6105                	addi	sp,sp,32
     432:	8082                	ret

00000434 <configure>:
     434:	1141                	addi	sp,sp,-16
     436:	c606                	sw	ra,12(sp)
     438:	c422                	sw	s0,8(sp)
     43a:	0800                	addi	s0,sp,16
     43c:	1a1047b7          	lui	a5,0x1a104
     440:	07f1                	addi	a5,a5,28
     442:	577d                	li	a4,-1
     444:	c398                	sw	a4,0(a5)
     446:	1a1047b7          	lui	a5,0x1a104
     44a:	20400737          	lui	a4,0x20400
     44e:	c398                	sw	a4,0(a5)
     450:	3f6d                	jal	40a <int_enable>
     452:	1a1037b7          	lui	a5,0x1a103
     456:	0791                	addi	a5,a5,4
     458:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19fff000>
     45c:	1a1037b7          	lui	a5,0x1a103
     460:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19fff000>
     464:	1a1037b7          	lui	a5,0x1a103
     468:	07a1                	addi	a5,a5,8
     46a:	00100737          	lui	a4,0x100
     46e:	177d                	addi	a4,a4,-1
     470:	c398                	sw	a4,0(a5)
     472:	0001                	nop
     474:	40b2                	lw	ra,12(sp)
     476:	4422                	lw	s0,8(sp)
     478:	0141                	addi	sp,sp,16
     47a:	8082                	ret

0000047c <ISR_TA_OVF>:
     47c:	1141                	addi	sp,sp,-16
     47e:	c606                	sw	ra,12(sp)
     480:	c422                	sw	s0,8(sp)
     482:	0800                	addi	s0,sp,16
     484:	6785                	lui	a5,0x1
     486:	6f07a703          	lw	a4,1776(a5) # 16f0 <led_num>
     48a:	4791                	li	a5,4
     48c:	00e7cb63          	blt	a5,a4,4a2 <ISR_TA_OVF+0x26>
     490:	6785                	lui	a5,0x1
     492:	6f07a783          	lw	a5,1776(a5) # 16f0 <led_num>
     496:	00178713          	addi	a4,a5,1
     49a:	6785                	lui	a5,0x1
     49c:	6ee7a823          	sw	a4,1776(a5) # 16f0 <led_num>
     4a0:	a021                	j	4a8 <ISR_TA_OVF+0x2c>
     4a2:	6785                	lui	a5,0x1
     4a4:	6e07a823          	sw	zero,1776(a5) # 16f0 <led_num>
     4a8:	6785                	lui	a5,0x1
     4aa:	6f07a783          	lw	a5,1776(a5) # 16f0 <led_num>
     4ae:	4585                	li	a1,1
     4b0:	853e                	mv	a0,a5
     4b2:	283000ef          	jal	ra,f34 <set_gpio_pin_value>
     4b6:	0001                	nop
     4b8:	40b2                	lw	ra,12(sp)
     4ba:	4422                	lw	s0,8(sp)
     4bc:	0141                	addi	sp,sp,16
     4be:	8082                	ret

000004c0 <ISR_TB_OVF>:
     4c0:	1141                	addi	sp,sp,-16
     4c2:	c606                	sw	ra,12(sp)
     4c4:	c422                	sw	s0,8(sp)
     4c6:	0800                	addi	s0,sp,16
     4c8:	6785                	lui	a5,0x1
     4ca:	6f07a703          	lw	a4,1776(a5) # 16f0 <led_num>
     4ce:	4791                	li	a5,4
     4d0:	00e7cb63          	blt	a5,a4,4e6 <ISR_TB_OVF+0x26>
     4d4:	6785                	lui	a5,0x1
     4d6:	6f07a783          	lw	a5,1776(a5) # 16f0 <led_num>
     4da:	00178713          	addi	a4,a5,1
     4de:	6785                	lui	a5,0x1
     4e0:	6ee7a823          	sw	a4,1776(a5) # 16f0 <led_num>
     4e4:	a021                	j	4ec <ISR_TB_OVF+0x2c>
     4e6:	6785                	lui	a5,0x1
     4e8:	6e07a823          	sw	zero,1776(a5) # 16f0 <led_num>
     4ec:	6785                	lui	a5,0x1
     4ee:	6f07a783          	lw	a5,1776(a5) # 16f0 <led_num>
     4f2:	4585                	li	a1,1
     4f4:	853e                	mv	a0,a5
     4f6:	23f000ef          	jal	ra,f34 <set_gpio_pin_value>
     4fa:	0001                	nop
     4fc:	40b2                	lw	ra,12(sp)
     4fe:	4422                	lw	s0,8(sp)
     500:	0141                	addi	sp,sp,16
     502:	8082                	ret

00000504 <main>:
     504:	1101                	addi	sp,sp,-32
     506:	ce06                	sw	ra,28(sp)
     508:	cc22                	sw	s0,24(sp)
     50a:	1000                	addi	s0,sp,32
     50c:	fe042623          	sw	zero,-20(s0)
     510:	a005                	j	530 <main+0x2c>
     512:	4585                	li	a1,1
     514:	fec42503          	lw	a0,-20(s0)
     518:	18b000ef          	jal	ra,ea2 <set_gpio_pin_direction>
     51c:	4581                	li	a1,0
     51e:	fec42503          	lw	a0,-20(s0)
     522:	213000ef          	jal	ra,f34 <set_gpio_pin_value>
     526:	fec42783          	lw	a5,-20(s0)
     52a:	0785                	addi	a5,a5,1
     52c:	fef42623          	sw	a5,-20(s0)
     530:	fec42703          	lw	a4,-20(s0)
     534:	4791                	li	a5,4
     536:	fce7dee3          	bge	a5,a4,512 <main+0xe>
     53a:	3dc1                	jal	40a <int_enable>
     53c:	3e81                	jal	8c <reset_timer>
     53e:	3695                	jal	a2 <start_timer>
     540:	4585                	li	a1,1
     542:	450d                	li	a0,3
     544:	1f1000ef          	jal	ra,f34 <set_gpio_pin_value>
     548:	35f5                	jal	434 <configure>
     54a:	4585                	li	a1,1
     54c:	4511                	li	a0,4
     54e:	1e7000ef          	jal	ra,f34 <set_gpio_pin_value>
     552:	fe042423          	sw	zero,-24(s0)
     556:	fe042423          	sw	zero,-24(s0)
     55a:	4585                	li	a1,1
     55c:	4519                	li	a0,6
     55e:	1d7000ef          	jal	ra,f34 <set_gpio_pin_value>
     562:	fe842783          	lw	a5,-24(s0)
     566:	e789                	bnez	a5,570 <main+0x6c>
     568:	4785                	li	a5,1
     56a:	fef42423          	sw	a5,-24(s0)
     56e:	a019                	j	574 <main+0x70>
     570:	fe042423          	sw	zero,-24(s0)
     574:	fe842583          	lw	a1,-24(s0)
     578:	4515                	li	a0,5
     57a:	1bb000ef          	jal	ra,f34 <set_gpio_pin_value>
     57e:	bfe1                	j	556 <main+0x52>

00000580 <divu10>:
     580:	7179                	addi	sp,sp,-48
     582:	d622                	sw	s0,44(sp)
     584:	1800                	addi	s0,sp,48
     586:	fca42e23          	sw	a0,-36(s0)
     58a:	fdc42783          	lw	a5,-36(s0)
     58e:	0017d713          	srli	a4,a5,0x1
     592:	fdc42783          	lw	a5,-36(s0)
     596:	8389                	srli	a5,a5,0x2
     598:	97ba                	add	a5,a5,a4
     59a:	fef42623          	sw	a5,-20(s0)
     59e:	fec42783          	lw	a5,-20(s0)
     5a2:	8391                	srli	a5,a5,0x4
     5a4:	fec42703          	lw	a4,-20(s0)
     5a8:	97ba                	add	a5,a5,a4
     5aa:	fef42623          	sw	a5,-20(s0)
     5ae:	fec42783          	lw	a5,-20(s0)
     5b2:	83a1                	srli	a5,a5,0x8
     5b4:	fec42703          	lw	a4,-20(s0)
     5b8:	97ba                	add	a5,a5,a4
     5ba:	fef42623          	sw	a5,-20(s0)
     5be:	fec42783          	lw	a5,-20(s0)
     5c2:	83c1                	srli	a5,a5,0x10
     5c4:	fec42703          	lw	a4,-20(s0)
     5c8:	97ba                	add	a5,a5,a4
     5ca:	fef42623          	sw	a5,-20(s0)
     5ce:	fec42783          	lw	a5,-20(s0)
     5d2:	838d                	srli	a5,a5,0x3
     5d4:	fef42623          	sw	a5,-20(s0)
     5d8:	fec42703          	lw	a4,-20(s0)
     5dc:	87ba                	mv	a5,a4
     5de:	078a                	slli	a5,a5,0x2
     5e0:	97ba                	add	a5,a5,a4
     5e2:	0786                	slli	a5,a5,0x1
     5e4:	873e                	mv	a4,a5
     5e6:	fdc42783          	lw	a5,-36(s0)
     5ea:	8f99                	sub	a5,a5,a4
     5ec:	fef42423          	sw	a5,-24(s0)
     5f0:	fe842783          	lw	a5,-24(s0)
     5f4:	0799                	addi	a5,a5,6
     5f6:	0047d713          	srli	a4,a5,0x4
     5fa:	fec42783          	lw	a5,-20(s0)
     5fe:	97ba                	add	a5,a5,a4
     600:	853e                	mv	a0,a5
     602:	5432                	lw	s0,44(sp)
     604:	6145                	addi	sp,sp,48
     606:	8082                	ret

00000608 <remu10>:
     608:	1101                	addi	sp,sp,-32
     60a:	ce22                	sw	s0,28(sp)
     60c:	1000                	addi	s0,sp,32
     60e:	fea42623          	sw	a0,-20(s0)
     612:	fec42703          	lw	a4,-20(s0)
     616:	1999a7b7          	lui	a5,0x1999a
     61a:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     61e:	02f70733          	mul	a4,a4,a5
     622:	fec42783          	lw	a5,-20(s0)
     626:	8385                	srli	a5,a5,0x1
     628:	973e                	add	a4,a4,a5
     62a:	fec42783          	lw	a5,-20(s0)
     62e:	838d                	srli	a5,a5,0x3
     630:	97ba                	add	a5,a5,a4
     632:	83f1                	srli	a5,a5,0x1c
     634:	fef42623          	sw	a5,-20(s0)
     638:	6785                	lui	a5,0x1
     63a:	6e078713          	addi	a4,a5,1760 # 16e0 <remu10_table>
     63e:	fec42783          	lw	a5,-20(s0)
     642:	97ba                	add	a5,a5,a4
     644:	0007c783          	lbu	a5,0(a5)
     648:	853e                	mv	a0,a5
     64a:	4472                	lw	s0,28(sp)
     64c:	6105                	addi	sp,sp,32
     64e:	8082                	ret

00000650 <putchar>:
     650:	1101                	addi	sp,sp,-32
     652:	ce06                	sw	ra,28(sp)
     654:	cc22                	sw	s0,24(sp)
     656:	1000                	addi	s0,sp,32
     658:	fea42623          	sw	a0,-20(s0)
     65c:	fec42783          	lw	a5,-20(s0)
     660:	0ff7f793          	andi	a5,a5,255
     664:	853e                	mv	a0,a5
     666:	6f9000ef          	jal	ra,155e <uart_sendchar>
     66a:	fec42783          	lw	a5,-20(s0)
     66e:	853e                	mv	a0,a5
     670:	40f2                	lw	ra,28(sp)
     672:	4462                	lw	s0,24(sp)
     674:	6105                	addi	sp,sp,32
     676:	8082                	ret

00000678 <qprintchar>:
     678:	1101                	addi	sp,sp,-32
     67a:	ce06                	sw	ra,28(sp)
     67c:	cc22                	sw	s0,24(sp)
     67e:	1000                	addi	s0,sp,32
     680:	fea42623          	sw	a0,-20(s0)
     684:	feb42423          	sw	a1,-24(s0)
     688:	fec42783          	lw	a5,-20(s0)
     68c:	c39d                	beqz	a5,6b2 <qprintchar+0x3a>
     68e:	fec42783          	lw	a5,-20(s0)
     692:	439c                	lw	a5,0(a5)
     694:	fe842703          	lw	a4,-24(s0)
     698:	0ff77713          	andi	a4,a4,255
     69c:	00e78023          	sb	a4,0(a5)
     6a0:	fec42783          	lw	a5,-20(s0)
     6a4:	439c                	lw	a5,0(a5)
     6a6:	00178713          	addi	a4,a5,1
     6aa:	fec42783          	lw	a5,-20(s0)
     6ae:	c398                	sw	a4,0(a5)
     6b0:	a039                	j	6be <qprintchar+0x46>
     6b2:	fe842783          	lw	a5,-24(s0)
     6b6:	0ff7f793          	andi	a5,a5,255
     6ba:	853e                	mv	a0,a5
     6bc:	3f51                	jal	650 <putchar>
     6be:	0001                	nop
     6c0:	40f2                	lw	ra,28(sp)
     6c2:	4462                	lw	s0,24(sp)
     6c4:	6105                	addi	sp,sp,32
     6c6:	8082                	ret

000006c8 <qprints>:
     6c8:	7179                	addi	sp,sp,-48
     6ca:	d606                	sw	ra,44(sp)
     6cc:	d422                	sw	s0,40(sp)
     6ce:	d226                	sw	s1,36(sp)
     6d0:	d04a                	sw	s2,32(sp)
     6d2:	ce4e                	sw	s3,28(sp)
     6d4:	cc52                	sw	s4,24(sp)
     6d6:	1800                	addi	s0,sp,48
     6d8:	fca42e23          	sw	a0,-36(s0)
     6dc:	fcb42c23          	sw	a1,-40(s0)
     6e0:	fcc42a23          	sw	a2,-44(s0)
     6e4:	fcd42823          	sw	a3,-48(s0)
     6e8:	4481                	li	s1,0
     6ea:	02000a13          	li	s4,32
     6ee:	fd442783          	lw	a5,-44(s0)
     6f2:	02f05e63          	blez	a5,72e <qprints+0x66>
     6f6:	4901                	li	s2,0
     6f8:	fd842983          	lw	s3,-40(s0)
     6fc:	a019                	j	702 <qprints+0x3a>
     6fe:	0905                	addi	s2,s2,1
     700:	0985                	addi	s3,s3,1
     702:	0009c783          	lbu	a5,0(s3)
     706:	ffe5                	bnez	a5,6fe <qprints+0x36>
     708:	fd442783          	lw	a5,-44(s0)
     70c:	00f94563          	blt	s2,a5,716 <qprints+0x4e>
     710:	fc042a23          	sw	zero,-44(s0)
     714:	a039                	j	722 <qprints+0x5a>
     716:	fd442783          	lw	a5,-44(s0)
     71a:	412787b3          	sub	a5,a5,s2
     71e:	fcf42a23          	sw	a5,-44(s0)
     722:	fd042783          	lw	a5,-48(s0)
     726:	8b89                	andi	a5,a5,2
     728:	c399                	beqz	a5,72e <qprints+0x66>
     72a:	03000a13          	li	s4,48
     72e:	fd042783          	lw	a5,-48(s0)
     732:	8b85                	andi	a5,a5,1
     734:	ef9d                	bnez	a5,772 <qprints+0xaa>
     736:	a819                	j	74c <qprints+0x84>
     738:	85d2                	mv	a1,s4
     73a:	fdc42503          	lw	a0,-36(s0)
     73e:	3f2d                	jal	678 <qprintchar>
     740:	0485                	addi	s1,s1,1
     742:	fd442783          	lw	a5,-44(s0)
     746:	17fd                	addi	a5,a5,-1
     748:	fcf42a23          	sw	a5,-44(s0)
     74c:	fd442783          	lw	a5,-44(s0)
     750:	fef044e3          	bgtz	a5,738 <qprints+0x70>
     754:	a839                	j	772 <qprints+0xaa>
     756:	fd842783          	lw	a5,-40(s0)
     75a:	0007c783          	lbu	a5,0(a5)
     75e:	85be                	mv	a1,a5
     760:	fdc42503          	lw	a0,-36(s0)
     764:	3f11                	jal	678 <qprintchar>
     766:	0485                	addi	s1,s1,1
     768:	fd842783          	lw	a5,-40(s0)
     76c:	0785                	addi	a5,a5,1
     76e:	fcf42c23          	sw	a5,-40(s0)
     772:	fd842783          	lw	a5,-40(s0)
     776:	0007c783          	lbu	a5,0(a5)
     77a:	fff1                	bnez	a5,756 <qprints+0x8e>
     77c:	a819                	j	792 <qprints+0xca>
     77e:	85d2                	mv	a1,s4
     780:	fdc42503          	lw	a0,-36(s0)
     784:	3dd5                	jal	678 <qprintchar>
     786:	0485                	addi	s1,s1,1
     788:	fd442783          	lw	a5,-44(s0)
     78c:	17fd                	addi	a5,a5,-1
     78e:	fcf42a23          	sw	a5,-44(s0)
     792:	fd442783          	lw	a5,-44(s0)
     796:	fef044e3          	bgtz	a5,77e <qprints+0xb6>
     79a:	87a6                	mv	a5,s1
     79c:	853e                	mv	a0,a5
     79e:	50b2                	lw	ra,44(sp)
     7a0:	5422                	lw	s0,40(sp)
     7a2:	5492                	lw	s1,36(sp)
     7a4:	5902                	lw	s2,32(sp)
     7a6:	49f2                	lw	s3,28(sp)
     7a8:	4a62                	lw	s4,24(sp)
     7aa:	6145                	addi	sp,sp,48
     7ac:	8082                	ret

000007ae <qprinti>:
     7ae:	7159                	addi	sp,sp,-112
     7b0:	d686                	sw	ra,108(sp)
     7b2:	d4a2                	sw	s0,104(sp)
     7b4:	d2a6                	sw	s1,100(sp)
     7b6:	d0ca                	sw	s2,96(sp)
     7b8:	cece                	sw	s3,92(sp)
     7ba:	1880                	addi	s0,sp,112
     7bc:	faa42623          	sw	a0,-84(s0)
     7c0:	fab42423          	sw	a1,-88(s0)
     7c4:	fac42223          	sw	a2,-92(s0)
     7c8:	fad42023          	sw	a3,-96(s0)
     7cc:	f8e42e23          	sw	a4,-100(s0)
     7d0:	f8f42c23          	sw	a5,-104(s0)
     7d4:	87c2                	mv	a5,a6
     7d6:	f8f40ba3          	sb	a5,-105(s0)
     7da:	4981                	li	s3,0
     7dc:	4901                	li	s2,0
     7de:	fa842783          	lw	a5,-88(s0)
     7e2:	fcf42e23          	sw	a5,-36(s0)
     7e6:	fa842783          	lw	a5,-88(s0)
     7ea:	e39d                	bnez	a5,810 <qprinti+0x62>
     7ec:	03000793          	li	a5,48
     7f0:	faf40c23          	sb	a5,-72(s0)
     7f4:	fa040ca3          	sb	zero,-71(s0)
     7f8:	fb840793          	addi	a5,s0,-72
     7fc:	f9842683          	lw	a3,-104(s0)
     800:	f9c42603          	lw	a2,-100(s0)
     804:	85be                	mv	a1,a5
     806:	fac42503          	lw	a0,-84(s0)
     80a:	3d7d                	jal	6c8 <qprints>
     80c:	87aa                	mv	a5,a0
     80e:	a8fd                	j	90c <qprinti+0x15e>
     810:	fa042783          	lw	a5,-96(s0)
     814:	c38d                	beqz	a5,836 <qprinti+0x88>
     816:	fa442703          	lw	a4,-92(s0)
     81a:	47a9                	li	a5,10
     81c:	00f71d63          	bne	a4,a5,836 <qprinti+0x88>
     820:	fa842783          	lw	a5,-88(s0)
     824:	0007d963          	bgez	a5,836 <qprinti+0x88>
     828:	4985                	li	s3,1
     82a:	fa842783          	lw	a5,-88(s0)
     82e:	40f007b3          	neg	a5,a5
     832:	fcf42e23          	sw	a5,-36(s0)
     836:	fb840493          	addi	s1,s0,-72
     83a:	04fd                	addi	s1,s1,31
     83c:	00048023          	sb	zero,0(s1)
     840:	fa442703          	lw	a4,-92(s0)
     844:	47c1                	li	a5,16
     846:	06f71c63          	bne	a4,a5,8be <qprinti+0x110>
     84a:	a0a1                	j	892 <qprinti+0xe4>
     84c:	fdc42783          	lw	a5,-36(s0)
     850:	8bbd                	andi	a5,a5,15
     852:	fcf42c23          	sw	a5,-40(s0)
     856:	fd842703          	lw	a4,-40(s0)
     85a:	47a5                	li	a5,9
     85c:	00e7db63          	bge	a5,a4,872 <qprinti+0xc4>
     860:	f9744783          	lbu	a5,-105(s0)
     864:	fc678793          	addi	a5,a5,-58
     868:	fd842703          	lw	a4,-40(s0)
     86c:	97ba                	add	a5,a5,a4
     86e:	fcf42c23          	sw	a5,-40(s0)
     872:	fd842783          	lw	a5,-40(s0)
     876:	0ff7f793          	andi	a5,a5,255
     87a:	14fd                	addi	s1,s1,-1
     87c:	03078793          	addi	a5,a5,48
     880:	0ff7f793          	andi	a5,a5,255
     884:	00f48023          	sb	a5,0(s1)
     888:	fdc42783          	lw	a5,-36(s0)
     88c:	8391                	srli	a5,a5,0x4
     88e:	fcf42e23          	sw	a5,-36(s0)
     892:	fdc42783          	lw	a5,-36(s0)
     896:	fbdd                	bnez	a5,84c <qprinti+0x9e>
     898:	a035                	j	8c4 <qprinti+0x116>
     89a:	fdc42503          	lw	a0,-36(s0)
     89e:	33ad                	jal	608 <remu10>
     8a0:	87aa                	mv	a5,a0
     8a2:	0ff7f793          	andi	a5,a5,255
     8a6:	14fd                	addi	s1,s1,-1
     8a8:	03078793          	addi	a5,a5,48
     8ac:	0ff7f793          	andi	a5,a5,255
     8b0:	00f48023          	sb	a5,0(s1)
     8b4:	fdc42503          	lw	a0,-36(s0)
     8b8:	31e1                	jal	580 <divu10>
     8ba:	fca42e23          	sw	a0,-36(s0)
     8be:	fdc42783          	lw	a5,-36(s0)
     8c2:	ffe1                	bnez	a5,89a <qprinti+0xec>
     8c4:	02098a63          	beqz	s3,8f8 <qprinti+0x14a>
     8c8:	f9c42783          	lw	a5,-100(s0)
     8cc:	c38d                	beqz	a5,8ee <qprinti+0x140>
     8ce:	f9842783          	lw	a5,-104(s0)
     8d2:	8b89                	andi	a5,a5,2
     8d4:	cf89                	beqz	a5,8ee <qprinti+0x140>
     8d6:	02d00593          	li	a1,45
     8da:	fac42503          	lw	a0,-84(s0)
     8de:	3b69                	jal	678 <qprintchar>
     8e0:	0905                	addi	s2,s2,1
     8e2:	f9c42783          	lw	a5,-100(s0)
     8e6:	17fd                	addi	a5,a5,-1
     8e8:	f8f42e23          	sw	a5,-100(s0)
     8ec:	a031                	j	8f8 <qprinti+0x14a>
     8ee:	14fd                	addi	s1,s1,-1
     8f0:	02d00793          	li	a5,45
     8f4:	00f48023          	sb	a5,0(s1)
     8f8:	f9842683          	lw	a3,-104(s0)
     8fc:	f9c42603          	lw	a2,-100(s0)
     900:	85a6                	mv	a1,s1
     902:	fac42503          	lw	a0,-84(s0)
     906:	33c9                	jal	6c8 <qprints>
     908:	87aa                	mv	a5,a0
     90a:	97ca                	add	a5,a5,s2
     90c:	853e                	mv	a0,a5
     90e:	50b6                	lw	ra,108(sp)
     910:	5426                	lw	s0,104(sp)
     912:	5496                	lw	s1,100(sp)
     914:	5906                	lw	s2,96(sp)
     916:	49f6                	lw	s3,92(sp)
     918:	6165                	addi	sp,sp,112
     91a:	8082                	ret

0000091c <qprint>:
     91c:	7139                	addi	sp,sp,-64
     91e:	de06                	sw	ra,60(sp)
     920:	dc22                	sw	s0,56(sp)
     922:	da26                	sw	s1,52(sp)
     924:	d84a                	sw	s2,48(sp)
     926:	d64e                	sw	s3,44(sp)
     928:	0080                	addi	s0,sp,64
     92a:	fca42623          	sw	a0,-52(s0)
     92e:	fcb42423          	sw	a1,-56(s0)
     932:	fcc42223          	sw	a2,-60(s0)
     936:	4481                	li	s1,0
     938:	ac35                	j	b74 <qprint+0x258>
     93a:	fc842783          	lw	a5,-56(s0)
     93e:	0007c703          	lbu	a4,0(a5)
     942:	02500793          	li	a5,37
     946:	20f71663          	bne	a4,a5,b52 <qprint+0x236>
     94a:	fc842783          	lw	a5,-56(s0)
     94e:	0785                	addi	a5,a5,1
     950:	fcf42423          	sw	a5,-56(s0)
     954:	4981                	li	s3,0
     956:	894e                	mv	s2,s3
     958:	fc842783          	lw	a5,-56(s0)
     95c:	0007c783          	lbu	a5,0(a5)
     960:	22078163          	beqz	a5,b82 <qprint+0x266>
     964:	fc842783          	lw	a5,-56(s0)
     968:	0007c703          	lbu	a4,0(a5)
     96c:	02500793          	li	a5,37
     970:	1ef70363          	beq	a4,a5,b56 <qprint+0x23a>
     974:	fc842783          	lw	a5,-56(s0)
     978:	0007c703          	lbu	a4,0(a5)
     97c:	02d00793          	li	a5,45
     980:	02f71063          	bne	a4,a5,9a0 <qprint+0x84>
     984:	fc842783          	lw	a5,-56(s0)
     988:	0785                	addi	a5,a5,1
     98a:	fcf42423          	sw	a5,-56(s0)
     98e:	4985                	li	s3,1
     990:	a801                	j	9a0 <qprint+0x84>
     992:	fc842783          	lw	a5,-56(s0)
     996:	0785                	addi	a5,a5,1
     998:	fcf42423          	sw	a5,-56(s0)
     99c:	0029e993          	ori	s3,s3,2
     9a0:	fc842783          	lw	a5,-56(s0)
     9a4:	0007c703          	lbu	a4,0(a5)
     9a8:	03000793          	li	a5,48
     9ac:	fef703e3          	beq	a4,a5,992 <qprint+0x76>
     9b0:	a015                	j	9d4 <qprint+0xb8>
     9b2:	87ca                	mv	a5,s2
     9b4:	078a                	slli	a5,a5,0x2
     9b6:	97ca                	add	a5,a5,s2
     9b8:	0786                	slli	a5,a5,0x1
     9ba:	893e                	mv	s2,a5
     9bc:	fc842783          	lw	a5,-56(s0)
     9c0:	0007c783          	lbu	a5,0(a5)
     9c4:	fd078793          	addi	a5,a5,-48
     9c8:	993e                	add	s2,s2,a5
     9ca:	fc842783          	lw	a5,-56(s0)
     9ce:	0785                	addi	a5,a5,1
     9d0:	fcf42423          	sw	a5,-56(s0)
     9d4:	fc842783          	lw	a5,-56(s0)
     9d8:	0007c703          	lbu	a4,0(a5)
     9dc:	02f00793          	li	a5,47
     9e0:	00e7fa63          	bgeu	a5,a4,9f4 <qprint+0xd8>
     9e4:	fc842783          	lw	a5,-56(s0)
     9e8:	0007c703          	lbu	a4,0(a5)
     9ec:	03900793          	li	a5,57
     9f0:	fce7f1e3          	bgeu	a5,a4,9b2 <qprint+0x96>
     9f4:	fc842783          	lw	a5,-56(s0)
     9f8:	0007c703          	lbu	a4,0(a5)
     9fc:	07300793          	li	a5,115
     a00:	02f71a63          	bne	a4,a5,a34 <qprint+0x118>
     a04:	fc442783          	lw	a5,-60(s0)
     a08:	00478713          	addi	a4,a5,4
     a0c:	fce42223          	sw	a4,-60(s0)
     a10:	0007a083          	lw	ra,0(a5)
     a14:	00008463          	beqz	ra,a1c <qprint+0x100>
     a18:	8786                	mv	a5,ra
     a1a:	a021                	j	a22 <qprint+0x106>
     a1c:	6785                	lui	a5,0x1
     a1e:	6d878793          	addi	a5,a5,1752 # 16d8 <__DTOR_END__+0x80>
     a22:	86ce                	mv	a3,s3
     a24:	864a                	mv	a2,s2
     a26:	85be                	mv	a1,a5
     a28:	fcc42503          	lw	a0,-52(s0)
     a2c:	3971                	jal	6c8 <qprints>
     a2e:	87aa                	mv	a5,a0
     a30:	94be                	add	s1,s1,a5
     a32:	aa25                	j	b6a <qprint+0x24e>
     a34:	fc842783          	lw	a5,-56(s0)
     a38:	0007c703          	lbu	a4,0(a5)
     a3c:	06400793          	li	a5,100
     a40:	02f71563          	bne	a4,a5,a6a <qprint+0x14e>
     a44:	fc442783          	lw	a5,-60(s0)
     a48:	00478713          	addi	a4,a5,4
     a4c:	fce42223          	sw	a4,-60(s0)
     a50:	438c                	lw	a1,0(a5)
     a52:	06100813          	li	a6,97
     a56:	87ce                	mv	a5,s3
     a58:	874a                	mv	a4,s2
     a5a:	4685                	li	a3,1
     a5c:	4629                	li	a2,10
     a5e:	fcc42503          	lw	a0,-52(s0)
     a62:	33b1                	jal	7ae <qprinti>
     a64:	87aa                	mv	a5,a0
     a66:	94be                	add	s1,s1,a5
     a68:	a209                	j	b6a <qprint+0x24e>
     a6a:	fc842783          	lw	a5,-56(s0)
     a6e:	0007c703          	lbu	a4,0(a5)
     a72:	07500793          	li	a5,117
     a76:	02f71663          	bne	a4,a5,aa2 <qprint+0x186>
     a7a:	fc442783          	lw	a5,-60(s0)
     a7e:	00478713          	addi	a4,a5,4
     a82:	fce42223          	sw	a4,-60(s0)
     a86:	439c                	lw	a5,0(a5)
     a88:	85be                	mv	a1,a5
     a8a:	06100813          	li	a6,97
     a8e:	87ce                	mv	a5,s3
     a90:	874a                	mv	a4,s2
     a92:	4681                	li	a3,0
     a94:	4629                	li	a2,10
     a96:	fcc42503          	lw	a0,-52(s0)
     a9a:	3b11                	jal	7ae <qprinti>
     a9c:	87aa                	mv	a5,a0
     a9e:	94be                	add	s1,s1,a5
     aa0:	a0e9                	j	b6a <qprint+0x24e>
     aa2:	fc842783          	lw	a5,-56(s0)
     aa6:	0007c703          	lbu	a4,0(a5)
     aaa:	07800793          	li	a5,120
     aae:	02f71663          	bne	a4,a5,ada <qprint+0x1be>
     ab2:	fc442783          	lw	a5,-60(s0)
     ab6:	00478713          	addi	a4,a5,4
     aba:	fce42223          	sw	a4,-60(s0)
     abe:	439c                	lw	a5,0(a5)
     ac0:	85be                	mv	a1,a5
     ac2:	06100813          	li	a6,97
     ac6:	87ce                	mv	a5,s3
     ac8:	874a                	mv	a4,s2
     aca:	4681                	li	a3,0
     acc:	4641                	li	a2,16
     ace:	fcc42503          	lw	a0,-52(s0)
     ad2:	39f1                	jal	7ae <qprinti>
     ad4:	87aa                	mv	a5,a0
     ad6:	94be                	add	s1,s1,a5
     ad8:	a849                	j	b6a <qprint+0x24e>
     ada:	fc842783          	lw	a5,-56(s0)
     ade:	0007c703          	lbu	a4,0(a5)
     ae2:	05800793          	li	a5,88
     ae6:	02f71663          	bne	a4,a5,b12 <qprint+0x1f6>
     aea:	fc442783          	lw	a5,-60(s0)
     aee:	00478713          	addi	a4,a5,4
     af2:	fce42223          	sw	a4,-60(s0)
     af6:	439c                	lw	a5,0(a5)
     af8:	85be                	mv	a1,a5
     afa:	04100813          	li	a6,65
     afe:	87ce                	mv	a5,s3
     b00:	874a                	mv	a4,s2
     b02:	4681                	li	a3,0
     b04:	4641                	li	a2,16
     b06:	fcc42503          	lw	a0,-52(s0)
     b0a:	3155                	jal	7ae <qprinti>
     b0c:	87aa                	mv	a5,a0
     b0e:	94be                	add	s1,s1,a5
     b10:	a8a9                	j	b6a <qprint+0x24e>
     b12:	fc842783          	lw	a5,-56(s0)
     b16:	0007c703          	lbu	a4,0(a5)
     b1a:	06300793          	li	a5,99
     b1e:	04f71663          	bne	a4,a5,b6a <qprint+0x24e>
     b22:	fc442783          	lw	a5,-60(s0)
     b26:	00478713          	addi	a4,a5,4
     b2a:	fce42223          	sw	a4,-60(s0)
     b2e:	439c                	lw	a5,0(a5)
     b30:	0ff7f793          	andi	a5,a5,255
     b34:	fcf40e23          	sb	a5,-36(s0)
     b38:	fc040ea3          	sb	zero,-35(s0)
     b3c:	fdc40793          	addi	a5,s0,-36
     b40:	86ce                	mv	a3,s3
     b42:	864a                	mv	a2,s2
     b44:	85be                	mv	a1,a5
     b46:	fcc42503          	lw	a0,-52(s0)
     b4a:	3ebd                	jal	6c8 <qprints>
     b4c:	87aa                	mv	a5,a0
     b4e:	94be                	add	s1,s1,a5
     b50:	a829                	j	b6a <qprint+0x24e>
     b52:	0001                	nop
     b54:	a011                	j	b58 <qprint+0x23c>
     b56:	0001                	nop
     b58:	fc842783          	lw	a5,-56(s0)
     b5c:	0007c783          	lbu	a5,0(a5)
     b60:	85be                	mv	a1,a5
     b62:	fcc42503          	lw	a0,-52(s0)
     b66:	3e09                	jal	678 <qprintchar>
     b68:	0485                	addi	s1,s1,1
     b6a:	fc842783          	lw	a5,-56(s0)
     b6e:	0785                	addi	a5,a5,1
     b70:	fcf42423          	sw	a5,-56(s0)
     b74:	fc842783          	lw	a5,-56(s0)
     b78:	0007c783          	lbu	a5,0(a5)
     b7c:	da079fe3          	bnez	a5,93a <qprint+0x1e>
     b80:	a011                	j	b84 <qprint+0x268>
     b82:	0001                	nop
     b84:	fcc42783          	lw	a5,-52(s0)
     b88:	c791                	beqz	a5,b94 <qprint+0x278>
     b8a:	fcc42783          	lw	a5,-52(s0)
     b8e:	439c                	lw	a5,0(a5)
     b90:	00078023          	sb	zero,0(a5)
     b94:	87a6                	mv	a5,s1
     b96:	853e                	mv	a0,a5
     b98:	50f2                	lw	ra,60(sp)
     b9a:	5462                	lw	s0,56(sp)
     b9c:	54d2                	lw	s1,52(sp)
     b9e:	5942                	lw	s2,48(sp)
     ba0:	59b2                	lw	s3,44(sp)
     ba2:	6121                	addi	sp,sp,64
     ba4:	8082                	ret

00000ba6 <printf>:
     ba6:	715d                	addi	sp,sp,-80
     ba8:	d606                	sw	ra,44(sp)
     baa:	d422                	sw	s0,40(sp)
     bac:	1800                	addi	s0,sp,48
     bae:	fca42e23          	sw	a0,-36(s0)
     bb2:	c04c                	sw	a1,4(s0)
     bb4:	c410                	sw	a2,8(s0)
     bb6:	c454                	sw	a3,12(s0)
     bb8:	c818                	sw	a4,16(s0)
     bba:	c85c                	sw	a5,20(s0)
     bbc:	01042c23          	sw	a6,24(s0)
     bc0:	01142e23          	sw	a7,28(s0)
     bc4:	02040793          	addi	a5,s0,32
     bc8:	fcf42c23          	sw	a5,-40(s0)
     bcc:	fd842783          	lw	a5,-40(s0)
     bd0:	1791                	addi	a5,a5,-28
     bd2:	fef42423          	sw	a5,-24(s0)
     bd6:	fe842783          	lw	a5,-24(s0)
     bda:	863e                	mv	a2,a5
     bdc:	fdc42583          	lw	a1,-36(s0)
     be0:	4501                	li	a0,0
     be2:	3b2d                	jal	91c <qprint>
     be4:	fea42623          	sw	a0,-20(s0)
     be8:	fec42783          	lw	a5,-20(s0)
     bec:	853e                	mv	a0,a5
     bee:	50b2                	lw	ra,44(sp)
     bf0:	5422                	lw	s0,40(sp)
     bf2:	6161                	addi	sp,sp,80
     bf4:	8082                	ret

00000bf6 <puts>:
     bf6:	7179                	addi	sp,sp,-48
     bf8:	d606                	sw	ra,44(sp)
     bfa:	d422                	sw	s0,40(sp)
     bfc:	1800                	addi	s0,sp,48
     bfe:	fca42e23          	sw	a0,-36(s0)
     c02:	fe042623          	sw	zero,-20(s0)
     c06:	a839                	j	c24 <puts+0x2e>
     c08:	fec42783          	lw	a5,-20(s0)
     c0c:	00178713          	addi	a4,a5,1
     c10:	fee42623          	sw	a4,-20(s0)
     c14:	873e                	mv	a4,a5
     c16:	fdc42783          	lw	a5,-36(s0)
     c1a:	97ba                	add	a5,a5,a4
     c1c:	0007c783          	lbu	a5,0(a5)
     c20:	853e                	mv	a0,a5
     c22:	343d                	jal	650 <putchar>
     c24:	fec42783          	lw	a5,-20(s0)
     c28:	fdc42703          	lw	a4,-36(s0)
     c2c:	97ba                	add	a5,a5,a4
     c2e:	0007c783          	lbu	a5,0(a5)
     c32:	fbf9                	bnez	a5,c08 <puts+0x12>
     c34:	4529                	li	a0,10
     c36:	3c29                	jal	650 <putchar>
     c38:	fec42783          	lw	a5,-20(s0)
     c3c:	853e                	mv	a0,a5
     c3e:	50b2                	lw	ra,44(sp)
     c40:	5422                	lw	s0,40(sp)
     c42:	6145                	addi	sp,sp,48
     c44:	8082                	ret

00000c46 <strcmp>:
     c46:	7179                	addi	sp,sp,-48
     c48:	d622                	sw	s0,44(sp)
     c4a:	1800                	addi	s0,sp,48
     c4c:	fca42e23          	sw	a0,-36(s0)
     c50:	fcb42c23          	sw	a1,-40(s0)
     c54:	fdc42703          	lw	a4,-36(s0)
     c58:	fd842783          	lw	a5,-40(s0)
     c5c:	8fd9                	or	a5,a5,a4
     c5e:	8b8d                	andi	a5,a5,3
     c60:	e7c9                	bnez	a5,cea <strcmp+0xa4>
     c62:	fdc42783          	lw	a5,-36(s0)
     c66:	fef42623          	sw	a5,-20(s0)
     c6a:	fd842783          	lw	a5,-40(s0)
     c6e:	fef42423          	sw	a5,-24(s0)
     c72:	a089                	j	cb4 <strcmp+0x6e>
     c74:	fec42783          	lw	a5,-20(s0)
     c78:	4398                	lw	a4,0(a5)
     c7a:	feff07b7          	lui	a5,0xfeff0
     c7e:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c82:	973e                	add	a4,a4,a5
     c84:	fec42783          	lw	a5,-20(s0)
     c88:	439c                	lw	a5,0(a5)
     c8a:	fff7c793          	not	a5,a5
     c8e:	8f7d                	and	a4,a4,a5
     c90:	808087b7          	lui	a5,0x80808
     c94:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c98:	8ff9                	and	a5,a5,a4
     c9a:	c399                	beqz	a5,ca0 <strcmp+0x5a>
     c9c:	4781                	li	a5,0
     c9e:	a041                	j	d1e <strcmp+0xd8>
     ca0:	fec42783          	lw	a5,-20(s0)
     ca4:	0791                	addi	a5,a5,4
     ca6:	fef42623          	sw	a5,-20(s0)
     caa:	fe842783          	lw	a5,-24(s0)
     cae:	0791                	addi	a5,a5,4
     cb0:	fef42423          	sw	a5,-24(s0)
     cb4:	fec42783          	lw	a5,-20(s0)
     cb8:	4398                	lw	a4,0(a5)
     cba:	fe842783          	lw	a5,-24(s0)
     cbe:	439c                	lw	a5,0(a5)
     cc0:	faf70ae3          	beq	a4,a5,c74 <strcmp+0x2e>
     cc4:	fec42783          	lw	a5,-20(s0)
     cc8:	fcf42e23          	sw	a5,-36(s0)
     ccc:	fe842783          	lw	a5,-24(s0)
     cd0:	fcf42c23          	sw	a5,-40(s0)
     cd4:	a819                	j	cea <strcmp+0xa4>
     cd6:	fdc42783          	lw	a5,-36(s0)
     cda:	0785                	addi	a5,a5,1
     cdc:	fcf42e23          	sw	a5,-36(s0)
     ce0:	fd842783          	lw	a5,-40(s0)
     ce4:	0785                	addi	a5,a5,1
     ce6:	fcf42c23          	sw	a5,-40(s0)
     cea:	fdc42783          	lw	a5,-36(s0)
     cee:	0007c783          	lbu	a5,0(a5)
     cf2:	cb99                	beqz	a5,d08 <strcmp+0xc2>
     cf4:	fdc42783          	lw	a5,-36(s0)
     cf8:	0007c703          	lbu	a4,0(a5)
     cfc:	fd842783          	lw	a5,-40(s0)
     d00:	0007c783          	lbu	a5,0(a5)
     d04:	fcf709e3          	beq	a4,a5,cd6 <strcmp+0x90>
     d08:	fdc42783          	lw	a5,-36(s0)
     d0c:	0007c783          	lbu	a5,0(a5)
     d10:	873e                	mv	a4,a5
     d12:	fd842783          	lw	a5,-40(s0)
     d16:	0007c783          	lbu	a5,0(a5)
     d1a:	40f707b3          	sub	a5,a4,a5
     d1e:	853e                	mv	a0,a5
     d20:	5432                	lw	s0,44(sp)
     d22:	6145                	addi	sp,sp,48
     d24:	8082                	ret

00000d26 <memset>:
     d26:	7179                	addi	sp,sp,-48
     d28:	d622                	sw	s0,44(sp)
     d2a:	1800                	addi	s0,sp,48
     d2c:	fca42e23          	sw	a0,-36(s0)
     d30:	fcb42c23          	sw	a1,-40(s0)
     d34:	fcc42a23          	sw	a2,-44(s0)
     d38:	fdc42783          	lw	a5,-36(s0)
     d3c:	fef42623          	sw	a5,-20(s0)
     d40:	a015                	j	d64 <memset+0x3e>
     d42:	fec42783          	lw	a5,-20(s0)
     d46:	00178713          	addi	a4,a5,1
     d4a:	fee42623          	sw	a4,-20(s0)
     d4e:	fd842703          	lw	a4,-40(s0)
     d52:	0ff77713          	andi	a4,a4,255
     d56:	00e78023          	sb	a4,0(a5)
     d5a:	fd442783          	lw	a5,-44(s0)
     d5e:	17fd                	addi	a5,a5,-1
     d60:	fcf42a23          	sw	a5,-44(s0)
     d64:	fd442783          	lw	a5,-44(s0)
     d68:	ffe9                	bnez	a5,d42 <memset+0x1c>
     d6a:	fdc42783          	lw	a5,-36(s0)
     d6e:	853e                	mv	a0,a5
     d70:	5432                	lw	s0,44(sp)
     d72:	6145                	addi	sp,sp,48
     d74:	8082                	ret

00000d76 <strcpy>:
     d76:	7179                	addi	sp,sp,-48
     d78:	d622                	sw	s0,44(sp)
     d7a:	1800                	addi	s0,sp,48
     d7c:	fca42e23          	sw	a0,-36(s0)
     d80:	fcb42c23          	sw	a1,-40(s0)
     d84:	fdc42783          	lw	a5,-36(s0)
     d88:	fef42623          	sw	a5,-20(s0)
     d8c:	fd842783          	lw	a5,-40(s0)
     d90:	fef42423          	sw	a5,-24(s0)
     d94:	a01d                	j	dba <strcpy+0x44>
     d96:	fe842783          	lw	a5,-24(s0)
     d9a:	0007c703          	lbu	a4,0(a5)
     d9e:	fec42783          	lw	a5,-20(s0)
     da2:	00e78023          	sb	a4,0(a5)
     da6:	fec42783          	lw	a5,-20(s0)
     daa:	0785                	addi	a5,a5,1
     dac:	fef42623          	sw	a5,-20(s0)
     db0:	fe842783          	lw	a5,-24(s0)
     db4:	0785                	addi	a5,a5,1
     db6:	fef42423          	sw	a5,-24(s0)
     dba:	fe842783          	lw	a5,-24(s0)
     dbe:	0007c783          	lbu	a5,0(a5)
     dc2:	fbf1                	bnez	a5,d96 <strcpy+0x20>
     dc4:	fdc42783          	lw	a5,-36(s0)
     dc8:	853e                	mv	a0,a5
     dca:	5432                	lw	s0,44(sp)
     dcc:	6145                	addi	sp,sp,48
     dce:	8082                	ret

00000dd0 <strlen>:
     dd0:	7179                	addi	sp,sp,-48
     dd2:	d622                	sw	s0,44(sp)
     dd4:	1800                	addi	s0,sp,48
     dd6:	fca42e23          	sw	a0,-36(s0)
     dda:	fdc42783          	lw	a5,-36(s0)
     dde:	fef42623          	sw	a5,-20(s0)
     de2:	fe042423          	sw	zero,-24(s0)
     de6:	fec42783          	lw	a5,-20(s0)
     dea:	eb81                	bnez	a5,dfa <strlen+0x2a>
     dec:	4781                	li	a5,0
     dee:	a00d                	j	e10 <strlen+0x40>
     df0:	fe842783          	lw	a5,-24(s0)
     df4:	0785                	addi	a5,a5,1
     df6:	fef42423          	sw	a5,-24(s0)
     dfa:	fec42783          	lw	a5,-20(s0)
     dfe:	00178713          	addi	a4,a5,1
     e02:	fee42623          	sw	a4,-20(s0)
     e06:	0007c783          	lbu	a5,0(a5)
     e0a:	f3fd                	bnez	a5,df0 <strlen+0x20>
     e0c:	fe842783          	lw	a5,-24(s0)
     e10:	853e                	mv	a0,a5
     e12:	5432                	lw	s0,44(sp)
     e14:	6145                	addi	sp,sp,48
     e16:	8082                	ret

00000e18 <set_pin_function>:
     e18:	7179                	addi	sp,sp,-48
     e1a:	d622                	sw	s0,44(sp)
     e1c:	1800                	addi	s0,sp,48
     e1e:	fca42e23          	sw	a0,-36(s0)
     e22:	fcb42c23          	sw	a1,-40(s0)
     e26:	1a1077b7          	lui	a5,0x1a107
     e2a:	439c                	lw	a5,0(a5)
     e2c:	fef42623          	sw	a5,-20(s0)
     e30:	fdc42783          	lw	a5,-36(s0)
     e34:	4705                	li	a4,1
     e36:	00f717b3          	sll	a5,a4,a5
     e3a:	fff7c713          	not	a4,a5
     e3e:	fec42783          	lw	a5,-20(s0)
     e42:	8ff9                	and	a5,a5,a4
     e44:	fef42623          	sw	a5,-20(s0)
     e48:	fdc42783          	lw	a5,-36(s0)
     e4c:	fd842703          	lw	a4,-40(s0)
     e50:	00f71733          	sll	a4,a4,a5
     e54:	fec42783          	lw	a5,-20(s0)
     e58:	8fd9                	or	a5,a5,a4
     e5a:	fef42623          	sw	a5,-20(s0)
     e5e:	1a1077b7          	lui	a5,0x1a107
     e62:	fec42703          	lw	a4,-20(s0)
     e66:	c398                	sw	a4,0(a5)
     e68:	0001                	nop
     e6a:	5432                	lw	s0,44(sp)
     e6c:	6145                	addi	sp,sp,48
     e6e:	8082                	ret

00000e70 <get_pin_function>:
     e70:	7179                	addi	sp,sp,-48
     e72:	d622                	sw	s0,44(sp)
     e74:	1800                	addi	s0,sp,48
     e76:	fca42e23          	sw	a0,-36(s0)
     e7a:	1a1077b7          	lui	a5,0x1a107
     e7e:	439c                	lw	a5,0(a5)
     e80:	fef42623          	sw	a5,-20(s0)
     e84:	fec42703          	lw	a4,-20(s0)
     e88:	fdc42783          	lw	a5,-36(s0)
     e8c:	40f757b3          	sra	a5,a4,a5
     e90:	8b85                	andi	a5,a5,1
     e92:	fef42623          	sw	a5,-20(s0)
     e96:	fec42783          	lw	a5,-20(s0)
     e9a:	853e                	mv	a0,a5
     e9c:	5432                	lw	s0,44(sp)
     e9e:	6145                	addi	sp,sp,48
     ea0:	8082                	ret

00000ea2 <set_gpio_pin_direction>:
     ea2:	7179                	addi	sp,sp,-48
     ea4:	d622                	sw	s0,44(sp)
     ea6:	1800                	addi	s0,sp,48
     ea8:	fca42e23          	sw	a0,-36(s0)
     eac:	fcb42c23          	sw	a1,-40(s0)
     eb0:	1a1017b7          	lui	a5,0x1a101
     eb4:	439c                	lw	a5,0(a5)
     eb6:	fef42623          	sw	a5,-20(s0)
     eba:	fd842783          	lw	a5,-40(s0)
     ebe:	ef91                	bnez	a5,eda <set_gpio_pin_direction+0x38>
     ec0:	fdc42783          	lw	a5,-36(s0)
     ec4:	4705                	li	a4,1
     ec6:	00f717b3          	sll	a5,a4,a5
     eca:	fff7c713          	not	a4,a5
     ece:	fec42783          	lw	a5,-20(s0)
     ed2:	8ff9                	and	a5,a5,a4
     ed4:	fef42623          	sw	a5,-20(s0)
     ed8:	a819                	j	eee <set_gpio_pin_direction+0x4c>
     eda:	fdc42783          	lw	a5,-36(s0)
     ede:	4705                	li	a4,1
     ee0:	00f71733          	sll	a4,a4,a5
     ee4:	fec42783          	lw	a5,-20(s0)
     ee8:	8fd9                	or	a5,a5,a4
     eea:	fef42623          	sw	a5,-20(s0)
     eee:	1a1017b7          	lui	a5,0x1a101
     ef2:	fec42703          	lw	a4,-20(s0)
     ef6:	c398                	sw	a4,0(a5)
     ef8:	0001                	nop
     efa:	5432                	lw	s0,44(sp)
     efc:	6145                	addi	sp,sp,48
     efe:	8082                	ret

00000f00 <get_gpio_pin_direction>:
     f00:	7179                	addi	sp,sp,-48
     f02:	d622                	sw	s0,44(sp)
     f04:	1800                	addi	s0,sp,48
     f06:	fca42e23          	sw	a0,-36(s0)
     f0a:	1a1017b7          	lui	a5,0x1a101
     f0e:	439c                	lw	a5,0(a5)
     f10:	fef42623          	sw	a5,-20(s0)
     f14:	fec42703          	lw	a4,-20(s0)
     f18:	fdc42783          	lw	a5,-36(s0)
     f1c:	0786                	slli	a5,a5,0x1
     f1e:	40f757b3          	sra	a5,a4,a5
     f22:	8b85                	andi	a5,a5,1
     f24:	fef42623          	sw	a5,-20(s0)
     f28:	fec42783          	lw	a5,-20(s0)
     f2c:	853e                	mv	a0,a5
     f2e:	5432                	lw	s0,44(sp)
     f30:	6145                	addi	sp,sp,48
     f32:	8082                	ret

00000f34 <set_gpio_pin_value>:
     f34:	7179                	addi	sp,sp,-48
     f36:	d622                	sw	s0,44(sp)
     f38:	1800                	addi	s0,sp,48
     f3a:	fca42e23          	sw	a0,-36(s0)
     f3e:	fcb42c23          	sw	a1,-40(s0)
     f42:	1a1017b7          	lui	a5,0x1a101
     f46:	07a1                	addi	a5,a5,8
     f48:	439c                	lw	a5,0(a5)
     f4a:	fef42623          	sw	a5,-20(s0)
     f4e:	fd842783          	lw	a5,-40(s0)
     f52:	ef91                	bnez	a5,f6e <set_gpio_pin_value+0x3a>
     f54:	fdc42783          	lw	a5,-36(s0)
     f58:	4705                	li	a4,1
     f5a:	00f717b3          	sll	a5,a4,a5
     f5e:	fff7c713          	not	a4,a5
     f62:	fec42783          	lw	a5,-20(s0)
     f66:	8ff9                	and	a5,a5,a4
     f68:	fef42623          	sw	a5,-20(s0)
     f6c:	a819                	j	f82 <set_gpio_pin_value+0x4e>
     f6e:	fdc42783          	lw	a5,-36(s0)
     f72:	4705                	li	a4,1
     f74:	00f71733          	sll	a4,a4,a5
     f78:	fec42783          	lw	a5,-20(s0)
     f7c:	8fd9                	or	a5,a5,a4
     f7e:	fef42623          	sw	a5,-20(s0)
     f82:	1a1017b7          	lui	a5,0x1a101
     f86:	07a1                	addi	a5,a5,8
     f88:	fec42703          	lw	a4,-20(s0)
     f8c:	c398                	sw	a4,0(a5)
     f8e:	0001                	nop
     f90:	5432                	lw	s0,44(sp)
     f92:	6145                	addi	sp,sp,48
     f94:	8082                	ret

00000f96 <get_gpio_pin_value>:
     f96:	7179                	addi	sp,sp,-48
     f98:	d622                	sw	s0,44(sp)
     f9a:	1800                	addi	s0,sp,48
     f9c:	fca42e23          	sw	a0,-36(s0)
     fa0:	1a1017b7          	lui	a5,0x1a101
     fa4:	0791                	addi	a5,a5,4
     fa6:	439c                	lw	a5,0(a5)
     fa8:	fef42623          	sw	a5,-20(s0)
     fac:	fec42703          	lw	a4,-20(s0)
     fb0:	fdc42783          	lw	a5,-36(s0)
     fb4:	40f757b3          	sra	a5,a4,a5
     fb8:	8b85                	andi	a5,a5,1
     fba:	fef42623          	sw	a5,-20(s0)
     fbe:	fec42783          	lw	a5,-20(s0)
     fc2:	853e                	mv	a0,a5
     fc4:	5432                	lw	s0,44(sp)
     fc6:	6145                	addi	sp,sp,48
     fc8:	8082                	ret

00000fca <set_gpio_pin_irq_en>:
     fca:	7179                	addi	sp,sp,-48
     fcc:	d622                	sw	s0,44(sp)
     fce:	1800                	addi	s0,sp,48
     fd0:	fca42e23          	sw	a0,-36(s0)
     fd4:	fcb42c23          	sw	a1,-40(s0)
     fd8:	1a1017b7          	lui	a5,0x1a101
     fdc:	07b1                	addi	a5,a5,12
     fde:	439c                	lw	a5,0(a5)
     fe0:	fef42623          	sw	a5,-20(s0)
     fe4:	fd842783          	lw	a5,-40(s0)
     fe8:	ef91                	bnez	a5,1004 <_min_stack+0x4>
     fea:	fdc42783          	lw	a5,-36(s0)
     fee:	4705                	li	a4,1
     ff0:	00f717b3          	sll	a5,a4,a5
     ff4:	fff7c793          	not	a5,a5
     ff8:	fec42703          	lw	a4,-20(s0)
     ffc:	8ff9                	and	a5,a5,a4
     ffe:	fef42623          	sw	a5,-20(s0)
    1002:	a819                	j	1018 <_min_stack+0x18>
    1004:	fdc42783          	lw	a5,-36(s0)
    1008:	4705                	li	a4,1
    100a:	00f717b3          	sll	a5,a4,a5
    100e:	fec42703          	lw	a4,-20(s0)
    1012:	8fd9                	or	a5,a5,a4
    1014:	fef42623          	sw	a5,-20(s0)
    1018:	1a1017b7          	lui	a5,0x1a101
    101c:	07b1                	addi	a5,a5,12
    101e:	fec42703          	lw	a4,-20(s0)
    1022:	c398                	sw	a4,0(a5)
    1024:	0001                	nop
    1026:	5432                	lw	s0,44(sp)
    1028:	6145                	addi	sp,sp,48
    102a:	8082                	ret

0000102c <set_gpio_pin_irq_type>:
    102c:	7179                	addi	sp,sp,-48
    102e:	d622                	sw	s0,44(sp)
    1030:	1800                	addi	s0,sp,48
    1032:	fca42e23          	sw	a0,-36(s0)
    1036:	fcb42c23          	sw	a1,-40(s0)
    103a:	1a1017b7          	lui	a5,0x1a101
    103e:	07c1                	addi	a5,a5,16
    1040:	439c                	lw	a5,0(a5)
    1042:	fef42623          	sw	a5,-20(s0)
    1046:	1a1017b7          	lui	a5,0x1a101
    104a:	07d1                	addi	a5,a5,20
    104c:	439c                	lw	a5,0(a5)
    104e:	fef42423          	sw	a5,-24(s0)
    1052:	fd842783          	lw	a5,-40(s0)
    1056:	8b85                	andi	a5,a5,1
    1058:	ef91                	bnez	a5,1074 <set_gpio_pin_irq_type+0x48>
    105a:	fdc42783          	lw	a5,-36(s0)
    105e:	4705                	li	a4,1
    1060:	00f717b3          	sll	a5,a4,a5
    1064:	fff7c793          	not	a5,a5
    1068:	fec42703          	lw	a4,-20(s0)
    106c:	8ff9                	and	a5,a5,a4
    106e:	fef42623          	sw	a5,-20(s0)
    1072:	a819                	j	1088 <set_gpio_pin_irq_type+0x5c>
    1074:	fdc42783          	lw	a5,-36(s0)
    1078:	4705                	li	a4,1
    107a:	00f717b3          	sll	a5,a4,a5
    107e:	fec42703          	lw	a4,-20(s0)
    1082:	8fd9                	or	a5,a5,a4
    1084:	fef42623          	sw	a5,-20(s0)
    1088:	fd842783          	lw	a5,-40(s0)
    108c:	8b89                	andi	a5,a5,2
    108e:	ef91                	bnez	a5,10aa <set_gpio_pin_irq_type+0x7e>
    1090:	fdc42783          	lw	a5,-36(s0)
    1094:	4705                	li	a4,1
    1096:	00f717b3          	sll	a5,a4,a5
    109a:	fff7c793          	not	a5,a5
    109e:	fe842703          	lw	a4,-24(s0)
    10a2:	8ff9                	and	a5,a5,a4
    10a4:	fef42423          	sw	a5,-24(s0)
    10a8:	a819                	j	10be <set_gpio_pin_irq_type+0x92>
    10aa:	fdc42783          	lw	a5,-36(s0)
    10ae:	4705                	li	a4,1
    10b0:	00f717b3          	sll	a5,a4,a5
    10b4:	fe842703          	lw	a4,-24(s0)
    10b8:	8fd9                	or	a5,a5,a4
    10ba:	fef42423          	sw	a5,-24(s0)
    10be:	1a1017b7          	lui	a5,0x1a101
    10c2:	07c1                	addi	a5,a5,16
    10c4:	fec42703          	lw	a4,-20(s0)
    10c8:	c398                	sw	a4,0(a5)
    10ca:	1a1017b7          	lui	a5,0x1a101
    10ce:	07d1                	addi	a5,a5,20
    10d0:	fe842703          	lw	a4,-24(s0)
    10d4:	c398                	sw	a4,0(a5)
    10d6:	0001                	nop
    10d8:	5432                	lw	s0,44(sp)
    10da:	6145                	addi	sp,sp,48
    10dc:	8082                	ret

000010de <get_gpio_irq_status>:
    10de:	1141                	addi	sp,sp,-16
    10e0:	c622                	sw	s0,12(sp)
    10e2:	0800                	addi	s0,sp,16
    10e4:	1a1017b7          	lui	a5,0x1a101
    10e8:	07e1                	addi	a5,a5,24
    10ea:	439c                	lw	a5,0(a5)
    10ec:	853e                	mv	a0,a5
    10ee:	4432                	lw	s0,12(sp)
    10f0:	0141                	addi	sp,sp,16
    10f2:	8082                	ret

000010f4 <spi_setup_slave>:
    10f4:	1141                	addi	sp,sp,-16
    10f6:	c606                	sw	ra,12(sp)
    10f8:	c422                	sw	s0,8(sp)
    10fa:	0800                	addi	s0,sp,16
    10fc:	4581                	li	a1,0
    10fe:	4511                	li	a0,4
    1100:	3b21                	jal	e18 <set_pin_function>
    1102:	4581                	li	a1,0
    1104:	4515                	li	a0,5
    1106:	3b09                	jal	e18 <set_pin_function>
    1108:	4581                	li	a1,0
    110a:	4519                	li	a0,6
    110c:	3331                	jal	e18 <set_pin_function>
    110e:	4581                	li	a1,0
    1110:	451d                	li	a0,7
    1112:	3319                	jal	e18 <set_pin_function>
    1114:	4581                	li	a1,0
    1116:	450d                	li	a0,3
    1118:	3301                	jal	e18 <set_pin_function>
    111a:	0001                	nop
    111c:	40b2                	lw	ra,12(sp)
    111e:	4422                	lw	s0,8(sp)
    1120:	0141                	addi	sp,sp,16
    1122:	8082                	ret

00001124 <spi_setup_master>:
    1124:	1101                	addi	sp,sp,-32
    1126:	ce06                	sw	ra,28(sp)
    1128:	cc22                	sw	s0,24(sp)
    112a:	1000                	addi	s0,sp,32
    112c:	fea42623          	sw	a0,-20(s0)
    1130:	4581                	li	a1,0
    1132:	453d                	li	a0,15
    1134:	31d5                	jal	e18 <set_pin_function>
    1136:	4581                	li	a1,0
    1138:	4539                	li	a0,14
    113a:	39f9                	jal	e18 <set_pin_function>
    113c:	4581                	li	a1,0
    113e:	4535                	li	a0,13
    1140:	39e1                	jal	e18 <set_pin_function>
    1142:	4581                	li	a1,0
    1144:	4531                	li	a0,12
    1146:	39c9                	jal	e18 <set_pin_function>
    1148:	fec42783          	lw	a5,-20(s0)
    114c:	00f05563          	blez	a5,1156 <spi_setup_master+0x32>
    1150:	4581                	li	a1,0
    1152:	4541                	li	a0,16
    1154:	31d1                	jal	e18 <set_pin_function>
    1156:	fec42703          	lw	a4,-20(s0)
    115a:	4785                	li	a5,1
    115c:	00e7d563          	bge	a5,a4,1166 <spi_setup_master+0x42>
    1160:	4581                	li	a1,0
    1162:	452d                	li	a0,11
    1164:	3955                	jal	e18 <set_pin_function>
    1166:	fec42703          	lw	a4,-20(s0)
    116a:	4789                	li	a5,2
    116c:	00e7d563          	bge	a5,a4,1176 <spi_setup_master+0x52>
    1170:	4581                	li	a1,0
    1172:	4501                	li	a0,0
    1174:	3155                	jal	e18 <set_pin_function>
    1176:	fec42703          	lw	a4,-20(s0)
    117a:	478d                	li	a5,3
    117c:	00e7d563          	bge	a5,a4,1186 <spi_setup_master+0x62>
    1180:	4581                	li	a1,0
    1182:	4505                	li	a0,1
    1184:	3951                	jal	e18 <set_pin_function>
    1186:	0001                	nop
    1188:	40f2                	lw	ra,28(sp)
    118a:	4462                	lw	s0,24(sp)
    118c:	6105                	addi	sp,sp,32
    118e:	8082                	ret

00001190 <spi_setup_cmd_addr>:
    1190:	7179                	addi	sp,sp,-48
    1192:	d622                	sw	s0,44(sp)
    1194:	1800                	addi	s0,sp,48
    1196:	fca42e23          	sw	a0,-36(s0)
    119a:	fcb42c23          	sw	a1,-40(s0)
    119e:	fcc42a23          	sw	a2,-44(s0)
    11a2:	fcd42823          	sw	a3,-48(s0)
    11a6:	02000713          	li	a4,32
    11aa:	fd842783          	lw	a5,-40(s0)
    11ae:	40f707b3          	sub	a5,a4,a5
    11b2:	fdc42703          	lw	a4,-36(s0)
    11b6:	00f717b3          	sll	a5,a4,a5
    11ba:	fef42623          	sw	a5,-20(s0)
    11be:	1a1027b7          	lui	a5,0x1a102
    11c2:	07a1                	addi	a5,a5,8
    11c4:	fec42703          	lw	a4,-20(s0)
    11c8:	c398                	sw	a4,0(a5)
    11ca:	1a1027b7          	lui	a5,0x1a102
    11ce:	07b1                	addi	a5,a5,12
    11d0:	fd442703          	lw	a4,-44(s0)
    11d4:	c398                	sw	a4,0(a5)
    11d6:	fd842783          	lw	a5,-40(s0)
    11da:	03f7f693          	andi	a3,a5,63
    11de:	fd042783          	lw	a5,-48(s0)
    11e2:	00879713          	slli	a4,a5,0x8
    11e6:	6791                	lui	a5,0x4
    11e8:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x180c>
    11ec:	8f7d                	and	a4,a4,a5
    11ee:	1a1027b7          	lui	a5,0x1a102
    11f2:	07c1                	addi	a5,a5,16
    11f4:	8f55                	or	a4,a4,a3
    11f6:	c398                	sw	a4,0(a5)
    11f8:	0001                	nop
    11fa:	5432                	lw	s0,44(sp)
    11fc:	6145                	addi	sp,sp,48
    11fe:	8082                	ret

00001200 <spi_setup_dummy>:
    1200:	1101                	addi	sp,sp,-32
    1202:	ce22                	sw	s0,28(sp)
    1204:	1000                	addi	s0,sp,32
    1206:	fea42623          	sw	a0,-20(s0)
    120a:	feb42423          	sw	a1,-24(s0)
    120e:	fe842783          	lw	a5,-24(s0)
    1212:	07c2                	slli	a5,a5,0x10
    1214:	86be                	mv	a3,a5
    1216:	fec42703          	lw	a4,-20(s0)
    121a:	67c1                	lui	a5,0x10
    121c:	17fd                	addi	a5,a5,-1
    121e:	8ff9                	and	a5,a5,a4
    1220:	00f6e733          	or	a4,a3,a5
    1224:	1a1027b7          	lui	a5,0x1a102
    1228:	07d1                	addi	a5,a5,20
    122a:	c398                	sw	a4,0(a5)
    122c:	0001                	nop
    122e:	4472                	lw	s0,28(sp)
    1230:	6105                	addi	sp,sp,32
    1232:	8082                	ret

00001234 <spi_set_datalen>:
    1234:	7179                	addi	sp,sp,-48
    1236:	d622                	sw	s0,44(sp)
    1238:	1800                	addi	s0,sp,48
    123a:	fca42e23          	sw	a0,-36(s0)
    123e:	1a1027b7          	lui	a5,0x1a102
    1242:	07c1                	addi	a5,a5,16
    1244:	439c                	lw	a5,0(a5)
    1246:	fef42623          	sw	a5,-20(s0)
    124a:	fdc42783          	lw	a5,-36(s0)
    124e:	07c2                	slli	a5,a5,0x10
    1250:	873e                	mv	a4,a5
    1252:	fec42783          	lw	a5,-20(s0)
    1256:	86be                	mv	a3,a5
    1258:	67c1                	lui	a5,0x10
    125a:	17fd                	addi	a5,a5,-1
    125c:	8ff5                	and	a5,a5,a3
    125e:	8fd9                	or	a5,a5,a4
    1260:	fef42623          	sw	a5,-20(s0)
    1264:	1a1027b7          	lui	a5,0x1a102
    1268:	07c1                	addi	a5,a5,16
    126a:	fec42703          	lw	a4,-20(s0)
    126e:	c398                	sw	a4,0(a5)
    1270:	0001                	nop
    1272:	5432                	lw	s0,44(sp)
    1274:	6145                	addi	sp,sp,48
    1276:	8082                	ret

00001278 <spi_start_transaction>:
    1278:	1101                	addi	sp,sp,-32
    127a:	ce22                	sw	s0,28(sp)
    127c:	1000                	addi	s0,sp,32
    127e:	fea42623          	sw	a0,-20(s0)
    1282:	feb42423          	sw	a1,-24(s0)
    1286:	fe842783          	lw	a5,-24(s0)
    128a:	07a1                	addi	a5,a5,8
    128c:	4705                	li	a4,1
    128e:	00f71733          	sll	a4,a4,a5
    1292:	6785                	lui	a5,0x1
    1294:	f0078793          	addi	a5,a5,-256 # f00 <get_gpio_pin_direction>
    1298:	00f776b3          	and	a3,a4,a5
    129c:	fec42783          	lw	a5,-20(s0)
    12a0:	4705                	li	a4,1
    12a2:	00f717b3          	sll	a5,a4,a5
    12a6:	0ff7f713          	andi	a4,a5,255
    12aa:	1a1027b7          	lui	a5,0x1a102
    12ae:	8f55                	or	a4,a4,a3
    12b0:	c398                	sw	a4,0(a5)
    12b2:	0001                	nop
    12b4:	4472                	lw	s0,28(sp)
    12b6:	6105                	addi	sp,sp,32
    12b8:	8082                	ret

000012ba <spi_get_status>:
    12ba:	1101                	addi	sp,sp,-32
    12bc:	ce22                	sw	s0,28(sp)
    12be:	1000                	addi	s0,sp,32
    12c0:	1a1027b7          	lui	a5,0x1a102
    12c4:	439c                	lw	a5,0(a5)
    12c6:	fef42623          	sw	a5,-20(s0)
    12ca:	fec42783          	lw	a5,-20(s0)
    12ce:	853e                	mv	a0,a5
    12d0:	4472                	lw	s0,28(sp)
    12d2:	6105                	addi	sp,sp,32
    12d4:	8082                	ret

000012d6 <spi_write_fifo>:
    12d6:	7179                	addi	sp,sp,-48
    12d8:	d622                	sw	s0,44(sp)
    12da:	1800                	addi	s0,sp,48
    12dc:	fca42e23          	sw	a0,-36(s0)
    12e0:	fcb42c23          	sw	a1,-40(s0)
    12e4:	fd842783          	lw	a5,-40(s0)
    12e8:	8795                	srai	a5,a5,0x5
    12ea:	7ff7f793          	andi	a5,a5,2047
    12ee:	fef42623          	sw	a5,-20(s0)
    12f2:	fd842783          	lw	a5,-40(s0)
    12f6:	8bfd                	andi	a5,a5,31
    12f8:	c791                	beqz	a5,1304 <spi_write_fifo+0x2e>
    12fa:	fec42783          	lw	a5,-20(s0)
    12fe:	0785                	addi	a5,a5,1
    1300:	fef42623          	sw	a5,-20(s0)
    1304:	fe042423          	sw	zero,-24(s0)
    1308:	a80d                	j	133a <spi_write_fifo+0x64>
    130a:	0001                	nop
    130c:	1a1027b7          	lui	a5,0x1a102
    1310:	439c                	lw	a5,0(a5)
    1312:	87e1                	srai	a5,a5,0x18
    1314:	0f87f793          	andi	a5,a5,248
    1318:	fbf5                	bnez	a5,130c <spi_write_fifo+0x36>
    131a:	fe842783          	lw	a5,-24(s0)
    131e:	078a                	slli	a5,a5,0x2
    1320:	fdc42703          	lw	a4,-36(s0)
    1324:	973e                	add	a4,a4,a5
    1326:	1a1027b7          	lui	a5,0x1a102
    132a:	07e1                	addi	a5,a5,24
    132c:	4318                	lw	a4,0(a4)
    132e:	c398                	sw	a4,0(a5)
    1330:	fe842783          	lw	a5,-24(s0)
    1334:	0785                	addi	a5,a5,1
    1336:	fef42423          	sw	a5,-24(s0)
    133a:	fe842703          	lw	a4,-24(s0)
    133e:	fec42783          	lw	a5,-20(s0)
    1342:	fcf744e3          	blt	a4,a5,130a <spi_write_fifo+0x34>
    1346:	0001                	nop
    1348:	0001                	nop
    134a:	5432                	lw	s0,44(sp)
    134c:	6145                	addi	sp,sp,48
    134e:	8082                	ret

00001350 <spi_read_fifo>:
    1350:	7179                	addi	sp,sp,-48
    1352:	d622                	sw	s0,44(sp)
    1354:	1800                	addi	s0,sp,48
    1356:	fca42e23          	sw	a0,-36(s0)
    135a:	fcb42c23          	sw	a1,-40(s0)
    135e:	fd842783          	lw	a5,-40(s0)
    1362:	8795                	srai	a5,a5,0x5
    1364:	7ff7f793          	andi	a5,a5,2047
    1368:	fef42623          	sw	a5,-20(s0)
    136c:	fd842783          	lw	a5,-40(s0)
    1370:	8bfd                	andi	a5,a5,31
    1372:	c791                	beqz	a5,137e <spi_read_fifo+0x2e>
    1374:	fec42783          	lw	a5,-20(s0)
    1378:	0785                	addi	a5,a5,1
    137a:	fef42623          	sw	a5,-20(s0)
    137e:	fe042423          	sw	zero,-24(s0)
    1382:	a815                	j	13b6 <spi_read_fifo+0x66>
    1384:	0001                	nop
    1386:	1a1027b7          	lui	a5,0x1a102
    138a:	439c                	lw	a5,0(a5)
    138c:	87c1                	srai	a5,a5,0x10
    138e:	0ff7f793          	andi	a5,a5,255
    1392:	dbf5                	beqz	a5,1386 <spi_read_fifo+0x36>
    1394:	1a1027b7          	lui	a5,0x1a102
    1398:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    139c:	fe842783          	lw	a5,-24(s0)
    13a0:	078a                	slli	a5,a5,0x2
    13a2:	fdc42683          	lw	a3,-36(s0)
    13a6:	97b6                	add	a5,a5,a3
    13a8:	4318                	lw	a4,0(a4)
    13aa:	c398                	sw	a4,0(a5)
    13ac:	fe842783          	lw	a5,-24(s0)
    13b0:	0785                	addi	a5,a5,1
    13b2:	fef42423          	sw	a5,-24(s0)
    13b6:	fe842703          	lw	a4,-24(s0)
    13ba:	fec42783          	lw	a5,-20(s0)
    13be:	fcf743e3          	blt	a4,a5,1384 <spi_read_fifo+0x34>
    13c2:	0001                	nop
    13c4:	0001                	nop
    13c6:	5432                	lw	s0,44(sp)
    13c8:	6145                	addi	sp,sp,48
    13ca:	8082                	ret

000013cc <default_exception_handler_c>:
    13cc:	1141                	addi	sp,sp,-16
    13ce:	c622                	sw	s0,12(sp)
    13d0:	0800                	addi	s0,sp,16
    13d2:	a001                	j	13d2 <default_exception_handler_c+0x6>

000013d4 <illegal_insn_handler_c>:
    13d4:	1141                	addi	sp,sp,-16
    13d6:	c622                	sw	s0,12(sp)
    13d8:	0800                	addi	s0,sp,16
    13da:	a001                	j	13da <illegal_insn_handler_c+0x6>

000013dc <ecall_insn_handler_c>:
    13dc:	1141                	addi	sp,sp,-16
    13de:	c622                	sw	s0,12(sp)
    13e0:	0800                	addi	s0,sp,16
    13e2:	a001                	j	13e2 <ecall_insn_handler_c+0x6>

000013e4 <ISR_SRAM>:
    13e4:	1141                	addi	sp,sp,-16
    13e6:	c622                	sw	s0,12(sp)
    13e8:	0800                	addi	s0,sp,16
    13ea:	a001                	j	13ea <ISR_SRAM+0x6>

000013ec <ISR_I2C>:
    13ec:	1141                	addi	sp,sp,-16
    13ee:	c622                	sw	s0,12(sp)
    13f0:	0800                	addi	s0,sp,16
    13f2:	a001                	j	13f2 <ISR_I2C+0x6>

000013f4 <ISR_UART>:
    13f4:	1141                	addi	sp,sp,-16
    13f6:	c622                	sw	s0,12(sp)
    13f8:	0800                	addi	s0,sp,16
    13fa:	a001                	j	13fa <ISR_UART+0x6>

000013fc <ISR_GPIO>:
    13fc:	1141                	addi	sp,sp,-16
    13fe:	c622                	sw	s0,12(sp)
    1400:	0800                	addi	s0,sp,16
    1402:	a001                	j	1402 <ISR_GPIO+0x6>

00001404 <ISR_SPIM0>:
    1404:	1141                	addi	sp,sp,-16
    1406:	c622                	sw	s0,12(sp)
    1408:	0800                	addi	s0,sp,16
    140a:	a001                	j	140a <ISR_SPIM0+0x6>

0000140c <ISR_SPIM1>:
    140c:	1141                	addi	sp,sp,-16
    140e:	c622                	sw	s0,12(sp)
    1410:	0800                	addi	s0,sp,16
    1412:	a001                	j	1412 <ISR_SPIM1+0x6>
    1414:	1141                	addi	sp,sp,-16
    1416:	c622                	sw	s0,12(sp)
    1418:	0800                	addi	s0,sp,16
    141a:	a001                	j	141a <ISR_SPIM1+0xe>

0000141c <ISR_TA_CMP>:
    141c:	1141                	addi	sp,sp,-16
    141e:	c622                	sw	s0,12(sp)
    1420:	0800                	addi	s0,sp,16
    1422:	a001                	j	1422 <ISR_TA_CMP+0x6>
    1424:	1141                	addi	sp,sp,-16
    1426:	c622                	sw	s0,12(sp)
    1428:	0800                	addi	s0,sp,16
    142a:	a001                	j	142a <ISR_TA_CMP+0xe>

0000142c <ISR_TB_CMP>:
    142c:	1141                	addi	sp,sp,-16
    142e:	c622                	sw	s0,12(sp)
    1430:	0800                	addi	s0,sp,16
    1432:	a001                	j	1432 <ISR_TB_CMP+0x6>

00001434 <uart_set_cfg>:
    1434:	1101                	addi	sp,sp,-32
    1436:	ce22                	sw	s0,28(sp)
    1438:	1000                	addi	s0,sp,32
    143a:	fea42623          	sw	a0,-20(s0)
    143e:	87ae                	mv	a5,a1
    1440:	fef41523          	sh	a5,-22(s0)
    1444:	1a1077b7          	lui	a5,0x1a107
    1448:	0791                	addi	a5,a5,4
    144a:	4398                	lw	a4,0(a5)
    144c:	1a1077b7          	lui	a5,0x1a107
    1450:	0791                	addi	a5,a5,4
    1452:	00276713          	ori	a4,a4,2
    1456:	c398                	sw	a4,0(a5)
    1458:	1a1007b7          	lui	a5,0x1a100
    145c:	07b1                	addi	a5,a5,12
    145e:	08300713          	li	a4,131
    1462:	c398                	sw	a4,0(a5)
    1464:	fea45783          	lhu	a5,-22(s0)
    1468:	83a1                	srli	a5,a5,0x8
    146a:	07c2                	slli	a5,a5,0x10
    146c:	83c1                	srli	a5,a5,0x10
    146e:	873e                	mv	a4,a5
    1470:	1a1007b7          	lui	a5,0x1a100
    1474:	0791                	addi	a5,a5,4
    1476:	0ff77713          	andi	a4,a4,255
    147a:	c398                	sw	a4,0(a5)
    147c:	fea45703          	lhu	a4,-22(s0)
    1480:	1a1007b7          	lui	a5,0x1a100
    1484:	0ff77713          	andi	a4,a4,255
    1488:	c398                	sw	a4,0(a5)
    148a:	1a1007b7          	lui	a5,0x1a100
    148e:	07a1                	addi	a5,a5,8
    1490:	0a700713          	li	a4,167
    1494:	c398                	sw	a4,0(a5)
    1496:	1a1007b7          	lui	a5,0x1a100
    149a:	07b1                	addi	a5,a5,12
    149c:	470d                	li	a4,3
    149e:	c398                	sw	a4,0(a5)
    14a0:	1a1007b7          	lui	a5,0x1a100
    14a4:	0791                	addi	a5,a5,4
    14a6:	439c                	lw	a5,0(a5)
    14a8:	0f07f713          	andi	a4,a5,240
    14ac:	1a1007b7          	lui	a5,0x1a100
    14b0:	0791                	addi	a5,a5,4
    14b2:	00276713          	ori	a4,a4,2
    14b6:	c398                	sw	a4,0(a5)
    14b8:	0001                	nop
    14ba:	4472                	lw	s0,28(sp)
    14bc:	6105                	addi	sp,sp,32
    14be:	8082                	ret

000014c0 <uart_send>:
    14c0:	7179                	addi	sp,sp,-48
    14c2:	d622                	sw	s0,44(sp)
    14c4:	1800                	addi	s0,sp,48
    14c6:	fca42e23          	sw	a0,-36(s0)
    14ca:	fcb42c23          	sw	a1,-40(s0)
    14ce:	a891                	j	1522 <uart_send+0x62>
    14d0:	0001                	nop
    14d2:	1a1007b7          	lui	a5,0x1a100
    14d6:	07d1                	addi	a5,a5,20
    14d8:	439c                	lw	a5,0(a5)
    14da:	0207f793          	andi	a5,a5,32
    14de:	dbf5                	beqz	a5,14d2 <uart_send+0x12>
    14e0:	fe042623          	sw	zero,-20(s0)
    14e4:	a035                	j	1510 <uart_send+0x50>
    14e6:	fdc42783          	lw	a5,-36(s0)
    14ea:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14ee:	fce42e23          	sw	a4,-36(s0)
    14f2:	0007c703          	lbu	a4,0(a5)
    14f6:	1a1007b7          	lui	a5,0x1a100
    14fa:	c398                	sw	a4,0(a5)
    14fc:	fd842783          	lw	a5,-40(s0)
    1500:	17fd                	addi	a5,a5,-1
    1502:	fcf42c23          	sw	a5,-40(s0)
    1506:	fec42783          	lw	a5,-20(s0)
    150a:	0785                	addi	a5,a5,1
    150c:	fef42623          	sw	a5,-20(s0)
    1510:	fec42703          	lw	a4,-20(s0)
    1514:	03f00793          	li	a5,63
    1518:	00e7e563          	bltu	a5,a4,1522 <uart_send+0x62>
    151c:	fd842783          	lw	a5,-40(s0)
    1520:	f3f9                	bnez	a5,14e6 <uart_send+0x26>
    1522:	fd842783          	lw	a5,-40(s0)
    1526:	f7cd                	bnez	a5,14d0 <uart_send+0x10>
    1528:	0001                	nop
    152a:	0001                	nop
    152c:	5432                	lw	s0,44(sp)
    152e:	6145                	addi	sp,sp,48
    1530:	8082                	ret

00001532 <uart_getchar>:
    1532:	1141                	addi	sp,sp,-16
    1534:	c622                	sw	s0,12(sp)
    1536:	0800                	addi	s0,sp,16
    1538:	0001                	nop
    153a:	1a1007b7          	lui	a5,0x1a100
    153e:	07d1                	addi	a5,a5,20
    1540:	439c                	lw	a5,0(a5)
    1542:	0017f713          	andi	a4,a5,1
    1546:	4785                	li	a5,1
    1548:	fef719e3          	bne	a4,a5,153a <uart_getchar+0x8>
    154c:	1a1007b7          	lui	a5,0x1a100
    1550:	439c                	lw	a5,0(a5)
    1552:	0ff7f793          	andi	a5,a5,255
    1556:	853e                	mv	a0,a5
    1558:	4432                	lw	s0,12(sp)
    155a:	0141                	addi	sp,sp,16
    155c:	8082                	ret

0000155e <uart_sendchar>:
    155e:	1101                	addi	sp,sp,-32
    1560:	ce22                	sw	s0,28(sp)
    1562:	1000                	addi	s0,sp,32
    1564:	87aa                	mv	a5,a0
    1566:	fef407a3          	sb	a5,-17(s0)
    156a:	0001                	nop
    156c:	1a1007b7          	lui	a5,0x1a100
    1570:	07d1                	addi	a5,a5,20
    1572:	439c                	lw	a5,0(a5)
    1574:	0207f793          	andi	a5,a5,32
    1578:	dbf5                	beqz	a5,156c <uart_sendchar+0xe>
    157a:	1a1007b7          	lui	a5,0x1a100
    157e:	fef44703          	lbu	a4,-17(s0)
    1582:	c398                	sw	a4,0(a5)
    1584:	0001                	nop
    1586:	4472                	lw	s0,28(sp)
    1588:	6105                	addi	sp,sp,32
    158a:	8082                	ret

0000158c <uart_wait_tx_done>:
    158c:	1141                	addi	sp,sp,-16
    158e:	c622                	sw	s0,12(sp)
    1590:	0800                	addi	s0,sp,16
    1592:	0001                	nop
    1594:	1a1007b7          	lui	a5,0x1a100
    1598:	07d1                	addi	a5,a5,20
    159a:	439c                	lw	a5,0(a5)
    159c:	0407f793          	andi	a5,a5,64
    15a0:	dbf5                	beqz	a5,1594 <uart_wait_tx_done+0x8>
    15a2:	0001                	nop
    15a4:	0001                	nop
    15a6:	4432                	lw	s0,12(sp)
    15a8:	0141                	addi	sp,sp,16
    15aa:	8082                	ret

000015ac <uart_mysendstring>:
    15ac:	7179                	addi	sp,sp,-48
    15ae:	d606                	sw	ra,44(sp)
    15b0:	d422                	sw	s0,40(sp)
    15b2:	1800                	addi	s0,sp,48
    15b4:	fca42e23          	sw	a0,-36(s0)
    15b8:	fe042623          	sw	zero,-20(s0)
    15bc:	a839                	j	15da <uart_mysendstring+0x2e>
    15be:	fec42783          	lw	a5,-20(s0)
    15c2:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    15c6:	fee42623          	sw	a4,-20(s0)
    15ca:	873e                	mv	a4,a5
    15cc:	fdc42783          	lw	a5,-36(s0)
    15d0:	97ba                	add	a5,a5,a4
    15d2:	0007c783          	lbu	a5,0(a5)
    15d6:	853e                	mv	a0,a5
    15d8:	3759                	jal	155e <uart_sendchar>
    15da:	fec42783          	lw	a5,-20(s0)
    15de:	17fd                	addi	a5,a5,-1
    15e0:	fdc42703          	lw	a4,-36(s0)
    15e4:	97ba                	add	a5,a5,a4
    15e6:	0007c703          	lbu	a4,0(a5)
    15ea:	47a9                	li	a5,10
    15ec:	00f70863          	beq	a4,a5,15fc <uart_mysendstring+0x50>
    15f0:	fec42703          	lw	a4,-20(s0)
    15f4:	02700793          	li	a5,39
    15f8:	fce7d3e3          	bge	a5,a4,15be <uart_mysendstring+0x12>
    15fc:	0001                	nop
    15fe:	50b2                	lw	ra,44(sp)
    1600:	5422                	lw	s0,40(sp)
    1602:	6145                	addi	sp,sp,48
    1604:	8082                	ret

00001606 <uart_getstring>:
    1606:	1101                	addi	sp,sp,-32
    1608:	ce06                	sw	ra,28(sp)
    160a:	cc22                	sw	s0,24(sp)
    160c:	ca26                	sw	s1,20(sp)
    160e:	1000                	addi	s0,sp,32
    1610:	fea42623          	sw	a0,-20(s0)
    1614:	0001                	nop
    1616:	fec42483          	lw	s1,-20(s0)
    161a:	00148793          	addi	a5,s1,1
    161e:	fef42623          	sw	a5,-20(s0)
    1622:	3f01                	jal	1532 <uart_getchar>
    1624:	87aa                	mv	a5,a0
    1626:	00f48023          	sb	a5,0(s1)
    162a:	0004c703          	lbu	a4,0(s1)
    162e:	47a9                	li	a5,10
    1630:	fef713e3          	bne	a4,a5,1616 <uart_getstring+0x10>
    1634:	fec42783          	lw	a5,-20(s0)
    1638:	00078023          	sb	zero,0(a5)
    163c:	0001                	nop
    163e:	40f2                	lw	ra,28(sp)
    1640:	4462                	lw	s0,24(sp)
    1642:	44d2                	lw	s1,20(sp)
    1644:	6105                	addi	sp,sp,32
    1646:	8082                	ret

00001648 <__CTOR_LIST__>:
	...

00001650 <__CTOR_END__>:
	...

Disassembly of section .rodata:

00001658 <.rodata>:
    1658:	5f757063          	bgeu	a0,s7,1c38 <_bss_end+0x544>
    165c:	6570                	flw	fa2,76(a0)
    165e:	6672                	flw	fa2,28(sp)
    1660:	735f 7465 203a      	0x203a7465735f
    1666:	6f6e                	flw	ft10,216(sp)
    1668:	2074                	fld	fa3,192(s0)
    166a:	6d69                	lui	s10,0x1a
    166c:	6c70                	flw	fa2,92(s0)
    166e:	6d65                	lui	s10,0x19
    1670:	6e65                	lui	t3,0x19
    1672:	6574                	flw	fa3,76(a0)
    1674:	2064                	fld	fs1,192(s0)
    1676:	6579                	lui	a0,0x1e
    1678:	0074                	addi	a3,sp,12
    167a:	0000                	unimp
    167c:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1680:	6425                	lui	s0,0x9
    1682:	6e20                	flw	fs0,88(a2)
    1684:	7920746f          	jal	s0,8e16 <_stack+0x6722>
    1688:	7465                	lui	s0,0xffff9
    168a:	7320                	flw	fs0,96(a4)
    168c:	7075                	c.lui	zero,0xffffd
    168e:	6f70                	flw	fa2,92(a4)
    1690:	7472                	flw	fs0,60(sp)
    1692:	6465                	lui	s0,0x19
    1694:	000a                	c.slli	zero,0x2
    1696:	0000                	unimp
    1698:	01c0                	addi	s0,sp,196
    169a:	0000                	unimp
    169c:	01ca                	slli	gp,gp,0x12
    169e:	0000                	unimp
    16a0:	01d4                	addi	a3,sp,196
    16a2:	0000                	unimp
    16a4:	01de                	slli	gp,gp,0x17
    16a6:	0000                	unimp
    16a8:	01e8                	addi	a0,sp,204
    16aa:	0000                	unimp
    16ac:	01f2                	slli	gp,gp,0x1c
    16ae:	0000                	unimp
    16b0:	01fc                	addi	a5,sp,204
    16b2:	0000                	unimp
    16b4:	0206                	slli	tp,tp,0x1
    16b6:	0000                	unimp
    16b8:	0210                	addi	a2,sp,256
    16ba:	0000                	unimp
    16bc:	021a                	slli	tp,tp,0x6
    16be:	0000                	unimp
    16c0:	0224                	addi	s1,sp,264
    16c2:	0000                	unimp
    16c4:	022e                	slli	tp,tp,0xb
    16c6:	0000                	unimp
    16c8:	0238                	addi	a4,sp,264
    16ca:	0000                	unimp
    16cc:	0242                	slli	tp,tp,0x10
    16ce:	0000                	unimp
    16d0:	024c                	addi	a1,sp,260
    16d2:	0000                	unimp
    16d4:	0256                	slli	tp,tp,0x15
    16d6:	0000                	unimp
    16d8:	6e28                	flw	fa0,88(a2)
    16da:	6c75                	lui	s8,0x1d
    16dc:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

000016df <.shbss>:
	...

Disassembly of section .data:

000016e0 <remu10_table>:
    16e0:	0100                	addi	s0,sp,128
    16e2:	0202                	c.slli64	tp
    16e4:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x1695c>
    16e8:	0605                	addi	a2,a2,1
    16ea:	08080707          	0x8080707
    16ee:	0009                	c.nop	2

Disassembly of section .sdata:

000016f0 <led_num>:
    16f0:	0002                	c.slli64	zero
	...

Disassembly of section .stack:

000016f4 <_stack-0x1000>:
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

