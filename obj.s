
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
     180:	61c78513          	addi	a0,a5,1564 # 161c <__DTOR_END__>
     184:	237000ef          	jal	ra,bba <puts>
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
     1b6:	65c78793          	addi	a5,a5,1628 # 165c <__DTOR_END__+0x40>
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
     266:	64078513          	addi	a0,a5,1600 # 1640 <__DTOR_END__+0x24>
     26a:	101000ef          	jal	ra,b6a <printf>
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
     2ae:	40a70713          	addi	a4,a4,1034 # 16b4 <led_num>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	40678793          	addi	a5,a5,1030 # 16b8 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	12c010ef          	jal	ra,13f8 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	1ee000ef          	jal	ra,4c2 <main>
     2d8:	842a                	mv	s0,a0
     2da:	276010ef          	jal	ra,1550 <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0b80106f          	j	13a8 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0ac0106f          	j	13b0 <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0a00106f          	j	13b8 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0940106f          	j	13c0 <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0880106f          	j	13c8 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	07c0106f          	j	13d0 <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	11c0006f          	j	484 <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	05c0106f          	j	13d8 <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	0600106f          	j	13f0 <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	0440106f          	j	13e8 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	7e10006f          	j	1398 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	7d50006f          	j	13a0 <ecall_insn_handler_c>

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

0000042c <int_disable>:
     42c:	1101                	addi	sp,sp,-32
     42e:	ce22                	sw	s0,28(sp)
     430:	1000                	addi	s0,sp,32
     432:	300027f3          	csrr	a5,mstatus
     436:	fef42623          	sw	a5,-20(s0)
     43a:	fec42783          	lw	a5,-20(s0)
     43e:	9bdd                	andi	a5,a5,-9
     440:	fef42623          	sw	a5,-20(s0)
     444:	fec42783          	lw	a5,-20(s0)
     448:	30079073          	csrw	mstatus,a5
     44c:	4781                	li	a5,0
     44e:	30079073          	csrw	mstatus,a5
     452:	0001                	nop
     454:	4472                	lw	s0,28(sp)
     456:	6105                	addi	sp,sp,32
     458:	8082                	ret

0000045a <int_enable>:
     45a:	1101                	addi	sp,sp,-32
     45c:	ce22                	sw	s0,28(sp)
     45e:	1000                	addi	s0,sp,32
     460:	300027f3          	csrr	a5,mstatus
     464:	fef42623          	sw	a5,-20(s0)
     468:	fec42783          	lw	a5,-20(s0)
     46c:	0087e793          	ori	a5,a5,8
     470:	fef42623          	sw	a5,-20(s0)
     474:	fec42783          	lw	a5,-20(s0)
     478:	30079073          	csrw	mstatus,a5
     47c:	0001                	nop
     47e:	4472                	lw	s0,28(sp)
     480:	6105                	addi	sp,sp,32
     482:	8082                	ret

00000484 <ISR_TA_CMP>:
     484:	1141                	addi	sp,sp,-16
     486:	c622                	sw	s0,12(sp)
     488:	0800                	addi	s0,sp,16
     48a:	1a1047b7          	lui	a5,0x1a104
     48e:	07b1                	addi	a5,a5,12
     490:	20000737          	lui	a4,0x20000
     494:	c398                	sw	a4,0(a5)
     496:	6785                	lui	a5,0x1
     498:	6b47a703          	lw	a4,1716(a5) # 16b4 <led_num>
     49c:	4791                	li	a5,4
     49e:	00e7cb63          	blt	a5,a4,4b4 <ISR_TA_CMP+0x30>
     4a2:	6785                	lui	a5,0x1
     4a4:	6b47a783          	lw	a5,1716(a5) # 16b4 <led_num>
     4a8:	00178713          	addi	a4,a5,1
     4ac:	6785                	lui	a5,0x1
     4ae:	6ae7aa23          	sw	a4,1716(a5) # 16b4 <led_num>
     4b2:	a021                	j	4ba <ISR_TA_CMP+0x36>
     4b4:	6785                	lui	a5,0x1
     4b6:	6a07aa23          	sw	zero,1716(a5) # 16b4 <led_num>
     4ba:	0001                	nop
     4bc:	4432                	lw	s0,12(sp)
     4be:	0141                	addi	sp,sp,16
     4c0:	8082                	ret

000004c2 <main>:
     4c2:	1101                	addi	sp,sp,-32
     4c4:	ce06                	sw	ra,28(sp)
     4c6:	cc22                	sw	s0,24(sp)
     4c8:	1000                	addi	s0,sp,32
     4ca:	fe042623          	sw	zero,-20(s0)
     4ce:	fe042423          	sw	zero,-24(s0)
     4d2:	a005                	j	4f2 <main+0x30>
     4d4:	4585                	li	a1,1
     4d6:	fe842503          	lw	a0,-24(s0)
     4da:	18d000ef          	jal	ra,e66 <set_gpio_pin_direction>
     4de:	4581                	li	a1,0
     4e0:	fe842503          	lw	a0,-24(s0)
     4e4:	215000ef          	jal	ra,ef8 <set_gpio_pin_value>
     4e8:	fe842783          	lw	a5,-24(s0)
     4ec:	0785                	addi	a5,a5,1
     4ee:	fef42423          	sw	a5,-24(s0)
     4f2:	fe842703          	lw	a4,-24(s0)
     4f6:	4791                	li	a5,4
     4f8:	fce7dee3          	bge	a5,a4,4d4 <main+0x12>
     4fc:	1a1037b7          	lui	a5,0x1a103
     500:	07a1                	addi	a5,a5,8
     502:	08000713          	li	a4,128
     506:	c398                	sw	a4,0(a5)
     508:	3f89                	jal	45a <int_enable>
     50a:	3649                	jal	8c <reset_timer>
     50c:	3e59                	jal	a2 <start_timer>
     50e:	a831                	j	52a <main+0x68>
     510:	6785                	lui	a5,0x1
     512:	6b47a783          	lw	a5,1716(a5) # 16b4 <led_num>
     516:	4585                	li	a1,1
     518:	853e                	mv	a0,a5
     51a:	1df000ef          	jal	ra,ef8 <set_gpio_pin_value>
     51e:	fec42783          	lw	a5,-20(s0)
     522:	0785                	addi	a5,a5,1
     524:	fef42623          	sw	a5,-20(s0)
     528:	35cd                	jal	40a <sleep>
     52a:	fec42703          	lw	a4,-20(s0)
     52e:	4791                	li	a5,4
     530:	fee7d0e3          	bge	a5,a4,510 <main+0x4e>
     534:	3de5                	jal	42c <int_disable>
     536:	3651                	jal	ba <stop_timer>
     538:	4781                	li	a5,0
     53a:	853e                	mv	a0,a5
     53c:	40f2                	lw	ra,28(sp)
     53e:	4462                	lw	s0,24(sp)
     540:	6105                	addi	sp,sp,32
     542:	8082                	ret

00000544 <divu10>:
     544:	7179                	addi	sp,sp,-48
     546:	d622                	sw	s0,44(sp)
     548:	1800                	addi	s0,sp,48
     54a:	fca42e23          	sw	a0,-36(s0)
     54e:	fdc42783          	lw	a5,-36(s0)
     552:	0017d713          	srli	a4,a5,0x1
     556:	fdc42783          	lw	a5,-36(s0)
     55a:	8389                	srli	a5,a5,0x2
     55c:	97ba                	add	a5,a5,a4
     55e:	fef42623          	sw	a5,-20(s0)
     562:	fec42783          	lw	a5,-20(s0)
     566:	8391                	srli	a5,a5,0x4
     568:	fec42703          	lw	a4,-20(s0)
     56c:	97ba                	add	a5,a5,a4
     56e:	fef42623          	sw	a5,-20(s0)
     572:	fec42783          	lw	a5,-20(s0)
     576:	83a1                	srli	a5,a5,0x8
     578:	fec42703          	lw	a4,-20(s0)
     57c:	97ba                	add	a5,a5,a4
     57e:	fef42623          	sw	a5,-20(s0)
     582:	fec42783          	lw	a5,-20(s0)
     586:	83c1                	srli	a5,a5,0x10
     588:	fec42703          	lw	a4,-20(s0)
     58c:	97ba                	add	a5,a5,a4
     58e:	fef42623          	sw	a5,-20(s0)
     592:	fec42783          	lw	a5,-20(s0)
     596:	838d                	srli	a5,a5,0x3
     598:	fef42623          	sw	a5,-20(s0)
     59c:	fec42703          	lw	a4,-20(s0)
     5a0:	87ba                	mv	a5,a4
     5a2:	078a                	slli	a5,a5,0x2
     5a4:	97ba                	add	a5,a5,a4
     5a6:	0786                	slli	a5,a5,0x1
     5a8:	873e                	mv	a4,a5
     5aa:	fdc42783          	lw	a5,-36(s0)
     5ae:	8f99                	sub	a5,a5,a4
     5b0:	fef42423          	sw	a5,-24(s0)
     5b4:	fe842783          	lw	a5,-24(s0)
     5b8:	0799                	addi	a5,a5,6
     5ba:	0047d713          	srli	a4,a5,0x4
     5be:	fec42783          	lw	a5,-20(s0)
     5c2:	97ba                	add	a5,a5,a4
     5c4:	853e                	mv	a0,a5
     5c6:	5432                	lw	s0,44(sp)
     5c8:	6145                	addi	sp,sp,48
     5ca:	8082                	ret

000005cc <remu10>:
     5cc:	1101                	addi	sp,sp,-32
     5ce:	ce22                	sw	s0,28(sp)
     5d0:	1000                	addi	s0,sp,32
     5d2:	fea42623          	sw	a0,-20(s0)
     5d6:	fec42703          	lw	a4,-20(s0)
     5da:	1999a7b7          	lui	a5,0x1999a
     5de:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     5e2:	02f70733          	mul	a4,a4,a5
     5e6:	fec42783          	lw	a5,-20(s0)
     5ea:	8385                	srli	a5,a5,0x1
     5ec:	973e                	add	a4,a4,a5
     5ee:	fec42783          	lw	a5,-20(s0)
     5f2:	838d                	srli	a5,a5,0x3
     5f4:	97ba                	add	a5,a5,a4
     5f6:	83f1                	srli	a5,a5,0x1c
     5f8:	fef42623          	sw	a5,-20(s0)
     5fc:	6785                	lui	a5,0x1
     5fe:	6a478713          	addi	a4,a5,1700 # 16a4 <remu10_table>
     602:	fec42783          	lw	a5,-20(s0)
     606:	97ba                	add	a5,a5,a4
     608:	0007c783          	lbu	a5,0(a5)
     60c:	853e                	mv	a0,a5
     60e:	4472                	lw	s0,28(sp)
     610:	6105                	addi	sp,sp,32
     612:	8082                	ret

00000614 <putchar>:
     614:	1101                	addi	sp,sp,-32
     616:	ce06                	sw	ra,28(sp)
     618:	cc22                	sw	s0,24(sp)
     61a:	1000                	addi	s0,sp,32
     61c:	fea42623          	sw	a0,-20(s0)
     620:	fec42783          	lw	a5,-20(s0)
     624:	0ff7f793          	andi	a5,a5,255
     628:	853e                	mv	a0,a5
     62a:	6f9000ef          	jal	ra,1522 <uart_sendchar>
     62e:	fec42783          	lw	a5,-20(s0)
     632:	853e                	mv	a0,a5
     634:	40f2                	lw	ra,28(sp)
     636:	4462                	lw	s0,24(sp)
     638:	6105                	addi	sp,sp,32
     63a:	8082                	ret

