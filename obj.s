
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
     180:	5dc78513          	addi	a0,a5,1500 # 15dc <__DTOR_END__+0x2>
     184:	1f5000ef          	jal	ra,b78 <puts>
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
     1b6:	61c78793          	addi	a5,a5,1564 # 161c <__DTOR_END__+0x42>
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
     266:	60078513          	addi	a0,a5,1536 # 1600 <__DTOR_END__+0x26>
     26a:	0bf000ef          	jal	ra,b28 <printf>
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
     2ae:	3ea70713          	addi	a4,a4,1002 # 1694 <led_num>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	3e678793          	addi	a5,a5,998 # 1698 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	0ea010ef          	jal	ra,13b6 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	1e2000ef          	jal	ra,4b6 <main>
     2d8:	842a                	mv	s0,a0
     2da:	234010ef          	jal	ra,150e <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0760106f          	j	1366 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	06a0106f          	j	136e <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	05e0106f          	j	1376 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0520106f          	j	137e <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0460106f          	j	1386 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	03a0106f          	j	138e <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	0360106f          	j	139e <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	0da0006f          	j	456 <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	01e0106f          	j	13ae <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	0020106f          	j	13a6 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	79f0006f          	j	1356 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	7930006f          	j	135e <ecall_insn_handler_c>

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

00000456 <ISR_TA_OVF>:
     456:	1141                	addi	sp,sp,-16
     458:	c606                	sw	ra,12(sp)
     45a:	c422                	sw	s0,8(sp)
     45c:	0800                	addi	s0,sp,16
     45e:	1a1047b7          	lui	a5,0x1a104
     462:	07b1                	addi	a5,a5,12
     464:	10000737          	lui	a4,0x10000
     468:	c398                	sw	a4,0(a5)
     46a:	6785                	lui	a5,0x1
     46c:	6947a783          	lw	a5,1684(a5) # 1694 <led_num>
     470:	85be                	mv	a1,a5
     472:	6785                	lui	a5,0x1
     474:	65c78513          	addi	a0,a5,1628 # 165c <__DTOR_END__+0x82>
     478:	2d45                	jal	b28 <printf>
     47a:	39a1                	jal	d2 <get_time>
     47c:	87aa                	mv	a5,a0
     47e:	85be                	mv	a1,a5
     480:	6785                	lui	a5,0x1
     482:	67078513          	addi	a0,a5,1648 # 1670 <__DTOR_END__+0x96>
     486:	254d                	jal	b28 <printf>
     488:	6785                	lui	a5,0x1
     48a:	6947a703          	lw	a4,1684(a5) # 1694 <led_num>
     48e:	479d                	li	a5,7
     490:	00e7cb63          	blt	a5,a4,4a6 <ISR_TA_OVF+0x50>
     494:	6785                	lui	a5,0x1
     496:	6947a783          	lw	a5,1684(a5) # 1694 <led_num>
     49a:	00178713          	addi	a4,a5,1
     49e:	6785                	lui	a5,0x1
     4a0:	68e7aa23          	sw	a4,1684(a5) # 1694 <led_num>
     4a4:	a021                	j	4ac <ISR_TA_OVF+0x56>
     4a6:	6785                	lui	a5,0x1
     4a8:	6807aa23          	sw	zero,1684(a5) # 1694 <led_num>
     4ac:	0001                	nop
     4ae:	40b2                	lw	ra,12(sp)
     4b0:	4422                	lw	s0,8(sp)
     4b2:	0141                	addi	sp,sp,16
     4b4:	8082                	ret

000004b6 <main>:
     4b6:	1101                	addi	sp,sp,-32
     4b8:	ce06                	sw	ra,28(sp)
     4ba:	cc22                	sw	s0,24(sp)
     4bc:	1000                	addi	s0,sp,32
     4be:	fe042623          	sw	zero,-20(s0)
     4c2:	a005                	j	4e2 <main+0x2c>
     4c4:	4585                	li	a1,1
     4c6:	fec42503          	lw	a0,-20(s0)
     4ca:	15b000ef          	jal	ra,e24 <set_gpio_pin_direction>
     4ce:	4581                	li	a1,0
     4d0:	fec42503          	lw	a0,-20(s0)
     4d4:	1e3000ef          	jal	ra,eb6 <set_gpio_pin_value>
     4d8:	fec42783          	lw	a5,-20(s0)
     4dc:	0785                	addi	a5,a5,1
     4de:	fef42623          	sw	a5,-20(s0)
     4e2:	fec42703          	lw	a4,-20(s0)
     4e6:	479d                	li	a5,7
     4e8:	fce7dee3          	bge	a5,a4,4c4 <main+0xe>
     4ec:	3781                	jal	42c <int_enable>
     4ee:	3e55                	jal	a2 <start_timer>
     4f0:	6785                	lui	a5,0x1
     4f2:	6947a783          	lw	a5,1684(a5) # 1694 <led_num>
     4f6:	4585                	li	a1,1
     4f8:	853e                	mv	a0,a5
     4fa:	1bd000ef          	jal	ra,eb6 <set_gpio_pin_value>
     4fe:	3731                	jal	40a <sleep>
     500:	bfc5                	j	4f0 <main+0x3a>

00000502 <divu10>:
     502:	7179                	addi	sp,sp,-48
     504:	d622                	sw	s0,44(sp)
     506:	1800                	addi	s0,sp,48
     508:	fca42e23          	sw	a0,-36(s0)
     50c:	fdc42783          	lw	a5,-36(s0)
     510:	0017d713          	srli	a4,a5,0x1
     514:	fdc42783          	lw	a5,-36(s0)
     518:	8389                	srli	a5,a5,0x2
     51a:	97ba                	add	a5,a5,a4
     51c:	fef42623          	sw	a5,-20(s0)
     520:	fec42783          	lw	a5,-20(s0)
     524:	8391                	srli	a5,a5,0x4
     526:	fec42703          	lw	a4,-20(s0)
     52a:	97ba                	add	a5,a5,a4
     52c:	fef42623          	sw	a5,-20(s0)
     530:	fec42783          	lw	a5,-20(s0)
     534:	83a1                	srli	a5,a5,0x8
     536:	fec42703          	lw	a4,-20(s0)
     53a:	97ba                	add	a5,a5,a4
     53c:	fef42623          	sw	a5,-20(s0)
     540:	fec42783          	lw	a5,-20(s0)
     544:	83c1                	srli	a5,a5,0x10
     546:	fec42703          	lw	a4,-20(s0)
     54a:	97ba                	add	a5,a5,a4
     54c:	fef42623          	sw	a5,-20(s0)
     550:	fec42783          	lw	a5,-20(s0)
     554:	838d                	srli	a5,a5,0x3
     556:	fef42623          	sw	a5,-20(s0)
     55a:	fec42703          	lw	a4,-20(s0)
     55e:	87ba                	mv	a5,a4
     560:	078a                	slli	a5,a5,0x2
     562:	97ba                	add	a5,a5,a4
     564:	0786                	slli	a5,a5,0x1
     566:	873e                	mv	a4,a5
     568:	fdc42783          	lw	a5,-36(s0)
     56c:	8f99                	sub	a5,a5,a4
     56e:	fef42423          	sw	a5,-24(s0)
     572:	fe842783          	lw	a5,-24(s0)
     576:	0799                	addi	a5,a5,6
     578:	0047d713          	srli	a4,a5,0x4
     57c:	fec42783          	lw	a5,-20(s0)
     580:	97ba                	add	a5,a5,a4
     582:	853e                	mv	a0,a5
     584:	5432                	lw	s0,44(sp)
     586:	6145                	addi	sp,sp,48
     588:	8082                	ret

0000058a <remu10>:
     58a:	1101                	addi	sp,sp,-32
     58c:	ce22                	sw	s0,28(sp)
     58e:	1000                	addi	s0,sp,32
     590:	fea42623          	sw	a0,-20(s0)
     594:	fec42703          	lw	a4,-20(s0)
     598:	1999a7b7          	lui	a5,0x1999a
     59c:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     5a0:	02f70733          	mul	a4,a4,a5
     5a4:	fec42783          	lw	a5,-20(s0)
     5a8:	8385                	srli	a5,a5,0x1
     5aa:	973e                	add	a4,a4,a5
     5ac:	fec42783          	lw	a5,-20(s0)
     5b0:	838d                	srli	a5,a5,0x3
     5b2:	97ba                	add	a5,a5,a4
     5b4:	83f1                	srli	a5,a5,0x1c
     5b6:	fef42623          	sw	a5,-20(s0)
     5ba:	6785                	lui	a5,0x1
     5bc:	68478713          	addi	a4,a5,1668 # 1684 <remu10_table>
     5c0:	fec42783          	lw	a5,-20(s0)
     5c4:	97ba                	add	a5,a5,a4
     5c6:	0007c783          	lbu	a5,0(a5)
     5ca:	853e                	mv	a0,a5
     5cc:	4472                	lw	s0,28(sp)
     5ce:	6105                	addi	sp,sp,32
     5d0:	8082                	ret

000005d2 <putchar>:
     5d2:	1101                	addi	sp,sp,-32
     5d4:	ce06                	sw	ra,28(sp)
     5d6:	cc22                	sw	s0,24(sp)
     5d8:	1000                	addi	s0,sp,32
     5da:	fea42623          	sw	a0,-20(s0)
     5de:	fec42783          	lw	a5,-20(s0)
     5e2:	0ff7f793          	andi	a5,a5,255
     5e6:	853e                	mv	a0,a5
     5e8:	6f9000ef          	jal	ra,14e0 <uart_sendchar>
     5ec:	fec42783          	lw	a5,-20(s0)
     5f0:	853e                	mv	a0,a5
     5f2:	40f2                	lw	ra,28(sp)
     5f4:	4462                	lw	s0,24(sp)
     5f6:	6105                	addi	sp,sp,32
     5f8:	8082                	ret

000005fa <qprintchar>:
     5fa:	1101                	addi	sp,sp,-32
     5fc:	ce06                	sw	ra,28(sp)
     5fe:	cc22                	sw	s0,24(sp)
     600:	1000                	addi	s0,sp,32
     602:	fea42623          	sw	a0,-20(s0)
     606:	feb42423          	sw	a1,-24(s0)
     60a:	fec42783          	lw	a5,-20(s0)
     60e:	c39d                	beqz	a5,634 <qprintchar+0x3a>
     610:	fec42783          	lw	a5,-20(s0)
     614:	439c                	lw	a5,0(a5)
     616:	fe842703          	lw	a4,-24(s0)
     61a:	0ff77713          	andi	a4,a4,255
     61e:	00e78023          	sb	a4,0(a5)
     622:	fec42783          	lw	a5,-20(s0)
     626:	439c                	lw	a5,0(a5)
     628:	00178713          	addi	a4,a5,1
     62c:	fec42783          	lw	a5,-20(s0)
     630:	c398                	sw	a4,0(a5)
     632:	a039                	j	640 <qprintchar+0x46>
     634:	fe842783          	lw	a5,-24(s0)
     638:	0ff7f793          	andi	a5,a5,255
     63c:	853e                	mv	a0,a5
     63e:	3f51                	jal	5d2 <putchar>
     640:	0001                	nop
     642:	40f2                	lw	ra,28(sp)
     644:	4462                	lw	s0,24(sp)
     646:	6105                	addi	sp,sp,32
     648:	8082                	ret

