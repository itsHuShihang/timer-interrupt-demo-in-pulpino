
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
     180:	64878513          	addi	a0,a5,1608 # 1648 <__DTOR_END__>
     184:	263000ef          	jal	ra,be6 <puts>
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
     1b6:	68878793          	addi	a5,a5,1672 # 1688 <__DTOR_END__+0x40>
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
     266:	66c78513          	addi	a0,a5,1644 # 166c <__DTOR_END__+0x24>
     26a:	12d000ef          	jal	ra,b96 <printf>
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
     2ae:	43a70713          	addi	a4,a4,1082 # 16e4 <_bss_end>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	43278793          	addi	a5,a5,1074 # 16e4 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	158010ef          	jal	ra,1424 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	230000ef          	jal	ra,504 <main>
     2d8:	842a                	mv	s0,a0
     2da:	2a2010ef          	jal	ra,157c <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0e40106f          	j	13d4 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0d80106f          	j	13dc <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0cc0106f          	j	13e4 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0c00106f          	j	13ec <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0b40106f          	j	13f4 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	0a80106f          	j	13fc <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	0a40106f          	j	140c <ISR_TA_CMP>

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
     390:	08c0106f          	j	141c <ISR_TB_CMP>

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
     3b8:	00c0106f          	j	13c4 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	0000106f          	j	13cc <ecall_insn_handler_c>

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
     486:	6e07a703          	lw	a4,1760(a5) # 16e0 <led_num>
     48a:	4791                	li	a5,4
     48c:	00e7cb63          	blt	a5,a4,4a2 <ISR_TA_OVF+0x26>
     490:	6785                	lui	a5,0x1
     492:	6e07a783          	lw	a5,1760(a5) # 16e0 <led_num>
     496:	00178713          	addi	a4,a5,1
     49a:	6785                	lui	a5,0x1
     49c:	6ee7a023          	sw	a4,1760(a5) # 16e0 <led_num>
     4a0:	a021                	j	4a8 <ISR_TA_OVF+0x2c>
     4a2:	6785                	lui	a5,0x1
     4a4:	6e07a023          	sw	zero,1760(a5) # 16e0 <led_num>
     4a8:	6785                	lui	a5,0x1
     4aa:	6e07a783          	lw	a5,1760(a5) # 16e0 <led_num>
     4ae:	4585                	li	a1,1
     4b0:	853e                	mv	a0,a5
     4b2:	273000ef          	jal	ra,f24 <set_gpio_pin_value>
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
     4ca:	6e07a703          	lw	a4,1760(a5) # 16e0 <led_num>
     4ce:	4791                	li	a5,4
     4d0:	00e7cb63          	blt	a5,a4,4e6 <ISR_TB_OVF+0x26>
     4d4:	6785                	lui	a5,0x1
     4d6:	6e07a783          	lw	a5,1760(a5) # 16e0 <led_num>
     4da:	00178713          	addi	a4,a5,1
     4de:	6785                	lui	a5,0x1
     4e0:	6ee7a023          	sw	a4,1760(a5) # 16e0 <led_num>
     4e4:	a021                	j	4ec <ISR_TB_OVF+0x2c>
     4e6:	6785                	lui	a5,0x1
     4e8:	6e07a023          	sw	zero,1760(a5) # 16e0 <led_num>
     4ec:	6785                	lui	a5,0x1
     4ee:	6e07a783          	lw	a5,1760(a5) # 16e0 <led_num>
     4f2:	4585                	li	a1,1
     4f4:	853e                	mv	a0,a5
     4f6:	22f000ef          	jal	ra,f24 <set_gpio_pin_value>
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
     518:	17b000ef          	jal	ra,e92 <set_gpio_pin_direction>
     51c:	4581                	li	a1,0
     51e:	fec42503          	lw	a0,-20(s0)
     522:	203000ef          	jal	ra,f24 <set_gpio_pin_value>
     526:	fec42783          	lw	a5,-20(s0)
     52a:	0785                	addi	a5,a5,1
     52c:	fef42623          	sw	a5,-20(s0)
     530:	fec42703          	lw	a4,-20(s0)
     534:	4791                	li	a5,4
     536:	fce7dee3          	bge	a5,a4,512 <main+0xe>
     53a:	3dc1                	jal	40a <int_enable>
     53c:	3e81                	jal	8c <reset_timer>
     53e:	3695                	jal	a2 <start_timer>
     540:	3dd5                	jal	434 <configure>
     542:	fe042423          	sw	zero,-24(s0)
     546:	fe042423          	sw	zero,-24(s0)
     54a:	4585                	li	a1,1
     54c:	4505                	li	a0,1
     54e:	1d7000ef          	jal	ra,f24 <set_gpio_pin_value>
     552:	fe842783          	lw	a5,-24(s0)
     556:	e789                	bnez	a5,560 <main+0x5c>
     558:	4785                	li	a5,1
     55a:	fef42423          	sw	a5,-24(s0)
     55e:	a019                	j	564 <main+0x60>
     560:	fe042423          	sw	zero,-24(s0)
     564:	fe842583          	lw	a1,-24(s0)
     568:	4515                	li	a0,5
     56a:	1bb000ef          	jal	ra,f24 <set_gpio_pin_value>
     56e:	bfe1                	j	546 <main+0x42>

00000570 <divu10>:
     570:	7179                	addi	sp,sp,-48
     572:	d622                	sw	s0,44(sp)
     574:	1800                	addi	s0,sp,48
     576:	fca42e23          	sw	a0,-36(s0)
     57a:	fdc42783          	lw	a5,-36(s0)
     57e:	0017d713          	srli	a4,a5,0x1
     582:	fdc42783          	lw	a5,-36(s0)
     586:	8389                	srli	a5,a5,0x2
     588:	97ba                	add	a5,a5,a4
     58a:	fef42623          	sw	a5,-20(s0)
     58e:	fec42783          	lw	a5,-20(s0)
     592:	8391                	srli	a5,a5,0x4
     594:	fec42703          	lw	a4,-20(s0)
     598:	97ba                	add	a5,a5,a4
     59a:	fef42623          	sw	a5,-20(s0)
     59e:	fec42783          	lw	a5,-20(s0)
     5a2:	83a1                	srli	a5,a5,0x8
     5a4:	fec42703          	lw	a4,-20(s0)
     5a8:	97ba                	add	a5,a5,a4
     5aa:	fef42623          	sw	a5,-20(s0)
     5ae:	fec42783          	lw	a5,-20(s0)
     5b2:	83c1                	srli	a5,a5,0x10
     5b4:	fec42703          	lw	a4,-20(s0)
     5b8:	97ba                	add	a5,a5,a4
     5ba:	fef42623          	sw	a5,-20(s0)
     5be:	fec42783          	lw	a5,-20(s0)
     5c2:	838d                	srli	a5,a5,0x3
     5c4:	fef42623          	sw	a5,-20(s0)
     5c8:	fec42703          	lw	a4,-20(s0)
     5cc:	87ba                	mv	a5,a4
     5ce:	078a                	slli	a5,a5,0x2
     5d0:	97ba                	add	a5,a5,a4
     5d2:	0786                	slli	a5,a5,0x1
     5d4:	873e                	mv	a4,a5
     5d6:	fdc42783          	lw	a5,-36(s0)
     5da:	8f99                	sub	a5,a5,a4
     5dc:	fef42423          	sw	a5,-24(s0)
     5e0:	fe842783          	lw	a5,-24(s0)
     5e4:	0799                	addi	a5,a5,6
     5e6:	0047d713          	srli	a4,a5,0x4
     5ea:	fec42783          	lw	a5,-20(s0)
     5ee:	97ba                	add	a5,a5,a4
     5f0:	853e                	mv	a0,a5
     5f2:	5432                	lw	s0,44(sp)
     5f4:	6145                	addi	sp,sp,48
     5f6:	8082                	ret

000005f8 <remu10>:
     5f8:	1101                	addi	sp,sp,-32
     5fa:	ce22                	sw	s0,28(sp)
     5fc:	1000                	addi	s0,sp,32
     5fe:	fea42623          	sw	a0,-20(s0)
     602:	fec42703          	lw	a4,-20(s0)
     606:	1999a7b7          	lui	a5,0x1999a
     60a:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     60e:	02f70733          	mul	a4,a4,a5
     612:	fec42783          	lw	a5,-20(s0)
     616:	8385                	srli	a5,a5,0x1
     618:	973e                	add	a4,a4,a5
     61a:	fec42783          	lw	a5,-20(s0)
     61e:	838d                	srli	a5,a5,0x3
     620:	97ba                	add	a5,a5,a4
     622:	83f1                	srli	a5,a5,0x1c
     624:	fef42623          	sw	a5,-20(s0)
     628:	6785                	lui	a5,0x1
     62a:	6d078713          	addi	a4,a5,1744 # 16d0 <remu10_table>
     62e:	fec42783          	lw	a5,-20(s0)
     632:	97ba                	add	a5,a5,a4
     634:	0007c783          	lbu	a5,0(a5)
     638:	853e                	mv	a0,a5
     63a:	4472                	lw	s0,28(sp)
     63c:	6105                	addi	sp,sp,32
     63e:	8082                	ret

00000640 <putchar>:
     640:	1101                	addi	sp,sp,-32
     642:	ce06                	sw	ra,28(sp)
     644:	cc22                	sw	s0,24(sp)
     646:	1000                	addi	s0,sp,32
     648:	fea42623          	sw	a0,-20(s0)
     64c:	fec42783          	lw	a5,-20(s0)
     650:	0ff7f793          	andi	a5,a5,255
     654:	853e                	mv	a0,a5
     656:	6f9000ef          	jal	ra,154e <uart_sendchar>
     65a:	fec42783          	lw	a5,-20(s0)
     65e:	853e                	mv	a0,a5
     660:	40f2                	lw	ra,28(sp)
     662:	4462                	lw	s0,24(sp)
     664:	6105                	addi	sp,sp,32
     666:	8082                	ret

00000668 <qprintchar>:
     668:	1101                	addi	sp,sp,-32
     66a:	ce06                	sw	ra,28(sp)
     66c:	cc22                	sw	s0,24(sp)
     66e:	1000                	addi	s0,sp,32
     670:	fea42623          	sw	a0,-20(s0)
     674:	feb42423          	sw	a1,-24(s0)
     678:	fec42783          	lw	a5,-20(s0)
     67c:	c39d                	beqz	a5,6a2 <qprintchar+0x3a>
     67e:	fec42783          	lw	a5,-20(s0)
     682:	439c                	lw	a5,0(a5)
     684:	fe842703          	lw	a4,-24(s0)
     688:	0ff77713          	andi	a4,a4,255
     68c:	00e78023          	sb	a4,0(a5)
     690:	fec42783          	lw	a5,-20(s0)
     694:	439c                	lw	a5,0(a5)
     696:	00178713          	addi	a4,a5,1
     69a:	fec42783          	lw	a5,-20(s0)
     69e:	c398                	sw	a4,0(a5)
     6a0:	a039                	j	6ae <qprintchar+0x46>
     6a2:	fe842783          	lw	a5,-24(s0)
     6a6:	0ff7f793          	andi	a5,a5,255
     6aa:	853e                	mv	a0,a5
     6ac:	3f51                	jal	640 <putchar>
     6ae:	0001                	nop
     6b0:	40f2                	lw	ra,28(sp)
     6b2:	4462                	lw	s0,24(sp)
     6b4:	6105                	addi	sp,sp,32
     6b6:	8082                	ret