0000063c <qprintchar>:
     63c:	1101                	addi	sp,sp,-32
     63e:	ce06                	sw	ra,28(sp)
     640:	cc22                	sw	s0,24(sp)
     642:	1000                	addi	s0,sp,32
     644:	fea42623          	sw	a0,-20(s0)
     648:	feb42423          	sw	a1,-24(s0)
     64c:	fec42783          	lw	a5,-20(s0)
     650:	c39d                	beqz	a5,676 <qprintchar+0x3a>
     652:	fec42783          	lw	a5,-20(s0)
     656:	439c                	lw	a5,0(a5)
     658:	fe842703          	lw	a4,-24(s0)
     65c:	0ff77713          	andi	a4,a4,255
     660:	00e78023          	sb	a4,0(a5)
     664:	fec42783          	lw	a5,-20(s0)
     668:	439c                	lw	a5,0(a5)
     66a:	00178713          	addi	a4,a5,1
     66e:	fec42783          	lw	a5,-20(s0)
     672:	c398                	sw	a4,0(a5)
     674:	a039                	j	682 <qprintchar+0x46>
     676:	fe842783          	lw	a5,-24(s0)
     67a:	0ff7f793          	andi	a5,a5,255
     67e:	853e                	mv	a0,a5
     680:	3f51                	jal	614 <putchar>
     682:	0001                	nop
     684:	40f2                	lw	ra,28(sp)
     686:	4462                	lw	s0,24(sp)
     688:	6105                	addi	sp,sp,32
     68a:	8082                	ret

0000068c <qprints>:
     68c:	7179                	addi	sp,sp,-48
     68e:	d606                	sw	ra,44(sp)
     690:	d422                	sw	s0,40(sp)
     692:	d226                	sw	s1,36(sp)
     694:	d04a                	sw	s2,32(sp)
     696:	ce4e                	sw	s3,28(sp)
     698:	cc52                	sw	s4,24(sp)
     69a:	1800                	addi	s0,sp,48
     69c:	fca42e23          	sw	a0,-36(s0)
     6a0:	fcb42c23          	sw	a1,-40(s0)
     6a4:	fcc42a23          	sw	a2,-44(s0)
     6a8:	fcd42823          	sw	a3,-48(s0)
     6ac:	4481                	li	s1,0
     6ae:	02000a13          	li	s4,32
     6b2:	fd442783          	lw	a5,-44(s0)
     6b6:	02f05e63          	blez	a5,6f2 <qprints+0x66>
     6ba:	4901                	li	s2,0
     6bc:	fd842983          	lw	s3,-40(s0)
     6c0:	a019                	j	6c6 <qprints+0x3a>
     6c2:	0905                	addi	s2,s2,1
     6c4:	0985                	addi	s3,s3,1
     6c6:	0009c783          	lbu	a5,0(s3)
     6ca:	ffe5                	bnez	a5,6c2 <qprints+0x36>
     6cc:	fd442783          	lw	a5,-44(s0)
     6d0:	00f94563          	blt	s2,a5,6da <qprints+0x4e>
     6d4:	fc042a23          	sw	zero,-44(s0)
     6d8:	a039                	j	6e6 <qprints+0x5a>
     6da:	fd442783          	lw	a5,-44(s0)
     6de:	412787b3          	sub	a5,a5,s2
     6e2:	fcf42a23          	sw	a5,-44(s0)
     6e6:	fd042783          	lw	a5,-48(s0)
     6ea:	8b89                	andi	a5,a5,2
     6ec:	c399                	beqz	a5,6f2 <qprints+0x66>
     6ee:	03000a13          	li	s4,48
     6f2:	fd042783          	lw	a5,-48(s0)
     6f6:	8b85                	andi	a5,a5,1
     6f8:	ef9d                	bnez	a5,736 <qprints+0xaa>
     6fa:	a819                	j	710 <qprints+0x84>
     6fc:	85d2                	mv	a1,s4
     6fe:	fdc42503          	lw	a0,-36(s0)
     702:	3f2d                	jal	63c <qprintchar>
     704:	0485                	addi	s1,s1,1
     706:	fd442783          	lw	a5,-44(s0)
     70a:	17fd                	addi	a5,a5,-1
     70c:	fcf42a23          	sw	a5,-44(s0)
     710:	fd442783          	lw	a5,-44(s0)
     714:	fef044e3          	bgtz	a5,6fc <qprints+0x70>
     718:	a839                	j	736 <qprints+0xaa>
     71a:	fd842783          	lw	a5,-40(s0)
     71e:	0007c783          	lbu	a5,0(a5)
     722:	85be                	mv	a1,a5
     724:	fdc42503          	lw	a0,-36(s0)
     728:	3f11                	jal	63c <qprintchar>
     72a:	0485                	addi	s1,s1,1
     72c:	fd842783          	lw	a5,-40(s0)
     730:	0785                	addi	a5,a5,1
     732:	fcf42c23          	sw	a5,-40(s0)
     736:	fd842783          	lw	a5,-40(s0)
     73a:	0007c783          	lbu	a5,0(a5)
     73e:	fff1                	bnez	a5,71a <qprints+0x8e>
     740:	a819                	j	756 <qprints+0xca>
     742:	85d2                	mv	a1,s4
     744:	fdc42503          	lw	a0,-36(s0)
     748:	3dd5                	jal	63c <qprintchar>
     74a:	0485                	addi	s1,s1,1
     74c:	fd442783          	lw	a5,-44(s0)
     750:	17fd                	addi	a5,a5,-1
     752:	fcf42a23          	sw	a5,-44(s0)
     756:	fd442783          	lw	a5,-44(s0)
     75a:	fef044e3          	bgtz	a5,742 <qprints+0xb6>
     75e:	87a6                	mv	a5,s1
     760:	853e                	mv	a0,a5
     762:	50b2                	lw	ra,44(sp)
     764:	5422                	lw	s0,40(sp)
     766:	5492                	lw	s1,36(sp)
     768:	5902                	lw	s2,32(sp)
     76a:	49f2                	lw	s3,28(sp)
     76c:	4a62                	lw	s4,24(sp)
     76e:	6145                	addi	sp,sp,48
     770:	8082                	ret

00000772 <qprinti>:
     772:	7159                	addi	sp,sp,-112
     774:	d686                	sw	ra,108(sp)
     776:	d4a2                	sw	s0,104(sp)
     778:	d2a6                	sw	s1,100(sp)
     77a:	d0ca                	sw	s2,96(sp)
     77c:	cece                	sw	s3,92(sp)
     77e:	1880                	addi	s0,sp,112
     780:	faa42623          	sw	a0,-84(s0)
     784:	fab42423          	sw	a1,-88(s0)
     788:	fac42223          	sw	a2,-92(s0)
     78c:	fad42023          	sw	a3,-96(s0)
     790:	f8e42e23          	sw	a4,-100(s0)
     794:	f8f42c23          	sw	a5,-104(s0)
     798:	87c2                	mv	a5,a6
     79a:	f8f40ba3          	sb	a5,-105(s0)
     79e:	4981                	li	s3,0
     7a0:	4901                	li	s2,0
     7a2:	fa842783          	lw	a5,-88(s0)
     7a6:	fcf42e23          	sw	a5,-36(s0)
     7aa:	fa842783          	lw	a5,-88(s0)
     7ae:	e39d                	bnez	a5,7d4 <qprinti+0x62>
     7b0:	03000793          	li	a5,48
     7b4:	faf40c23          	sb	a5,-72(s0)
     7b8:	fa040ca3          	sb	zero,-71(s0)
     7bc:	fb840793          	addi	a5,s0,-72
     7c0:	f9842683          	lw	a3,-104(s0)
     7c4:	f9c42603          	lw	a2,-100(s0)
     7c8:	85be                	mv	a1,a5
     7ca:	fac42503          	lw	a0,-84(s0)
     7ce:	3d7d                	jal	68c <qprints>
     7d0:	87aa                	mv	a5,a0
     7d2:	a8fd                	j	8d0 <qprinti+0x15e>
     7d4:	fa042783          	lw	a5,-96(s0)
     7d8:	c38d                	beqz	a5,7fa <qprinti+0x88>
     7da:	fa442703          	lw	a4,-92(s0)
     7de:	47a9                	li	a5,10
     7e0:	00f71d63          	bne	a4,a5,7fa <qprinti+0x88>
     7e4:	fa842783          	lw	a5,-88(s0)
     7e8:	0007d963          	bgez	a5,7fa <qprinti+0x88>
     7ec:	4985                	li	s3,1
     7ee:	fa842783          	lw	a5,-88(s0)
     7f2:	40f007b3          	neg	a5,a5
     7f6:	fcf42e23          	sw	a5,-36(s0)
     7fa:	fb840493          	addi	s1,s0,-72
     7fe:	04fd                	addi	s1,s1,31
     800:	00048023          	sb	zero,0(s1)
     804:	fa442703          	lw	a4,-92(s0)
     808:	47c1                	li	a5,16
     80a:	06f71c63          	bne	a4,a5,882 <qprinti+0x110>
     80e:	a0a1                	j	856 <qprinti+0xe4>
     810:	fdc42783          	lw	a5,-36(s0)
     814:	8bbd                	andi	a5,a5,15
     816:	fcf42c23          	sw	a5,-40(s0)
     81a:	fd842703          	lw	a4,-40(s0)
     81e:	47a5                	li	a5,9
     820:	00e7db63          	bge	a5,a4,836 <qprinti+0xc4>
     824:	f9744783          	lbu	a5,-105(s0)
     828:	fc678793          	addi	a5,a5,-58
     82c:	fd842703          	lw	a4,-40(s0)
     830:	97ba                	add	a5,a5,a4
     832:	fcf42c23          	sw	a5,-40(s0)
     836:	fd842783          	lw	a5,-40(s0)
     83a:	0ff7f793          	andi	a5,a5,255
     83e:	14fd                	addi	s1,s1,-1
     840:	03078793          	addi	a5,a5,48
     844:	0ff7f793          	andi	a5,a5,255
     848:	00f48023          	sb	a5,0(s1)
     84c:	fdc42783          	lw	a5,-36(s0)
     850:	8391                	srli	a5,a5,0x4
     852:	fcf42e23          	sw	a5,-36(s0)
     856:	fdc42783          	lw	a5,-36(s0)
     85a:	fbdd                	bnez	a5,810 <qprinti+0x9e>
     85c:	a035                	j	888 <qprinti+0x116>
     85e:	fdc42503          	lw	a0,-36(s0)
     862:	33ad                	jal	5cc <remu10>
     864:	87aa                	mv	a5,a0
     866:	0ff7f793          	andi	a5,a5,255
     86a:	14fd                	addi	s1,s1,-1
     86c:	03078793          	addi	a5,a5,48
     870:	0ff7f793          	andi	a5,a5,255
     874:	00f48023          	sb	a5,0(s1)
     878:	fdc42503          	lw	a0,-36(s0)
     87c:	31e1                	jal	544 <divu10>
     87e:	fca42e23          	sw	a0,-36(s0)
     882:	fdc42783          	lw	a5,-36(s0)
     886:	ffe1                	bnez	a5,85e <qprinti+0xec>
     888:	02098a63          	beqz	s3,8bc <qprinti+0x14a>
     88c:	f9c42783          	lw	a5,-100(s0)
     890:	c38d                	beqz	a5,8b2 <qprinti+0x140>
     892:	f9842783          	lw	a5,-104(s0)
     896:	8b89                	andi	a5,a5,2
     898:	cf89                	beqz	a5,8b2 <qprinti+0x140>
     89a:	02d00593          	li	a1,45
     89e:	fac42503          	lw	a0,-84(s0)
     8a2:	3b69                	jal	63c <qprintchar>
     8a4:	0905                	addi	s2,s2,1
     8a6:	f9c42783          	lw	a5,-100(s0)
     8aa:	17fd                	addi	a5,a5,-1
     8ac:	f8f42e23          	sw	a5,-100(s0)
     8b0:	a031                	j	8bc <qprinti+0x14a>
     8b2:	14fd                	addi	s1,s1,-1
     8b4:	02d00793          	li	a5,45
     8b8:	00f48023          	sb	a5,0(s1)
     8bc:	f9842683          	lw	a3,-104(s0)
     8c0:	f9c42603          	lw	a2,-100(s0)
     8c4:	85a6                	mv	a1,s1
     8c6:	fac42503          	lw	a0,-84(s0)
     8ca:	33c9                	jal	68c <qprints>
     8cc:	87aa                	mv	a5,a0
     8ce:	97ca                	add	a5,a5,s2
     8d0:	853e                	mv	a0,a5
     8d2:	50b6                	lw	ra,108(sp)
     8d4:	5426                	lw	s0,104(sp)
     8d6:	5496                	lw	s1,100(sp)
     8d8:	5906                	lw	s2,96(sp)
     8da:	49f6                	lw	s3,92(sp)
     8dc:	6165                	addi	sp,sp,112
     8de:	8082                	ret