0000064a <qprints>:
     64a:	7179                	addi	sp,sp,-48
     64c:	d606                	sw	ra,44(sp)
     64e:	d422                	sw	s0,40(sp)
     650:	d226                	sw	s1,36(sp)
     652:	d04a                	sw	s2,32(sp)
     654:	ce4e                	sw	s3,28(sp)
     656:	cc52                	sw	s4,24(sp)
     658:	1800                	addi	s0,sp,48
     65a:	fca42e23          	sw	a0,-36(s0)
     65e:	fcb42c23          	sw	a1,-40(s0)
     662:	fcc42a23          	sw	a2,-44(s0)
     666:	fcd42823          	sw	a3,-48(s0)
     66a:	4481                	li	s1,0
     66c:	02000a13          	li	s4,32
     670:	fd442783          	lw	a5,-44(s0)
     674:	02f05e63          	blez	a5,6b0 <qprints+0x66>
     678:	4901                	li	s2,0
     67a:	fd842983          	lw	s3,-40(s0)
     67e:	a019                	j	684 <qprints+0x3a>
     680:	0905                	addi	s2,s2,1
     682:	0985                	addi	s3,s3,1
     684:	0009c783          	lbu	a5,0(s3)
     688:	ffe5                	bnez	a5,680 <qprints+0x36>
     68a:	fd442783          	lw	a5,-44(s0)
     68e:	00f94563          	blt	s2,a5,698 <qprints+0x4e>
     692:	fc042a23          	sw	zero,-44(s0)
     696:	a039                	j	6a4 <qprints+0x5a>
     698:	fd442783          	lw	a5,-44(s0)
     69c:	412787b3          	sub	a5,a5,s2
     6a0:	fcf42a23          	sw	a5,-44(s0)
     6a4:	fd042783          	lw	a5,-48(s0)
     6a8:	8b89                	andi	a5,a5,2
     6aa:	c399                	beqz	a5,6b0 <qprints+0x66>
     6ac:	03000a13          	li	s4,48
     6b0:	fd042783          	lw	a5,-48(s0)
     6b4:	8b85                	andi	a5,a5,1
     6b6:	ef9d                	bnez	a5,6f4 <qprints+0xaa>
     6b8:	a819                	j	6ce <qprints+0x84>
     6ba:	85d2                	mv	a1,s4
     6bc:	fdc42503          	lw	a0,-36(s0)
     6c0:	3f2d                	jal	5fa <qprintchar>
     6c2:	0485                	addi	s1,s1,1
     6c4:	fd442783          	lw	a5,-44(s0)
     6c8:	17fd                	addi	a5,a5,-1
     6ca:	fcf42a23          	sw	a5,-44(s0)
     6ce:	fd442783          	lw	a5,-44(s0)
     6d2:	fef044e3          	bgtz	a5,6ba <qprints+0x70>
     6d6:	a839                	j	6f4 <qprints+0xaa>
     6d8:	fd842783          	lw	a5,-40(s0)
     6dc:	0007c783          	lbu	a5,0(a5)
     6e0:	85be                	mv	a1,a5
     6e2:	fdc42503          	lw	a0,-36(s0)
     6e6:	3f11                	jal	5fa <qprintchar>
     6e8:	0485                	addi	s1,s1,1
     6ea:	fd842783          	lw	a5,-40(s0)
     6ee:	0785                	addi	a5,a5,1
     6f0:	fcf42c23          	sw	a5,-40(s0)
     6f4:	fd842783          	lw	a5,-40(s0)
     6f8:	0007c783          	lbu	a5,0(a5)
     6fc:	fff1                	bnez	a5,6d8 <qprints+0x8e>
     6fe:	a819                	j	714 <qprints+0xca>
     700:	85d2                	mv	a1,s4
     702:	fdc42503          	lw	a0,-36(s0)
     706:	3dd5                	jal	5fa <qprintchar>
     708:	0485                	addi	s1,s1,1
     70a:	fd442783          	lw	a5,-44(s0)
     70e:	17fd                	addi	a5,a5,-1
     710:	fcf42a23          	sw	a5,-44(s0)
     714:	fd442783          	lw	a5,-44(s0)
     718:	fef044e3          	bgtz	a5,700 <qprints+0xb6>
     71c:	87a6                	mv	a5,s1
     71e:	853e                	mv	a0,a5
     720:	50b2                	lw	ra,44(sp)
     722:	5422                	lw	s0,40(sp)
     724:	5492                	lw	s1,36(sp)
     726:	5902                	lw	s2,32(sp)
     728:	49f2                	lw	s3,28(sp)
     72a:	4a62                	lw	s4,24(sp)
     72c:	6145                	addi	sp,sp,48
     72e:	8082                	ret

00000730 <qprinti>:
     730:	7159                	addi	sp,sp,-112
     732:	d686                	sw	ra,108(sp)
     734:	d4a2                	sw	s0,104(sp)
     736:	d2a6                	sw	s1,100(sp)
     738:	d0ca                	sw	s2,96(sp)
     73a:	cece                	sw	s3,92(sp)
     73c:	1880                	addi	s0,sp,112
     73e:	faa42623          	sw	a0,-84(s0)
     742:	fab42423          	sw	a1,-88(s0)
     746:	fac42223          	sw	a2,-92(s0)
     74a:	fad42023          	sw	a3,-96(s0)
     74e:	f8e42e23          	sw	a4,-100(s0)
     752:	f8f42c23          	sw	a5,-104(s0)
     756:	87c2                	mv	a5,a6
     758:	f8f40ba3          	sb	a5,-105(s0)
     75c:	4981                	li	s3,0
     75e:	4901                	li	s2,0
     760:	fa842783          	lw	a5,-88(s0)
     764:	fcf42e23          	sw	a5,-36(s0)
     768:	fa842783          	lw	a5,-88(s0)
     76c:	e39d                	bnez	a5,792 <qprinti+0x62>
     76e:	03000793          	li	a5,48
     772:	faf40c23          	sb	a5,-72(s0)
     776:	fa040ca3          	sb	zero,-71(s0)
     77a:	fb840793          	addi	a5,s0,-72
     77e:	f9842683          	lw	a3,-104(s0)
     782:	f9c42603          	lw	a2,-100(s0)
     786:	85be                	mv	a1,a5
     788:	fac42503          	lw	a0,-84(s0)
     78c:	3d7d                	jal	64a <qprints>
     78e:	87aa                	mv	a5,a0
     790:	a8fd                	j	88e <qprinti+0x15e>
     792:	fa042783          	lw	a5,-96(s0)
     796:	c38d                	beqz	a5,7b8 <qprinti+0x88>
     798:	fa442703          	lw	a4,-92(s0)
     79c:	47a9                	li	a5,10
     79e:	00f71d63          	bne	a4,a5,7b8 <qprinti+0x88>
     7a2:	fa842783          	lw	a5,-88(s0)
     7a6:	0007d963          	bgez	a5,7b8 <qprinti+0x88>
     7aa:	4985                	li	s3,1
     7ac:	fa842783          	lw	a5,-88(s0)
     7b0:	40f007b3          	neg	a5,a5
     7b4:	fcf42e23          	sw	a5,-36(s0)
     7b8:	fb840493          	addi	s1,s0,-72
     7bc:	04fd                	addi	s1,s1,31
     7be:	00048023          	sb	zero,0(s1)
     7c2:	fa442703          	lw	a4,-92(s0)
     7c6:	47c1                	li	a5,16
     7c8:	06f71c63          	bne	a4,a5,840 <qprinti+0x110>
     7cc:	a0a1                	j	814 <qprinti+0xe4>
     7ce:	fdc42783          	lw	a5,-36(s0)
     7d2:	8bbd                	andi	a5,a5,15
     7d4:	fcf42c23          	sw	a5,-40(s0)
     7d8:	fd842703          	lw	a4,-40(s0)
     7dc:	47a5                	li	a5,9
     7de:	00e7db63          	bge	a5,a4,7f4 <qprinti+0xc4>
     7e2:	f9744783          	lbu	a5,-105(s0)
     7e6:	fc678793          	addi	a5,a5,-58
     7ea:	fd842703          	lw	a4,-40(s0)
     7ee:	97ba                	add	a5,a5,a4
     7f0:	fcf42c23          	sw	a5,-40(s0)
     7f4:	fd842783          	lw	a5,-40(s0)
     7f8:	0ff7f793          	andi	a5,a5,255
     7fc:	14fd                	addi	s1,s1,-1
     7fe:	03078793          	addi	a5,a5,48
     802:	0ff7f793          	andi	a5,a5,255
     806:	00f48023          	sb	a5,0(s1)
     80a:	fdc42783          	lw	a5,-36(s0)
     80e:	8391                	srli	a5,a5,0x4
     810:	fcf42e23          	sw	a5,-36(s0)
     814:	fdc42783          	lw	a5,-36(s0)
     818:	fbdd                	bnez	a5,7ce <qprinti+0x9e>
     81a:	a035                	j	846 <qprinti+0x116>
     81c:	fdc42503          	lw	a0,-36(s0)
     820:	33ad                	jal	58a <remu10>
     822:	87aa                	mv	a5,a0
     824:	0ff7f793          	andi	a5,a5,255
     828:	14fd                	addi	s1,s1,-1
     82a:	03078793          	addi	a5,a5,48
     82e:	0ff7f793          	andi	a5,a5,255
     832:	00f48023          	sb	a5,0(s1)
     836:	fdc42503          	lw	a0,-36(s0)
     83a:	31e1                	jal	502 <divu10>
     83c:	fca42e23          	sw	a0,-36(s0)
     840:	fdc42783          	lw	a5,-36(s0)
     844:	ffe1                	bnez	a5,81c <qprinti+0xec>
     846:	02098a63          	beqz	s3,87a <qprinti+0x14a>
     84a:	f9c42783          	lw	a5,-100(s0)
     84e:	c38d                	beqz	a5,870 <qprinti+0x140>
     850:	f9842783          	lw	a5,-104(s0)
     854:	8b89                	andi	a5,a5,2
     856:	cf89                	beqz	a5,870 <qprinti+0x140>
     858:	02d00593          	li	a1,45
     85c:	fac42503          	lw	a0,-84(s0)
     860:	3b69                	jal	5fa <qprintchar>
     862:	0905                	addi	s2,s2,1
     864:	f9c42783          	lw	a5,-100(s0)
     868:	17fd                	addi	a5,a5,-1
     86a:	f8f42e23          	sw	a5,-100(s0)
     86e:	a031                	j	87a <qprinti+0x14a>
     870:	14fd                	addi	s1,s1,-1
     872:	02d00793          	li	a5,45
     876:	00f48023          	sb	a5,0(s1)
     87a:	f9842683          	lw	a3,-104(s0)
     87e:	f9c42603          	lw	a2,-100(s0)
     882:	85a6                	mv	a1,s1
     884:	fac42503          	lw	a0,-84(s0)
     888:	33c9                	jal	64a <qprints>
     88a:	87aa                	mv	a5,a0
     88c:	97ca                	add	a5,a5,s2
     88e:	853e                	mv	a0,a5
     890:	50b6                	lw	ra,108(sp)
     892:	5426                	lw	s0,104(sp)
     894:	5496                	lw	s1,100(sp)
     896:	5906                	lw	s2,96(sp)
     898:	49f6                	lw	s3,92(sp)
     89a:	6165                	addi	sp,sp,112
     89c:	8082                	ret