000006b8 <qprints>:
     6b8:	7179                	addi	sp,sp,-48
     6ba:	d606                	sw	ra,44(sp)
     6bc:	d422                	sw	s0,40(sp)
     6be:	d226                	sw	s1,36(sp)
     6c0:	d04a                	sw	s2,32(sp)
     6c2:	ce4e                	sw	s3,28(sp)
     6c4:	cc52                	sw	s4,24(sp)
     6c6:	1800                	addi	s0,sp,48
     6c8:	fca42e23          	sw	a0,-36(s0)
     6cc:	fcb42c23          	sw	a1,-40(s0)
     6d0:	fcc42a23          	sw	a2,-44(s0)
     6d4:	fcd42823          	sw	a3,-48(s0)
     6d8:	4481                	li	s1,0
     6da:	02000a13          	li	s4,32
     6de:	fd442783          	lw	a5,-44(s0)
     6e2:	02f05e63          	blez	a5,71e <qprints+0x66>
     6e6:	4901                	li	s2,0
     6e8:	fd842983          	lw	s3,-40(s0)
     6ec:	a019                	j	6f2 <qprints+0x3a>
     6ee:	0905                	addi	s2,s2,1
     6f0:	0985                	addi	s3,s3,1
     6f2:	0009c783          	lbu	a5,0(s3)
     6f6:	ffe5                	bnez	a5,6ee <qprints+0x36>
     6f8:	fd442783          	lw	a5,-44(s0)
     6fc:	00f94563          	blt	s2,a5,706 <qprints+0x4e>
     700:	fc042a23          	sw	zero,-44(s0)
     704:	a039                	j	712 <qprints+0x5a>
     706:	fd442783          	lw	a5,-44(s0)
     70a:	412787b3          	sub	a5,a5,s2
     70e:	fcf42a23          	sw	a5,-44(s0)
     712:	fd042783          	lw	a5,-48(s0)
     716:	8b89                	andi	a5,a5,2
     718:	c399                	beqz	a5,71e <qprints+0x66>
     71a:	03000a13          	li	s4,48
     71e:	fd042783          	lw	a5,-48(s0)
     722:	8b85                	andi	a5,a5,1
     724:	ef9d                	bnez	a5,762 <qprints+0xaa>
     726:	a819                	j	73c <qprints+0x84>
     728:	85d2                	mv	a1,s4
     72a:	fdc42503          	lw	a0,-36(s0)
     72e:	3f2d                	jal	668 <qprintchar>
     730:	0485                	addi	s1,s1,1
     732:	fd442783          	lw	a5,-44(s0)
     736:	17fd                	addi	a5,a5,-1
     738:	fcf42a23          	sw	a5,-44(s0)
     73c:	fd442783          	lw	a5,-44(s0)
     740:	fef044e3          	bgtz	a5,728 <qprints+0x70>
     744:	a839                	j	762 <qprints+0xaa>
     746:	fd842783          	lw	a5,-40(s0)
     74a:	0007c783          	lbu	a5,0(a5)
     74e:	85be                	mv	a1,a5
     750:	fdc42503          	lw	a0,-36(s0)
     754:	3f11                	jal	668 <qprintchar>
     756:	0485                	addi	s1,s1,1
     758:	fd842783          	lw	a5,-40(s0)
     75c:	0785                	addi	a5,a5,1
     75e:	fcf42c23          	sw	a5,-40(s0)
     762:	fd842783          	lw	a5,-40(s0)
     766:	0007c783          	lbu	a5,0(a5)
     76a:	fff1                	bnez	a5,746 <qprints+0x8e>
     76c:	a819                	j	782 <qprints+0xca>
     76e:	85d2                	mv	a1,s4
     770:	fdc42503          	lw	a0,-36(s0)
     774:	3dd5                	jal	668 <qprintchar>
     776:	0485                	addi	s1,s1,1
     778:	fd442783          	lw	a5,-44(s0)
     77c:	17fd                	addi	a5,a5,-1
     77e:	fcf42a23          	sw	a5,-44(s0)
     782:	fd442783          	lw	a5,-44(s0)
     786:	fef044e3          	bgtz	a5,76e <qprints+0xb6>
     78a:	87a6                	mv	a5,s1
     78c:	853e                	mv	a0,a5
     78e:	50b2                	lw	ra,44(sp)
     790:	5422                	lw	s0,40(sp)
     792:	5492                	lw	s1,36(sp)
     794:	5902                	lw	s2,32(sp)
     796:	49f2                	lw	s3,28(sp)
     798:	4a62                	lw	s4,24(sp)
     79a:	6145                	addi	sp,sp,48
     79c:	8082                	ret

0000079e <qprinti>:
     79e:	7159                	addi	sp,sp,-112
     7a0:	d686                	sw	ra,108(sp)
     7a2:	d4a2                	sw	s0,104(sp)
     7a4:	d2a6                	sw	s1,100(sp)
     7a6:	d0ca                	sw	s2,96(sp)
     7a8:	cece                	sw	s3,92(sp)
     7aa:	1880                	addi	s0,sp,112
     7ac:	faa42623          	sw	a0,-84(s0)
     7b0:	fab42423          	sw	a1,-88(s0)
     7b4:	fac42223          	sw	a2,-92(s0)
     7b8:	fad42023          	sw	a3,-96(s0)
     7bc:	f8e42e23          	sw	a4,-100(s0)
     7c0:	f8f42c23          	sw	a5,-104(s0)
     7c4:	87c2                	mv	a5,a6
     7c6:	f8f40ba3          	sb	a5,-105(s0)
     7ca:	4981                	li	s3,0
     7cc:	4901                	li	s2,0
     7ce:	fa842783          	lw	a5,-88(s0)
     7d2:	fcf42e23          	sw	a5,-36(s0)
     7d6:	fa842783          	lw	a5,-88(s0)
     7da:	e39d                	bnez	a5,800 <qprinti+0x62>
     7dc:	03000793          	li	a5,48
     7e0:	faf40c23          	sb	a5,-72(s0)
     7e4:	fa040ca3          	sb	zero,-71(s0)
     7e8:	fb840793          	addi	a5,s0,-72
     7ec:	f9842683          	lw	a3,-104(s0)
     7f0:	f9c42603          	lw	a2,-100(s0)
     7f4:	85be                	mv	a1,a5
     7f6:	fac42503          	lw	a0,-84(s0)
     7fa:	3d7d                	jal	6b8 <qprints>
     7fc:	87aa                	mv	a5,a0
     7fe:	a8fd                	j	8fc <qprinti+0x15e>
     800:	fa042783          	lw	a5,-96(s0)
     804:	c38d                	beqz	a5,826 <qprinti+0x88>
     806:	fa442703          	lw	a4,-92(s0)
     80a:	47a9                	li	a5,10
     80c:	00f71d63          	bne	a4,a5,826 <qprinti+0x88>
     810:	fa842783          	lw	a5,-88(s0)
     814:	0007d963          	bgez	a5,826 <qprinti+0x88>
     818:	4985                	li	s3,1
     81a:	fa842783          	lw	a5,-88(s0)
     81e:	40f007b3          	neg	a5,a5
     822:	fcf42e23          	sw	a5,-36(s0)
     826:	fb840493          	addi	s1,s0,-72
     82a:	04fd                	addi	s1,s1,31
     82c:	00048023          	sb	zero,0(s1)
     830:	fa442703          	lw	a4,-92(s0)
     834:	47c1                	li	a5,16
     836:	06f71c63          	bne	a4,a5,8ae <qprinti+0x110>
     83a:	a0a1                	j	882 <qprinti+0xe4>
     83c:	fdc42783          	lw	a5,-36(s0)
     840:	8bbd                	andi	a5,a5,15
     842:	fcf42c23          	sw	a5,-40(s0)
     846:	fd842703          	lw	a4,-40(s0)
     84a:	47a5                	li	a5,9
     84c:	00e7db63          	bge	a5,a4,862 <qprinti+0xc4>
     850:	f9744783          	lbu	a5,-105(s0)
     854:	fc678793          	addi	a5,a5,-58
     858:	fd842703          	lw	a4,-40(s0)
     85c:	97ba                	add	a5,a5,a4
     85e:	fcf42c23          	sw	a5,-40(s0)
     862:	fd842783          	lw	a5,-40(s0)
     866:	0ff7f793          	andi	a5,a5,255
     86a:	14fd                	addi	s1,s1,-1
     86c:	03078793          	addi	a5,a5,48
     870:	0ff7f793          	andi	a5,a5,255
     874:	00f48023          	sb	a5,0(s1)
     878:	fdc42783          	lw	a5,-36(s0)
     87c:	8391                	srli	a5,a5,0x4
     87e:	fcf42e23          	sw	a5,-36(s0)
     882:	fdc42783          	lw	a5,-36(s0)
     886:	fbdd                	bnez	a5,83c <qprinti+0x9e>
     888:	a035                	j	8b4 <qprinti+0x116>
     88a:	fdc42503          	lw	a0,-36(s0)
     88e:	33ad                	jal	5f8 <remu10>
     890:	87aa                	mv	a5,a0
     892:	0ff7f793          	andi	a5,a5,255
     896:	14fd                	addi	s1,s1,-1
     898:	03078793          	addi	a5,a5,48
     89c:	0ff7f793          	andi	a5,a5,255
     8a0:	00f48023          	sb	a5,0(s1)
     8a4:	fdc42503          	lw	a0,-36(s0)
     8a8:	31e1                	jal	570 <divu10>
     8aa:	fca42e23          	sw	a0,-36(s0)
     8ae:	fdc42783          	lw	a5,-36(s0)
     8b2:	ffe1                	bnez	a5,88a <qprinti+0xec>
     8b4:	02098a63          	beqz	s3,8e8 <qprinti+0x14a>
     8b8:	f9c42783          	lw	a5,-100(s0)
     8bc:	c38d                	beqz	a5,8de <qprinti+0x140>
     8be:	f9842783          	lw	a5,-104(s0)
     8c2:	8b89                	andi	a5,a5,2
     8c4:	cf89                	beqz	a5,8de <qprinti+0x140>
     8c6:	02d00593          	li	a1,45
     8ca:	fac42503          	lw	a0,-84(s0)
     8ce:	3b69                	jal	668 <qprintchar>
     8d0:	0905                	addi	s2,s2,1
     8d2:	f9c42783          	lw	a5,-100(s0)
     8d6:	17fd                	addi	a5,a5,-1
     8d8:	f8f42e23          	sw	a5,-100(s0)
     8dc:	a031                	j	8e8 <qprinti+0x14a>
     8de:	14fd                	addi	s1,s1,-1
     8e0:	02d00793          	li	a5,45
     8e4:	00f48023          	sb	a5,0(s1)
     8e8:	f9842683          	lw	a3,-104(s0)
     8ec:	f9c42603          	lw	a2,-100(s0)
     8f0:	85a6                	mv	a1,s1
     8f2:	fac42503          	lw	a0,-84(s0)
     8f6:	33c9                	jal	6b8 <qprints>
     8f8:	87aa                	mv	a5,a0
     8fa:	97ca                	add	a5,a5,s2
     8fc:	853e                	mv	a0,a5
     8fe:	50b6                	lw	ra,108(sp)
     900:	5426                	lw	s0,104(sp)
     902:	5496                	lw	s1,100(sp)
     904:	5906                	lw	s2,96(sp)
     906:	49f6                	lw	s3,92(sp)
     908:	6165                	addi	sp,sp,112
     90a:	8082                	ret