000008e0 <qprint>:
     8e0:	7139                	addi	sp,sp,-64
     8e2:	de06                	sw	ra,60(sp)
     8e4:	dc22                	sw	s0,56(sp)
     8e6:	da26                	sw	s1,52(sp)
     8e8:	d84a                	sw	s2,48(sp)
     8ea:	d64e                	sw	s3,44(sp)
     8ec:	0080                	addi	s0,sp,64
     8ee:	fca42623          	sw	a0,-52(s0)
     8f2:	fcb42423          	sw	a1,-56(s0)
     8f6:	fcc42223          	sw	a2,-60(s0)
     8fa:	4481                	li	s1,0
     8fc:	ac35                	j	b38 <qprint+0x258>
     8fe:	fc842783          	lw	a5,-56(s0)
     902:	0007c703          	lbu	a4,0(a5)
     906:	02500793          	li	a5,37
     90a:	20f71663          	bne	a4,a5,b16 <qprint+0x236>
     90e:	fc842783          	lw	a5,-56(s0)
     912:	0785                	addi	a5,a5,1
     914:	fcf42423          	sw	a5,-56(s0)
     918:	4981                	li	s3,0
     91a:	894e                	mv	s2,s3
     91c:	fc842783          	lw	a5,-56(s0)
     920:	0007c783          	lbu	a5,0(a5)
     924:	22078163          	beqz	a5,b46 <qprint+0x266>
     928:	fc842783          	lw	a5,-56(s0)
     92c:	0007c703          	lbu	a4,0(a5)
     930:	02500793          	li	a5,37
     934:	1ef70363          	beq	a4,a5,b1a <qprint+0x23a>
     938:	fc842783          	lw	a5,-56(s0)
     93c:	0007c703          	lbu	a4,0(a5)
     940:	02d00793          	li	a5,45
     944:	02f71063          	bne	a4,a5,964 <qprint+0x84>
     948:	fc842783          	lw	a5,-56(s0)
     94c:	0785                	addi	a5,a5,1
     94e:	fcf42423          	sw	a5,-56(s0)
     952:	4985                	li	s3,1
     954:	a801                	j	964 <qprint+0x84>
     956:	fc842783          	lw	a5,-56(s0)
     95a:	0785                	addi	a5,a5,1
     95c:	fcf42423          	sw	a5,-56(s0)
     960:	0029e993          	ori	s3,s3,2
     964:	fc842783          	lw	a5,-56(s0)
     968:	0007c703          	lbu	a4,0(a5)
     96c:	03000793          	li	a5,48
     970:	fef703e3          	beq	a4,a5,956 <qprint+0x76>
     974:	a015                	j	998 <qprint+0xb8>
     976:	87ca                	mv	a5,s2
     978:	078a                	slli	a5,a5,0x2
     97a:	97ca                	add	a5,a5,s2
     97c:	0786                	slli	a5,a5,0x1
     97e:	893e                	mv	s2,a5
     980:	fc842783          	lw	a5,-56(s0)
     984:	0007c783          	lbu	a5,0(a5)
     988:	fd078793          	addi	a5,a5,-48
     98c:	993e                	add	s2,s2,a5
     98e:	fc842783          	lw	a5,-56(s0)
     992:	0785                	addi	a5,a5,1
     994:	fcf42423          	sw	a5,-56(s0)
     998:	fc842783          	lw	a5,-56(s0)
     99c:	0007c703          	lbu	a4,0(a5)
     9a0:	02f00793          	li	a5,47
     9a4:	00e7fa63          	bgeu	a5,a4,9b8 <qprint+0xd8>
     9a8:	fc842783          	lw	a5,-56(s0)
     9ac:	0007c703          	lbu	a4,0(a5)
     9b0:	03900793          	li	a5,57
     9b4:	fce7f1e3          	bgeu	a5,a4,976 <qprint+0x96>
     9b8:	fc842783          	lw	a5,-56(s0)
     9bc:	0007c703          	lbu	a4,0(a5)
     9c0:	07300793          	li	a5,115
     9c4:	02f71a63          	bne	a4,a5,9f8 <qprint+0x118>
     9c8:	fc442783          	lw	a5,-60(s0)
     9cc:	00478713          	addi	a4,a5,4
     9d0:	fce42223          	sw	a4,-60(s0)
     9d4:	0007a083          	lw	ra,0(a5)
     9d8:	00008463          	beqz	ra,9e0 <qprint+0x100>
     9dc:	8786                	mv	a5,ra
     9de:	a021                	j	9e6 <qprint+0x106>
     9e0:	6785                	lui	a5,0x1
     9e2:	69c78793          	addi	a5,a5,1692 # 169c <__DTOR_END__+0x80>
     9e6:	86ce                	mv	a3,s3
     9e8:	864a                	mv	a2,s2
     9ea:	85be                	mv	a1,a5
     9ec:	fcc42503          	lw	a0,-52(s0)
     9f0:	3971                	jal	68c <qprints>
     9f2:	87aa                	mv	a5,a0
     9f4:	94be                	add	s1,s1,a5
     9f6:	aa25                	j	b2e <qprint+0x24e>
     9f8:	fc842783          	lw	a5,-56(s0)
     9fc:	0007c703          	lbu	a4,0(a5)
     a00:	06400793          	li	a5,100
     a04:	02f71563          	bne	a4,a5,a2e <qprint+0x14e>
     a08:	fc442783          	lw	a5,-60(s0)
     a0c:	00478713          	addi	a4,a5,4
     a10:	fce42223          	sw	a4,-60(s0)
     a14:	438c                	lw	a1,0(a5)
     a16:	06100813          	li	a6,97
     a1a:	87ce                	mv	a5,s3
     a1c:	874a                	mv	a4,s2
     a1e:	4685                	li	a3,1
     a20:	4629                	li	a2,10
     a22:	fcc42503          	lw	a0,-52(s0)
     a26:	33b1                	jal	772 <qprinti>
     a28:	87aa                	mv	a5,a0
     a2a:	94be                	add	s1,s1,a5
     a2c:	a209                	j	b2e <qprint+0x24e>
     a2e:	fc842783          	lw	a5,-56(s0)
     a32:	0007c703          	lbu	a4,0(a5)
     a36:	07500793          	li	a5,117
     a3a:	02f71663          	bne	a4,a5,a66 <qprint+0x186>
     a3e:	fc442783          	lw	a5,-60(s0)
     a42:	00478713          	addi	a4,a5,4
     a46:	fce42223          	sw	a4,-60(s0)
     a4a:	439c                	lw	a5,0(a5)
     a4c:	85be                	mv	a1,a5
     a4e:	06100813          	li	a6,97
     a52:	87ce                	mv	a5,s3
     a54:	874a                	mv	a4,s2
     a56:	4681                	li	a3,0
     a58:	4629                	li	a2,10
     a5a:	fcc42503          	lw	a0,-52(s0)
     a5e:	3b11                	jal	772 <qprinti>
     a60:	87aa                	mv	a5,a0
     a62:	94be                	add	s1,s1,a5
     a64:	a0e9                	j	b2e <qprint+0x24e>
     a66:	fc842783          	lw	a5,-56(s0)
     a6a:	0007c703          	lbu	a4,0(a5)
     a6e:	07800793          	li	a5,120
     a72:	02f71663          	bne	a4,a5,a9e <qprint+0x1be>
     a76:	fc442783          	lw	a5,-60(s0)
     a7a:	00478713          	addi	a4,a5,4
     a7e:	fce42223          	sw	a4,-60(s0)
     a82:	439c                	lw	a5,0(a5)
     a84:	85be                	mv	a1,a5
     a86:	06100813          	li	a6,97
     a8a:	87ce                	mv	a5,s3
     a8c:	874a                	mv	a4,s2
     a8e:	4681                	li	a3,0
     a90:	4641                	li	a2,16
     a92:	fcc42503          	lw	a0,-52(s0)
     a96:	39f1                	jal	772 <qprinti>
     a98:	87aa                	mv	a5,a0
     a9a:	94be                	add	s1,s1,a5
     a9c:	a849                	j	b2e <qprint+0x24e>
     a9e:	fc842783          	lw	a5,-56(s0)
     aa2:	0007c703          	lbu	a4,0(a5)
     aa6:	05800793          	li	a5,88
     aaa:	02f71663          	bne	a4,a5,ad6 <qprint+0x1f6>
     aae:	fc442783          	lw	a5,-60(s0)
     ab2:	00478713          	addi	a4,a5,4
     ab6:	fce42223          	sw	a4,-60(s0)
     aba:	439c                	lw	a5,0(a5)
     abc:	85be                	mv	a1,a5
     abe:	04100813          	li	a6,65
     ac2:	87ce                	mv	a5,s3
     ac4:	874a                	mv	a4,s2
     ac6:	4681                	li	a3,0
     ac8:	4641                	li	a2,16
     aca:	fcc42503          	lw	a0,-52(s0)
     ace:	3155                	jal	772 <qprinti>
     ad0:	87aa                	mv	a5,a0
     ad2:	94be                	add	s1,s1,a5
     ad4:	a8a9                	j	b2e <qprint+0x24e>
     ad6:	fc842783          	lw	a5,-56(s0)
     ada:	0007c703          	lbu	a4,0(a5)
     ade:	06300793          	li	a5,99
     ae2:	04f71663          	bne	a4,a5,b2e <qprint+0x24e>
     ae6:	fc442783          	lw	a5,-60(s0)
     aea:	00478713          	addi	a4,a5,4
     aee:	fce42223          	sw	a4,-60(s0)
     af2:	439c                	lw	a5,0(a5)
     af4:	0ff7f793          	andi	a5,a5,255
     af8:	fcf40e23          	sb	a5,-36(s0)
     afc:	fc040ea3          	sb	zero,-35(s0)
     b00:	fdc40793          	addi	a5,s0,-36
     b04:	86ce                	mv	a3,s3
     b06:	864a                	mv	a2,s2
     b08:	85be                	mv	a1,a5
     b0a:	fcc42503          	lw	a0,-52(s0)
     b0e:	3ebd                	jal	68c <qprints>
     b10:	87aa                	mv	a5,a0
     b12:	94be                	add	s1,s1,a5
     b14:	a829                	j	b2e <qprint+0x24e>
     b16:	0001                	nop
     b18:	a011                	j	b1c <qprint+0x23c>
     b1a:	0001                	nop
     b1c:	fc842783          	lw	a5,-56(s0)
     b20:	0007c783          	lbu	a5,0(a5)
     b24:	85be                	mv	a1,a5
     b26:	fcc42503          	lw	a0,-52(s0)
     b2a:	3e09                	jal	63c <qprintchar>
     b2c:	0485                	addi	s1,s1,1
     b2e:	fc842783          	lw	a5,-56(s0)
     b32:	0785                	addi	a5,a5,1
     b34:	fcf42423          	sw	a5,-56(s0)
     b38:	fc842783          	lw	a5,-56(s0)
     b3c:	0007c783          	lbu	a5,0(a5)
     b40:	da079fe3          	bnez	a5,8fe <qprint+0x1e>
     b44:	a011                	j	b48 <qprint+0x268>
     b46:	0001                	nop
     b48:	fcc42783          	lw	a5,-52(s0)
     b4c:	c791                	beqz	a5,b58 <qprint+0x278>
     b4e:	fcc42783          	lw	a5,-52(s0)
     b52:	439c                	lw	a5,0(a5)
     b54:	00078023          	sb	zero,0(a5)
     b58:	87a6                	mv	a5,s1
     b5a:	853e                	mv	a0,a5
     b5c:	50f2                	lw	ra,60(sp)
     b5e:	5462                	lw	s0,56(sp)
     b60:	54d2                	lw	s1,52(sp)
     b62:	5942                	lw	s2,48(sp)
     b64:	59b2                	lw	s3,44(sp)
     b66:	6121                	addi	sp,sp,64
     b68:	8082                	ret