0000089e <qprint>:
     89e:	7139                	addi	sp,sp,-64
     8a0:	de06                	sw	ra,60(sp)
     8a2:	dc22                	sw	s0,56(sp)
     8a4:	da26                	sw	s1,52(sp)
     8a6:	d84a                	sw	s2,48(sp)
     8a8:	d64e                	sw	s3,44(sp)
     8aa:	0080                	addi	s0,sp,64
     8ac:	fca42623          	sw	a0,-52(s0)
     8b0:	fcb42423          	sw	a1,-56(s0)
     8b4:	fcc42223          	sw	a2,-60(s0)
     8b8:	4481                	li	s1,0
     8ba:	ac35                	j	af6 <qprint+0x258>
     8bc:	fc842783          	lw	a5,-56(s0)
     8c0:	0007c703          	lbu	a4,0(a5)
     8c4:	02500793          	li	a5,37
     8c8:	20f71663          	bne	a4,a5,ad4 <qprint+0x236>
     8cc:	fc842783          	lw	a5,-56(s0)
     8d0:	0785                	addi	a5,a5,1
     8d2:	fcf42423          	sw	a5,-56(s0)
     8d6:	4981                	li	s3,0
     8d8:	894e                	mv	s2,s3
     8da:	fc842783          	lw	a5,-56(s0)
     8de:	0007c783          	lbu	a5,0(a5)
     8e2:	22078163          	beqz	a5,b04 <qprint+0x266>
     8e6:	fc842783          	lw	a5,-56(s0)
     8ea:	0007c703          	lbu	a4,0(a5)
     8ee:	02500793          	li	a5,37
     8f2:	1ef70363          	beq	a4,a5,ad8 <qprint+0x23a>
     8f6:	fc842783          	lw	a5,-56(s0)
     8fa:	0007c703          	lbu	a4,0(a5)
     8fe:	02d00793          	li	a5,45
     902:	02f71063          	bne	a4,a5,922 <qprint+0x84>
     906:	fc842783          	lw	a5,-56(s0)
     90a:	0785                	addi	a5,a5,1
     90c:	fcf42423          	sw	a5,-56(s0)
     910:	4985                	li	s3,1
     912:	a801                	j	922 <qprint+0x84>
     914:	fc842783          	lw	a5,-56(s0)
     918:	0785                	addi	a5,a5,1
     91a:	fcf42423          	sw	a5,-56(s0)
     91e:	0029e993          	ori	s3,s3,2
     922:	fc842783          	lw	a5,-56(s0)
     926:	0007c703          	lbu	a4,0(a5)
     92a:	03000793          	li	a5,48
     92e:	fef703e3          	beq	a4,a5,914 <qprint+0x76>
     932:	a015                	j	956 <qprint+0xb8>
     934:	87ca                	mv	a5,s2
     936:	078a                	slli	a5,a5,0x2
     938:	97ca                	add	a5,a5,s2
     93a:	0786                	slli	a5,a5,0x1
     93c:	893e                	mv	s2,a5
     93e:	fc842783          	lw	a5,-56(s0)
     942:	0007c783          	lbu	a5,0(a5)
     946:	fd078793          	addi	a5,a5,-48
     94a:	993e                	add	s2,s2,a5
     94c:	fc842783          	lw	a5,-56(s0)
     950:	0785                	addi	a5,a5,1
     952:	fcf42423          	sw	a5,-56(s0)
     956:	fc842783          	lw	a5,-56(s0)
     95a:	0007c703          	lbu	a4,0(a5)
     95e:	02f00793          	li	a5,47
     962:	00e7fa63          	bgeu	a5,a4,976 <qprint+0xd8>
     966:	fc842783          	lw	a5,-56(s0)
     96a:	0007c703          	lbu	a4,0(a5)
     96e:	03900793          	li	a5,57
     972:	fce7f1e3          	bgeu	a5,a4,934 <qprint+0x96>
     976:	fc842783          	lw	a5,-56(s0)
     97a:	0007c703          	lbu	a4,0(a5)
     97e:	07300793          	li	a5,115
     982:	02f71a63          	bne	a4,a5,9b6 <qprint+0x118>
     986:	fc442783          	lw	a5,-60(s0)
     98a:	00478713          	addi	a4,a5,4
     98e:	fce42223          	sw	a4,-60(s0)
     992:	0007a083          	lw	ra,0(a5)
     996:	00008463          	beqz	ra,99e <qprint+0x100>
     99a:	8786                	mv	a5,ra
     99c:	a021                	j	9a4 <qprint+0x106>
     99e:	6785                	lui	a5,0x1
     9a0:	67c78793          	addi	a5,a5,1660 # 167c <__DTOR_END__+0xa2>
     9a4:	86ce                	mv	a3,s3
     9a6:	864a                	mv	a2,s2
     9a8:	85be                	mv	a1,a5
     9aa:	fcc42503          	lw	a0,-52(s0)
     9ae:	3971                	jal	64a <qprints>
     9b0:	87aa                	mv	a5,a0
     9b2:	94be                	add	s1,s1,a5
     9b4:	aa25                	j	aec <qprint+0x24e>
     9b6:	fc842783          	lw	a5,-56(s0)
     9ba:	0007c703          	lbu	a4,0(a5)
     9be:	06400793          	li	a5,100
     9c2:	02f71563          	bne	a4,a5,9ec <qprint+0x14e>
     9c6:	fc442783          	lw	a5,-60(s0)
     9ca:	00478713          	addi	a4,a5,4
     9ce:	fce42223          	sw	a4,-60(s0)
     9d2:	438c                	lw	a1,0(a5)
     9d4:	06100813          	li	a6,97
     9d8:	87ce                	mv	a5,s3
     9da:	874a                	mv	a4,s2
     9dc:	4685                	li	a3,1
     9de:	4629                	li	a2,10
     9e0:	fcc42503          	lw	a0,-52(s0)
     9e4:	33b1                	jal	730 <qprinti>
     9e6:	87aa                	mv	a5,a0
     9e8:	94be                	add	s1,s1,a5
     9ea:	a209                	j	aec <qprint+0x24e>
     9ec:	fc842783          	lw	a5,-56(s0)
     9f0:	0007c703          	lbu	a4,0(a5)
     9f4:	07500793          	li	a5,117
     9f8:	02f71663          	bne	a4,a5,a24 <qprint+0x186>
     9fc:	fc442783          	lw	a5,-60(s0)
     a00:	00478713          	addi	a4,a5,4
     a04:	fce42223          	sw	a4,-60(s0)
     a08:	439c                	lw	a5,0(a5)
     a0a:	85be                	mv	a1,a5
     a0c:	06100813          	li	a6,97
     a10:	87ce                	mv	a5,s3
     a12:	874a                	mv	a4,s2
     a14:	4681                	li	a3,0
     a16:	4629                	li	a2,10
     a18:	fcc42503          	lw	a0,-52(s0)
     a1c:	3b11                	jal	730 <qprinti>
     a1e:	87aa                	mv	a5,a0
     a20:	94be                	add	s1,s1,a5
     a22:	a0e9                	j	aec <qprint+0x24e>
     a24:	fc842783          	lw	a5,-56(s0)
     a28:	0007c703          	lbu	a4,0(a5)
     a2c:	07800793          	li	a5,120
     a30:	02f71663          	bne	a4,a5,a5c <qprint+0x1be>
     a34:	fc442783          	lw	a5,-60(s0)
     a38:	00478713          	addi	a4,a5,4
     a3c:	fce42223          	sw	a4,-60(s0)
     a40:	439c                	lw	a5,0(a5)
     a42:	85be                	mv	a1,a5
     a44:	06100813          	li	a6,97
     a48:	87ce                	mv	a5,s3
     a4a:	874a                	mv	a4,s2
     a4c:	4681                	li	a3,0
     a4e:	4641                	li	a2,16
     a50:	fcc42503          	lw	a0,-52(s0)
     a54:	39f1                	jal	730 <qprinti>
     a56:	87aa                	mv	a5,a0
     a58:	94be                	add	s1,s1,a5
     a5a:	a849                	j	aec <qprint+0x24e>
     a5c:	fc842783          	lw	a5,-56(s0)
     a60:	0007c703          	lbu	a4,0(a5)
     a64:	05800793          	li	a5,88
     a68:	02f71663          	bne	a4,a5,a94 <qprint+0x1f6>
     a6c:	fc442783          	lw	a5,-60(s0)
     a70:	00478713          	addi	a4,a5,4
     a74:	fce42223          	sw	a4,-60(s0)
     a78:	439c                	lw	a5,0(a5)
     a7a:	85be                	mv	a1,a5
     a7c:	04100813          	li	a6,65
     a80:	87ce                	mv	a5,s3
     a82:	874a                	mv	a4,s2
     a84:	4681                	li	a3,0
     a86:	4641                	li	a2,16
     a88:	fcc42503          	lw	a0,-52(s0)
     a8c:	3155                	jal	730 <qprinti>
     a8e:	87aa                	mv	a5,a0
     a90:	94be                	add	s1,s1,a5
     a92:	a8a9                	j	aec <qprint+0x24e>
     a94:	fc842783          	lw	a5,-56(s0)
     a98:	0007c703          	lbu	a4,0(a5)
     a9c:	06300793          	li	a5,99
     aa0:	04f71663          	bne	a4,a5,aec <qprint+0x24e>
     aa4:	fc442783          	lw	a5,-60(s0)
     aa8:	00478713          	addi	a4,a5,4
     aac:	fce42223          	sw	a4,-60(s0)
     ab0:	439c                	lw	a5,0(a5)
     ab2:	0ff7f793          	andi	a5,a5,255
     ab6:	fcf40e23          	sb	a5,-36(s0)
     aba:	fc040ea3          	sb	zero,-35(s0)
     abe:	fdc40793          	addi	a5,s0,-36
     ac2:	86ce                	mv	a3,s3
     ac4:	864a                	mv	a2,s2
     ac6:	85be                	mv	a1,a5
     ac8:	fcc42503          	lw	a0,-52(s0)
     acc:	3ebd                	jal	64a <qprints>
     ace:	87aa                	mv	a5,a0
     ad0:	94be                	add	s1,s1,a5
     ad2:	a829                	j	aec <qprint+0x24e>
     ad4:	0001                	nop
     ad6:	a011                	j	ada <qprint+0x23c>
     ad8:	0001                	nop
     ada:	fc842783          	lw	a5,-56(s0)
     ade:	0007c783          	lbu	a5,0(a5)
     ae2:	85be                	mv	a1,a5
     ae4:	fcc42503          	lw	a0,-52(s0)
     ae8:	3e09                	jal	5fa <qprintchar>
     aea:	0485                	addi	s1,s1,1
     aec:	fc842783          	lw	a5,-56(s0)
     af0:	0785                	addi	a5,a5,1
     af2:	fcf42423          	sw	a5,-56(s0)
     af6:	fc842783          	lw	a5,-56(s0)
     afa:	0007c783          	lbu	a5,0(a5)
     afe:	da079fe3          	bnez	a5,8bc <qprint+0x1e>
     b02:	a011                	j	b06 <qprint+0x268>
     b04:	0001                	nop
     b06:	fcc42783          	lw	a5,-52(s0)
     b0a:	c791                	beqz	a5,b16 <qprint+0x278>
     b0c:	fcc42783          	lw	a5,-52(s0)
     b10:	439c                	lw	a5,0(a5)
     b12:	00078023          	sb	zero,0(a5)
     b16:	87a6                	mv	a5,s1
     b18:	853e                	mv	a0,a5
     b1a:	50f2                	lw	ra,60(sp)
     b1c:	5462                	lw	s0,56(sp)
     b1e:	54d2                	lw	s1,52(sp)
     b20:	5942                	lw	s2,48(sp)
     b22:	59b2                	lw	s3,44(sp)
     b24:	6121                	addi	sp,sp,64
     b26:	8082                	ret