0000090c <qprint>:
     90c:	7139                	addi	sp,sp,-64
     90e:	de06                	sw	ra,60(sp)
     910:	dc22                	sw	s0,56(sp)
     912:	da26                	sw	s1,52(sp)
     914:	d84a                	sw	s2,48(sp)
     916:	d64e                	sw	s3,44(sp)
     918:	0080                	addi	s0,sp,64
     91a:	fca42623          	sw	a0,-52(s0)
     91e:	fcb42423          	sw	a1,-56(s0)
     922:	fcc42223          	sw	a2,-60(s0)
     926:	4481                	li	s1,0
     928:	ac35                	j	b64 <qprint+0x258>
     92a:	fc842783          	lw	a5,-56(s0)
     92e:	0007c703          	lbu	a4,0(a5)
     932:	02500793          	li	a5,37
     936:	20f71663          	bne	a4,a5,b42 <qprint+0x236>
     93a:	fc842783          	lw	a5,-56(s0)
     93e:	0785                	addi	a5,a5,1
     940:	fcf42423          	sw	a5,-56(s0)
     944:	4981                	li	s3,0
     946:	894e                	mv	s2,s3
     948:	fc842783          	lw	a5,-56(s0)
     94c:	0007c783          	lbu	a5,0(a5)
     950:	22078163          	beqz	a5,b72 <qprint+0x266>
     954:	fc842783          	lw	a5,-56(s0)
     958:	0007c703          	lbu	a4,0(a5)
     95c:	02500793          	li	a5,37
     960:	1ef70363          	beq	a4,a5,b46 <qprint+0x23a>
     964:	fc842783          	lw	a5,-56(s0)
     968:	0007c703          	lbu	a4,0(a5)
     96c:	02d00793          	li	a5,45
     970:	02f71063          	bne	a4,a5,990 <qprint+0x84>
     974:	fc842783          	lw	a5,-56(s0)
     978:	0785                	addi	a5,a5,1
     97a:	fcf42423          	sw	a5,-56(s0)
     97e:	4985                	li	s3,1
     980:	a801                	j	990 <qprint+0x84>
     982:	fc842783          	lw	a5,-56(s0)
     986:	0785                	addi	a5,a5,1
     988:	fcf42423          	sw	a5,-56(s0)
     98c:	0029e993          	ori	s3,s3,2
     990:	fc842783          	lw	a5,-56(s0)
     994:	0007c703          	lbu	a4,0(a5)
     998:	03000793          	li	a5,48
     99c:	fef703e3          	beq	a4,a5,982 <qprint+0x76>
     9a0:	a015                	j	9c4 <qprint+0xb8>
     9a2:	87ca                	mv	a5,s2
     9a4:	078a                	slli	a5,a5,0x2
     9a6:	97ca                	add	a5,a5,s2
     9a8:	0786                	slli	a5,a5,0x1
     9aa:	893e                	mv	s2,a5
     9ac:	fc842783          	lw	a5,-56(s0)
     9b0:	0007c783          	lbu	a5,0(a5)
     9b4:	fd078793          	addi	a5,a5,-48
     9b8:	993e                	add	s2,s2,a5
     9ba:	fc842783          	lw	a5,-56(s0)
     9be:	0785                	addi	a5,a5,1
     9c0:	fcf42423          	sw	a5,-56(s0)
     9c4:	fc842783          	lw	a5,-56(s0)
     9c8:	0007c703          	lbu	a4,0(a5)
     9cc:	02f00793          	li	a5,47
     9d0:	00e7fa63          	bgeu	a5,a4,9e4 <qprint+0xd8>
     9d4:	fc842783          	lw	a5,-56(s0)
     9d8:	0007c703          	lbu	a4,0(a5)
     9dc:	03900793          	li	a5,57
     9e0:	fce7f1e3          	bgeu	a5,a4,9a2 <qprint+0x96>
     9e4:	fc842783          	lw	a5,-56(s0)
     9e8:	0007c703          	lbu	a4,0(a5)
     9ec:	07300793          	li	a5,115
     9f0:	02f71a63          	bne	a4,a5,a24 <qprint+0x118>
     9f4:	fc442783          	lw	a5,-60(s0)
     9f8:	00478713          	addi	a4,a5,4
     9fc:	fce42223          	sw	a4,-60(s0)
     a00:	0007a083          	lw	ra,0(a5)
     a04:	00008463          	beqz	ra,a0c <qprint+0x100>
     a08:	8786                	mv	a5,ra
     a0a:	a021                	j	a12 <qprint+0x106>
     a0c:	6785                	lui	a5,0x1
     a0e:	6c878793          	addi	a5,a5,1736 # 16c8 <__DTOR_END__+0x80>
     a12:	86ce                	mv	a3,s3
     a14:	864a                	mv	a2,s2
     a16:	85be                	mv	a1,a5
     a18:	fcc42503          	lw	a0,-52(s0)
     a1c:	3971                	jal	6b8 <qprints>
     a1e:	87aa                	mv	a5,a0
     a20:	94be                	add	s1,s1,a5
     a22:	aa25                	j	b5a <qprint+0x24e>
     a24:	fc842783          	lw	a5,-56(s0)
     a28:	0007c703          	lbu	a4,0(a5)
     a2c:	06400793          	li	a5,100
     a30:	02f71563          	bne	a4,a5,a5a <qprint+0x14e>
     a34:	fc442783          	lw	a5,-60(s0)
     a38:	00478713          	addi	a4,a5,4
     a3c:	fce42223          	sw	a4,-60(s0)
     a40:	438c                	lw	a1,0(a5)
     a42:	06100813          	li	a6,97
     a46:	87ce                	mv	a5,s3
     a48:	874a                	mv	a4,s2
     a4a:	4685                	li	a3,1
     a4c:	4629                	li	a2,10
     a4e:	fcc42503          	lw	a0,-52(s0)
     a52:	33b1                	jal	79e <qprinti>
     a54:	87aa                	mv	a5,a0
     a56:	94be                	add	s1,s1,a5
     a58:	a209                	j	b5a <qprint+0x24e>
     a5a:	fc842783          	lw	a5,-56(s0)
     a5e:	0007c703          	lbu	a4,0(a5)
     a62:	07500793          	li	a5,117
     a66:	02f71663          	bne	a4,a5,a92 <qprint+0x186>
     a6a:	fc442783          	lw	a5,-60(s0)
     a6e:	00478713          	addi	a4,a5,4
     a72:	fce42223          	sw	a4,-60(s0)
     a76:	439c                	lw	a5,0(a5)
     a78:	85be                	mv	a1,a5
     a7a:	06100813          	li	a6,97
     a7e:	87ce                	mv	a5,s3
     a80:	874a                	mv	a4,s2
     a82:	4681                	li	a3,0
     a84:	4629                	li	a2,10
     a86:	fcc42503          	lw	a0,-52(s0)
     a8a:	3b11                	jal	79e <qprinti>
     a8c:	87aa                	mv	a5,a0
     a8e:	94be                	add	s1,s1,a5
     a90:	a0e9                	j	b5a <qprint+0x24e>
     a92:	fc842783          	lw	a5,-56(s0)
     a96:	0007c703          	lbu	a4,0(a5)
     a9a:	07800793          	li	a5,120
     a9e:	02f71663          	bne	a4,a5,aca <qprint+0x1be>
     aa2:	fc442783          	lw	a5,-60(s0)
     aa6:	00478713          	addi	a4,a5,4
     aaa:	fce42223          	sw	a4,-60(s0)
     aae:	439c                	lw	a5,0(a5)
     ab0:	85be                	mv	a1,a5
     ab2:	06100813          	li	a6,97
     ab6:	87ce                	mv	a5,s3
     ab8:	874a                	mv	a4,s2
     aba:	4681                	li	a3,0
     abc:	4641                	li	a2,16
     abe:	fcc42503          	lw	a0,-52(s0)
     ac2:	39f1                	jal	79e <qprinti>
     ac4:	87aa                	mv	a5,a0
     ac6:	94be                	add	s1,s1,a5
     ac8:	a849                	j	b5a <qprint+0x24e>
     aca:	fc842783          	lw	a5,-56(s0)
     ace:	0007c703          	lbu	a4,0(a5)
     ad2:	05800793          	li	a5,88
     ad6:	02f71663          	bne	a4,a5,b02 <qprint+0x1f6>
     ada:	fc442783          	lw	a5,-60(s0)
     ade:	00478713          	addi	a4,a5,4
     ae2:	fce42223          	sw	a4,-60(s0)
     ae6:	439c                	lw	a5,0(a5)
     ae8:	85be                	mv	a1,a5
     aea:	04100813          	li	a6,65
     aee:	87ce                	mv	a5,s3
     af0:	874a                	mv	a4,s2
     af2:	4681                	li	a3,0
     af4:	4641                	li	a2,16
     af6:	fcc42503          	lw	a0,-52(s0)
     afa:	3155                	jal	79e <qprinti>
     afc:	87aa                	mv	a5,a0
     afe:	94be                	add	s1,s1,a5
     b00:	a8a9                	j	b5a <qprint+0x24e>
     b02:	fc842783          	lw	a5,-56(s0)
     b06:	0007c703          	lbu	a4,0(a5)
     b0a:	06300793          	li	a5,99
     b0e:	04f71663          	bne	a4,a5,b5a <qprint+0x24e>
     b12:	fc442783          	lw	a5,-60(s0)
     b16:	00478713          	addi	a4,a5,4
     b1a:	fce42223          	sw	a4,-60(s0)
     b1e:	439c                	lw	a5,0(a5)
     b20:	0ff7f793          	andi	a5,a5,255
     b24:	fcf40e23          	sb	a5,-36(s0)
     b28:	fc040ea3          	sb	zero,-35(s0)
     b2c:	fdc40793          	addi	a5,s0,-36
     b30:	86ce                	mv	a3,s3
     b32:	864a                	mv	a2,s2
     b34:	85be                	mv	a1,a5
     b36:	fcc42503          	lw	a0,-52(s0)
     b3a:	3ebd                	jal	6b8 <qprints>
     b3c:	87aa                	mv	a5,a0
     b3e:	94be                	add	s1,s1,a5
     b40:	a829                	j	b5a <qprint+0x24e>
     b42:	0001                	nop
     b44:	a011                	j	b48 <qprint+0x23c>
     b46:	0001                	nop
     b48:	fc842783          	lw	a5,-56(s0)
     b4c:	0007c783          	lbu	a5,0(a5)
     b50:	85be                	mv	a1,a5
     b52:	fcc42503          	lw	a0,-52(s0)
     b56:	3e09                	jal	668 <qprintchar>
     b58:	0485                	addi	s1,s1,1
     b5a:	fc842783          	lw	a5,-56(s0)
     b5e:	0785                	addi	a5,a5,1
     b60:	fcf42423          	sw	a5,-56(s0)
     b64:	fc842783          	lw	a5,-56(s0)
     b68:	0007c783          	lbu	a5,0(a5)
     b6c:	da079fe3          	bnez	a5,92a <qprint+0x1e>
     b70:	a011                	j	b74 <qprint+0x268>
     b72:	0001                	nop
     b74:	fcc42783          	lw	a5,-52(s0)
     b78:	c791                	beqz	a5,b84 <qprint+0x278>
     b7a:	fcc42783          	lw	a5,-52(s0)
     b7e:	439c                	lw	a5,0(a5)
     b80:	00078023          	sb	zero,0(a5)
     b84:	87a6                	mv	a5,s1
     b86:	853e                	mv	a0,a5
     b88:	50f2                	lw	ra,60(sp)
     b8a:	5462                	lw	s0,56(sp)
     b8c:	54d2                	lw	s1,52(sp)
     b8e:	5942                	lw	s2,48(sp)
     b90:	59b2                	lw	s3,44(sp)
     b92:	6121                	addi	sp,sp,64
     b94:	8082                	ret