00000b6a <printf>:
     b6a:	715d                	addi	sp,sp,-80
     b6c:	d606                	sw	ra,44(sp)
     b6e:	d422                	sw	s0,40(sp)
     b70:	1800                	addi	s0,sp,48
     b72:	fca42e23          	sw	a0,-36(s0)
     b76:	c04c                	sw	a1,4(s0)
     b78:	c410                	sw	a2,8(s0)
     b7a:	c454                	sw	a3,12(s0)
     b7c:	c818                	sw	a4,16(s0)
     b7e:	c85c                	sw	a5,20(s0)
     b80:	01042c23          	sw	a6,24(s0)
     b84:	01142e23          	sw	a7,28(s0)
     b88:	02040793          	addi	a5,s0,32
     b8c:	fcf42c23          	sw	a5,-40(s0)
     b90:	fd842783          	lw	a5,-40(s0)
     b94:	1791                	addi	a5,a5,-28
     b96:	fef42423          	sw	a5,-24(s0)
     b9a:	fe842783          	lw	a5,-24(s0)
     b9e:	863e                	mv	a2,a5
     ba0:	fdc42583          	lw	a1,-36(s0)
     ba4:	4501                	li	a0,0
     ba6:	3b2d                	jal	8e0 <qprint>
     ba8:	fea42623          	sw	a0,-20(s0)
     bac:	fec42783          	lw	a5,-20(s0)
     bb0:	853e                	mv	a0,a5
     bb2:	50b2                	lw	ra,44(sp)
     bb4:	5422                	lw	s0,40(sp)
     bb6:	6161                	addi	sp,sp,80
     bb8:	8082                	ret

00000bba <puts>:
     bba:	7179                	addi	sp,sp,-48
     bbc:	d606                	sw	ra,44(sp)
     bbe:	d422                	sw	s0,40(sp)
     bc0:	1800                	addi	s0,sp,48
     bc2:	fca42e23          	sw	a0,-36(s0)
     bc6:	fe042623          	sw	zero,-20(s0)
     bca:	a839                	j	be8 <puts+0x2e>
     bcc:	fec42783          	lw	a5,-20(s0)
     bd0:	00178713          	addi	a4,a5,1
     bd4:	fee42623          	sw	a4,-20(s0)
     bd8:	873e                	mv	a4,a5
     bda:	fdc42783          	lw	a5,-36(s0)
     bde:	97ba                	add	a5,a5,a4
     be0:	0007c783          	lbu	a5,0(a5)
     be4:	853e                	mv	a0,a5
     be6:	343d                	jal	614 <putchar>
     be8:	fec42783          	lw	a5,-20(s0)
     bec:	fdc42703          	lw	a4,-36(s0)
     bf0:	97ba                	add	a5,a5,a4
     bf2:	0007c783          	lbu	a5,0(a5)
     bf6:	fbf9                	bnez	a5,bcc <puts+0x12>
     bf8:	4529                	li	a0,10
     bfa:	3c29                	jal	614 <putchar>
     bfc:	fec42783          	lw	a5,-20(s0)
     c00:	853e                	mv	a0,a5
     c02:	50b2                	lw	ra,44(sp)
     c04:	5422                	lw	s0,40(sp)
     c06:	6145                	addi	sp,sp,48
     c08:	8082                	ret

00000c0a <strcmp>:
     c0a:	7179                	addi	sp,sp,-48
     c0c:	d622                	sw	s0,44(sp)
     c0e:	1800                	addi	s0,sp,48
     c10:	fca42e23          	sw	a0,-36(s0)
     c14:	fcb42c23          	sw	a1,-40(s0)
     c18:	fdc42703          	lw	a4,-36(s0)
     c1c:	fd842783          	lw	a5,-40(s0)
     c20:	8fd9                	or	a5,a5,a4
     c22:	8b8d                	andi	a5,a5,3
     c24:	e7c9                	bnez	a5,cae <strcmp+0xa4>
     c26:	fdc42783          	lw	a5,-36(s0)
     c2a:	fef42623          	sw	a5,-20(s0)
     c2e:	fd842783          	lw	a5,-40(s0)
     c32:	fef42423          	sw	a5,-24(s0)
     c36:	a089                	j	c78 <strcmp+0x6e>
     c38:	fec42783          	lw	a5,-20(s0)
     c3c:	4398                	lw	a4,0(a5)
     c3e:	feff07b7          	lui	a5,0xfeff0
     c42:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c46:	973e                	add	a4,a4,a5
     c48:	fec42783          	lw	a5,-20(s0)
     c4c:	439c                	lw	a5,0(a5)
     c4e:	fff7c793          	not	a5,a5
     c52:	8f7d                	and	a4,a4,a5
     c54:	808087b7          	lui	a5,0x80808
     c58:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c5c:	8ff9                	and	a5,a5,a4
     c5e:	c399                	beqz	a5,c64 <strcmp+0x5a>
     c60:	4781                	li	a5,0
     c62:	a041                	j	ce2 <strcmp+0xd8>
     c64:	fec42783          	lw	a5,-20(s0)
     c68:	0791                	addi	a5,a5,4
     c6a:	fef42623          	sw	a5,-20(s0)
     c6e:	fe842783          	lw	a5,-24(s0)
     c72:	0791                	addi	a5,a5,4
     c74:	fef42423          	sw	a5,-24(s0)
     c78:	fec42783          	lw	a5,-20(s0)
     c7c:	4398                	lw	a4,0(a5)
     c7e:	fe842783          	lw	a5,-24(s0)
     c82:	439c                	lw	a5,0(a5)
     c84:	faf70ae3          	beq	a4,a5,c38 <strcmp+0x2e>
     c88:	fec42783          	lw	a5,-20(s0)
     c8c:	fcf42e23          	sw	a5,-36(s0)
     c90:	fe842783          	lw	a5,-24(s0)
     c94:	fcf42c23          	sw	a5,-40(s0)
     c98:	a819                	j	cae <strcmp+0xa4>
     c9a:	fdc42783          	lw	a5,-36(s0)
     c9e:	0785                	addi	a5,a5,1
     ca0:	fcf42e23          	sw	a5,-36(s0)
     ca4:	fd842783          	lw	a5,-40(s0)
     ca8:	0785                	addi	a5,a5,1
     caa:	fcf42c23          	sw	a5,-40(s0)
     cae:	fdc42783          	lw	a5,-36(s0)
     cb2:	0007c783          	lbu	a5,0(a5)
     cb6:	cb99                	beqz	a5,ccc <strcmp+0xc2>
     cb8:	fdc42783          	lw	a5,-36(s0)
     cbc:	0007c703          	lbu	a4,0(a5)
     cc0:	fd842783          	lw	a5,-40(s0)
     cc4:	0007c783          	lbu	a5,0(a5)
     cc8:	fcf709e3          	beq	a4,a5,c9a <strcmp+0x90>
     ccc:	fdc42783          	lw	a5,-36(s0)
     cd0:	0007c783          	lbu	a5,0(a5)
     cd4:	873e                	mv	a4,a5
     cd6:	fd842783          	lw	a5,-40(s0)
     cda:	0007c783          	lbu	a5,0(a5)
     cde:	40f707b3          	sub	a5,a4,a5
     ce2:	853e                	mv	a0,a5
     ce4:	5432                	lw	s0,44(sp)
     ce6:	6145                	addi	sp,sp,48
     ce8:	8082                	ret

00000cea <memset>:
     cea:	7179                	addi	sp,sp,-48
     cec:	d622                	sw	s0,44(sp)
     cee:	1800                	addi	s0,sp,48
     cf0:	fca42e23          	sw	a0,-36(s0)
     cf4:	fcb42c23          	sw	a1,-40(s0)
     cf8:	fcc42a23          	sw	a2,-44(s0)
     cfc:	fdc42783          	lw	a5,-36(s0)
     d00:	fef42623          	sw	a5,-20(s0)
     d04:	a015                	j	d28 <memset+0x3e>
     d06:	fec42783          	lw	a5,-20(s0)
     d0a:	00178713          	addi	a4,a5,1
     d0e:	fee42623          	sw	a4,-20(s0)
     d12:	fd842703          	lw	a4,-40(s0)
     d16:	0ff77713          	andi	a4,a4,255
     d1a:	00e78023          	sb	a4,0(a5)
     d1e:	fd442783          	lw	a5,-44(s0)
     d22:	17fd                	addi	a5,a5,-1
     d24:	fcf42a23          	sw	a5,-44(s0)
     d28:	fd442783          	lw	a5,-44(s0)
     d2c:	ffe9                	bnez	a5,d06 <memset+0x1c>
     d2e:	fdc42783          	lw	a5,-36(s0)
     d32:	853e                	mv	a0,a5
     d34:	5432                	lw	s0,44(sp)
     d36:	6145                	addi	sp,sp,48
     d38:	8082                	ret

00000d3a <strcpy>:
     d3a:	7179                	addi	sp,sp,-48
     d3c:	d622                	sw	s0,44(sp)
     d3e:	1800                	addi	s0,sp,48
     d40:	fca42e23          	sw	a0,-36(s0)
     d44:	fcb42c23          	sw	a1,-40(s0)
     d48:	fdc42783          	lw	a5,-36(s0)
     d4c:	fef42623          	sw	a5,-20(s0)
     d50:	fd842783          	lw	a5,-40(s0)
     d54:	fef42423          	sw	a5,-24(s0)
     d58:	a01d                	j	d7e <strcpy+0x44>
     d5a:	fe842783          	lw	a5,-24(s0)
     d5e:	0007c703          	lbu	a4,0(a5)
     d62:	fec42783          	lw	a5,-20(s0)
     d66:	00e78023          	sb	a4,0(a5)
     d6a:	fec42783          	lw	a5,-20(s0)
     d6e:	0785                	addi	a5,a5,1
     d70:	fef42623          	sw	a5,-20(s0)
     d74:	fe842783          	lw	a5,-24(s0)
     d78:	0785                	addi	a5,a5,1
     d7a:	fef42423          	sw	a5,-24(s0)
     d7e:	fe842783          	lw	a5,-24(s0)
     d82:	0007c783          	lbu	a5,0(a5)
     d86:	fbf1                	bnez	a5,d5a <strcpy+0x20>
     d88:	fdc42783          	lw	a5,-36(s0)
     d8c:	853e                	mv	a0,a5
     d8e:	5432                	lw	s0,44(sp)
     d90:	6145                	addi	sp,sp,48
     d92:	8082                	ret