00000b28 <printf>:
     b28:	715d                	addi	sp,sp,-80
     b2a:	d606                	sw	ra,44(sp)
     b2c:	d422                	sw	s0,40(sp)
     b2e:	1800                	addi	s0,sp,48
     b30:	fca42e23          	sw	a0,-36(s0)
     b34:	c04c                	sw	a1,4(s0)
     b36:	c410                	sw	a2,8(s0)
     b38:	c454                	sw	a3,12(s0)
     b3a:	c818                	sw	a4,16(s0)
     b3c:	c85c                	sw	a5,20(s0)
     b3e:	01042c23          	sw	a6,24(s0)
     b42:	01142e23          	sw	a7,28(s0)
     b46:	02040793          	addi	a5,s0,32
     b4a:	fcf42c23          	sw	a5,-40(s0)
     b4e:	fd842783          	lw	a5,-40(s0)
     b52:	1791                	addi	a5,a5,-28
     b54:	fef42423          	sw	a5,-24(s0)
     b58:	fe842783          	lw	a5,-24(s0)
     b5c:	863e                	mv	a2,a5
     b5e:	fdc42583          	lw	a1,-36(s0)
     b62:	4501                	li	a0,0
     b64:	3b2d                	jal	89e <qprint>
     b66:	fea42623          	sw	a0,-20(s0)
     b6a:	fec42783          	lw	a5,-20(s0)
     b6e:	853e                	mv	a0,a5
     b70:	50b2                	lw	ra,44(sp)
     b72:	5422                	lw	s0,40(sp)
     b74:	6161                	addi	sp,sp,80
     b76:	8082                	ret

00000b78 <puts>:
     b78:	7179                	addi	sp,sp,-48
     b7a:	d606                	sw	ra,44(sp)
     b7c:	d422                	sw	s0,40(sp)
     b7e:	1800                	addi	s0,sp,48
     b80:	fca42e23          	sw	a0,-36(s0)
     b84:	fe042623          	sw	zero,-20(s0)
     b88:	a839                	j	ba6 <puts+0x2e>
     b8a:	fec42783          	lw	a5,-20(s0)
     b8e:	00178713          	addi	a4,a5,1
     b92:	fee42623          	sw	a4,-20(s0)
     b96:	873e                	mv	a4,a5
     b98:	fdc42783          	lw	a5,-36(s0)
     b9c:	97ba                	add	a5,a5,a4
     b9e:	0007c783          	lbu	a5,0(a5)
     ba2:	853e                	mv	a0,a5
     ba4:	343d                	jal	5d2 <putchar>
     ba6:	fec42783          	lw	a5,-20(s0)
     baa:	fdc42703          	lw	a4,-36(s0)
     bae:	97ba                	add	a5,a5,a4
     bb0:	0007c783          	lbu	a5,0(a5)
     bb4:	fbf9                	bnez	a5,b8a <puts+0x12>
     bb6:	4529                	li	a0,10
     bb8:	3c29                	jal	5d2 <putchar>
     bba:	fec42783          	lw	a5,-20(s0)
     bbe:	853e                	mv	a0,a5
     bc0:	50b2                	lw	ra,44(sp)
     bc2:	5422                	lw	s0,40(sp)
     bc4:	6145                	addi	sp,sp,48
     bc6:	8082                	ret

00000bc8 <strcmp>:
     bc8:	7179                	addi	sp,sp,-48
     bca:	d622                	sw	s0,44(sp)
     bcc:	1800                	addi	s0,sp,48
     bce:	fca42e23          	sw	a0,-36(s0)
     bd2:	fcb42c23          	sw	a1,-40(s0)
     bd6:	fdc42703          	lw	a4,-36(s0)
     bda:	fd842783          	lw	a5,-40(s0)
     bde:	8fd9                	or	a5,a5,a4
     be0:	8b8d                	andi	a5,a5,3
     be2:	e7c9                	bnez	a5,c6c <strcmp+0xa4>
     be4:	fdc42783          	lw	a5,-36(s0)
     be8:	fef42623          	sw	a5,-20(s0)
     bec:	fd842783          	lw	a5,-40(s0)
     bf0:	fef42423          	sw	a5,-24(s0)
     bf4:	a089                	j	c36 <strcmp+0x6e>
     bf6:	fec42783          	lw	a5,-20(s0)
     bfa:	4398                	lw	a4,0(a5)
     bfc:	feff07b7          	lui	a5,0xfeff0
     c00:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c04:	973e                	add	a4,a4,a5
     c06:	fec42783          	lw	a5,-20(s0)
     c0a:	439c                	lw	a5,0(a5)
     c0c:	fff7c793          	not	a5,a5
     c10:	8f7d                	and	a4,a4,a5
     c12:	808087b7          	lui	a5,0x80808
     c16:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c1a:	8ff9                	and	a5,a5,a4
     c1c:	c399                	beqz	a5,c22 <strcmp+0x5a>
     c1e:	4781                	li	a5,0
     c20:	a041                	j	ca0 <strcmp+0xd8>
     c22:	fec42783          	lw	a5,-20(s0)
     c26:	0791                	addi	a5,a5,4
     c28:	fef42623          	sw	a5,-20(s0)
     c2c:	fe842783          	lw	a5,-24(s0)
     c30:	0791                	addi	a5,a5,4
     c32:	fef42423          	sw	a5,-24(s0)
     c36:	fec42783          	lw	a5,-20(s0)
     c3a:	4398                	lw	a4,0(a5)
     c3c:	fe842783          	lw	a5,-24(s0)
     c40:	439c                	lw	a5,0(a5)
     c42:	faf70ae3          	beq	a4,a5,bf6 <strcmp+0x2e>
     c46:	fec42783          	lw	a5,-20(s0)
     c4a:	fcf42e23          	sw	a5,-36(s0)
     c4e:	fe842783          	lw	a5,-24(s0)
     c52:	fcf42c23          	sw	a5,-40(s0)
     c56:	a819                	j	c6c <strcmp+0xa4>
     c58:	fdc42783          	lw	a5,-36(s0)
     c5c:	0785                	addi	a5,a5,1
     c5e:	fcf42e23          	sw	a5,-36(s0)
     c62:	fd842783          	lw	a5,-40(s0)
     c66:	0785                	addi	a5,a5,1
     c68:	fcf42c23          	sw	a5,-40(s0)
     c6c:	fdc42783          	lw	a5,-36(s0)
     c70:	0007c783          	lbu	a5,0(a5)
     c74:	cb99                	beqz	a5,c8a <strcmp+0xc2>
     c76:	fdc42783          	lw	a5,-36(s0)
     c7a:	0007c703          	lbu	a4,0(a5)
     c7e:	fd842783          	lw	a5,-40(s0)
     c82:	0007c783          	lbu	a5,0(a5)
     c86:	fcf709e3          	beq	a4,a5,c58 <strcmp+0x90>
     c8a:	fdc42783          	lw	a5,-36(s0)
     c8e:	0007c783          	lbu	a5,0(a5)
     c92:	873e                	mv	a4,a5
     c94:	fd842783          	lw	a5,-40(s0)
     c98:	0007c783          	lbu	a5,0(a5)
     c9c:	40f707b3          	sub	a5,a4,a5
     ca0:	853e                	mv	a0,a5
     ca2:	5432                	lw	s0,44(sp)
     ca4:	6145                	addi	sp,sp,48
     ca6:	8082                	ret

00000ca8 <memset>:
     ca8:	7179                	addi	sp,sp,-48
     caa:	d622                	sw	s0,44(sp)
     cac:	1800                	addi	s0,sp,48
     cae:	fca42e23          	sw	a0,-36(s0)
     cb2:	fcb42c23          	sw	a1,-40(s0)
     cb6:	fcc42a23          	sw	a2,-44(s0)
     cba:	fdc42783          	lw	a5,-36(s0)
     cbe:	fef42623          	sw	a5,-20(s0)
     cc2:	a015                	j	ce6 <memset+0x3e>
     cc4:	fec42783          	lw	a5,-20(s0)
     cc8:	00178713          	addi	a4,a5,1
     ccc:	fee42623          	sw	a4,-20(s0)
     cd0:	fd842703          	lw	a4,-40(s0)
     cd4:	0ff77713          	andi	a4,a4,255
     cd8:	00e78023          	sb	a4,0(a5)
     cdc:	fd442783          	lw	a5,-44(s0)
     ce0:	17fd                	addi	a5,a5,-1
     ce2:	fcf42a23          	sw	a5,-44(s0)
     ce6:	fd442783          	lw	a5,-44(s0)
     cea:	ffe9                	bnez	a5,cc4 <memset+0x1c>
     cec:	fdc42783          	lw	a5,-36(s0)
     cf0:	853e                	mv	a0,a5
     cf2:	5432                	lw	s0,44(sp)
     cf4:	6145                	addi	sp,sp,48
     cf6:	8082                	ret

00000cf8 <strcpy>:
     cf8:	7179                	addi	sp,sp,-48
     cfa:	d622                	sw	s0,44(sp)
     cfc:	1800                	addi	s0,sp,48
     cfe:	fca42e23          	sw	a0,-36(s0)
     d02:	fcb42c23          	sw	a1,-40(s0)
     d06:	fdc42783          	lw	a5,-36(s0)
     d0a:	fef42623          	sw	a5,-20(s0)
     d0e:	fd842783          	lw	a5,-40(s0)
     d12:	fef42423          	sw	a5,-24(s0)
     d16:	a01d                	j	d3c <strcpy+0x44>
     d18:	fe842783          	lw	a5,-24(s0)
     d1c:	0007c703          	lbu	a4,0(a5)
     d20:	fec42783          	lw	a5,-20(s0)
     d24:	00e78023          	sb	a4,0(a5)
     d28:	fec42783          	lw	a5,-20(s0)
     d2c:	0785                	addi	a5,a5,1
     d2e:	fef42623          	sw	a5,-20(s0)
     d32:	fe842783          	lw	a5,-24(s0)
     d36:	0785                	addi	a5,a5,1
     d38:	fef42423          	sw	a5,-24(s0)
     d3c:	fe842783          	lw	a5,-24(s0)
     d40:	0007c783          	lbu	a5,0(a5)
     d44:	fbf1                	bnez	a5,d18 <strcpy+0x20>
     d46:	fdc42783          	lw	a5,-36(s0)
     d4a:	853e                	mv	a0,a5
     d4c:	5432                	lw	s0,44(sp)
     d4e:	6145                	addi	sp,sp,48
     d50:	8082                	ret

00000d52 <strlen>:
     d52:	7179                	addi	sp,sp,-48
     d54:	d622                	sw	s0,44(sp)
     d56:	1800                	addi	s0,sp,48
     d58:	fca42e23          	sw	a0,-36(s0)
     d5c:	fdc42783          	lw	a5,-36(s0)
     d60:	fef42623          	sw	a5,-20(s0)
     d64:	fe042423          	sw	zero,-24(s0)
     d68:	fec42783          	lw	a5,-20(s0)
     d6c:	eb81                	bnez	a5,d7c <strlen+0x2a>
     d6e:	4781                	li	a5,0
     d70:	a00d                	j	d92 <strlen+0x40>
     d72:	fe842783          	lw	a5,-24(s0)
     d76:	0785                	addi	a5,a5,1
     d78:	fef42423          	sw	a5,-24(s0)
     d7c:	fec42783          	lw	a5,-20(s0)
     d80:	00178713          	addi	a4,a5,1
     d84:	fee42623          	sw	a4,-20(s0)
     d88:	0007c783          	lbu	a5,0(a5)
     d8c:	f3fd                	bnez	a5,d72 <strlen+0x20>
     d8e:	fe842783          	lw	a5,-24(s0)
     d92:	853e                	mv	a0,a5
     d94:	5432                	lw	s0,44(sp)
     d96:	6145                	addi	sp,sp,48
     d98:	8082                	ret