00000b96 <printf>:
     b96:	715d                	addi	sp,sp,-80
     b98:	d606                	sw	ra,44(sp)
     b9a:	d422                	sw	s0,40(sp)
     b9c:	1800                	addi	s0,sp,48
     b9e:	fca42e23          	sw	a0,-36(s0)
     ba2:	c04c                	sw	a1,4(s0)
     ba4:	c410                	sw	a2,8(s0)
     ba6:	c454                	sw	a3,12(s0)
     ba8:	c818                	sw	a4,16(s0)
     baa:	c85c                	sw	a5,20(s0)
     bac:	01042c23          	sw	a6,24(s0)
     bb0:	01142e23          	sw	a7,28(s0)
     bb4:	02040793          	addi	a5,s0,32
     bb8:	fcf42c23          	sw	a5,-40(s0)
     bbc:	fd842783          	lw	a5,-40(s0)
     bc0:	1791                	addi	a5,a5,-28
     bc2:	fef42423          	sw	a5,-24(s0)
     bc6:	fe842783          	lw	a5,-24(s0)
     bca:	863e                	mv	a2,a5
     bcc:	fdc42583          	lw	a1,-36(s0)
     bd0:	4501                	li	a0,0
     bd2:	3b2d                	jal	90c <qprint>
     bd4:	fea42623          	sw	a0,-20(s0)
     bd8:	fec42783          	lw	a5,-20(s0)
     bdc:	853e                	mv	a0,a5
     bde:	50b2                	lw	ra,44(sp)
     be0:	5422                	lw	s0,40(sp)
     be2:	6161                	addi	sp,sp,80
     be4:	8082                	ret

00000be6 <puts>:
     be6:	7179                	addi	sp,sp,-48
     be8:	d606                	sw	ra,44(sp)
     bea:	d422                	sw	s0,40(sp)
     bec:	1800                	addi	s0,sp,48
     bee:	fca42e23          	sw	a0,-36(s0)
     bf2:	fe042623          	sw	zero,-20(s0)
     bf6:	a839                	j	c14 <puts+0x2e>
     bf8:	fec42783          	lw	a5,-20(s0)
     bfc:	00178713          	addi	a4,a5,1
     c00:	fee42623          	sw	a4,-20(s0)
     c04:	873e                	mv	a4,a5
     c06:	fdc42783          	lw	a5,-36(s0)
     c0a:	97ba                	add	a5,a5,a4
     c0c:	0007c783          	lbu	a5,0(a5)
     c10:	853e                	mv	a0,a5
     c12:	343d                	jal	640 <putchar>
     c14:	fec42783          	lw	a5,-20(s0)
     c18:	fdc42703          	lw	a4,-36(s0)
     c1c:	97ba                	add	a5,a5,a4
     c1e:	0007c783          	lbu	a5,0(a5)
     c22:	fbf9                	bnez	a5,bf8 <puts+0x12>
     c24:	4529                	li	a0,10
     c26:	3c29                	jal	640 <putchar>
     c28:	fec42783          	lw	a5,-20(s0)
     c2c:	853e                	mv	a0,a5
     c2e:	50b2                	lw	ra,44(sp)
     c30:	5422                	lw	s0,40(sp)
     c32:	6145                	addi	sp,sp,48
     c34:	8082                	ret

00000c36 <strcmp>:
     c36:	7179                	addi	sp,sp,-48
     c38:	d622                	sw	s0,44(sp)
     c3a:	1800                	addi	s0,sp,48
     c3c:	fca42e23          	sw	a0,-36(s0)
     c40:	fcb42c23          	sw	a1,-40(s0)
     c44:	fdc42703          	lw	a4,-36(s0)
     c48:	fd842783          	lw	a5,-40(s0)
     c4c:	8fd9                	or	a5,a5,a4
     c4e:	8b8d                	andi	a5,a5,3
     c50:	e7c9                	bnez	a5,cda <strcmp+0xa4>
     c52:	fdc42783          	lw	a5,-36(s0)
     c56:	fef42623          	sw	a5,-20(s0)
     c5a:	fd842783          	lw	a5,-40(s0)
     c5e:	fef42423          	sw	a5,-24(s0)
     c62:	a089                	j	ca4 <strcmp+0x6e>
     c64:	fec42783          	lw	a5,-20(s0)
     c68:	4398                	lw	a4,0(a5)
     c6a:	feff07b7          	lui	a5,0xfeff0
     c6e:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c72:	973e                	add	a4,a4,a5
     c74:	fec42783          	lw	a5,-20(s0)
     c78:	439c                	lw	a5,0(a5)
     c7a:	fff7c793          	not	a5,a5
     c7e:	8f7d                	and	a4,a4,a5
     c80:	808087b7          	lui	a5,0x80808
     c84:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c88:	8ff9                	and	a5,a5,a4
     c8a:	c399                	beqz	a5,c90 <strcmp+0x5a>
     c8c:	4781                	li	a5,0
     c8e:	a041                	j	d0e <strcmp+0xd8>
     c90:	fec42783          	lw	a5,-20(s0)
     c94:	0791                	addi	a5,a5,4
     c96:	fef42623          	sw	a5,-20(s0)
     c9a:	fe842783          	lw	a5,-24(s0)
     c9e:	0791                	addi	a5,a5,4
     ca0:	fef42423          	sw	a5,-24(s0)
     ca4:	fec42783          	lw	a5,-20(s0)
     ca8:	4398                	lw	a4,0(a5)
     caa:	fe842783          	lw	a5,-24(s0)
     cae:	439c                	lw	a5,0(a5)
     cb0:	faf70ae3          	beq	a4,a5,c64 <strcmp+0x2e>
     cb4:	fec42783          	lw	a5,-20(s0)
     cb8:	fcf42e23          	sw	a5,-36(s0)
     cbc:	fe842783          	lw	a5,-24(s0)
     cc0:	fcf42c23          	sw	a5,-40(s0)
     cc4:	a819                	j	cda <strcmp+0xa4>
     cc6:	fdc42783          	lw	a5,-36(s0)
     cca:	0785                	addi	a5,a5,1
     ccc:	fcf42e23          	sw	a5,-36(s0)
     cd0:	fd842783          	lw	a5,-40(s0)
     cd4:	0785                	addi	a5,a5,1
     cd6:	fcf42c23          	sw	a5,-40(s0)
     cda:	fdc42783          	lw	a5,-36(s0)
     cde:	0007c783          	lbu	a5,0(a5)
     ce2:	cb99                	beqz	a5,cf8 <strcmp+0xc2>
     ce4:	fdc42783          	lw	a5,-36(s0)
     ce8:	0007c703          	lbu	a4,0(a5)
     cec:	fd842783          	lw	a5,-40(s0)
     cf0:	0007c783          	lbu	a5,0(a5)
     cf4:	fcf709e3          	beq	a4,a5,cc6 <strcmp+0x90>
     cf8:	fdc42783          	lw	a5,-36(s0)
     cfc:	0007c783          	lbu	a5,0(a5)
     d00:	873e                	mv	a4,a5
     d02:	fd842783          	lw	a5,-40(s0)
     d06:	0007c783          	lbu	a5,0(a5)
     d0a:	40f707b3          	sub	a5,a4,a5
     d0e:	853e                	mv	a0,a5
     d10:	5432                	lw	s0,44(sp)
     d12:	6145                	addi	sp,sp,48
     d14:	8082                	ret

00000d16 <memset>:
     d16:	7179                	addi	sp,sp,-48
     d18:	d622                	sw	s0,44(sp)
     d1a:	1800                	addi	s0,sp,48
     d1c:	fca42e23          	sw	a0,-36(s0)
     d20:	fcb42c23          	sw	a1,-40(s0)
     d24:	fcc42a23          	sw	a2,-44(s0)
     d28:	fdc42783          	lw	a5,-36(s0)
     d2c:	fef42623          	sw	a5,-20(s0)
     d30:	a015                	j	d54 <memset+0x3e>
     d32:	fec42783          	lw	a5,-20(s0)
     d36:	00178713          	addi	a4,a5,1
     d3a:	fee42623          	sw	a4,-20(s0)
     d3e:	fd842703          	lw	a4,-40(s0)
     d42:	0ff77713          	andi	a4,a4,255
     d46:	00e78023          	sb	a4,0(a5)
     d4a:	fd442783          	lw	a5,-44(s0)
     d4e:	17fd                	addi	a5,a5,-1
     d50:	fcf42a23          	sw	a5,-44(s0)
     d54:	fd442783          	lw	a5,-44(s0)
     d58:	ffe9                	bnez	a5,d32 <memset+0x1c>
     d5a:	fdc42783          	lw	a5,-36(s0)
     d5e:	853e                	mv	a0,a5
     d60:	5432                	lw	s0,44(sp)
     d62:	6145                	addi	sp,sp,48
     d64:	8082                	ret

00000d66 <strcpy>:
     d66:	7179                	addi	sp,sp,-48
     d68:	d622                	sw	s0,44(sp)
     d6a:	1800                	addi	s0,sp,48
     d6c:	fca42e23          	sw	a0,-36(s0)
     d70:	fcb42c23          	sw	a1,-40(s0)
     d74:	fdc42783          	lw	a5,-36(s0)
     d78:	fef42623          	sw	a5,-20(s0)
     d7c:	fd842783          	lw	a5,-40(s0)
     d80:	fef42423          	sw	a5,-24(s0)
     d84:	a01d                	j	daa <strcpy+0x44>
     d86:	fe842783          	lw	a5,-24(s0)
     d8a:	0007c703          	lbu	a4,0(a5)
     d8e:	fec42783          	lw	a5,-20(s0)
     d92:	00e78023          	sb	a4,0(a5)
     d96:	fec42783          	lw	a5,-20(s0)
     d9a:	0785                	addi	a5,a5,1
     d9c:	fef42623          	sw	a5,-20(s0)
     da0:	fe842783          	lw	a5,-24(s0)
     da4:	0785                	addi	a5,a5,1
     da6:	fef42423          	sw	a5,-24(s0)
     daa:	fe842783          	lw	a5,-24(s0)
     dae:	0007c783          	lbu	a5,0(a5)
     db2:	fbf1                	bnez	a5,d86 <strcpy+0x20>
     db4:	fdc42783          	lw	a5,-36(s0)
     db8:	853e                	mv	a0,a5
     dba:	5432                	lw	s0,44(sp)
     dbc:	6145                	addi	sp,sp,48
     dbe:	8082                	ret

00000dc0 <strlen>:
     dc0:	7179                	addi	sp,sp,-48
     dc2:	d622                	sw	s0,44(sp)
     dc4:	1800                	addi	s0,sp,48
     dc6:	fca42e23          	sw	a0,-36(s0)
     dca:	fdc42783          	lw	a5,-36(s0)
     dce:	fef42623          	sw	a5,-20(s0)
     dd2:	fe042423          	sw	zero,-24(s0)
     dd6:	fec42783          	lw	a5,-20(s0)
     dda:	eb81                	bnez	a5,dea <strlen+0x2a>
     ddc:	4781                	li	a5,0
     dde:	a00d                	j	e00 <strlen+0x40>
     de0:	fe842783          	lw	a5,-24(s0)
     de4:	0785                	addi	a5,a5,1
     de6:	fef42423          	sw	a5,-24(s0)
     dea:	fec42783          	lw	a5,-20(s0)
     dee:	00178713          	addi	a4,a5,1
     df2:	fee42623          	sw	a4,-20(s0)
     df6:	0007c783          	lbu	a5,0(a5)
     dfa:	f3fd                	bnez	a5,de0 <strlen+0x20>
     dfc:	fe842783          	lw	a5,-24(s0)
     e00:	853e                	mv	a0,a5
     e02:	5432                	lw	s0,44(sp)
     e04:	6145                	addi	sp,sp,48
     e06:	8082                	ret