00000d94 <strlen>:
     d94:	7179                	addi	sp,sp,-48
     d96:	d622                	sw	s0,44(sp)
     d98:	1800                	addi	s0,sp,48
     d9a:	fca42e23          	sw	a0,-36(s0)
     d9e:	fdc42783          	lw	a5,-36(s0)
     da2:	fef42623          	sw	a5,-20(s0)
     da6:	fe042423          	sw	zero,-24(s0)
     daa:	fec42783          	lw	a5,-20(s0)
     dae:	eb81                	bnez	a5,dbe <strlen+0x2a>
     db0:	4781                	li	a5,0
     db2:	a00d                	j	dd4 <strlen+0x40>
     db4:	fe842783          	lw	a5,-24(s0)
     db8:	0785                	addi	a5,a5,1
     dba:	fef42423          	sw	a5,-24(s0)
     dbe:	fec42783          	lw	a5,-20(s0)
     dc2:	00178713          	addi	a4,a5,1
     dc6:	fee42623          	sw	a4,-20(s0)
     dca:	0007c783          	lbu	a5,0(a5)
     dce:	f3fd                	bnez	a5,db4 <strlen+0x20>
     dd0:	fe842783          	lw	a5,-24(s0)
     dd4:	853e                	mv	a0,a5
     dd6:	5432                	lw	s0,44(sp)
     dd8:	6145                	addi	sp,sp,48
     dda:	8082                	ret

00000ddc <set_pin_function>:
     ddc:	7179                	addi	sp,sp,-48
     dde:	d622                	sw	s0,44(sp)
     de0:	1800                	addi	s0,sp,48
     de2:	fca42e23          	sw	a0,-36(s0)
     de6:	fcb42c23          	sw	a1,-40(s0)
     dea:	1a1077b7          	lui	a5,0x1a107
     dee:	439c                	lw	a5,0(a5)
     df0:	fef42623          	sw	a5,-20(s0)
     df4:	fdc42783          	lw	a5,-36(s0)
     df8:	4705                	li	a4,1
     dfa:	00f717b3          	sll	a5,a4,a5
     dfe:	fff7c713          	not	a4,a5
     e02:	fec42783          	lw	a5,-20(s0)
     e06:	8ff9                	and	a5,a5,a4
     e08:	fef42623          	sw	a5,-20(s0)
     e0c:	fdc42783          	lw	a5,-36(s0)
     e10:	fd842703          	lw	a4,-40(s0)
     e14:	00f71733          	sll	a4,a4,a5
     e18:	fec42783          	lw	a5,-20(s0)
     e1c:	8fd9                	or	a5,a5,a4
     e1e:	fef42623          	sw	a5,-20(s0)
     e22:	1a1077b7          	lui	a5,0x1a107
     e26:	fec42703          	lw	a4,-20(s0)
     e2a:	c398                	sw	a4,0(a5)
     e2c:	0001                	nop
     e2e:	5432                	lw	s0,44(sp)
     e30:	6145                	addi	sp,sp,48
     e32:	8082                	ret

00000e34 <get_pin_function>:
     e34:	7179                	addi	sp,sp,-48
     e36:	d622                	sw	s0,44(sp)
     e38:	1800                	addi	s0,sp,48
     e3a:	fca42e23          	sw	a0,-36(s0)
     e3e:	1a1077b7          	lui	a5,0x1a107
     e42:	439c                	lw	a5,0(a5)
     e44:	fef42623          	sw	a5,-20(s0)
     e48:	fec42703          	lw	a4,-20(s0)
     e4c:	fdc42783          	lw	a5,-36(s0)
     e50:	40f757b3          	sra	a5,a4,a5
     e54:	8b85                	andi	a5,a5,1
     e56:	fef42623          	sw	a5,-20(s0)
     e5a:	fec42783          	lw	a5,-20(s0)
     e5e:	853e                	mv	a0,a5
     e60:	5432                	lw	s0,44(sp)
     e62:	6145                	addi	sp,sp,48
     e64:	8082                	ret

00000e66 <set_gpio_pin_direction>:
     e66:	7179                	addi	sp,sp,-48
     e68:	d622                	sw	s0,44(sp)
     e6a:	1800                	addi	s0,sp,48
     e6c:	fca42e23          	sw	a0,-36(s0)
     e70:	fcb42c23          	sw	a1,-40(s0)
     e74:	1a1017b7          	lui	a5,0x1a101
     e78:	439c                	lw	a5,0(a5)
     e7a:	fef42623          	sw	a5,-20(s0)
     e7e:	fd842783          	lw	a5,-40(s0)
     e82:	ef91                	bnez	a5,e9e <set_gpio_pin_direction+0x38>
     e84:	fdc42783          	lw	a5,-36(s0)
     e88:	4705                	li	a4,1
     e8a:	00f717b3          	sll	a5,a4,a5
     e8e:	fff7c713          	not	a4,a5
     e92:	fec42783          	lw	a5,-20(s0)
     e96:	8ff9                	and	a5,a5,a4
     e98:	fef42623          	sw	a5,-20(s0)
     e9c:	a819                	j	eb2 <set_gpio_pin_direction+0x4c>
     e9e:	fdc42783          	lw	a5,-36(s0)
     ea2:	4705                	li	a4,1
     ea4:	00f71733          	sll	a4,a4,a5
     ea8:	fec42783          	lw	a5,-20(s0)
     eac:	8fd9                	or	a5,a5,a4
     eae:	fef42623          	sw	a5,-20(s0)
     eb2:	1a1017b7          	lui	a5,0x1a101
     eb6:	fec42703          	lw	a4,-20(s0)
     eba:	c398                	sw	a4,0(a5)
     ebc:	0001                	nop
     ebe:	5432                	lw	s0,44(sp)
     ec0:	6145                	addi	sp,sp,48
     ec2:	8082                	ret

00000ec4 <get_gpio_pin_direction>:
     ec4:	7179                	addi	sp,sp,-48
     ec6:	d622                	sw	s0,44(sp)
     ec8:	1800                	addi	s0,sp,48
     eca:	fca42e23          	sw	a0,-36(s0)
     ece:	1a1017b7          	lui	a5,0x1a101
     ed2:	439c                	lw	a5,0(a5)
     ed4:	fef42623          	sw	a5,-20(s0)
     ed8:	fec42703          	lw	a4,-20(s0)
     edc:	fdc42783          	lw	a5,-36(s0)
     ee0:	0786                	slli	a5,a5,0x1
     ee2:	40f757b3          	sra	a5,a4,a5
     ee6:	8b85                	andi	a5,a5,1
     ee8:	fef42623          	sw	a5,-20(s0)
     eec:	fec42783          	lw	a5,-20(s0)
     ef0:	853e                	mv	a0,a5
     ef2:	5432                	lw	s0,44(sp)
     ef4:	6145                	addi	sp,sp,48
     ef6:	8082                	ret

00000ef8 <set_gpio_pin_value>:
     ef8:	7179                	addi	sp,sp,-48
     efa:	d622                	sw	s0,44(sp)
     efc:	1800                	addi	s0,sp,48
     efe:	fca42e23          	sw	a0,-36(s0)
     f02:	fcb42c23          	sw	a1,-40(s0)
     f06:	1a1017b7          	lui	a5,0x1a101
     f0a:	07a1                	addi	a5,a5,8
     f0c:	439c                	lw	a5,0(a5)
     f0e:	fef42623          	sw	a5,-20(s0)
     f12:	fd842783          	lw	a5,-40(s0)
     f16:	ef91                	bnez	a5,f32 <set_gpio_pin_value+0x3a>
     f18:	fdc42783          	lw	a5,-36(s0)
     f1c:	4705                	li	a4,1
     f1e:	00f717b3          	sll	a5,a4,a5
     f22:	fff7c713          	not	a4,a5
     f26:	fec42783          	lw	a5,-20(s0)
     f2a:	8ff9                	and	a5,a5,a4
     f2c:	fef42623          	sw	a5,-20(s0)
     f30:	a819                	j	f46 <set_gpio_pin_value+0x4e>
     f32:	fdc42783          	lw	a5,-36(s0)
     f36:	4705                	li	a4,1
     f38:	00f71733          	sll	a4,a4,a5
     f3c:	fec42783          	lw	a5,-20(s0)
     f40:	8fd9                	or	a5,a5,a4
     f42:	fef42623          	sw	a5,-20(s0)
     f46:	1a1017b7          	lui	a5,0x1a101
     f4a:	07a1                	addi	a5,a5,8
     f4c:	fec42703          	lw	a4,-20(s0)
     f50:	c398                	sw	a4,0(a5)
     f52:	0001                	nop
     f54:	5432                	lw	s0,44(sp)
     f56:	6145                	addi	sp,sp,48
     f58:	8082                	ret

00000f5a <get_gpio_pin_value>:
     f5a:	7179                	addi	sp,sp,-48
     f5c:	d622                	sw	s0,44(sp)
     f5e:	1800                	addi	s0,sp,48
     f60:	fca42e23          	sw	a0,-36(s0)
     f64:	1a1017b7          	lui	a5,0x1a101
     f68:	0791                	addi	a5,a5,4
     f6a:	439c                	lw	a5,0(a5)
     f6c:	fef42623          	sw	a5,-20(s0)
     f70:	fec42703          	lw	a4,-20(s0)
     f74:	fdc42783          	lw	a5,-36(s0)
     f78:	40f757b3          	sra	a5,a4,a5
     f7c:	8b85                	andi	a5,a5,1
     f7e:	fef42623          	sw	a5,-20(s0)
     f82:	fec42783          	lw	a5,-20(s0)
     f86:	853e                	mv	a0,a5
     f88:	5432                	lw	s0,44(sp)
     f8a:	6145                	addi	sp,sp,48
     f8c:	8082                	ret

00000f8e <set_gpio_pin_irq_en>:
     f8e:	7179                	addi	sp,sp,-48
     f90:	d622                	sw	s0,44(sp)
     f92:	1800                	addi	s0,sp,48
     f94:	fca42e23          	sw	a0,-36(s0)
     f98:	fcb42c23          	sw	a1,-40(s0)
     f9c:	1a1017b7          	lui	a5,0x1a101
     fa0:	07b1                	addi	a5,a5,12
     fa2:	439c                	lw	a5,0(a5)
     fa4:	fef42623          	sw	a5,-20(s0)
     fa8:	fd842783          	lw	a5,-40(s0)
     fac:	ef91                	bnez	a5,fc8 <set_gpio_pin_irq_en+0x3a>
     fae:	fdc42783          	lw	a5,-36(s0)
     fb2:	4705                	li	a4,1
     fb4:	00f717b3          	sll	a5,a4,a5
     fb8:	fff7c793          	not	a5,a5
     fbc:	fec42703          	lw	a4,-20(s0)
     fc0:	8ff9                	and	a5,a5,a4
     fc2:	fef42623          	sw	a5,-20(s0)
     fc6:	a819                	j	fdc <set_gpio_pin_irq_en+0x4e>
     fc8:	fdc42783          	lw	a5,-36(s0)
     fcc:	4705                	li	a4,1
     fce:	00f717b3          	sll	a5,a4,a5
     fd2:	fec42703          	lw	a4,-20(s0)
     fd6:	8fd9                	or	a5,a5,a4
     fd8:	fef42623          	sw	a5,-20(s0)
     fdc:	1a1017b7          	lui	a5,0x1a101
     fe0:	07b1                	addi	a5,a5,12
     fe2:	fec42703          	lw	a4,-20(s0)
     fe6:	c398                	sw	a4,0(a5)
     fe8:	0001                	nop
     fea:	5432                	lw	s0,44(sp)
     fec:	6145                	addi	sp,sp,48
     fee:	8082                	ret