00000d9a <set_pin_function>:
     d9a:	7179                	addi	sp,sp,-48
     d9c:	d622                	sw	s0,44(sp)
     d9e:	1800                	addi	s0,sp,48
     da0:	fca42e23          	sw	a0,-36(s0)
     da4:	fcb42c23          	sw	a1,-40(s0)
     da8:	1a1077b7          	lui	a5,0x1a107
     dac:	439c                	lw	a5,0(a5)
     dae:	fef42623          	sw	a5,-20(s0)
     db2:	fdc42783          	lw	a5,-36(s0)
     db6:	4705                	li	a4,1
     db8:	00f717b3          	sll	a5,a4,a5
     dbc:	fff7c713          	not	a4,a5
     dc0:	fec42783          	lw	a5,-20(s0)
     dc4:	8ff9                	and	a5,a5,a4
     dc6:	fef42623          	sw	a5,-20(s0)
     dca:	fdc42783          	lw	a5,-36(s0)
     dce:	fd842703          	lw	a4,-40(s0)
     dd2:	00f71733          	sll	a4,a4,a5
     dd6:	fec42783          	lw	a5,-20(s0)
     dda:	8fd9                	or	a5,a5,a4
     ddc:	fef42623          	sw	a5,-20(s0)
     de0:	1a1077b7          	lui	a5,0x1a107
     de4:	fec42703          	lw	a4,-20(s0)
     de8:	c398                	sw	a4,0(a5)
     dea:	0001                	nop
     dec:	5432                	lw	s0,44(sp)
     dee:	6145                	addi	sp,sp,48
     df0:	8082                	ret

00000df2 <get_pin_function>:
     df2:	7179                	addi	sp,sp,-48
     df4:	d622                	sw	s0,44(sp)
     df6:	1800                	addi	s0,sp,48
     df8:	fca42e23          	sw	a0,-36(s0)
     dfc:	1a1077b7          	lui	a5,0x1a107
     e00:	439c                	lw	a5,0(a5)
     e02:	fef42623          	sw	a5,-20(s0)
     e06:	fec42703          	lw	a4,-20(s0)
     e0a:	fdc42783          	lw	a5,-36(s0)
     e0e:	40f757b3          	sra	a5,a4,a5
     e12:	8b85                	andi	a5,a5,1
     e14:	fef42623          	sw	a5,-20(s0)
     e18:	fec42783          	lw	a5,-20(s0)
     e1c:	853e                	mv	a0,a5
     e1e:	5432                	lw	s0,44(sp)
     e20:	6145                	addi	sp,sp,48
     e22:	8082                	ret

00000e24 <set_gpio_pin_direction>:
     e24:	7179                	addi	sp,sp,-48
     e26:	d622                	sw	s0,44(sp)
     e28:	1800                	addi	s0,sp,48
     e2a:	fca42e23          	sw	a0,-36(s0)
     e2e:	fcb42c23          	sw	a1,-40(s0)
     e32:	1a1017b7          	lui	a5,0x1a101
     e36:	439c                	lw	a5,0(a5)
     e38:	fef42623          	sw	a5,-20(s0)
     e3c:	fd842783          	lw	a5,-40(s0)
     e40:	ef91                	bnez	a5,e5c <set_gpio_pin_direction+0x38>
     e42:	fdc42783          	lw	a5,-36(s0)
     e46:	4705                	li	a4,1
     e48:	00f717b3          	sll	a5,a4,a5
     e4c:	fff7c713          	not	a4,a5
     e50:	fec42783          	lw	a5,-20(s0)
     e54:	8ff9                	and	a5,a5,a4
     e56:	fef42623          	sw	a5,-20(s0)
     e5a:	a819                	j	e70 <set_gpio_pin_direction+0x4c>
     e5c:	fdc42783          	lw	a5,-36(s0)
     e60:	4705                	li	a4,1
     e62:	00f71733          	sll	a4,a4,a5
     e66:	fec42783          	lw	a5,-20(s0)
     e6a:	8fd9                	or	a5,a5,a4
     e6c:	fef42623          	sw	a5,-20(s0)
     e70:	1a1017b7          	lui	a5,0x1a101
     e74:	fec42703          	lw	a4,-20(s0)
     e78:	c398                	sw	a4,0(a5)
     e7a:	0001                	nop
     e7c:	5432                	lw	s0,44(sp)
     e7e:	6145                	addi	sp,sp,48
     e80:	8082                	ret

00000e82 <get_gpio_pin_direction>:
     e82:	7179                	addi	sp,sp,-48
     e84:	d622                	sw	s0,44(sp)
     e86:	1800                	addi	s0,sp,48
     e88:	fca42e23          	sw	a0,-36(s0)
     e8c:	1a1017b7          	lui	a5,0x1a101
     e90:	439c                	lw	a5,0(a5)
     e92:	fef42623          	sw	a5,-20(s0)
     e96:	fec42703          	lw	a4,-20(s0)
     e9a:	fdc42783          	lw	a5,-36(s0)
     e9e:	0786                	slli	a5,a5,0x1
     ea0:	40f757b3          	sra	a5,a4,a5
     ea4:	8b85                	andi	a5,a5,1
     ea6:	fef42623          	sw	a5,-20(s0)
     eaa:	fec42783          	lw	a5,-20(s0)
     eae:	853e                	mv	a0,a5
     eb0:	5432                	lw	s0,44(sp)
     eb2:	6145                	addi	sp,sp,48
     eb4:	8082                	ret

00000eb6 <set_gpio_pin_value>:
     eb6:	7179                	addi	sp,sp,-48
     eb8:	d622                	sw	s0,44(sp)
     eba:	1800                	addi	s0,sp,48
     ebc:	fca42e23          	sw	a0,-36(s0)
     ec0:	fcb42c23          	sw	a1,-40(s0)
     ec4:	1a1017b7          	lui	a5,0x1a101
     ec8:	07a1                	addi	a5,a5,8
     eca:	439c                	lw	a5,0(a5)
     ecc:	fef42623          	sw	a5,-20(s0)
     ed0:	fd842783          	lw	a5,-40(s0)
     ed4:	ef91                	bnez	a5,ef0 <set_gpio_pin_value+0x3a>
     ed6:	fdc42783          	lw	a5,-36(s0)
     eda:	4705                	li	a4,1
     edc:	00f717b3          	sll	a5,a4,a5
     ee0:	fff7c713          	not	a4,a5
     ee4:	fec42783          	lw	a5,-20(s0)
     ee8:	8ff9                	and	a5,a5,a4
     eea:	fef42623          	sw	a5,-20(s0)
     eee:	a819                	j	f04 <set_gpio_pin_value+0x4e>
     ef0:	fdc42783          	lw	a5,-36(s0)
     ef4:	4705                	li	a4,1
     ef6:	00f71733          	sll	a4,a4,a5
     efa:	fec42783          	lw	a5,-20(s0)
     efe:	8fd9                	or	a5,a5,a4
     f00:	fef42623          	sw	a5,-20(s0)
     f04:	1a1017b7          	lui	a5,0x1a101
     f08:	07a1                	addi	a5,a5,8
     f0a:	fec42703          	lw	a4,-20(s0)
     f0e:	c398                	sw	a4,0(a5)
     f10:	0001                	nop
     f12:	5432                	lw	s0,44(sp)
     f14:	6145                	addi	sp,sp,48
     f16:	8082                	ret

00000f18 <get_gpio_pin_value>:
     f18:	7179                	addi	sp,sp,-48
     f1a:	d622                	sw	s0,44(sp)
     f1c:	1800                	addi	s0,sp,48
     f1e:	fca42e23          	sw	a0,-36(s0)
     f22:	1a1017b7          	lui	a5,0x1a101
     f26:	0791                	addi	a5,a5,4
     f28:	439c                	lw	a5,0(a5)
     f2a:	fef42623          	sw	a5,-20(s0)
     f2e:	fec42703          	lw	a4,-20(s0)
     f32:	fdc42783          	lw	a5,-36(s0)
     f36:	40f757b3          	sra	a5,a4,a5
     f3a:	8b85                	andi	a5,a5,1
     f3c:	fef42623          	sw	a5,-20(s0)
     f40:	fec42783          	lw	a5,-20(s0)
     f44:	853e                	mv	a0,a5
     f46:	5432                	lw	s0,44(sp)
     f48:	6145                	addi	sp,sp,48
     f4a:	8082                	ret

00000f4c <set_gpio_pin_irq_en>:
     f4c:	7179                	addi	sp,sp,-48
     f4e:	d622                	sw	s0,44(sp)
     f50:	1800                	addi	s0,sp,48
     f52:	fca42e23          	sw	a0,-36(s0)
     f56:	fcb42c23          	sw	a1,-40(s0)
     f5a:	1a1017b7          	lui	a5,0x1a101
     f5e:	07b1                	addi	a5,a5,12
     f60:	439c                	lw	a5,0(a5)
     f62:	fef42623          	sw	a5,-20(s0)
     f66:	fd842783          	lw	a5,-40(s0)
     f6a:	ef91                	bnez	a5,f86 <set_gpio_pin_irq_en+0x3a>
     f6c:	fdc42783          	lw	a5,-36(s0)
     f70:	4705                	li	a4,1
     f72:	00f717b3          	sll	a5,a4,a5
     f76:	fff7c793          	not	a5,a5
     f7a:	fec42703          	lw	a4,-20(s0)
     f7e:	8ff9                	and	a5,a5,a4
     f80:	fef42623          	sw	a5,-20(s0)
     f84:	a819                	j	f9a <set_gpio_pin_irq_en+0x4e>
     f86:	fdc42783          	lw	a5,-36(s0)
     f8a:	4705                	li	a4,1
     f8c:	00f717b3          	sll	a5,a4,a5
     f90:	fec42703          	lw	a4,-20(s0)
     f94:	8fd9                	or	a5,a5,a4
     f96:	fef42623          	sw	a5,-20(s0)
     f9a:	1a1017b7          	lui	a5,0x1a101
     f9e:	07b1                	addi	a5,a5,12
     fa0:	fec42703          	lw	a4,-20(s0)
     fa4:	c398                	sw	a4,0(a5)
     fa6:	0001                	nop
     fa8:	5432                	lw	s0,44(sp)
     faa:	6145                	addi	sp,sp,48
     fac:	8082                	ret

00000fae <set_gpio_pin_irq_type>:
     fae:	7179                	addi	sp,sp,-48
     fb0:	d622                	sw	s0,44(sp)
     fb2:	1800                	addi	s0,sp,48
     fb4:	fca42e23          	sw	a0,-36(s0)
     fb8:	fcb42c23          	sw	a1,-40(s0)
     fbc:	1a1017b7          	lui	a5,0x1a101
     fc0:	07c1                	addi	a5,a5,16
     fc2:	439c                	lw	a5,0(a5)
     fc4:	fef42623          	sw	a5,-20(s0)
     fc8:	1a1017b7          	lui	a5,0x1a101
     fcc:	07d1                	addi	a5,a5,20
     fce:	439c                	lw	a5,0(a5)
     fd0:	fef42423          	sw	a5,-24(s0)
     fd4:	fd842783          	lw	a5,-40(s0)
     fd8:	8b85                	andi	a5,a5,1
     fda:	ef91                	bnez	a5,ff6 <set_gpio_pin_irq_type+0x48>
     fdc:	fdc42783          	lw	a5,-36(s0)
     fe0:	4705                	li	a4,1
     fe2:	00f717b3          	sll	a5,a4,a5
     fe6:	fff7c793          	not	a5,a5
     fea:	fec42703          	lw	a4,-20(s0)
     fee:	8ff9                	and	a5,a5,a4
     ff0:	fef42623          	sw	a5,-20(s0)
     ff4:	a819                	j	100a <_min_stack+0xa>
     ff6:	fdc42783          	lw	a5,-36(s0)
     ffa:	4705                	li	a4,1
     ffc:	00f717b3          	sll	a5,a4,a5
    1000:	fec42703          	lw	a4,-20(s0)
    1004:	8fd9                	or	a5,a5,a4
    1006:	fef42623          	sw	a5,-20(s0)
    100a:	fd842783          	lw	a5,-40(s0)
    100e:	8b89                	andi	a5,a5,2
    1010:	ef91                	bnez	a5,102c <_min_stack+0x2c>
    1012:	fdc42783          	lw	a5,-36(s0)
    1016:	4705                	li	a4,1
    1018:	00f717b3          	sll	a5,a4,a5
    101c:	fff7c793          	not	a5,a5
    1020:	fe842703          	lw	a4,-24(s0)
    1024:	8ff9                	and	a5,a5,a4
    1026:	fef42423          	sw	a5,-24(s0)
    102a:	a819                	j	1040 <_min_stack+0x40>
    102c:	fdc42783          	lw	a5,-36(s0)
    1030:	4705                	li	a4,1
    1032:	00f717b3          	sll	a5,a4,a5
    1036:	fe842703          	lw	a4,-24(s0)
    103a:	8fd9                	or	a5,a5,a4
    103c:	fef42423          	sw	a5,-24(s0)
    1040:	1a1017b7          	lui	a5,0x1a101
    1044:	07c1                	addi	a5,a5,16
    1046:	fec42703          	lw	a4,-20(s0)
    104a:	c398                	sw	a4,0(a5)
    104c:	1a1017b7          	lui	a5,0x1a101
    1050:	07d1                	addi	a5,a5,20
    1052:	fe842703          	lw	a4,-24(s0)
    1056:	c398                	sw	a4,0(a5)
    1058:	0001                	nop
    105a:	5432                	lw	s0,44(sp)
    105c:	6145                	addi	sp,sp,48
    105e:	8082                	ret