00000e08 <set_pin_function>:
     e08:	7179                	addi	sp,sp,-48
     e0a:	d622                	sw	s0,44(sp)
     e0c:	1800                	addi	s0,sp,48
     e0e:	fca42e23          	sw	a0,-36(s0)
     e12:	fcb42c23          	sw	a1,-40(s0)
     e16:	1a1077b7          	lui	a5,0x1a107
     e1a:	439c                	lw	a5,0(a5)
     e1c:	fef42623          	sw	a5,-20(s0)
     e20:	fdc42783          	lw	a5,-36(s0)
     e24:	4705                	li	a4,1
     e26:	00f717b3          	sll	a5,a4,a5
     e2a:	fff7c713          	not	a4,a5
     e2e:	fec42783          	lw	a5,-20(s0)
     e32:	8ff9                	and	a5,a5,a4
     e34:	fef42623          	sw	a5,-20(s0)
     e38:	fdc42783          	lw	a5,-36(s0)
     e3c:	fd842703          	lw	a4,-40(s0)
     e40:	00f71733          	sll	a4,a4,a5
     e44:	fec42783          	lw	a5,-20(s0)
     e48:	8fd9                	or	a5,a5,a4
     e4a:	fef42623          	sw	a5,-20(s0)
     e4e:	1a1077b7          	lui	a5,0x1a107
     e52:	fec42703          	lw	a4,-20(s0)
     e56:	c398                	sw	a4,0(a5)
     e58:	0001                	nop
     e5a:	5432                	lw	s0,44(sp)
     e5c:	6145                	addi	sp,sp,48
     e5e:	8082                	ret

00000e60 <get_pin_function>:
     e60:	7179                	addi	sp,sp,-48
     e62:	d622                	sw	s0,44(sp)
     e64:	1800                	addi	s0,sp,48
     e66:	fca42e23          	sw	a0,-36(s0)
     e6a:	1a1077b7          	lui	a5,0x1a107
     e6e:	439c                	lw	a5,0(a5)
     e70:	fef42623          	sw	a5,-20(s0)
     e74:	fec42703          	lw	a4,-20(s0)
     e78:	fdc42783          	lw	a5,-36(s0)
     e7c:	40f757b3          	sra	a5,a4,a5
     e80:	8b85                	andi	a5,a5,1
     e82:	fef42623          	sw	a5,-20(s0)
     e86:	fec42783          	lw	a5,-20(s0)
     e8a:	853e                	mv	a0,a5
     e8c:	5432                	lw	s0,44(sp)
     e8e:	6145                	addi	sp,sp,48
     e90:	8082                	ret

00000e92 <set_gpio_pin_direction>:
     e92:	7179                	addi	sp,sp,-48
     e94:	d622                	sw	s0,44(sp)
     e96:	1800                	addi	s0,sp,48
     e98:	fca42e23          	sw	a0,-36(s0)
     e9c:	fcb42c23          	sw	a1,-40(s0)
     ea0:	1a1017b7          	lui	a5,0x1a101
     ea4:	439c                	lw	a5,0(a5)
     ea6:	fef42623          	sw	a5,-20(s0)
     eaa:	fd842783          	lw	a5,-40(s0)
     eae:	ef91                	bnez	a5,eca <set_gpio_pin_direction+0x38>
     eb0:	fdc42783          	lw	a5,-36(s0)
     eb4:	4705                	li	a4,1
     eb6:	00f717b3          	sll	a5,a4,a5
     eba:	fff7c713          	not	a4,a5
     ebe:	fec42783          	lw	a5,-20(s0)
     ec2:	8ff9                	and	a5,a5,a4
     ec4:	fef42623          	sw	a5,-20(s0)
     ec8:	a819                	j	ede <set_gpio_pin_direction+0x4c>
     eca:	fdc42783          	lw	a5,-36(s0)
     ece:	4705                	li	a4,1
     ed0:	00f71733          	sll	a4,a4,a5
     ed4:	fec42783          	lw	a5,-20(s0)
     ed8:	8fd9                	or	a5,a5,a4
     eda:	fef42623          	sw	a5,-20(s0)
     ede:	1a1017b7          	lui	a5,0x1a101
     ee2:	fec42703          	lw	a4,-20(s0)
     ee6:	c398                	sw	a4,0(a5)
     ee8:	0001                	nop
     eea:	5432                	lw	s0,44(sp)
     eec:	6145                	addi	sp,sp,48
     eee:	8082                	ret

00000ef0 <get_gpio_pin_direction>:
     ef0:	7179                	addi	sp,sp,-48
     ef2:	d622                	sw	s0,44(sp)
     ef4:	1800                	addi	s0,sp,48
     ef6:	fca42e23          	sw	a0,-36(s0)
     efa:	1a1017b7          	lui	a5,0x1a101
     efe:	439c                	lw	a5,0(a5)
     f00:	fef42623          	sw	a5,-20(s0)
     f04:	fec42703          	lw	a4,-20(s0)
     f08:	fdc42783          	lw	a5,-36(s0)
     f0c:	0786                	slli	a5,a5,0x1
     f0e:	40f757b3          	sra	a5,a4,a5
     f12:	8b85                	andi	a5,a5,1
     f14:	fef42623          	sw	a5,-20(s0)
     f18:	fec42783          	lw	a5,-20(s0)
     f1c:	853e                	mv	a0,a5
     f1e:	5432                	lw	s0,44(sp)
     f20:	6145                	addi	sp,sp,48
     f22:	8082                	ret

00000f24 <set_gpio_pin_value>:
     f24:	7179                	addi	sp,sp,-48
     f26:	d622                	sw	s0,44(sp)
     f28:	1800                	addi	s0,sp,48
     f2a:	fca42e23          	sw	a0,-36(s0)
     f2e:	fcb42c23          	sw	a1,-40(s0)
     f32:	1a1017b7          	lui	a5,0x1a101
     f36:	07a1                	addi	a5,a5,8
     f38:	439c                	lw	a5,0(a5)
     f3a:	fef42623          	sw	a5,-20(s0)
     f3e:	fd842783          	lw	a5,-40(s0)
     f42:	ef91                	bnez	a5,f5e <set_gpio_pin_value+0x3a>
     f44:	fdc42783          	lw	a5,-36(s0)
     f48:	4705                	li	a4,1
     f4a:	00f717b3          	sll	a5,a4,a5
     f4e:	fff7c713          	not	a4,a5
     f52:	fec42783          	lw	a5,-20(s0)
     f56:	8ff9                	and	a5,a5,a4
     f58:	fef42623          	sw	a5,-20(s0)
     f5c:	a819                	j	f72 <set_gpio_pin_value+0x4e>
     f5e:	fdc42783          	lw	a5,-36(s0)
     f62:	4705                	li	a4,1
     f64:	00f71733          	sll	a4,a4,a5
     f68:	fec42783          	lw	a5,-20(s0)
     f6c:	8fd9                	or	a5,a5,a4
     f6e:	fef42623          	sw	a5,-20(s0)
     f72:	1a1017b7          	lui	a5,0x1a101
     f76:	07a1                	addi	a5,a5,8
     f78:	fec42703          	lw	a4,-20(s0)
     f7c:	c398                	sw	a4,0(a5)
     f7e:	0001                	nop
     f80:	5432                	lw	s0,44(sp)
     f82:	6145                	addi	sp,sp,48
     f84:	8082                	ret

00000f86 <get_gpio_pin_value>:
     f86:	7179                	addi	sp,sp,-48
     f88:	d622                	sw	s0,44(sp)
     f8a:	1800                	addi	s0,sp,48
     f8c:	fca42e23          	sw	a0,-36(s0)
     f90:	1a1017b7          	lui	a5,0x1a101
     f94:	0791                	addi	a5,a5,4
     f96:	439c                	lw	a5,0(a5)
     f98:	fef42623          	sw	a5,-20(s0)
     f9c:	fec42703          	lw	a4,-20(s0)
     fa0:	fdc42783          	lw	a5,-36(s0)
     fa4:	40f757b3          	sra	a5,a4,a5
     fa8:	8b85                	andi	a5,a5,1
     faa:	fef42623          	sw	a5,-20(s0)
     fae:	fec42783          	lw	a5,-20(s0)
     fb2:	853e                	mv	a0,a5
     fb4:	5432                	lw	s0,44(sp)
     fb6:	6145                	addi	sp,sp,48
     fb8:	8082                	ret

00000fba <set_gpio_pin_irq_en>:
     fba:	7179                	addi	sp,sp,-48
     fbc:	d622                	sw	s0,44(sp)
     fbe:	1800                	addi	s0,sp,48
     fc0:	fca42e23          	sw	a0,-36(s0)
     fc4:	fcb42c23          	sw	a1,-40(s0)
     fc8:	1a1017b7          	lui	a5,0x1a101
     fcc:	07b1                	addi	a5,a5,12
     fce:	439c                	lw	a5,0(a5)
     fd0:	fef42623          	sw	a5,-20(s0)
     fd4:	fd842783          	lw	a5,-40(s0)
     fd8:	ef91                	bnez	a5,ff4 <set_gpio_pin_irq_en+0x3a>
     fda:	fdc42783          	lw	a5,-36(s0)
     fde:	4705                	li	a4,1
     fe0:	00f717b3          	sll	a5,a4,a5
     fe4:	fff7c793          	not	a5,a5
     fe8:	fec42703          	lw	a4,-20(s0)
     fec:	8ff9                	and	a5,a5,a4
     fee:	fef42623          	sw	a5,-20(s0)
     ff2:	a819                	j	1008 <_min_stack+0x8>
     ff4:	fdc42783          	lw	a5,-36(s0)
     ff8:	4705                	li	a4,1
     ffa:	00f717b3          	sll	a5,a4,a5
     ffe:	fec42703          	lw	a4,-20(s0)
    1002:	8fd9                	or	a5,a5,a4
    1004:	fef42623          	sw	a5,-20(s0)
    1008:	1a1017b7          	lui	a5,0x1a101
    100c:	07b1                	addi	a5,a5,12
    100e:	fec42703          	lw	a4,-20(s0)
    1012:	c398                	sw	a4,0(a5)
    1014:	0001                	nop
    1016:	5432                	lw	s0,44(sp)
    1018:	6145                	addi	sp,sp,48
    101a:	8082                	ret