00000ff0 <set_gpio_pin_irq_type>:
     ff0:	7179                	addi	sp,sp,-48
     ff2:	d622                	sw	s0,44(sp)
     ff4:	1800                	addi	s0,sp,48
     ff6:	fca42e23          	sw	a0,-36(s0)
     ffa:	fcb42c23          	sw	a1,-40(s0)
     ffe:	1a1017b7          	lui	a5,0x1a101
    1002:	07c1                	addi	a5,a5,16
    1004:	439c                	lw	a5,0(a5)
    1006:	fef42623          	sw	a5,-20(s0)
    100a:	1a1017b7          	lui	a5,0x1a101
    100e:	07d1                	addi	a5,a5,20
    1010:	439c                	lw	a5,0(a5)
    1012:	fef42423          	sw	a5,-24(s0)
    1016:	fd842783          	lw	a5,-40(s0)
    101a:	8b85                	andi	a5,a5,1
    101c:	ef91                	bnez	a5,1038 <_min_stack+0x38>
    101e:	fdc42783          	lw	a5,-36(s0)
    1022:	4705                	li	a4,1
    1024:	00f717b3          	sll	a5,a4,a5
    1028:	fff7c793          	not	a5,a5
    102c:	fec42703          	lw	a4,-20(s0)
    1030:	8ff9                	and	a5,a5,a4
    1032:	fef42623          	sw	a5,-20(s0)
    1036:	a819                	j	104c <_min_stack+0x4c>
    1038:	fdc42783          	lw	a5,-36(s0)
    103c:	4705                	li	a4,1
    103e:	00f717b3          	sll	a5,a4,a5
    1042:	fec42703          	lw	a4,-20(s0)
    1046:	8fd9                	or	a5,a5,a4
    1048:	fef42623          	sw	a5,-20(s0)
    104c:	fd842783          	lw	a5,-40(s0)
    1050:	8b89                	andi	a5,a5,2
    1052:	ef91                	bnez	a5,106e <_min_stack+0x6e>
    1054:	fdc42783          	lw	a5,-36(s0)
    1058:	4705                	li	a4,1
    105a:	00f717b3          	sll	a5,a4,a5
    105e:	fff7c793          	not	a5,a5
    1062:	fe842703          	lw	a4,-24(s0)
    1066:	8ff9                	and	a5,a5,a4
    1068:	fef42423          	sw	a5,-24(s0)
    106c:	a819                	j	1082 <_min_stack+0x82>
    106e:	fdc42783          	lw	a5,-36(s0)
    1072:	4705                	li	a4,1
    1074:	00f717b3          	sll	a5,a4,a5
    1078:	fe842703          	lw	a4,-24(s0)
    107c:	8fd9                	or	a5,a5,a4
    107e:	fef42423          	sw	a5,-24(s0)
    1082:	1a1017b7          	lui	a5,0x1a101
    1086:	07c1                	addi	a5,a5,16
    1088:	fec42703          	lw	a4,-20(s0)
    108c:	c398                	sw	a4,0(a5)
    108e:	1a1017b7          	lui	a5,0x1a101
    1092:	07d1                	addi	a5,a5,20
    1094:	fe842703          	lw	a4,-24(s0)
    1098:	c398                	sw	a4,0(a5)
    109a:	0001                	nop
    109c:	5432                	lw	s0,44(sp)
    109e:	6145                	addi	sp,sp,48
    10a0:	8082                	ret

000010a2 <get_gpio_irq_status>:
    10a2:	1141                	addi	sp,sp,-16
    10a4:	c622                	sw	s0,12(sp)
    10a6:	0800                	addi	s0,sp,16
    10a8:	1a1017b7          	lui	a5,0x1a101
    10ac:	07e1                	addi	a5,a5,24
    10ae:	439c                	lw	a5,0(a5)
    10b0:	853e                	mv	a0,a5
    10b2:	4432                	lw	s0,12(sp)
    10b4:	0141                	addi	sp,sp,16
    10b6:	8082                	ret

000010b8 <spi_setup_slave>:
    10b8:	1141                	addi	sp,sp,-16
    10ba:	c606                	sw	ra,12(sp)
    10bc:	c422                	sw	s0,8(sp)
    10be:	0800                	addi	s0,sp,16
    10c0:	4581                	li	a1,0
    10c2:	4511                	li	a0,4
    10c4:	3b21                	jal	ddc <set_pin_function>
    10c6:	4581                	li	a1,0
    10c8:	4515                	li	a0,5
    10ca:	3b09                	jal	ddc <set_pin_function>
    10cc:	4581                	li	a1,0
    10ce:	4519                	li	a0,6
    10d0:	3331                	jal	ddc <set_pin_function>
    10d2:	4581                	li	a1,0
    10d4:	451d                	li	a0,7
    10d6:	3319                	jal	ddc <set_pin_function>
    10d8:	4581                	li	a1,0
    10da:	450d                	li	a0,3
    10dc:	3301                	jal	ddc <set_pin_function>
    10de:	0001                	nop
    10e0:	40b2                	lw	ra,12(sp)
    10e2:	4422                	lw	s0,8(sp)
    10e4:	0141                	addi	sp,sp,16
    10e6:	8082                	ret

000010e8 <spi_setup_master>:
    10e8:	1101                	addi	sp,sp,-32
    10ea:	ce06                	sw	ra,28(sp)
    10ec:	cc22                	sw	s0,24(sp)
    10ee:	1000                	addi	s0,sp,32
    10f0:	fea42623          	sw	a0,-20(s0)
    10f4:	4581                	li	a1,0
    10f6:	453d                	li	a0,15
    10f8:	31d5                	jal	ddc <set_pin_function>
    10fa:	4581                	li	a1,0
    10fc:	4539                	li	a0,14
    10fe:	39f9                	jal	ddc <set_pin_function>
    1100:	4581                	li	a1,0
    1102:	4535                	li	a0,13
    1104:	39e1                	jal	ddc <set_pin_function>
    1106:	4581                	li	a1,0
    1108:	4531                	li	a0,12
    110a:	39c9                	jal	ddc <set_pin_function>
    110c:	fec42783          	lw	a5,-20(s0)
    1110:	00f05563          	blez	a5,111a <spi_setup_master+0x32>
    1114:	4581                	li	a1,0
    1116:	4541                	li	a0,16
    1118:	31d1                	jal	ddc <set_pin_function>
    111a:	fec42703          	lw	a4,-20(s0)
    111e:	4785                	li	a5,1
    1120:	00e7d563          	bge	a5,a4,112a <spi_setup_master+0x42>
    1124:	4581                	li	a1,0
    1126:	452d                	li	a0,11
    1128:	3955                	jal	ddc <set_pin_function>
    112a:	fec42703          	lw	a4,-20(s0)
    112e:	4789                	li	a5,2
    1130:	00e7d563          	bge	a5,a4,113a <spi_setup_master+0x52>
    1134:	4581                	li	a1,0
    1136:	4501                	li	a0,0
    1138:	3155                	jal	ddc <set_pin_function>
    113a:	fec42703          	lw	a4,-20(s0)
    113e:	478d                	li	a5,3
    1140:	00e7d563          	bge	a5,a4,114a <spi_setup_master+0x62>
    1144:	4581                	li	a1,0
    1146:	4505                	li	a0,1
    1148:	3951                	jal	ddc <set_pin_function>
    114a:	0001                	nop
    114c:	40f2                	lw	ra,28(sp)
    114e:	4462                	lw	s0,24(sp)
    1150:	6105                	addi	sp,sp,32
    1152:	8082                	ret

00001154 <spi_setup_cmd_addr>:
    1154:	7179                	addi	sp,sp,-48
    1156:	d622                	sw	s0,44(sp)
    1158:	1800                	addi	s0,sp,48
    115a:	fca42e23          	sw	a0,-36(s0)
    115e:	fcb42c23          	sw	a1,-40(s0)
    1162:	fcc42a23          	sw	a2,-44(s0)
    1166:	fcd42823          	sw	a3,-48(s0)
    116a:	02000713          	li	a4,32
    116e:	fd842783          	lw	a5,-40(s0)
    1172:	40f707b3          	sub	a5,a4,a5
    1176:	fdc42703          	lw	a4,-36(s0)
    117a:	00f717b3          	sll	a5,a4,a5
    117e:	fef42623          	sw	a5,-20(s0)
    1182:	1a1027b7          	lui	a5,0x1a102
    1186:	07a1                	addi	a5,a5,8
    1188:	fec42703          	lw	a4,-20(s0)
    118c:	c398                	sw	a4,0(a5)
    118e:	1a1027b7          	lui	a5,0x1a102
    1192:	07b1                	addi	a5,a5,12
    1194:	fd442703          	lw	a4,-44(s0)
    1198:	c398                	sw	a4,0(a5)
    119a:	fd842783          	lw	a5,-40(s0)
    119e:	03f7f693          	andi	a3,a5,63
    11a2:	fd042783          	lw	a5,-48(s0)
    11a6:	00879713          	slli	a4,a5,0x8
    11aa:	6791                	lui	a5,0x4
    11ac:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1848>
    11b0:	8f7d                	and	a4,a4,a5
    11b2:	1a1027b7          	lui	a5,0x1a102
    11b6:	07c1                	addi	a5,a5,16
    11b8:	8f55                	or	a4,a4,a3
    11ba:	c398                	sw	a4,0(a5)
    11bc:	0001                	nop
    11be:	5432                	lw	s0,44(sp)
    11c0:	6145                	addi	sp,sp,48
    11c2:	8082                	ret

000011c4 <spi_setup_dummy>:
    11c4:	1101                	addi	sp,sp,-32
    11c6:	ce22                	sw	s0,28(sp)
    11c8:	1000                	addi	s0,sp,32
    11ca:	fea42623          	sw	a0,-20(s0)
    11ce:	feb42423          	sw	a1,-24(s0)
    11d2:	fe842783          	lw	a5,-24(s0)
    11d6:	07c2                	slli	a5,a5,0x10
    11d8:	86be                	mv	a3,a5
    11da:	fec42703          	lw	a4,-20(s0)
    11de:	67c1                	lui	a5,0x10
    11e0:	17fd                	addi	a5,a5,-1
    11e2:	8ff9                	and	a5,a5,a4
    11e4:	00f6e733          	or	a4,a3,a5
    11e8:	1a1027b7          	lui	a5,0x1a102
    11ec:	07d1                	addi	a5,a5,20
    11ee:	c398                	sw	a4,0(a5)
    11f0:	0001                	nop
    11f2:	4472                	lw	s0,28(sp)
    11f4:	6105                	addi	sp,sp,32
    11f6:	8082                	ret

000011f8 <spi_set_datalen>:
    11f8:	7179                	addi	sp,sp,-48
    11fa:	d622                	sw	s0,44(sp)
    11fc:	1800                	addi	s0,sp,48
    11fe:	fca42e23          	sw	a0,-36(s0)
    1202:	1a1027b7          	lui	a5,0x1a102
    1206:	07c1                	addi	a5,a5,16
    1208:	439c                	lw	a5,0(a5)
    120a:	fef42623          	sw	a5,-20(s0)
    120e:	fdc42783          	lw	a5,-36(s0)
    1212:	07c2                	slli	a5,a5,0x10
    1214:	873e                	mv	a4,a5
    1216:	fec42783          	lw	a5,-20(s0)
    121a:	86be                	mv	a3,a5
    121c:	67c1                	lui	a5,0x10
    121e:	17fd                	addi	a5,a5,-1
    1220:	8ff5                	and	a5,a5,a3
    1222:	8fd9                	or	a5,a5,a4
    1224:	fef42623          	sw	a5,-20(s0)
    1228:	1a1027b7          	lui	a5,0x1a102
    122c:	07c1                	addi	a5,a5,16
    122e:	fec42703          	lw	a4,-20(s0)
    1232:	c398                	sw	a4,0(a5)
    1234:	0001                	nop
    1236:	5432                	lw	s0,44(sp)
    1238:	6145                	addi	sp,sp,48
    123a:	8082                	ret

0000123c <spi_start_transaction>:
    123c:	1101                	addi	sp,sp,-32
    123e:	ce22                	sw	s0,28(sp)
    1240:	1000                	addi	s0,sp,32
    1242:	fea42623          	sw	a0,-20(s0)
    1246:	feb42423          	sw	a1,-24(s0)
    124a:	fe842783          	lw	a5,-24(s0)
    124e:	07a1                	addi	a5,a5,8
    1250:	4705                	li	a4,1
    1252:	00f71733          	sll	a4,a4,a5
    1256:	6785                	lui	a5,0x1
    1258:	f0078793          	addi	a5,a5,-256 # f00 <set_gpio_pin_value+0x8>
    125c:	00f776b3          	and	a3,a4,a5
    1260:	fec42783          	lw	a5,-20(s0)
    1264:	4705                	li	a4,1
    1266:	00f717b3          	sll	a5,a4,a5
    126a:	0ff7f713          	andi	a4,a5,255
    126e:	1a1027b7          	lui	a5,0x1a102
    1272:	8f55                	or	a4,a4,a3
    1274:	c398                	sw	a4,0(a5)
    1276:	0001                	nop
    1278:	4472                	lw	s0,28(sp)
    127a:	6105                	addi	sp,sp,32
    127c:	8082                	ret