00001060 <get_gpio_irq_status>:
    1060:	1141                	addi	sp,sp,-16
    1062:	c622                	sw	s0,12(sp)
    1064:	0800                	addi	s0,sp,16
    1066:	1a1017b7          	lui	a5,0x1a101
    106a:	07e1                	addi	a5,a5,24
    106c:	439c                	lw	a5,0(a5)
    106e:	853e                	mv	a0,a5
    1070:	4432                	lw	s0,12(sp)
    1072:	0141                	addi	sp,sp,16
    1074:	8082                	ret

00001076 <spi_setup_slave>:
    1076:	1141                	addi	sp,sp,-16
    1078:	c606                	sw	ra,12(sp)
    107a:	c422                	sw	s0,8(sp)
    107c:	0800                	addi	s0,sp,16
    107e:	4581                	li	a1,0
    1080:	4511                	li	a0,4
    1082:	3b21                	jal	d9a <set_pin_function>
    1084:	4581                	li	a1,0
    1086:	4515                	li	a0,5
    1088:	3b09                	jal	d9a <set_pin_function>
    108a:	4581                	li	a1,0
    108c:	4519                	li	a0,6
    108e:	3331                	jal	d9a <set_pin_function>
    1090:	4581                	li	a1,0
    1092:	451d                	li	a0,7
    1094:	3319                	jal	d9a <set_pin_function>
    1096:	4581                	li	a1,0
    1098:	450d                	li	a0,3
    109a:	3301                	jal	d9a <set_pin_function>
    109c:	0001                	nop
    109e:	40b2                	lw	ra,12(sp)
    10a0:	4422                	lw	s0,8(sp)
    10a2:	0141                	addi	sp,sp,16
    10a4:	8082                	ret

000010a6 <spi_setup_master>:
    10a6:	1101                	addi	sp,sp,-32
    10a8:	ce06                	sw	ra,28(sp)
    10aa:	cc22                	sw	s0,24(sp)
    10ac:	1000                	addi	s0,sp,32
    10ae:	fea42623          	sw	a0,-20(s0)
    10b2:	4581                	li	a1,0
    10b4:	453d                	li	a0,15
    10b6:	31d5                	jal	d9a <set_pin_function>
    10b8:	4581                	li	a1,0
    10ba:	4539                	li	a0,14
    10bc:	39f9                	jal	d9a <set_pin_function>
    10be:	4581                	li	a1,0
    10c0:	4535                	li	a0,13
    10c2:	39e1                	jal	d9a <set_pin_function>
    10c4:	4581                	li	a1,0
    10c6:	4531                	li	a0,12
    10c8:	39c9                	jal	d9a <set_pin_function>
    10ca:	fec42783          	lw	a5,-20(s0)
    10ce:	00f05563          	blez	a5,10d8 <spi_setup_master+0x32>
    10d2:	4581                	li	a1,0
    10d4:	4541                	li	a0,16
    10d6:	31d1                	jal	d9a <set_pin_function>
    10d8:	fec42703          	lw	a4,-20(s0)
    10dc:	4785                	li	a5,1
    10de:	00e7d563          	bge	a5,a4,10e8 <spi_setup_master+0x42>
    10e2:	4581                	li	a1,0
    10e4:	452d                	li	a0,11
    10e6:	3955                	jal	d9a <set_pin_function>
    10e8:	fec42703          	lw	a4,-20(s0)
    10ec:	4789                	li	a5,2
    10ee:	00e7d563          	bge	a5,a4,10f8 <spi_setup_master+0x52>
    10f2:	4581                	li	a1,0
    10f4:	4501                	li	a0,0
    10f6:	3155                	jal	d9a <set_pin_function>
    10f8:	fec42703          	lw	a4,-20(s0)
    10fc:	478d                	li	a5,3
    10fe:	00e7d563          	bge	a5,a4,1108 <spi_setup_master+0x62>
    1102:	4581                	li	a1,0
    1104:	4505                	li	a0,1
    1106:	3951                	jal	d9a <set_pin_function>
    1108:	0001                	nop
    110a:	40f2                	lw	ra,28(sp)
    110c:	4462                	lw	s0,24(sp)
    110e:	6105                	addi	sp,sp,32
    1110:	8082                	ret

00001112 <spi_setup_cmd_addr>:
    1112:	7179                	addi	sp,sp,-48
    1114:	d622                	sw	s0,44(sp)
    1116:	1800                	addi	s0,sp,48
    1118:	fca42e23          	sw	a0,-36(s0)
    111c:	fcb42c23          	sw	a1,-40(s0)
    1120:	fcc42a23          	sw	a2,-44(s0)
    1124:	fcd42823          	sw	a3,-48(s0)
    1128:	02000713          	li	a4,32
    112c:	fd842783          	lw	a5,-40(s0)
    1130:	40f707b3          	sub	a5,a4,a5
    1134:	fdc42703          	lw	a4,-36(s0)
    1138:	00f717b3          	sll	a5,a4,a5
    113c:	fef42623          	sw	a5,-20(s0)
    1140:	1a1027b7          	lui	a5,0x1a102
    1144:	07a1                	addi	a5,a5,8
    1146:	fec42703          	lw	a4,-20(s0)
    114a:	c398                	sw	a4,0(a5)
    114c:	1a1027b7          	lui	a5,0x1a102
    1150:	07b1                	addi	a5,a5,12
    1152:	fd442703          	lw	a4,-44(s0)
    1156:	c398                	sw	a4,0(a5)
    1158:	fd842783          	lw	a5,-40(s0)
    115c:	03f7f693          	andi	a3,a5,63
    1160:	fd042783          	lw	a5,-48(s0)
    1164:	00879713          	slli	a4,a5,0x8
    1168:	6791                	lui	a5,0x4
    116a:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1868>
    116e:	8f7d                	and	a4,a4,a5
    1170:	1a1027b7          	lui	a5,0x1a102
    1174:	07c1                	addi	a5,a5,16
    1176:	8f55                	or	a4,a4,a3
    1178:	c398                	sw	a4,0(a5)
    117a:	0001                	nop
    117c:	5432                	lw	s0,44(sp)
    117e:	6145                	addi	sp,sp,48
    1180:	8082                	ret

00001182 <spi_setup_dummy>:
    1182:	1101                	addi	sp,sp,-32
    1184:	ce22                	sw	s0,28(sp)
    1186:	1000                	addi	s0,sp,32
    1188:	fea42623          	sw	a0,-20(s0)
    118c:	feb42423          	sw	a1,-24(s0)
    1190:	fe842783          	lw	a5,-24(s0)
    1194:	07c2                	slli	a5,a5,0x10
    1196:	86be                	mv	a3,a5
    1198:	fec42703          	lw	a4,-20(s0)
    119c:	67c1                	lui	a5,0x10
    119e:	17fd                	addi	a5,a5,-1
    11a0:	8ff9                	and	a5,a5,a4
    11a2:	00f6e733          	or	a4,a3,a5
    11a6:	1a1027b7          	lui	a5,0x1a102
    11aa:	07d1                	addi	a5,a5,20
    11ac:	c398                	sw	a4,0(a5)
    11ae:	0001                	nop
    11b0:	4472                	lw	s0,28(sp)
    11b2:	6105                	addi	sp,sp,32
    11b4:	8082                	ret

000011b6 <spi_set_datalen>:
    11b6:	7179                	addi	sp,sp,-48
    11b8:	d622                	sw	s0,44(sp)
    11ba:	1800                	addi	s0,sp,48
    11bc:	fca42e23          	sw	a0,-36(s0)
    11c0:	1a1027b7          	lui	a5,0x1a102
    11c4:	07c1                	addi	a5,a5,16
    11c6:	439c                	lw	a5,0(a5)
    11c8:	fef42623          	sw	a5,-20(s0)
    11cc:	fdc42783          	lw	a5,-36(s0)
    11d0:	07c2                	slli	a5,a5,0x10
    11d2:	873e                	mv	a4,a5
    11d4:	fec42783          	lw	a5,-20(s0)
    11d8:	86be                	mv	a3,a5
    11da:	67c1                	lui	a5,0x10
    11dc:	17fd                	addi	a5,a5,-1
    11de:	8ff5                	and	a5,a5,a3
    11e0:	8fd9                	or	a5,a5,a4
    11e2:	fef42623          	sw	a5,-20(s0)
    11e6:	1a1027b7          	lui	a5,0x1a102
    11ea:	07c1                	addi	a5,a5,16
    11ec:	fec42703          	lw	a4,-20(s0)
    11f0:	c398                	sw	a4,0(a5)
    11f2:	0001                	nop
    11f4:	5432                	lw	s0,44(sp)
    11f6:	6145                	addi	sp,sp,48
    11f8:	8082                	ret

000011fa <spi_start_transaction>:
    11fa:	1101                	addi	sp,sp,-32
    11fc:	ce22                	sw	s0,28(sp)
    11fe:	1000                	addi	s0,sp,32
    1200:	fea42623          	sw	a0,-20(s0)
    1204:	feb42423          	sw	a1,-24(s0)
    1208:	fe842783          	lw	a5,-24(s0)
    120c:	07a1                	addi	a5,a5,8
    120e:	4705                	li	a4,1
    1210:	00f71733          	sll	a4,a4,a5
    1214:	6785                	lui	a5,0x1
    1216:	f0078793          	addi	a5,a5,-256 # f00 <set_gpio_pin_value+0x4a>
    121a:	00f776b3          	and	a3,a4,a5
    121e:	fec42783          	lw	a5,-20(s0)
    1222:	4705                	li	a4,1
    1224:	00f717b3          	sll	a5,a4,a5
    1228:	0ff7f713          	andi	a4,a5,255
    122c:	1a1027b7          	lui	a5,0x1a102
    1230:	8f55                	or	a4,a4,a3
    1232:	c398                	sw	a4,0(a5)
    1234:	0001                	nop
    1236:	4472                	lw	s0,28(sp)
    1238:	6105                	addi	sp,sp,32
    123a:	8082                	ret

0000123c <spi_get_status>:
    123c:	1101                	addi	sp,sp,-32
    123e:	ce22                	sw	s0,28(sp)
    1240:	1000                	addi	s0,sp,32
    1242:	1a1027b7          	lui	a5,0x1a102
    1246:	439c                	lw	a5,0(a5)
    1248:	fef42623          	sw	a5,-20(s0)
    124c:	fec42783          	lw	a5,-20(s0)
    1250:	853e                	mv	a0,a5
    1252:	4472                	lw	s0,28(sp)
    1254:	6105                	addi	sp,sp,32
    1256:	8082                	ret