0000101c <set_gpio_pin_irq_type>:
    101c:	7179                	addi	sp,sp,-48
    101e:	d622                	sw	s0,44(sp)
    1020:	1800                	addi	s0,sp,48
    1022:	fca42e23          	sw	a0,-36(s0)
    1026:	fcb42c23          	sw	a1,-40(s0)
    102a:	1a1017b7          	lui	a5,0x1a101
    102e:	07c1                	addi	a5,a5,16
    1030:	439c                	lw	a5,0(a5)
    1032:	fef42623          	sw	a5,-20(s0)
    1036:	1a1017b7          	lui	a5,0x1a101
    103a:	07d1                	addi	a5,a5,20
    103c:	439c                	lw	a5,0(a5)
    103e:	fef42423          	sw	a5,-24(s0)
    1042:	fd842783          	lw	a5,-40(s0)
    1046:	8b85                	andi	a5,a5,1
    1048:	ef91                	bnez	a5,1064 <set_gpio_pin_irq_type+0x48>
    104a:	fdc42783          	lw	a5,-36(s0)
    104e:	4705                	li	a4,1
    1050:	00f717b3          	sll	a5,a4,a5
    1054:	fff7c793          	not	a5,a5
    1058:	fec42703          	lw	a4,-20(s0)
    105c:	8ff9                	and	a5,a5,a4
    105e:	fef42623          	sw	a5,-20(s0)
    1062:	a819                	j	1078 <set_gpio_pin_irq_type+0x5c>
    1064:	fdc42783          	lw	a5,-36(s0)
    1068:	4705                	li	a4,1
    106a:	00f717b3          	sll	a5,a4,a5
    106e:	fec42703          	lw	a4,-20(s0)
    1072:	8fd9                	or	a5,a5,a4
    1074:	fef42623          	sw	a5,-20(s0)
    1078:	fd842783          	lw	a5,-40(s0)
    107c:	8b89                	andi	a5,a5,2
    107e:	ef91                	bnez	a5,109a <set_gpio_pin_irq_type+0x7e>
    1080:	fdc42783          	lw	a5,-36(s0)
    1084:	4705                	li	a4,1
    1086:	00f717b3          	sll	a5,a4,a5
    108a:	fff7c793          	not	a5,a5
    108e:	fe842703          	lw	a4,-24(s0)
    1092:	8ff9                	and	a5,a5,a4
    1094:	fef42423          	sw	a5,-24(s0)
    1098:	a819                	j	10ae <set_gpio_pin_irq_type+0x92>
    109a:	fdc42783          	lw	a5,-36(s0)
    109e:	4705                	li	a4,1
    10a0:	00f717b3          	sll	a5,a4,a5
    10a4:	fe842703          	lw	a4,-24(s0)
    10a8:	8fd9                	or	a5,a5,a4
    10aa:	fef42423          	sw	a5,-24(s0)
    10ae:	1a1017b7          	lui	a5,0x1a101
    10b2:	07c1                	addi	a5,a5,16
    10b4:	fec42703          	lw	a4,-20(s0)
    10b8:	c398                	sw	a4,0(a5)
    10ba:	1a1017b7          	lui	a5,0x1a101
    10be:	07d1                	addi	a5,a5,20
    10c0:	fe842703          	lw	a4,-24(s0)
    10c4:	c398                	sw	a4,0(a5)
    10c6:	0001                	nop
    10c8:	5432                	lw	s0,44(sp)
    10ca:	6145                	addi	sp,sp,48
    10cc:	8082                	ret

000010ce <get_gpio_irq_status>:
    10ce:	1141                	addi	sp,sp,-16
    10d0:	c622                	sw	s0,12(sp)
    10d2:	0800                	addi	s0,sp,16
    10d4:	1a1017b7          	lui	a5,0x1a101
    10d8:	07e1                	addi	a5,a5,24
    10da:	439c                	lw	a5,0(a5)
    10dc:	853e                	mv	a0,a5
    10de:	4432                	lw	s0,12(sp)
    10e0:	0141                	addi	sp,sp,16
    10e2:	8082                	ret

000010e4 <spi_setup_slave>:
    10e4:	1141                	addi	sp,sp,-16
    10e6:	c606                	sw	ra,12(sp)
    10e8:	c422                	sw	s0,8(sp)
    10ea:	0800                	addi	s0,sp,16
    10ec:	4581                	li	a1,0
    10ee:	4511                	li	a0,4
    10f0:	3b21                	jal	e08 <set_pin_function>
    10f2:	4581                	li	a1,0
    10f4:	4515                	li	a0,5
    10f6:	3b09                	jal	e08 <set_pin_function>
    10f8:	4581                	li	a1,0
    10fa:	4519                	li	a0,6
    10fc:	3331                	jal	e08 <set_pin_function>
    10fe:	4581                	li	a1,0
    1100:	451d                	li	a0,7
    1102:	3319                	jal	e08 <set_pin_function>
    1104:	4581                	li	a1,0
    1106:	450d                	li	a0,3
    1108:	3301                	jal	e08 <set_pin_function>
    110a:	0001                	nop
    110c:	40b2                	lw	ra,12(sp)
    110e:	4422                	lw	s0,8(sp)
    1110:	0141                	addi	sp,sp,16
    1112:	8082                	ret

00001114 <spi_setup_master>:
    1114:	1101                	addi	sp,sp,-32
    1116:	ce06                	sw	ra,28(sp)
    1118:	cc22                	sw	s0,24(sp)
    111a:	1000                	addi	s0,sp,32
    111c:	fea42623          	sw	a0,-20(s0)
    1120:	4581                	li	a1,0
    1122:	453d                	li	a0,15
    1124:	31d5                	jal	e08 <set_pin_function>
    1126:	4581                	li	a1,0
    1128:	4539                	li	a0,14
    112a:	39f9                	jal	e08 <set_pin_function>
    112c:	4581                	li	a1,0
    112e:	4535                	li	a0,13
    1130:	39e1                	jal	e08 <set_pin_function>
    1132:	4581                	li	a1,0
    1134:	4531                	li	a0,12
    1136:	39c9                	jal	e08 <set_pin_function>
    1138:	fec42783          	lw	a5,-20(s0)
    113c:	00f05563          	blez	a5,1146 <spi_setup_master+0x32>
    1140:	4581                	li	a1,0
    1142:	4541                	li	a0,16
    1144:	31d1                	jal	e08 <set_pin_function>
    1146:	fec42703          	lw	a4,-20(s0)
    114a:	4785                	li	a5,1
    114c:	00e7d563          	bge	a5,a4,1156 <spi_setup_master+0x42>
    1150:	4581                	li	a1,0
    1152:	452d                	li	a0,11
    1154:	3955                	jal	e08 <set_pin_function>
    1156:	fec42703          	lw	a4,-20(s0)
    115a:	4789                	li	a5,2
    115c:	00e7d563          	bge	a5,a4,1166 <spi_setup_master+0x52>
    1160:	4581                	li	a1,0
    1162:	4501                	li	a0,0
    1164:	3155                	jal	e08 <set_pin_function>
    1166:	fec42703          	lw	a4,-20(s0)
    116a:	478d                	li	a5,3
    116c:	00e7d563          	bge	a5,a4,1176 <spi_setup_master+0x62>
    1170:	4581                	li	a1,0
    1172:	4505                	li	a0,1
    1174:	3951                	jal	e08 <set_pin_function>
    1176:	0001                	nop
    1178:	40f2                	lw	ra,28(sp)
    117a:	4462                	lw	s0,24(sp)
    117c:	6105                	addi	sp,sp,32
    117e:	8082                	ret

00001180 <spi_setup_cmd_addr>:
    1180:	7179                	addi	sp,sp,-48
    1182:	d622                	sw	s0,44(sp)
    1184:	1800                	addi	s0,sp,48
    1186:	fca42e23          	sw	a0,-36(s0)
    118a:	fcb42c23          	sw	a1,-40(s0)
    118e:	fcc42a23          	sw	a2,-44(s0)
    1192:	fcd42823          	sw	a3,-48(s0)
    1196:	02000713          	li	a4,32
    119a:	fd842783          	lw	a5,-40(s0)
    119e:	40f707b3          	sub	a5,a4,a5
    11a2:	fdc42703          	lw	a4,-36(s0)
    11a6:	00f717b3          	sll	a5,a4,a5
    11aa:	fef42623          	sw	a5,-20(s0)
    11ae:	1a1027b7          	lui	a5,0x1a102
    11b2:	07a1                	addi	a5,a5,8
    11b4:	fec42703          	lw	a4,-20(s0)
    11b8:	c398                	sw	a4,0(a5)
    11ba:	1a1027b7          	lui	a5,0x1a102
    11be:	07b1                	addi	a5,a5,12
    11c0:	fd442703          	lw	a4,-44(s0)
    11c4:	c398                	sw	a4,0(a5)
    11c6:	fd842783          	lw	a5,-40(s0)
    11ca:	03f7f693          	andi	a3,a5,63
    11ce:	fd042783          	lw	a5,-48(s0)
    11d2:	00879713          	slli	a4,a5,0x8
    11d6:	6791                	lui	a5,0x4
    11d8:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x181c>
    11dc:	8f7d                	and	a4,a4,a5
    11de:	1a1027b7          	lui	a5,0x1a102
    11e2:	07c1                	addi	a5,a5,16
    11e4:	8f55                	or	a4,a4,a3
    11e6:	c398                	sw	a4,0(a5)
    11e8:	0001                	nop
    11ea:	5432                	lw	s0,44(sp)
    11ec:	6145                	addi	sp,sp,48
    11ee:	8082                	ret

000011f0 <spi_setup_dummy>:
    11f0:	1101                	addi	sp,sp,-32
    11f2:	ce22                	sw	s0,28(sp)
    11f4:	1000                	addi	s0,sp,32
    11f6:	fea42623          	sw	a0,-20(s0)
    11fa:	feb42423          	sw	a1,-24(s0)
    11fe:	fe842783          	lw	a5,-24(s0)
    1202:	07c2                	slli	a5,a5,0x10
    1204:	86be                	mv	a3,a5
    1206:	fec42703          	lw	a4,-20(s0)
    120a:	67c1                	lui	a5,0x10
    120c:	17fd                	addi	a5,a5,-1
    120e:	8ff9                	and	a5,a5,a4
    1210:	00f6e733          	or	a4,a3,a5
    1214:	1a1027b7          	lui	a5,0x1a102
    1218:	07d1                	addi	a5,a5,20
    121a:	c398                	sw	a4,0(a5)
    121c:	0001                	nop
    121e:	4472                	lw	s0,28(sp)
    1220:	6105                	addi	sp,sp,32
    1222:	8082                	ret

00001224 <spi_set_datalen>:
    1224:	7179                	addi	sp,sp,-48
    1226:	d622                	sw	s0,44(sp)
    1228:	1800                	addi	s0,sp,48
    122a:	fca42e23          	sw	a0,-36(s0)
    122e:	1a1027b7          	lui	a5,0x1a102
    1232:	07c1                	addi	a5,a5,16
    1234:	439c                	lw	a5,0(a5)
    1236:	fef42623          	sw	a5,-20(s0)
    123a:	fdc42783          	lw	a5,-36(s0)
    123e:	07c2                	slli	a5,a5,0x10
    1240:	873e                	mv	a4,a5
    1242:	fec42783          	lw	a5,-20(s0)
    1246:	86be                	mv	a3,a5
    1248:	67c1                	lui	a5,0x10
    124a:	17fd                	addi	a5,a5,-1
    124c:	8ff5                	and	a5,a5,a3
    124e:	8fd9                	or	a5,a5,a4
    1250:	fef42623          	sw	a5,-20(s0)
    1254:	1a1027b7          	lui	a5,0x1a102
    1258:	07c1                	addi	a5,a5,16
    125a:	fec42703          	lw	a4,-20(s0)
    125e:	c398                	sw	a4,0(a5)
    1260:	0001                	nop
    1262:	5432                	lw	s0,44(sp)
    1264:	6145                	addi	sp,sp,48
    1266:	8082                	ret

00001268 <spi_start_transaction>:
    1268:	1101                	addi	sp,sp,-32
    126a:	ce22                	sw	s0,28(sp)
    126c:	1000                	addi	s0,sp,32
    126e:	fea42623          	sw	a0,-20(s0)
    1272:	feb42423          	sw	a1,-24(s0)
    1276:	fe842783          	lw	a5,-24(s0)
    127a:	07a1                	addi	a5,a5,8
    127c:	4705                	li	a4,1
    127e:	00f71733          	sll	a4,a4,a5
    1282:	6785                	lui	a5,0x1
    1284:	f0078793          	addi	a5,a5,-256 # f00 <get_gpio_pin_direction+0x10>
    1288:	00f776b3          	and	a3,a4,a5
    128c:	fec42783          	lw	a5,-20(s0)
    1290:	4705                	li	a4,1
    1292:	00f717b3          	sll	a5,a4,a5
    1296:	0ff7f713          	andi	a4,a5,255
    129a:	1a1027b7          	lui	a5,0x1a102
    129e:	8f55                	or	a4,a4,a3
    12a0:	c398                	sw	a4,0(a5)
    12a2:	0001                	nop
    12a4:	4472                	lw	s0,28(sp)
    12a6:	6105                	addi	sp,sp,32
    12a8:	8082                	ret