0000127e <spi_get_status>:
    127e:	1101                	addi	sp,sp,-32
    1280:	ce22                	sw	s0,28(sp)
    1282:	1000                	addi	s0,sp,32
    1284:	1a1027b7          	lui	a5,0x1a102
    1288:	439c                	lw	a5,0(a5)
    128a:	fef42623          	sw	a5,-20(s0)
    128e:	fec42783          	lw	a5,-20(s0)
    1292:	853e                	mv	a0,a5
    1294:	4472                	lw	s0,28(sp)
    1296:	6105                	addi	sp,sp,32
    1298:	8082                	ret

0000129a <spi_write_fifo>:
    129a:	7179                	addi	sp,sp,-48
    129c:	d622                	sw	s0,44(sp)
    129e:	1800                	addi	s0,sp,48
    12a0:	fca42e23          	sw	a0,-36(s0)
    12a4:	fcb42c23          	sw	a1,-40(s0)
    12a8:	fd842783          	lw	a5,-40(s0)
    12ac:	8795                	srai	a5,a5,0x5
    12ae:	7ff7f793          	andi	a5,a5,2047
    12b2:	fef42623          	sw	a5,-20(s0)
    12b6:	fd842783          	lw	a5,-40(s0)
    12ba:	8bfd                	andi	a5,a5,31
    12bc:	c791                	beqz	a5,12c8 <spi_write_fifo+0x2e>
    12be:	fec42783          	lw	a5,-20(s0)
    12c2:	0785                	addi	a5,a5,1
    12c4:	fef42623          	sw	a5,-20(s0)
    12c8:	fe042423          	sw	zero,-24(s0)
    12cc:	a80d                	j	12fe <spi_write_fifo+0x64>
    12ce:	0001                	nop
    12d0:	1a1027b7          	lui	a5,0x1a102
    12d4:	439c                	lw	a5,0(a5)
    12d6:	87e1                	srai	a5,a5,0x18
    12d8:	0f87f793          	andi	a5,a5,248
    12dc:	fbf5                	bnez	a5,12d0 <spi_write_fifo+0x36>
    12de:	fe842783          	lw	a5,-24(s0)
    12e2:	078a                	slli	a5,a5,0x2
    12e4:	fdc42703          	lw	a4,-36(s0)
    12e8:	973e                	add	a4,a4,a5
    12ea:	1a1027b7          	lui	a5,0x1a102
    12ee:	07e1                	addi	a5,a5,24
    12f0:	4318                	lw	a4,0(a4)
    12f2:	c398                	sw	a4,0(a5)
    12f4:	fe842783          	lw	a5,-24(s0)
    12f8:	0785                	addi	a5,a5,1
    12fa:	fef42423          	sw	a5,-24(s0)
    12fe:	fe842703          	lw	a4,-24(s0)
    1302:	fec42783          	lw	a5,-20(s0)
    1306:	fcf744e3          	blt	a4,a5,12ce <spi_write_fifo+0x34>
    130a:	0001                	nop
    130c:	0001                	nop
    130e:	5432                	lw	s0,44(sp)
    1310:	6145                	addi	sp,sp,48
    1312:	8082                	ret

00001314 <spi_read_fifo>:
    1314:	7179                	addi	sp,sp,-48
    1316:	d622                	sw	s0,44(sp)
    1318:	1800                	addi	s0,sp,48
    131a:	fca42e23          	sw	a0,-36(s0)
    131e:	fcb42c23          	sw	a1,-40(s0)
    1322:	fd842783          	lw	a5,-40(s0)
    1326:	8795                	srai	a5,a5,0x5
    1328:	7ff7f793          	andi	a5,a5,2047
    132c:	fef42623          	sw	a5,-20(s0)
    1330:	fd842783          	lw	a5,-40(s0)
    1334:	8bfd                	andi	a5,a5,31
    1336:	c791                	beqz	a5,1342 <spi_read_fifo+0x2e>
    1338:	fec42783          	lw	a5,-20(s0)
    133c:	0785                	addi	a5,a5,1
    133e:	fef42623          	sw	a5,-20(s0)
    1342:	fe042423          	sw	zero,-24(s0)
    1346:	a815                	j	137a <spi_read_fifo+0x66>
    1348:	0001                	nop
    134a:	1a1027b7          	lui	a5,0x1a102
    134e:	439c                	lw	a5,0(a5)
    1350:	87c1                	srai	a5,a5,0x10
    1352:	0ff7f793          	andi	a5,a5,255
    1356:	dbf5                	beqz	a5,134a <spi_read_fifo+0x36>
    1358:	1a1027b7          	lui	a5,0x1a102
    135c:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    1360:	fe842783          	lw	a5,-24(s0)
    1364:	078a                	slli	a5,a5,0x2
    1366:	fdc42683          	lw	a3,-36(s0)
    136a:	97b6                	add	a5,a5,a3
    136c:	4318                	lw	a4,0(a4)
    136e:	c398                	sw	a4,0(a5)
    1370:	fe842783          	lw	a5,-24(s0)
    1374:	0785                	addi	a5,a5,1
    1376:	fef42423          	sw	a5,-24(s0)
    137a:	fe842703          	lw	a4,-24(s0)
    137e:	fec42783          	lw	a5,-20(s0)
    1382:	fcf743e3          	blt	a4,a5,1348 <spi_read_fifo+0x34>
    1386:	0001                	nop
    1388:	0001                	nop
    138a:	5432                	lw	s0,44(sp)
    138c:	6145                	addi	sp,sp,48
    138e:	8082                	ret

00001390 <default_exception_handler_c>:
    1390:	1141                	addi	sp,sp,-16
    1392:	c622                	sw	s0,12(sp)
    1394:	0800                	addi	s0,sp,16
    1396:	a001                	j	1396 <default_exception_handler_c+0x6>

00001398 <illegal_insn_handler_c>:
    1398:	1141                	addi	sp,sp,-16
    139a:	c622                	sw	s0,12(sp)
    139c:	0800                	addi	s0,sp,16
    139e:	a001                	j	139e <illegal_insn_handler_c+0x6>

000013a0 <ecall_insn_handler_c>:
    13a0:	1141                	addi	sp,sp,-16
    13a2:	c622                	sw	s0,12(sp)
    13a4:	0800                	addi	s0,sp,16
    13a6:	a001                	j	13a6 <ecall_insn_handler_c+0x6>

000013a8 <ISR_SRAM>:
    13a8:	1141                	addi	sp,sp,-16
    13aa:	c622                	sw	s0,12(sp)
    13ac:	0800                	addi	s0,sp,16
    13ae:	a001                	j	13ae <ISR_SRAM+0x6>

000013b0 <ISR_I2C>:
    13b0:	1141                	addi	sp,sp,-16
    13b2:	c622                	sw	s0,12(sp)
    13b4:	0800                	addi	s0,sp,16
    13b6:	a001                	j	13b6 <ISR_I2C+0x6>

000013b8 <ISR_UART>:
    13b8:	1141                	addi	sp,sp,-16
    13ba:	c622                	sw	s0,12(sp)
    13bc:	0800                	addi	s0,sp,16
    13be:	a001                	j	13be <ISR_UART+0x6>

000013c0 <ISR_GPIO>:
    13c0:	1141                	addi	sp,sp,-16
    13c2:	c622                	sw	s0,12(sp)
    13c4:	0800                	addi	s0,sp,16
    13c6:	a001                	j	13c6 <ISR_GPIO+0x6>

000013c8 <ISR_SPIM0>:
    13c8:	1141                	addi	sp,sp,-16
    13ca:	c622                	sw	s0,12(sp)
    13cc:	0800                	addi	s0,sp,16
    13ce:	a001                	j	13ce <ISR_SPIM0+0x6>

000013d0 <ISR_SPIM1>:
    13d0:	1141                	addi	sp,sp,-16
    13d2:	c622                	sw	s0,12(sp)
    13d4:	0800                	addi	s0,sp,16
    13d6:	a001                	j	13d6 <ISR_SPIM1+0x6>

000013d8 <ISR_TA_OVF>:
    13d8:	1141                	addi	sp,sp,-16
    13da:	c622                	sw	s0,12(sp)
    13dc:	0800                	addi	s0,sp,16
    13de:	a001                	j	13de <ISR_TA_OVF+0x6>
    13e0:	1141                	addi	sp,sp,-16
    13e2:	c622                	sw	s0,12(sp)
    13e4:	0800                	addi	s0,sp,16
    13e6:	a001                	j	13e6 <ISR_TA_OVF+0xe>

000013e8 <ISR_TB_OVF>:
    13e8:	1141                	addi	sp,sp,-16
    13ea:	c622                	sw	s0,12(sp)
    13ec:	0800                	addi	s0,sp,16
    13ee:	a001                	j	13ee <ISR_TB_OVF+0x6>

000013f0 <ISR_TB_CMP>:
    13f0:	1141                	addi	sp,sp,-16
    13f2:	c622                	sw	s0,12(sp)
    13f4:	0800                	addi	s0,sp,16
    13f6:	a001                	j	13f6 <ISR_TB_CMP+0x6>

000013f8 <uart_set_cfg>:
    13f8:	1101                	addi	sp,sp,-32
    13fa:	ce22                	sw	s0,28(sp)
    13fc:	1000                	addi	s0,sp,32
    13fe:	fea42623          	sw	a0,-20(s0)
    1402:	87ae                	mv	a5,a1
    1404:	fef41523          	sh	a5,-22(s0)
    1408:	1a1077b7          	lui	a5,0x1a107
    140c:	0791                	addi	a5,a5,4
    140e:	4398                	lw	a4,0(a5)
    1410:	1a1077b7          	lui	a5,0x1a107
    1414:	0791                	addi	a5,a5,4
    1416:	00276713          	ori	a4,a4,2
    141a:	c398                	sw	a4,0(a5)
    141c:	1a1007b7          	lui	a5,0x1a100
    1420:	07b1                	addi	a5,a5,12
    1422:	08300713          	li	a4,131
    1426:	c398                	sw	a4,0(a5)
    1428:	fea45783          	lhu	a5,-22(s0)
    142c:	83a1                	srli	a5,a5,0x8
    142e:	07c2                	slli	a5,a5,0x10
    1430:	83c1                	srli	a5,a5,0x10
    1432:	873e                	mv	a4,a5
    1434:	1a1007b7          	lui	a5,0x1a100
    1438:	0791                	addi	a5,a5,4
    143a:	0ff77713          	andi	a4,a4,255
    143e:	c398                	sw	a4,0(a5)
    1440:	fea45703          	lhu	a4,-22(s0)
    1444:	1a1007b7          	lui	a5,0x1a100
    1448:	0ff77713          	andi	a4,a4,255
    144c:	c398                	sw	a4,0(a5)
    144e:	1a1007b7          	lui	a5,0x1a100
    1452:	07a1                	addi	a5,a5,8
    1454:	0a700713          	li	a4,167
    1458:	c398                	sw	a4,0(a5)
    145a:	1a1007b7          	lui	a5,0x1a100
    145e:	07b1                	addi	a5,a5,12
    1460:	470d                	li	a4,3
    1462:	c398                	sw	a4,0(a5)
    1464:	1a1007b7          	lui	a5,0x1a100
    1468:	0791                	addi	a5,a5,4
    146a:	439c                	lw	a5,0(a5)
    146c:	0f07f713          	andi	a4,a5,240
    1470:	1a1007b7          	lui	a5,0x1a100
    1474:	0791                	addi	a5,a5,4
    1476:	00276713          	ori	a4,a4,2
    147a:	c398                	sw	a4,0(a5)
    147c:	0001                	nop
    147e:	4472                	lw	s0,28(sp)
    1480:	6105                	addi	sp,sp,32
    1482:	8082                	ret