00001258 <spi_write_fifo>:
    1258:	7179                	addi	sp,sp,-48
    125a:	d622                	sw	s0,44(sp)
    125c:	1800                	addi	s0,sp,48
    125e:	fca42e23          	sw	a0,-36(s0)
    1262:	fcb42c23          	sw	a1,-40(s0)
    1266:	fd842783          	lw	a5,-40(s0)
    126a:	8795                	srai	a5,a5,0x5
    126c:	7ff7f793          	andi	a5,a5,2047
    1270:	fef42623          	sw	a5,-20(s0)
    1274:	fd842783          	lw	a5,-40(s0)
    1278:	8bfd                	andi	a5,a5,31
    127a:	c791                	beqz	a5,1286 <spi_write_fifo+0x2e>
    127c:	fec42783          	lw	a5,-20(s0)
    1280:	0785                	addi	a5,a5,1
    1282:	fef42623          	sw	a5,-20(s0)
    1286:	fe042423          	sw	zero,-24(s0)
    128a:	a80d                	j	12bc <spi_write_fifo+0x64>
    128c:	0001                	nop
    128e:	1a1027b7          	lui	a5,0x1a102
    1292:	439c                	lw	a5,0(a5)
    1294:	87e1                	srai	a5,a5,0x18
    1296:	0f87f793          	andi	a5,a5,248
    129a:	fbf5                	bnez	a5,128e <spi_write_fifo+0x36>
    129c:	fe842783          	lw	a5,-24(s0)
    12a0:	078a                	slli	a5,a5,0x2
    12a2:	fdc42703          	lw	a4,-36(s0)
    12a6:	973e                	add	a4,a4,a5
    12a8:	1a1027b7          	lui	a5,0x1a102
    12ac:	07e1                	addi	a5,a5,24
    12ae:	4318                	lw	a4,0(a4)
    12b0:	c398                	sw	a4,0(a5)
    12b2:	fe842783          	lw	a5,-24(s0)
    12b6:	0785                	addi	a5,a5,1
    12b8:	fef42423          	sw	a5,-24(s0)
    12bc:	fe842703          	lw	a4,-24(s0)
    12c0:	fec42783          	lw	a5,-20(s0)
    12c4:	fcf744e3          	blt	a4,a5,128c <spi_write_fifo+0x34>
    12c8:	0001                	nop
    12ca:	0001                	nop
    12cc:	5432                	lw	s0,44(sp)
    12ce:	6145                	addi	sp,sp,48
    12d0:	8082                	ret

000012d2 <spi_read_fifo>:
    12d2:	7179                	addi	sp,sp,-48
    12d4:	d622                	sw	s0,44(sp)
    12d6:	1800                	addi	s0,sp,48
    12d8:	fca42e23          	sw	a0,-36(s0)
    12dc:	fcb42c23          	sw	a1,-40(s0)
    12e0:	fd842783          	lw	a5,-40(s0)
    12e4:	8795                	srai	a5,a5,0x5
    12e6:	7ff7f793          	andi	a5,a5,2047
    12ea:	fef42623          	sw	a5,-20(s0)
    12ee:	fd842783          	lw	a5,-40(s0)
    12f2:	8bfd                	andi	a5,a5,31
    12f4:	c791                	beqz	a5,1300 <spi_read_fifo+0x2e>
    12f6:	fec42783          	lw	a5,-20(s0)
    12fa:	0785                	addi	a5,a5,1
    12fc:	fef42623          	sw	a5,-20(s0)
    1300:	fe042423          	sw	zero,-24(s0)
    1304:	a815                	j	1338 <spi_read_fifo+0x66>
    1306:	0001                	nop
    1308:	1a1027b7          	lui	a5,0x1a102
    130c:	439c                	lw	a5,0(a5)
    130e:	87c1                	srai	a5,a5,0x10
    1310:	0ff7f793          	andi	a5,a5,255
    1314:	dbf5                	beqz	a5,1308 <spi_read_fifo+0x36>
    1316:	1a1027b7          	lui	a5,0x1a102
    131a:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    131e:	fe842783          	lw	a5,-24(s0)
    1322:	078a                	slli	a5,a5,0x2
    1324:	fdc42683          	lw	a3,-36(s0)
    1328:	97b6                	add	a5,a5,a3
    132a:	4318                	lw	a4,0(a4)
    132c:	c398                	sw	a4,0(a5)
    132e:	fe842783          	lw	a5,-24(s0)
    1332:	0785                	addi	a5,a5,1
    1334:	fef42423          	sw	a5,-24(s0)
    1338:	fe842703          	lw	a4,-24(s0)
    133c:	fec42783          	lw	a5,-20(s0)
    1340:	fcf743e3          	blt	a4,a5,1306 <spi_read_fifo+0x34>
    1344:	0001                	nop
    1346:	0001                	nop
    1348:	5432                	lw	s0,44(sp)
    134a:	6145                	addi	sp,sp,48
    134c:	8082                	ret

0000134e <default_exception_handler_c>:
    134e:	1141                	addi	sp,sp,-16
    1350:	c622                	sw	s0,12(sp)
    1352:	0800                	addi	s0,sp,16
    1354:	a001                	j	1354 <default_exception_handler_c+0x6>

00001356 <illegal_insn_handler_c>:
    1356:	1141                	addi	sp,sp,-16
    1358:	c622                	sw	s0,12(sp)
    135a:	0800                	addi	s0,sp,16
    135c:	a001                	j	135c <illegal_insn_handler_c+0x6>

0000135e <ecall_insn_handler_c>:
    135e:	1141                	addi	sp,sp,-16
    1360:	c622                	sw	s0,12(sp)
    1362:	0800                	addi	s0,sp,16
    1364:	a001                	j	1364 <ecall_insn_handler_c+0x6>

00001366 <ISR_SRAM>:
    1366:	1141                	addi	sp,sp,-16
    1368:	c622                	sw	s0,12(sp)
    136a:	0800                	addi	s0,sp,16
    136c:	a001                	j	136c <ISR_SRAM+0x6>

0000136e <ISR_I2C>:
    136e:	1141                	addi	sp,sp,-16
    1370:	c622                	sw	s0,12(sp)
    1372:	0800                	addi	s0,sp,16
    1374:	a001                	j	1374 <ISR_I2C+0x6>

00001376 <ISR_UART>:
    1376:	1141                	addi	sp,sp,-16
    1378:	c622                	sw	s0,12(sp)
    137a:	0800                	addi	s0,sp,16
    137c:	a001                	j	137c <ISR_UART+0x6>

0000137e <ISR_GPIO>:
    137e:	1141                	addi	sp,sp,-16
    1380:	c622                	sw	s0,12(sp)
    1382:	0800                	addi	s0,sp,16
    1384:	a001                	j	1384 <ISR_GPIO+0x6>

00001386 <ISR_SPIM0>:
    1386:	1141                	addi	sp,sp,-16
    1388:	c622                	sw	s0,12(sp)
    138a:	0800                	addi	s0,sp,16
    138c:	a001                	j	138c <ISR_SPIM0+0x6>

0000138e <ISR_SPIM1>:
    138e:	1141                	addi	sp,sp,-16
    1390:	c622                	sw	s0,12(sp)
    1392:	0800                	addi	s0,sp,16
    1394:	a001                	j	1394 <ISR_SPIM1+0x6>
    1396:	1141                	addi	sp,sp,-16
    1398:	c622                	sw	s0,12(sp)
    139a:	0800                	addi	s0,sp,16
    139c:	a001                	j	139c <ISR_SPIM1+0xe>

0000139e <ISR_TA_CMP>:
    139e:	1141                	addi	sp,sp,-16
    13a0:	c622                	sw	s0,12(sp)
    13a2:	0800                	addi	s0,sp,16
    13a4:	a001                	j	13a4 <ISR_TA_CMP+0x6>

000013a6 <ISR_TB_OVF>:
    13a6:	1141                	addi	sp,sp,-16
    13a8:	c622                	sw	s0,12(sp)
    13aa:	0800                	addi	s0,sp,16
    13ac:	a001                	j	13ac <ISR_TB_OVF+0x6>

000013ae <ISR_TB_CMP>:
    13ae:	1141                	addi	sp,sp,-16
    13b0:	c622                	sw	s0,12(sp)
    13b2:	0800                	addi	s0,sp,16
    13b4:	a001                	j	13b4 <ISR_TB_CMP+0x6>

000013b6 <uart_set_cfg>:
    13b6:	1101                	addi	sp,sp,-32
    13b8:	ce22                	sw	s0,28(sp)
    13ba:	1000                	addi	s0,sp,32
    13bc:	fea42623          	sw	a0,-20(s0)
    13c0:	87ae                	mv	a5,a1
    13c2:	fef41523          	sh	a5,-22(s0)
    13c6:	1a1077b7          	lui	a5,0x1a107
    13ca:	0791                	addi	a5,a5,4
    13cc:	4398                	lw	a4,0(a5)
    13ce:	1a1077b7          	lui	a5,0x1a107
    13d2:	0791                	addi	a5,a5,4
    13d4:	00276713          	ori	a4,a4,2
    13d8:	c398                	sw	a4,0(a5)
    13da:	1a1007b7          	lui	a5,0x1a100
    13de:	07b1                	addi	a5,a5,12
    13e0:	08300713          	li	a4,131
    13e4:	c398                	sw	a4,0(a5)
    13e6:	fea45783          	lhu	a5,-22(s0)
    13ea:	83a1                	srli	a5,a5,0x8
    13ec:	07c2                	slli	a5,a5,0x10
    13ee:	83c1                	srli	a5,a5,0x10
    13f0:	873e                	mv	a4,a5
    13f2:	1a1007b7          	lui	a5,0x1a100
    13f6:	0791                	addi	a5,a5,4
    13f8:	0ff77713          	andi	a4,a4,255
    13fc:	c398                	sw	a4,0(a5)
    13fe:	fea45703          	lhu	a4,-22(s0)
    1402:	1a1007b7          	lui	a5,0x1a100
    1406:	0ff77713          	andi	a4,a4,255
    140a:	c398                	sw	a4,0(a5)
    140c:	1a1007b7          	lui	a5,0x1a100
    1410:	07a1                	addi	a5,a5,8
    1412:	0a700713          	li	a4,167
    1416:	c398                	sw	a4,0(a5)
    1418:	1a1007b7          	lui	a5,0x1a100
    141c:	07b1                	addi	a5,a5,12
    141e:	470d                	li	a4,3
    1420:	c398                	sw	a4,0(a5)
    1422:	1a1007b7          	lui	a5,0x1a100
    1426:	0791                	addi	a5,a5,4
    1428:	439c                	lw	a5,0(a5)
    142a:	0f07f713          	andi	a4,a5,240
    142e:	1a1007b7          	lui	a5,0x1a100
    1432:	0791                	addi	a5,a5,4
    1434:	00276713          	ori	a4,a4,2
    1438:	c398                	sw	a4,0(a5)
    143a:	0001                	nop
    143c:	4472                	lw	s0,28(sp)
    143e:	6105                	addi	sp,sp,32
    1440:	8082                	ret