000012aa <spi_get_status>:
    12aa:	1101                	addi	sp,sp,-32
    12ac:	ce22                	sw	s0,28(sp)
    12ae:	1000                	addi	s0,sp,32
    12b0:	1a1027b7          	lui	a5,0x1a102
    12b4:	439c                	lw	a5,0(a5)
    12b6:	fef42623          	sw	a5,-20(s0)
    12ba:	fec42783          	lw	a5,-20(s0)
    12be:	853e                	mv	a0,a5
    12c0:	4472                	lw	s0,28(sp)
    12c2:	6105                	addi	sp,sp,32
    12c4:	8082                	ret

000012c6 <spi_write_fifo>:
    12c6:	7179                	addi	sp,sp,-48
    12c8:	d622                	sw	s0,44(sp)
    12ca:	1800                	addi	s0,sp,48
    12cc:	fca42e23          	sw	a0,-36(s0)
    12d0:	fcb42c23          	sw	a1,-40(s0)
    12d4:	fd842783          	lw	a5,-40(s0)
    12d8:	8795                	srai	a5,a5,0x5
    12da:	7ff7f793          	andi	a5,a5,2047
    12de:	fef42623          	sw	a5,-20(s0)
    12e2:	fd842783          	lw	a5,-40(s0)
    12e6:	8bfd                	andi	a5,a5,31
    12e8:	c791                	beqz	a5,12f4 <spi_write_fifo+0x2e>
    12ea:	fec42783          	lw	a5,-20(s0)
    12ee:	0785                	addi	a5,a5,1
    12f0:	fef42623          	sw	a5,-20(s0)
    12f4:	fe042423          	sw	zero,-24(s0)
    12f8:	a80d                	j	132a <spi_write_fifo+0x64>
    12fa:	0001                	nop
    12fc:	1a1027b7          	lui	a5,0x1a102
    1300:	439c                	lw	a5,0(a5)
    1302:	87e1                	srai	a5,a5,0x18
    1304:	0f87f793          	andi	a5,a5,248
    1308:	fbf5                	bnez	a5,12fc <spi_write_fifo+0x36>
    130a:	fe842783          	lw	a5,-24(s0)
    130e:	078a                	slli	a5,a5,0x2
    1310:	fdc42703          	lw	a4,-36(s0)
    1314:	973e                	add	a4,a4,a5
    1316:	1a1027b7          	lui	a5,0x1a102
    131a:	07e1                	addi	a5,a5,24
    131c:	4318                	lw	a4,0(a4)
    131e:	c398                	sw	a4,0(a5)
    1320:	fe842783          	lw	a5,-24(s0)
    1324:	0785                	addi	a5,a5,1
    1326:	fef42423          	sw	a5,-24(s0)
    132a:	fe842703          	lw	a4,-24(s0)
    132e:	fec42783          	lw	a5,-20(s0)
    1332:	fcf744e3          	blt	a4,a5,12fa <spi_write_fifo+0x34>
    1336:	0001                	nop
    1338:	0001                	nop
    133a:	5432                	lw	s0,44(sp)
    133c:	6145                	addi	sp,sp,48
    133e:	8082                	ret

00001340 <spi_read_fifo>:
    1340:	7179                	addi	sp,sp,-48
    1342:	d622                	sw	s0,44(sp)
    1344:	1800                	addi	s0,sp,48
    1346:	fca42e23          	sw	a0,-36(s0)
    134a:	fcb42c23          	sw	a1,-40(s0)
    134e:	fd842783          	lw	a5,-40(s0)
    1352:	8795                	srai	a5,a5,0x5
    1354:	7ff7f793          	andi	a5,a5,2047
    1358:	fef42623          	sw	a5,-20(s0)
    135c:	fd842783          	lw	a5,-40(s0)
    1360:	8bfd                	andi	a5,a5,31
    1362:	c791                	beqz	a5,136e <spi_read_fifo+0x2e>
    1364:	fec42783          	lw	a5,-20(s0)
    1368:	0785                	addi	a5,a5,1
    136a:	fef42623          	sw	a5,-20(s0)
    136e:	fe042423          	sw	zero,-24(s0)
    1372:	a815                	j	13a6 <spi_read_fifo+0x66>
    1374:	0001                	nop
    1376:	1a1027b7          	lui	a5,0x1a102
    137a:	439c                	lw	a5,0(a5)
    137c:	87c1                	srai	a5,a5,0x10
    137e:	0ff7f793          	andi	a5,a5,255
    1382:	dbf5                	beqz	a5,1376 <spi_read_fifo+0x36>
    1384:	1a1027b7          	lui	a5,0x1a102
    1388:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    138c:	fe842783          	lw	a5,-24(s0)
    1390:	078a                	slli	a5,a5,0x2
    1392:	fdc42683          	lw	a3,-36(s0)
    1396:	97b6                	add	a5,a5,a3
    1398:	4318                	lw	a4,0(a4)
    139a:	c398                	sw	a4,0(a5)
    139c:	fe842783          	lw	a5,-24(s0)
    13a0:	0785                	addi	a5,a5,1
    13a2:	fef42423          	sw	a5,-24(s0)
    13a6:	fe842703          	lw	a4,-24(s0)
    13aa:	fec42783          	lw	a5,-20(s0)
    13ae:	fcf743e3          	blt	a4,a5,1374 <spi_read_fifo+0x34>
    13b2:	0001                	nop
    13b4:	0001                	nop
    13b6:	5432                	lw	s0,44(sp)
    13b8:	6145                	addi	sp,sp,48
    13ba:	8082                	ret

000013bc <default_exception_handler_c>:
    13bc:	1141                	addi	sp,sp,-16
    13be:	c622                	sw	s0,12(sp)
    13c0:	0800                	addi	s0,sp,16
    13c2:	a001                	j	13c2 <default_exception_handler_c+0x6>

000013c4 <illegal_insn_handler_c>:
    13c4:	1141                	addi	sp,sp,-16
    13c6:	c622                	sw	s0,12(sp)
    13c8:	0800                	addi	s0,sp,16
    13ca:	a001                	j	13ca <illegal_insn_handler_c+0x6>

000013cc <ecall_insn_handler_c>:
    13cc:	1141                	addi	sp,sp,-16
    13ce:	c622                	sw	s0,12(sp)
    13d0:	0800                	addi	s0,sp,16
    13d2:	a001                	j	13d2 <ecall_insn_handler_c+0x6>

000013d4 <ISR_SRAM>:
    13d4:	1141                	addi	sp,sp,-16
    13d6:	c622                	sw	s0,12(sp)
    13d8:	0800                	addi	s0,sp,16
    13da:	a001                	j	13da <ISR_SRAM+0x6>

000013dc <ISR_I2C>:
    13dc:	1141                	addi	sp,sp,-16
    13de:	c622                	sw	s0,12(sp)
    13e0:	0800                	addi	s0,sp,16
    13e2:	a001                	j	13e2 <ISR_I2C+0x6>

000013e4 <ISR_UART>:
    13e4:	1141                	addi	sp,sp,-16
    13e6:	c622                	sw	s0,12(sp)
    13e8:	0800                	addi	s0,sp,16
    13ea:	a001                	j	13ea <ISR_UART+0x6>

000013ec <ISR_GPIO>:
    13ec:	1141                	addi	sp,sp,-16
    13ee:	c622                	sw	s0,12(sp)
    13f0:	0800                	addi	s0,sp,16
    13f2:	a001                	j	13f2 <ISR_GPIO+0x6>

000013f4 <ISR_SPIM0>:
    13f4:	1141                	addi	sp,sp,-16
    13f6:	c622                	sw	s0,12(sp)
    13f8:	0800                	addi	s0,sp,16
    13fa:	a001                	j	13fa <ISR_SPIM0+0x6>

000013fc <ISR_SPIM1>:
    13fc:	1141                	addi	sp,sp,-16
    13fe:	c622                	sw	s0,12(sp)
    1400:	0800                	addi	s0,sp,16
    1402:	a001                	j	1402 <ISR_SPIM1+0x6>
    1404:	1141                	addi	sp,sp,-16
    1406:	c622                	sw	s0,12(sp)
    1408:	0800                	addi	s0,sp,16
    140a:	a001                	j	140a <ISR_SPIM1+0xe>

0000140c <ISR_TA_CMP>:
    140c:	1141                	addi	sp,sp,-16
    140e:	c622                	sw	s0,12(sp)
    1410:	0800                	addi	s0,sp,16
    1412:	a001                	j	1412 <ISR_TA_CMP+0x6>
    1414:	1141                	addi	sp,sp,-16
    1416:	c622                	sw	s0,12(sp)
    1418:	0800                	addi	s0,sp,16
    141a:	a001                	j	141a <ISR_TA_CMP+0xe>

0000141c <ISR_TB_CMP>:
    141c:	1141                	addi	sp,sp,-16
    141e:	c622                	sw	s0,12(sp)
    1420:	0800                	addi	s0,sp,16
    1422:	a001                	j	1422 <ISR_TB_CMP+0x6>

00001424 <uart_set_cfg>:
    1424:	1101                	addi	sp,sp,-32
    1426:	ce22                	sw	s0,28(sp)
    1428:	1000                	addi	s0,sp,32
    142a:	fea42623          	sw	a0,-20(s0)
    142e:	87ae                	mv	a5,a1
    1430:	fef41523          	sh	a5,-22(s0)
    1434:	1a1077b7          	lui	a5,0x1a107
    1438:	0791                	addi	a5,a5,4
    143a:	4398                	lw	a4,0(a5)
    143c:	1a1077b7          	lui	a5,0x1a107
    1440:	0791                	addi	a5,a5,4
    1442:	00276713          	ori	a4,a4,2
    1446:	c398                	sw	a4,0(a5)
    1448:	1a1007b7          	lui	a5,0x1a100
    144c:	07b1                	addi	a5,a5,12
    144e:	08300713          	li	a4,131
    1452:	c398                	sw	a4,0(a5)
    1454:	fea45783          	lhu	a5,-22(s0)
    1458:	83a1                	srli	a5,a5,0x8
    145a:	07c2                	slli	a5,a5,0x10
    145c:	83c1                	srli	a5,a5,0x10
    145e:	873e                	mv	a4,a5
    1460:	1a1007b7          	lui	a5,0x1a100
    1464:	0791                	addi	a5,a5,4
    1466:	0ff77713          	andi	a4,a4,255
    146a:	c398                	sw	a4,0(a5)
    146c:	fea45703          	lhu	a4,-22(s0)
    1470:	1a1007b7          	lui	a5,0x1a100
    1474:	0ff77713          	andi	a4,a4,255
    1478:	c398                	sw	a4,0(a5)
    147a:	1a1007b7          	lui	a5,0x1a100
    147e:	07a1                	addi	a5,a5,8
    1480:	0a700713          	li	a4,167
    1484:	c398                	sw	a4,0(a5)
    1486:	1a1007b7          	lui	a5,0x1a100
    148a:	07b1                	addi	a5,a5,12
    148c:	470d                	li	a4,3
    148e:	c398                	sw	a4,0(a5)
    1490:	1a1007b7          	lui	a5,0x1a100
    1494:	0791                	addi	a5,a5,4
    1496:	439c                	lw	a5,0(a5)
    1498:	0f07f713          	andi	a4,a5,240
    149c:	1a1007b7          	lui	a5,0x1a100
    14a0:	0791                	addi	a5,a5,4
    14a2:	00276713          	ori	a4,a4,2
    14a6:	c398                	sw	a4,0(a5)
    14a8:	0001                	nop
    14aa:	4472                	lw	s0,28(sp)
    14ac:	6105                	addi	sp,sp,32
    14ae:	8082                	ret