00001484 <uart_send>:
    1484:	7179                	addi	sp,sp,-48
    1486:	d622                	sw	s0,44(sp)
    1488:	1800                	addi	s0,sp,48
    148a:	fca42e23          	sw	a0,-36(s0)
    148e:	fcb42c23          	sw	a1,-40(s0)
    1492:	a891                	j	14e6 <uart_send+0x62>
    1494:	0001                	nop
    1496:	1a1007b7          	lui	a5,0x1a100
    149a:	07d1                	addi	a5,a5,20
    149c:	439c                	lw	a5,0(a5)
    149e:	0207f793          	andi	a5,a5,32
    14a2:	dbf5                	beqz	a5,1496 <uart_send+0x12>
    14a4:	fe042623          	sw	zero,-20(s0)
    14a8:	a035                	j	14d4 <uart_send+0x50>
    14aa:	fdc42783          	lw	a5,-36(s0)
    14ae:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14b2:	fce42e23          	sw	a4,-36(s0)
    14b6:	0007c703          	lbu	a4,0(a5)
    14ba:	1a1007b7          	lui	a5,0x1a100
    14be:	c398                	sw	a4,0(a5)
    14c0:	fd842783          	lw	a5,-40(s0)
    14c4:	17fd                	addi	a5,a5,-1
    14c6:	fcf42c23          	sw	a5,-40(s0)
    14ca:	fec42783          	lw	a5,-20(s0)
    14ce:	0785                	addi	a5,a5,1
    14d0:	fef42623          	sw	a5,-20(s0)
    14d4:	fec42703          	lw	a4,-20(s0)
    14d8:	03f00793          	li	a5,63
    14dc:	00e7e563          	bltu	a5,a4,14e6 <uart_send+0x62>
    14e0:	fd842783          	lw	a5,-40(s0)
    14e4:	f3f9                	bnez	a5,14aa <uart_send+0x26>
    14e6:	fd842783          	lw	a5,-40(s0)
    14ea:	f7cd                	bnez	a5,1494 <uart_send+0x10>
    14ec:	0001                	nop
    14ee:	0001                	nop
    14f0:	5432                	lw	s0,44(sp)
    14f2:	6145                	addi	sp,sp,48
    14f4:	8082                	ret

000014f6 <uart_getchar>:
    14f6:	1141                	addi	sp,sp,-16
    14f8:	c622                	sw	s0,12(sp)
    14fa:	0800                	addi	s0,sp,16
    14fc:	0001                	nop
    14fe:	1a1007b7          	lui	a5,0x1a100
    1502:	07d1                	addi	a5,a5,20
    1504:	439c                	lw	a5,0(a5)
    1506:	0017f713          	andi	a4,a5,1
    150a:	4785                	li	a5,1
    150c:	fef719e3          	bne	a4,a5,14fe <uart_getchar+0x8>
    1510:	1a1007b7          	lui	a5,0x1a100
    1514:	439c                	lw	a5,0(a5)
    1516:	0ff7f793          	andi	a5,a5,255
    151a:	853e                	mv	a0,a5
    151c:	4432                	lw	s0,12(sp)
    151e:	0141                	addi	sp,sp,16
    1520:	8082                	ret

00001522 <uart_sendchar>:
    1522:	1101                	addi	sp,sp,-32
    1524:	ce22                	sw	s0,28(sp)
    1526:	1000                	addi	s0,sp,32
    1528:	87aa                	mv	a5,a0
    152a:	fef407a3          	sb	a5,-17(s0)
    152e:	0001                	nop
    1530:	1a1007b7          	lui	a5,0x1a100
    1534:	07d1                	addi	a5,a5,20
    1536:	439c                	lw	a5,0(a5)
    1538:	0207f793          	andi	a5,a5,32
    153c:	dbf5                	beqz	a5,1530 <uart_sendchar+0xe>
    153e:	1a1007b7          	lui	a5,0x1a100
    1542:	fef44703          	lbu	a4,-17(s0)
    1546:	c398                	sw	a4,0(a5)
    1548:	0001                	nop
    154a:	4472                	lw	s0,28(sp)
    154c:	6105                	addi	sp,sp,32
    154e:	8082                	ret

00001550 <uart_wait_tx_done>:
    1550:	1141                	addi	sp,sp,-16
    1552:	c622                	sw	s0,12(sp)
    1554:	0800                	addi	s0,sp,16
    1556:	0001                	nop
    1558:	1a1007b7          	lui	a5,0x1a100
    155c:	07d1                	addi	a5,a5,20
    155e:	439c                	lw	a5,0(a5)
    1560:	0407f793          	andi	a5,a5,64
    1564:	dbf5                	beqz	a5,1558 <uart_wait_tx_done+0x8>
    1566:	0001                	nop
    1568:	0001                	nop
    156a:	4432                	lw	s0,12(sp)
    156c:	0141                	addi	sp,sp,16
    156e:	8082                	ret

00001570 <uart_mysendstring>:
    1570:	7179                	addi	sp,sp,-48
    1572:	d606                	sw	ra,44(sp)
    1574:	d422                	sw	s0,40(sp)
    1576:	1800                	addi	s0,sp,48
    1578:	fca42e23          	sw	a0,-36(s0)
    157c:	fe042623          	sw	zero,-20(s0)
    1580:	a839                	j	159e <uart_mysendstring+0x2e>
    1582:	fec42783          	lw	a5,-20(s0)
    1586:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    158a:	fee42623          	sw	a4,-20(s0)
    158e:	873e                	mv	a4,a5
    1590:	fdc42783          	lw	a5,-36(s0)
    1594:	97ba                	add	a5,a5,a4
    1596:	0007c783          	lbu	a5,0(a5)
    159a:	853e                	mv	a0,a5
    159c:	3759                	jal	1522 <uart_sendchar>
    159e:	fec42783          	lw	a5,-20(s0)
    15a2:	17fd                	addi	a5,a5,-1
    15a4:	fdc42703          	lw	a4,-36(s0)
    15a8:	97ba                	add	a5,a5,a4
    15aa:	0007c703          	lbu	a4,0(a5)
    15ae:	47a9                	li	a5,10
    15b0:	00f70863          	beq	a4,a5,15c0 <uart_mysendstring+0x50>
    15b4:	fec42703          	lw	a4,-20(s0)
    15b8:	02700793          	li	a5,39
    15bc:	fce7d3e3          	bge	a5,a4,1582 <uart_mysendstring+0x12>
    15c0:	0001                	nop
    15c2:	50b2                	lw	ra,44(sp)
    15c4:	5422                	lw	s0,40(sp)
    15c6:	6145                	addi	sp,sp,48
    15c8:	8082                	ret

000015ca <uart_getstring>:
    15ca:	1101                	addi	sp,sp,-32
    15cc:	ce06                	sw	ra,28(sp)
    15ce:	cc22                	sw	s0,24(sp)
    15d0:	ca26                	sw	s1,20(sp)
    15d2:	1000                	addi	s0,sp,32
    15d4:	fea42623          	sw	a0,-20(s0)
    15d8:	0001                	nop
    15da:	fec42483          	lw	s1,-20(s0)
    15de:	00148793          	addi	a5,s1,1
    15e2:	fef42623          	sw	a5,-20(s0)
    15e6:	3f01                	jal	14f6 <uart_getchar>
    15e8:	87aa                	mv	a5,a0
    15ea:	00f48023          	sb	a5,0(s1)
    15ee:	0004c703          	lbu	a4,0(s1)
    15f2:	47a9                	li	a5,10
    15f4:	fef713e3          	bne	a4,a5,15da <uart_getstring+0x10>
    15f8:	fec42783          	lw	a5,-20(s0)
    15fc:	00078023          	sb	zero,0(a5)
    1600:	0001                	nop
    1602:	40f2                	lw	ra,28(sp)
    1604:	4462                	lw	s0,24(sp)
    1606:	44d2                	lw	s1,20(sp)
    1608:	6105                	addi	sp,sp,32
    160a:	8082                	ret

0000160c <__CTOR_LIST__>:
	...

00001614 <__CTOR_END__>:
	...

Disassembly of section .rodata:

0000161c <.rodata>:
    161c:	5f757063          	bgeu	a0,s7,1bfc <_bss_end+0x544>
    1620:	6570                	flw	fa2,76(a0)
    1622:	6672                	flw	fa2,28(sp)
    1624:	735f 7465 203a      	0x203a7465735f
    162a:	6f6e                	flw	ft10,216(sp)
    162c:	2074                	fld	fa3,192(s0)
    162e:	6d69                	lui	s10,0x1a
    1630:	6c70                	flw	fa2,92(s0)
    1632:	6d65                	lui	s10,0x19
    1634:	6e65                	lui	t3,0x19
    1636:	6574                	flw	fa3,76(a0)
    1638:	2064                	fld	fs1,192(s0)
    163a:	6579                	lui	a0,0x1e
    163c:	0074                	addi	a3,sp,12
    163e:	0000                	unimp
    1640:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1644:	6425                	lui	s0,0x9
    1646:	6e20                	flw	fs0,88(a2)
    1648:	7920746f          	jal	s0,8dda <_stack+0x6722>
    164c:	7465                	lui	s0,0xffff9
    164e:	7320                	flw	fs0,96(a4)
    1650:	7075                	c.lui	zero,0xffffd
    1652:	6f70                	flw	fa2,92(a4)
    1654:	7472                	flw	fs0,60(sp)
    1656:	6465                	lui	s0,0x19
    1658:	000a                	c.slli	zero,0x2
    165a:	0000                	unimp
    165c:	01c0                	addi	s0,sp,196
    165e:	0000                	unimp
    1660:	01ca                	slli	gp,gp,0x12
    1662:	0000                	unimp
    1664:	01d4                	addi	a3,sp,196
    1666:	0000                	unimp
    1668:	01de                	slli	gp,gp,0x17
    166a:	0000                	unimp
    166c:	01e8                	addi	a0,sp,204
    166e:	0000                	unimp
    1670:	01f2                	slli	gp,gp,0x1c
    1672:	0000                	unimp
    1674:	01fc                	addi	a5,sp,204
    1676:	0000                	unimp
    1678:	0206                	slli	tp,tp,0x1
    167a:	0000                	unimp
    167c:	0210                	addi	a2,sp,256
    167e:	0000                	unimp
    1680:	021a                	slli	tp,tp,0x6
    1682:	0000                	unimp
    1684:	0224                	addi	s1,sp,264
    1686:	0000                	unimp
    1688:	022e                	slli	tp,tp,0xb
    168a:	0000                	unimp
    168c:	0238                	addi	a4,sp,264
    168e:	0000                	unimp
    1690:	0242                	slli	tp,tp,0x10
    1692:	0000                	unimp
    1694:	024c                	addi	a1,sp,260
    1696:	0000                	unimp
    1698:	0256                	slli	tp,tp,0x15
    169a:	0000                	unimp
    169c:	6e28                	flw	fa0,88(a2)
    169e:	6c75                	lui	s8,0x1d
    16a0:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

000016a3 <.shbss>:
	...

Disassembly of section .data:

000016a4 <remu10_table>:
    16a4:	0100                	addi	s0,sp,128
    16a6:	0202                	c.slli64	tp
    16a8:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x16998>
    16ac:	0605                	addi	a2,a2,1
    16ae:	08080707          	0x8080707
    16b2:	0009                	c.nop	2

Disassembly of section .bss:

000016b4 <led_num>:
    16b4:	0000                	unimp
	...

Disassembly of section .stack:

000016b8 <_stack-0x1000>:
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