00001442 <uart_send>:
    1442:	7179                	addi	sp,sp,-48
    1444:	d622                	sw	s0,44(sp)
    1446:	1800                	addi	s0,sp,48
    1448:	fca42e23          	sw	a0,-36(s0)
    144c:	fcb42c23          	sw	a1,-40(s0)
    1450:	a891                	j	14a4 <uart_send+0x62>
    1452:	0001                	nop
    1454:	1a1007b7          	lui	a5,0x1a100
    1458:	07d1                	addi	a5,a5,20
    145a:	439c                	lw	a5,0(a5)
    145c:	0207f793          	andi	a5,a5,32
    1460:	dbf5                	beqz	a5,1454 <uart_send+0x12>
    1462:	fe042623          	sw	zero,-20(s0)
    1466:	a035                	j	1492 <uart_send+0x50>
    1468:	fdc42783          	lw	a5,-36(s0)
    146c:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    1470:	fce42e23          	sw	a4,-36(s0)
    1474:	0007c703          	lbu	a4,0(a5)
    1478:	1a1007b7          	lui	a5,0x1a100
    147c:	c398                	sw	a4,0(a5)
    147e:	fd842783          	lw	a5,-40(s0)
    1482:	17fd                	addi	a5,a5,-1
    1484:	fcf42c23          	sw	a5,-40(s0)
    1488:	fec42783          	lw	a5,-20(s0)
    148c:	0785                	addi	a5,a5,1
    148e:	fef42623          	sw	a5,-20(s0)
    1492:	fec42703          	lw	a4,-20(s0)
    1496:	03f00793          	li	a5,63
    149a:	00e7e563          	bltu	a5,a4,14a4 <uart_send+0x62>
    149e:	fd842783          	lw	a5,-40(s0)
    14a2:	f3f9                	bnez	a5,1468 <uart_send+0x26>
    14a4:	fd842783          	lw	a5,-40(s0)
    14a8:	f7cd                	bnez	a5,1452 <uart_send+0x10>
    14aa:	0001                	nop
    14ac:	0001                	nop
    14ae:	5432                	lw	s0,44(sp)
    14b0:	6145                	addi	sp,sp,48
    14b2:	8082                	ret

000014b4 <uart_getchar>:
    14b4:	1141                	addi	sp,sp,-16
    14b6:	c622                	sw	s0,12(sp)
    14b8:	0800                	addi	s0,sp,16
    14ba:	0001                	nop
    14bc:	1a1007b7          	lui	a5,0x1a100
    14c0:	07d1                	addi	a5,a5,20
    14c2:	439c                	lw	a5,0(a5)
    14c4:	0017f713          	andi	a4,a5,1
    14c8:	4785                	li	a5,1
    14ca:	fef719e3          	bne	a4,a5,14bc <uart_getchar+0x8>
    14ce:	1a1007b7          	lui	a5,0x1a100
    14d2:	439c                	lw	a5,0(a5)
    14d4:	0ff7f793          	andi	a5,a5,255
    14d8:	853e                	mv	a0,a5
    14da:	4432                	lw	s0,12(sp)
    14dc:	0141                	addi	sp,sp,16
    14de:	8082                	ret

000014e0 <uart_sendchar>:
    14e0:	1101                	addi	sp,sp,-32
    14e2:	ce22                	sw	s0,28(sp)
    14e4:	1000                	addi	s0,sp,32
    14e6:	87aa                	mv	a5,a0
    14e8:	fef407a3          	sb	a5,-17(s0)
    14ec:	0001                	nop
    14ee:	1a1007b7          	lui	a5,0x1a100
    14f2:	07d1                	addi	a5,a5,20
    14f4:	439c                	lw	a5,0(a5)
    14f6:	0207f793          	andi	a5,a5,32
    14fa:	dbf5                	beqz	a5,14ee <uart_sendchar+0xe>
    14fc:	1a1007b7          	lui	a5,0x1a100
    1500:	fef44703          	lbu	a4,-17(s0)
    1504:	c398                	sw	a4,0(a5)
    1506:	0001                	nop
    1508:	4472                	lw	s0,28(sp)
    150a:	6105                	addi	sp,sp,32
    150c:	8082                	ret

0000150e <uart_wait_tx_done>:
    150e:	1141                	addi	sp,sp,-16
    1510:	c622                	sw	s0,12(sp)
    1512:	0800                	addi	s0,sp,16
    1514:	0001                	nop
    1516:	1a1007b7          	lui	a5,0x1a100
    151a:	07d1                	addi	a5,a5,20
    151c:	439c                	lw	a5,0(a5)
    151e:	0407f793          	andi	a5,a5,64
    1522:	dbf5                	beqz	a5,1516 <uart_wait_tx_done+0x8>
    1524:	0001                	nop
    1526:	0001                	nop
    1528:	4432                	lw	s0,12(sp)
    152a:	0141                	addi	sp,sp,16
    152c:	8082                	ret

0000152e <uart_mysendstring>:
    152e:	7179                	addi	sp,sp,-48
    1530:	d606                	sw	ra,44(sp)
    1532:	d422                	sw	s0,40(sp)
    1534:	1800                	addi	s0,sp,48
    1536:	fca42e23          	sw	a0,-36(s0)
    153a:	fe042623          	sw	zero,-20(s0)
    153e:	a839                	j	155c <uart_mysendstring+0x2e>
    1540:	fec42783          	lw	a5,-20(s0)
    1544:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    1548:	fee42623          	sw	a4,-20(s0)
    154c:	873e                	mv	a4,a5
    154e:	fdc42783          	lw	a5,-36(s0)
    1552:	97ba                	add	a5,a5,a4
    1554:	0007c783          	lbu	a5,0(a5)
    1558:	853e                	mv	a0,a5
    155a:	3759                	jal	14e0 <uart_sendchar>
    155c:	fec42783          	lw	a5,-20(s0)
    1560:	17fd                	addi	a5,a5,-1
    1562:	fdc42703          	lw	a4,-36(s0)
    1566:	97ba                	add	a5,a5,a4
    1568:	0007c703          	lbu	a4,0(a5)
    156c:	47a9                	li	a5,10
    156e:	00f70863          	beq	a4,a5,157e <uart_mysendstring+0x50>
    1572:	fec42703          	lw	a4,-20(s0)
    1576:	02700793          	li	a5,39
    157a:	fce7d3e3          	bge	a5,a4,1540 <uart_mysendstring+0x12>
    157e:	0001                	nop
    1580:	50b2                	lw	ra,44(sp)
    1582:	5422                	lw	s0,40(sp)
    1584:	6145                	addi	sp,sp,48
    1586:	8082                	ret

00001588 <uart_getstring>:
    1588:	1101                	addi	sp,sp,-32
    158a:	ce06                	sw	ra,28(sp)
    158c:	cc22                	sw	s0,24(sp)
    158e:	ca26                	sw	s1,20(sp)
    1590:	1000                	addi	s0,sp,32
    1592:	fea42623          	sw	a0,-20(s0)
    1596:	0001                	nop
    1598:	fec42483          	lw	s1,-20(s0)
    159c:	00148793          	addi	a5,s1,1
    15a0:	fef42623          	sw	a5,-20(s0)
    15a4:	3f01                	jal	14b4 <uart_getchar>
    15a6:	87aa                	mv	a5,a0
    15a8:	00f48023          	sb	a5,0(s1)
    15ac:	0004c703          	lbu	a4,0(s1)
    15b0:	47a9                	li	a5,10
    15b2:	fef713e3          	bne	a4,a5,1598 <uart_getstring+0x10>
    15b6:	fec42783          	lw	a5,-20(s0)
    15ba:	00078023          	sb	zero,0(a5)
    15be:	0001                	nop
    15c0:	40f2                	lw	ra,28(sp)
    15c2:	4462                	lw	s0,24(sp)
    15c4:	44d2                	lw	s1,20(sp)
    15c6:	6105                	addi	sp,sp,32
    15c8:	8082                	ret

000015ca <__CTOR_LIST__>:
	...

000015d2 <__CTOR_END__>:
	...

Disassembly of section .rodata:

000015dc <.rodata>:
    15dc:	5f757063          	bgeu	a0,s7,1bbc <_bss_end+0x524>
    15e0:	6570                	flw	fa2,76(a0)
    15e2:	6672                	flw	fa2,28(sp)
    15e4:	735f 7465 203a      	0x203a7465735f
    15ea:	6f6e                	flw	ft10,216(sp)
    15ec:	2074                	fld	fa3,192(s0)
    15ee:	6d69                	lui	s10,0x1a
    15f0:	6c70                	flw	fa2,92(s0)
    15f2:	6d65                	lui	s10,0x19
    15f4:	6e65                	lui	t3,0x19
    15f6:	6574                	flw	fa3,76(a0)
    15f8:	2064                	fld	fs1,192(s0)
    15fa:	6579                	lui	a0,0x1e
    15fc:	0074                	addi	a3,sp,12
    15fe:	0000                	unimp
    1600:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1604:	6425                	lui	s0,0x9
    1606:	6e20                	flw	fs0,88(a2)
    1608:	7920746f          	jal	s0,8d9a <_stack+0x6702>
    160c:	7465                	lui	s0,0xffff9
    160e:	7320                	flw	fs0,96(a4)
    1610:	7075                	c.lui	zero,0xffffd
    1612:	6f70                	flw	fa2,92(a4)
    1614:	7472                	flw	fs0,60(sp)
    1616:	6465                	lui	s0,0x19
    1618:	000a                	c.slli	zero,0x2
    161a:	0000                	unimp
    161c:	01c0                	addi	s0,sp,196
    161e:	0000                	unimp
    1620:	01ca                	slli	gp,gp,0x12
    1622:	0000                	unimp
    1624:	01d4                	addi	a3,sp,196
    1626:	0000                	unimp
    1628:	01de                	slli	gp,gp,0x17
    162a:	0000                	unimp
    162c:	01e8                	addi	a0,sp,204
    162e:	0000                	unimp
    1630:	01f2                	slli	gp,gp,0x1c
    1632:	0000                	unimp
    1634:	01fc                	addi	a5,sp,204
    1636:	0000                	unimp
    1638:	0206                	slli	tp,tp,0x1
    163a:	0000                	unimp
    163c:	0210                	addi	a2,sp,256
    163e:	0000                	unimp
    1640:	021a                	slli	tp,tp,0x6
    1642:	0000                	unimp
    1644:	0224                	addi	s1,sp,264
    1646:	0000                	unimp
    1648:	022e                	slli	tp,tp,0xb
    164a:	0000                	unimp
    164c:	0238                	addi	a4,sp,264
    164e:	0000                	unimp
    1650:	0242                	slli	tp,tp,0x10
    1652:	0000                	unimp
    1654:	024c                	addi	a1,sp,260
    1656:	0000                	unimp
    1658:	0256                	slli	tp,tp,0x15
    165a:	0000                	unimp
    165c:	656c                	flw	fa1,76(a0)
    165e:	5f64                	lw	s1,124(a4)
    1660:	756e                	flw	fa0,248(sp)
    1662:	626d                	lui	tp,0x1b
    1664:	7265                	lui	tp,0xffff9
    1666:	6920                	flw	fs0,80(a0)
    1668:	64252073          	csrs	0x642,a0
    166c:	0000                	unimp
    166e:	0000                	unimp
    1670:	6974                	flw	fa3,84(a0)
    1672:	656d                	lui	a0,0x1b
    1674:	6920                	flw	fs0,80(a0)
    1676:	64252073          	csrs	0x642,a0
    167a:	0000                	unimp
    167c:	6e28                	flw	fa0,88(a2)
    167e:	6c75                	lui	s8,0x1d
    1680:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

00001683 <.shbss>:
	...

Disassembly of section .data:

00001684 <remu10_table>:
    1684:	0100                	addi	s0,sp,128
    1686:	0202                	c.slli64	tp
    1688:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x169b8>
    168c:	0605                	addi	a2,a2,1
    168e:	08080707          	0x8080707
    1692:	0009                	c.nop	2

Disassembly of section .bss:

00001694 <led_num>:
    1694:	0000                	unimp
	...

Disassembly of section .stack:

00001698 <_stack-0x1000>:
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