000014b0 <uart_send>:
    14b0:	7179                	addi	sp,sp,-48
    14b2:	d622                	sw	s0,44(sp)
    14b4:	1800                	addi	s0,sp,48
    14b6:	fca42e23          	sw	a0,-36(s0)
    14ba:	fcb42c23          	sw	a1,-40(s0)
    14be:	a891                	j	1512 <uart_send+0x62>
    14c0:	0001                	nop
    14c2:	1a1007b7          	lui	a5,0x1a100
    14c6:	07d1                	addi	a5,a5,20
    14c8:	439c                	lw	a5,0(a5)
    14ca:	0207f793          	andi	a5,a5,32
    14ce:	dbf5                	beqz	a5,14c2 <uart_send+0x12>
    14d0:	fe042623          	sw	zero,-20(s0)
    14d4:	a035                	j	1500 <uart_send+0x50>
    14d6:	fdc42783          	lw	a5,-36(s0)
    14da:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14de:	fce42e23          	sw	a4,-36(s0)
    14e2:	0007c703          	lbu	a4,0(a5)
    14e6:	1a1007b7          	lui	a5,0x1a100
    14ea:	c398                	sw	a4,0(a5)
    14ec:	fd842783          	lw	a5,-40(s0)
    14f0:	17fd                	addi	a5,a5,-1
    14f2:	fcf42c23          	sw	a5,-40(s0)
    14f6:	fec42783          	lw	a5,-20(s0)
    14fa:	0785                	addi	a5,a5,1
    14fc:	fef42623          	sw	a5,-20(s0)
    1500:	fec42703          	lw	a4,-20(s0)
    1504:	03f00793          	li	a5,63
    1508:	00e7e563          	bltu	a5,a4,1512 <uart_send+0x62>
    150c:	fd842783          	lw	a5,-40(s0)
    1510:	f3f9                	bnez	a5,14d6 <uart_send+0x26>
    1512:	fd842783          	lw	a5,-40(s0)
    1516:	f7cd                	bnez	a5,14c0 <uart_send+0x10>
    1518:	0001                	nop
    151a:	0001                	nop
    151c:	5432                	lw	s0,44(sp)
    151e:	6145                	addi	sp,sp,48
    1520:	8082                	ret

00001522 <uart_getchar>:
    1522:	1141                	addi	sp,sp,-16
    1524:	c622                	sw	s0,12(sp)
    1526:	0800                	addi	s0,sp,16
    1528:	0001                	nop
    152a:	1a1007b7          	lui	a5,0x1a100
    152e:	07d1                	addi	a5,a5,20
    1530:	439c                	lw	a5,0(a5)
    1532:	0017f713          	andi	a4,a5,1
    1536:	4785                	li	a5,1
    1538:	fef719e3          	bne	a4,a5,152a <uart_getchar+0x8>
    153c:	1a1007b7          	lui	a5,0x1a100
    1540:	439c                	lw	a5,0(a5)
    1542:	0ff7f793          	andi	a5,a5,255
    1546:	853e                	mv	a0,a5
    1548:	4432                	lw	s0,12(sp)
    154a:	0141                	addi	sp,sp,16
    154c:	8082                	ret

0000154e <uart_sendchar>:
    154e:	1101                	addi	sp,sp,-32
    1550:	ce22                	sw	s0,28(sp)
    1552:	1000                	addi	s0,sp,32
    1554:	87aa                	mv	a5,a0
    1556:	fef407a3          	sb	a5,-17(s0)
    155a:	0001                	nop
    155c:	1a1007b7          	lui	a5,0x1a100
    1560:	07d1                	addi	a5,a5,20
    1562:	439c                	lw	a5,0(a5)
    1564:	0207f793          	andi	a5,a5,32
    1568:	dbf5                	beqz	a5,155c <uart_sendchar+0xe>
    156a:	1a1007b7          	lui	a5,0x1a100
    156e:	fef44703          	lbu	a4,-17(s0)
    1572:	c398                	sw	a4,0(a5)
    1574:	0001                	nop
    1576:	4472                	lw	s0,28(sp)
    1578:	6105                	addi	sp,sp,32
    157a:	8082                	ret

0000157c <uart_wait_tx_done>:
    157c:	1141                	addi	sp,sp,-16
    157e:	c622                	sw	s0,12(sp)
    1580:	0800                	addi	s0,sp,16
    1582:	0001                	nop
    1584:	1a1007b7          	lui	a5,0x1a100
    1588:	07d1                	addi	a5,a5,20
    158a:	439c                	lw	a5,0(a5)
    158c:	0407f793          	andi	a5,a5,64
    1590:	dbf5                	beqz	a5,1584 <uart_wait_tx_done+0x8>
    1592:	0001                	nop
    1594:	0001                	nop
    1596:	4432                	lw	s0,12(sp)
    1598:	0141                	addi	sp,sp,16
    159a:	8082                	ret

0000159c <uart_mysendstring>:
    159c:	7179                	addi	sp,sp,-48
    159e:	d606                	sw	ra,44(sp)
    15a0:	d422                	sw	s0,40(sp)
    15a2:	1800                	addi	s0,sp,48
    15a4:	fca42e23          	sw	a0,-36(s0)
    15a8:	fe042623          	sw	zero,-20(s0)
    15ac:	a839                	j	15ca <uart_mysendstring+0x2e>
    15ae:	fec42783          	lw	a5,-20(s0)
    15b2:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    15b6:	fee42623          	sw	a4,-20(s0)
    15ba:	873e                	mv	a4,a5
    15bc:	fdc42783          	lw	a5,-36(s0)
    15c0:	97ba                	add	a5,a5,a4
    15c2:	0007c783          	lbu	a5,0(a5)
    15c6:	853e                	mv	a0,a5
    15c8:	3759                	jal	154e <uart_sendchar>
    15ca:	fec42783          	lw	a5,-20(s0)
    15ce:	17fd                	addi	a5,a5,-1
    15d0:	fdc42703          	lw	a4,-36(s0)
    15d4:	97ba                	add	a5,a5,a4
    15d6:	0007c703          	lbu	a4,0(a5)
    15da:	47a9                	li	a5,10
    15dc:	00f70863          	beq	a4,a5,15ec <uart_mysendstring+0x50>
    15e0:	fec42703          	lw	a4,-20(s0)
    15e4:	02700793          	li	a5,39
    15e8:	fce7d3e3          	bge	a5,a4,15ae <uart_mysendstring+0x12>
    15ec:	0001                	nop
    15ee:	50b2                	lw	ra,44(sp)
    15f0:	5422                	lw	s0,40(sp)
    15f2:	6145                	addi	sp,sp,48
    15f4:	8082                	ret

000015f6 <uart_getstring>:
    15f6:	1101                	addi	sp,sp,-32
    15f8:	ce06                	sw	ra,28(sp)
    15fa:	cc22                	sw	s0,24(sp)
    15fc:	ca26                	sw	s1,20(sp)
    15fe:	1000                	addi	s0,sp,32
    1600:	fea42623          	sw	a0,-20(s0)
    1604:	0001                	nop
    1606:	fec42483          	lw	s1,-20(s0)
    160a:	00148793          	addi	a5,s1,1
    160e:	fef42623          	sw	a5,-20(s0)
    1612:	3f01                	jal	1522 <uart_getchar>
    1614:	87aa                	mv	a5,a0
    1616:	00f48023          	sb	a5,0(s1)
    161a:	0004c703          	lbu	a4,0(s1)
    161e:	47a9                	li	a5,10
    1620:	fef713e3          	bne	a4,a5,1606 <uart_getstring+0x10>
    1624:	fec42783          	lw	a5,-20(s0)
    1628:	00078023          	sb	zero,0(a5)
    162c:	0001                	nop
    162e:	40f2                	lw	ra,28(sp)
    1630:	4462                	lw	s0,24(sp)
    1632:	44d2                	lw	s1,20(sp)
    1634:	6105                	addi	sp,sp,32
    1636:	8082                	ret

00001638 <__CTOR_LIST__>:
	...

00001640 <__CTOR_END__>:
	...

Disassembly of section .rodata:

00001648 <.rodata>:
    1648:	5f757063          	bgeu	a0,s7,1c28 <_bss_end+0x544>
    164c:	6570                	flw	fa2,76(a0)
    164e:	6672                	flw	fa2,28(sp)
    1650:	735f 7465 203a      	0x203a7465735f
    1656:	6f6e                	flw	ft10,216(sp)
    1658:	2074                	fld	fa3,192(s0)
    165a:	6d69                	lui	s10,0x1a
    165c:	6c70                	flw	fa2,92(s0)
    165e:	6d65                	lui	s10,0x19
    1660:	6e65                	lui	t3,0x19
    1662:	6574                	flw	fa3,76(a0)
    1664:	2064                	fld	fs1,192(s0)
    1666:	6579                	lui	a0,0x1e
    1668:	0074                	addi	a3,sp,12
    166a:	0000                	unimp
    166c:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1670:	6425                	lui	s0,0x9
    1672:	6e20                	flw	fs0,88(a2)
    1674:	7920746f          	jal	s0,8e06 <_stack+0x6722>
    1678:	7465                	lui	s0,0xffff9
    167a:	7320                	flw	fs0,96(a4)
    167c:	7075                	c.lui	zero,0xffffd
    167e:	6f70                	flw	fa2,92(a4)
    1680:	7472                	flw	fs0,60(sp)
    1682:	6465                	lui	s0,0x19
    1684:	000a                	c.slli	zero,0x2
    1686:	0000                	unimp
    1688:	01c0                	addi	s0,sp,196
    168a:	0000                	unimp
    168c:	01ca                	slli	gp,gp,0x12
    168e:	0000                	unimp
    1690:	01d4                	addi	a3,sp,196
    1692:	0000                	unimp
    1694:	01de                	slli	gp,gp,0x17
    1696:	0000                	unimp
    1698:	01e8                	addi	a0,sp,204
    169a:	0000                	unimp
    169c:	01f2                	slli	gp,gp,0x1c
    169e:	0000                	unimp
    16a0:	01fc                	addi	a5,sp,204
    16a2:	0000                	unimp
    16a4:	0206                	slli	tp,tp,0x1
    16a6:	0000                	unimp
    16a8:	0210                	addi	a2,sp,256
    16aa:	0000                	unimp
    16ac:	021a                	slli	tp,tp,0x6
    16ae:	0000                	unimp
    16b0:	0224                	addi	s1,sp,264
    16b2:	0000                	unimp
    16b4:	022e                	slli	tp,tp,0xb
    16b6:	0000                	unimp
    16b8:	0238                	addi	a4,sp,264
    16ba:	0000                	unimp
    16bc:	0242                	slli	tp,tp,0x10
    16be:	0000                	unimp
    16c0:	024c                	addi	a1,sp,260
    16c2:	0000                	unimp
    16c4:	0256                	slli	tp,tp,0x15
    16c6:	0000                	unimp
    16c8:	6e28                	flw	fa0,88(a2)
    16ca:	6c75                	lui	s8,0x1d
    16cc:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

000016cf <.shbss>:
	...

Disassembly of section .data:

000016d0 <remu10_table>:
    16d0:	0100                	addi	s0,sp,128
    16d2:	0202                	c.slli64	tp
    16d4:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x1696c>
    16d8:	0605                	addi	a2,a2,1
    16da:	08080707          	0x8080707
    16de:	0009                	c.nop	2

Disassembly of section .sdata:

000016e0 <led_num>:
    16e0:	0002                	c.slli64	zero
	...

Disassembly of section .stack:

000016e4 <_stack-0x1000>:
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

