
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
     180:	56878513          	addi	a0,a5,1384 # 1568 <__DTOR_END__+0x2>
     184:	181000ef          	jal	ra,b04 <puts>
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
     1b6:	5a878793          	addi	a5,a5,1448 # 15a8 <__DTOR_END__+0x42>
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
     266:	58c78513          	addi	a0,a5,1420 # 158c <__DTOR_END__+0x26>
     26a:	04b000ef          	jal	ra,ab4 <printf>
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
     2ae:	35670713          	addi	a4,a4,854 # 1600 <_bss_end>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	34e78793          	addi	a5,a5,846 # 1600 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	076010ef          	jal	ra,1342 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	136000ef          	jal	ra,40a <main>
     2d8:	842a                	mv	s0,a0
     2da:	1c0010ef          	jal	ra,149a <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0020106f          	j	12f2 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	7f70006f          	j	12fa <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	7eb0006f          	j	1302 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	7df0006f          	j	130a <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	7d30006f          	j	1312 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	7c70006f          	j	131a <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	7c30006f          	j	132a <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	7a70006f          	j	1322 <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	7ab0006f          	j	133a <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	78f0006f          	j	1332 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	72b0006f          	j	12e2 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	71f0006f          	j	12ea <ecall_insn_handler_c>

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

0000040a <main>:
     40a:	1101                	addi	sp,sp,-32
     40c:	ce06                	sw	ra,28(sp)
     40e:	cc22                	sw	s0,24(sp)
     410:	1000                	addi	s0,sp,32
     412:	fe042623          	sw	zero,-20(s0)
     416:	a005                	j	436 <main+0x2c>
     418:	4585                	li	a1,1
     41a:	fec42503          	lw	a0,-20(s0)
     41e:	193000ef          	jal	ra,db0 <set_gpio_pin_direction>
     422:	4585                	li	a1,1
     424:	fec42503          	lw	a0,-20(s0)
     428:	21b000ef          	jal	ra,e42 <set_gpio_pin_value>
     42c:	fec42783          	lw	a5,-20(s0)
     430:	0785                	addi	a5,a5,1
     432:	fef42623          	sw	a5,-20(s0)
     436:	fec42703          	lw	a4,-20(s0)
     43a:	479d                	li	a5,7
     43c:	fce7dee3          	bge	a5,a4,418 <main+0xe>
     440:	fe042423          	sw	zero,-24(s0)
     444:	fe842783          	lw	a5,-24(s0)
     448:	17fd                	addi	a5,a5,-1
     44a:	8b9d                	andi	a5,a5,7
     44c:	4585                	li	a1,1
     44e:	853e                	mv	a0,a5
     450:	1f3000ef          	jal	ra,e42 <set_gpio_pin_value>
     454:	fe842783          	lw	a5,-24(s0)
     458:	8b9d                	andi	a5,a5,7
     45a:	4581                	li	a1,0
     45c:	853e                	mv	a0,a5
     45e:	1e5000ef          	jal	ra,e42 <set_gpio_pin_value>
     462:	fe042223          	sw	zero,-28(s0)
     466:	a031                	j	472 <main+0x68>
     468:	fe442783          	lw	a5,-28(s0)
     46c:	0785                	addi	a5,a5,1
     46e:	fef42223          	sw	a5,-28(s0)
     472:	fe442703          	lw	a4,-28(s0)
     476:	000f47b7          	lui	a5,0xf4
     47a:	23f78793          	addi	a5,a5,575 # f423f <_stack+0xf1c3f>
     47e:	fee7d5e3          	bge	a5,a4,468 <main+0x5e>
     482:	fe842783          	lw	a5,-24(s0)
     486:	0785                	addi	a5,a5,1
     488:	fef42423          	sw	a5,-24(s0)
     48c:	bf65                	j	444 <main+0x3a>

0000048e <divu10>:
     48e:	7179                	addi	sp,sp,-48
     490:	d622                	sw	s0,44(sp)
     492:	1800                	addi	s0,sp,48
     494:	fca42e23          	sw	a0,-36(s0)
     498:	fdc42783          	lw	a5,-36(s0)
     49c:	0017d713          	srli	a4,a5,0x1
     4a0:	fdc42783          	lw	a5,-36(s0)
     4a4:	8389                	srli	a5,a5,0x2
     4a6:	97ba                	add	a5,a5,a4
     4a8:	fef42623          	sw	a5,-20(s0)
     4ac:	fec42783          	lw	a5,-20(s0)
     4b0:	8391                	srli	a5,a5,0x4
     4b2:	fec42703          	lw	a4,-20(s0)
     4b6:	97ba                	add	a5,a5,a4
     4b8:	fef42623          	sw	a5,-20(s0)
     4bc:	fec42783          	lw	a5,-20(s0)
     4c0:	83a1                	srli	a5,a5,0x8
     4c2:	fec42703          	lw	a4,-20(s0)
     4c6:	97ba                	add	a5,a5,a4
     4c8:	fef42623          	sw	a5,-20(s0)
     4cc:	fec42783          	lw	a5,-20(s0)
     4d0:	83c1                	srli	a5,a5,0x10
     4d2:	fec42703          	lw	a4,-20(s0)
     4d6:	97ba                	add	a5,a5,a4
     4d8:	fef42623          	sw	a5,-20(s0)
     4dc:	fec42783          	lw	a5,-20(s0)
     4e0:	838d                	srli	a5,a5,0x3
     4e2:	fef42623          	sw	a5,-20(s0)
     4e6:	fec42703          	lw	a4,-20(s0)
     4ea:	87ba                	mv	a5,a4
     4ec:	078a                	slli	a5,a5,0x2
     4ee:	97ba                	add	a5,a5,a4
     4f0:	0786                	slli	a5,a5,0x1
     4f2:	873e                	mv	a4,a5
     4f4:	fdc42783          	lw	a5,-36(s0)
     4f8:	8f99                	sub	a5,a5,a4
     4fa:	fef42423          	sw	a5,-24(s0)
     4fe:	fe842783          	lw	a5,-24(s0)
     502:	0799                	addi	a5,a5,6
     504:	0047d713          	srli	a4,a5,0x4
     508:	fec42783          	lw	a5,-20(s0)
     50c:	97ba                	add	a5,a5,a4
     50e:	853e                	mv	a0,a5
     510:	5432                	lw	s0,44(sp)
     512:	6145                	addi	sp,sp,48
     514:	8082                	ret

00000516 <remu10>:
     516:	1101                	addi	sp,sp,-32
     518:	ce22                	sw	s0,28(sp)
     51a:	1000                	addi	s0,sp,32
     51c:	fea42623          	sw	a0,-20(s0)
     520:	fec42703          	lw	a4,-20(s0)
     524:	1999a7b7          	lui	a5,0x1999a
     528:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     52c:	02f70733          	mul	a4,a4,a5
     530:	fec42783          	lw	a5,-20(s0)
     534:	8385                	srli	a5,a5,0x1
     536:	973e                	add	a4,a4,a5
     538:	fec42783          	lw	a5,-20(s0)
     53c:	838d                	srli	a5,a5,0x3
     53e:	97ba                	add	a5,a5,a4
     540:	83f1                	srli	a5,a5,0x1c
     542:	fef42623          	sw	a5,-20(s0)
     546:	6785                	lui	a5,0x1
     548:	5f078713          	addi	a4,a5,1520 # 15f0 <remu10_table>
     54c:	fec42783          	lw	a5,-20(s0)
     550:	97ba                	add	a5,a5,a4
     552:	0007c783          	lbu	a5,0(a5)
     556:	853e                	mv	a0,a5
     558:	4472                	lw	s0,28(sp)
     55a:	6105                	addi	sp,sp,32
     55c:	8082                	ret

0000055e <putchar>:
     55e:	1101                	addi	sp,sp,-32
     560:	ce06                	sw	ra,28(sp)
     562:	cc22                	sw	s0,24(sp)
     564:	1000                	addi	s0,sp,32
     566:	fea42623          	sw	a0,-20(s0)
     56a:	fec42783          	lw	a5,-20(s0)
     56e:	0ff7f793          	andi	a5,a5,255
     572:	853e                	mv	a0,a5
     574:	6f9000ef          	jal	ra,146c <uart_sendchar>
     578:	fec42783          	lw	a5,-20(s0)
     57c:	853e                	mv	a0,a5
     57e:	40f2                	lw	ra,28(sp)
     580:	4462                	lw	s0,24(sp)
     582:	6105                	addi	sp,sp,32
     584:	8082                	ret

00000586 <qprintchar>:
     586:	1101                	addi	sp,sp,-32
     588:	ce06                	sw	ra,28(sp)
     58a:	cc22                	sw	s0,24(sp)
     58c:	1000                	addi	s0,sp,32
     58e:	fea42623          	sw	a0,-20(s0)
     592:	feb42423          	sw	a1,-24(s0)
     596:	fec42783          	lw	a5,-20(s0)
     59a:	c39d                	beqz	a5,5c0 <qprintchar+0x3a>
     59c:	fec42783          	lw	a5,-20(s0)
     5a0:	439c                	lw	a5,0(a5)
     5a2:	fe842703          	lw	a4,-24(s0)
     5a6:	0ff77713          	andi	a4,a4,255
     5aa:	00e78023          	sb	a4,0(a5)
     5ae:	fec42783          	lw	a5,-20(s0)
     5b2:	439c                	lw	a5,0(a5)
     5b4:	00178713          	addi	a4,a5,1
     5b8:	fec42783          	lw	a5,-20(s0)
     5bc:	c398                	sw	a4,0(a5)
     5be:	a039                	j	5cc <qprintchar+0x46>
     5c0:	fe842783          	lw	a5,-24(s0)
     5c4:	0ff7f793          	andi	a5,a5,255
     5c8:	853e                	mv	a0,a5
     5ca:	3f51                	jal	55e <putchar>
     5cc:	0001                	nop
     5ce:	40f2                	lw	ra,28(sp)
     5d0:	4462                	lw	s0,24(sp)
     5d2:	6105                	addi	sp,sp,32
     5d4:	8082                	ret

000005d6 <qprints>:
     5d6:	7179                	addi	sp,sp,-48
     5d8:	d606                	sw	ra,44(sp)
     5da:	d422                	sw	s0,40(sp)
     5dc:	d226                	sw	s1,36(sp)
     5de:	d04a                	sw	s2,32(sp)
     5e0:	ce4e                	sw	s3,28(sp)
     5e2:	cc52                	sw	s4,24(sp)
     5e4:	1800                	addi	s0,sp,48
     5e6:	fca42e23          	sw	a0,-36(s0)
     5ea:	fcb42c23          	sw	a1,-40(s0)
     5ee:	fcc42a23          	sw	a2,-44(s0)
     5f2:	fcd42823          	sw	a3,-48(s0)
     5f6:	4481                	li	s1,0
     5f8:	02000a13          	li	s4,32
     5fc:	fd442783          	lw	a5,-44(s0)
     600:	02f05e63          	blez	a5,63c <qprints+0x66>
     604:	4901                	li	s2,0
     606:	fd842983          	lw	s3,-40(s0)
     60a:	a019                	j	610 <qprints+0x3a>
     60c:	0905                	addi	s2,s2,1
     60e:	0985                	addi	s3,s3,1
     610:	0009c783          	lbu	a5,0(s3)
     614:	ffe5                	bnez	a5,60c <qprints+0x36>
     616:	fd442783          	lw	a5,-44(s0)
     61a:	00f94563          	blt	s2,a5,624 <qprints+0x4e>
     61e:	fc042a23          	sw	zero,-44(s0)
     622:	a039                	j	630 <qprints+0x5a>
     624:	fd442783          	lw	a5,-44(s0)
     628:	412787b3          	sub	a5,a5,s2
     62c:	fcf42a23          	sw	a5,-44(s0)
     630:	fd042783          	lw	a5,-48(s0)
     634:	8b89                	andi	a5,a5,2
     636:	c399                	beqz	a5,63c <qprints+0x66>
     638:	03000a13          	li	s4,48
     63c:	fd042783          	lw	a5,-48(s0)
     640:	8b85                	andi	a5,a5,1
     642:	ef9d                	bnez	a5,680 <qprints+0xaa>
     644:	a819                	j	65a <qprints+0x84>
     646:	85d2                	mv	a1,s4
     648:	fdc42503          	lw	a0,-36(s0)
     64c:	3f2d                	jal	586 <qprintchar>
     64e:	0485                	addi	s1,s1,1
     650:	fd442783          	lw	a5,-44(s0)
     654:	17fd                	addi	a5,a5,-1
     656:	fcf42a23          	sw	a5,-44(s0)
     65a:	fd442783          	lw	a5,-44(s0)
     65e:	fef044e3          	bgtz	a5,646 <qprints+0x70>
     662:	a839                	j	680 <qprints+0xaa>
     664:	fd842783          	lw	a5,-40(s0)
     668:	0007c783          	lbu	a5,0(a5)
     66c:	85be                	mv	a1,a5
     66e:	fdc42503          	lw	a0,-36(s0)
     672:	3f11                	jal	586 <qprintchar>
     674:	0485                	addi	s1,s1,1
     676:	fd842783          	lw	a5,-40(s0)
     67a:	0785                	addi	a5,a5,1
     67c:	fcf42c23          	sw	a5,-40(s0)
     680:	fd842783          	lw	a5,-40(s0)
     684:	0007c783          	lbu	a5,0(a5)
     688:	fff1                	bnez	a5,664 <qprints+0x8e>
     68a:	a819                	j	6a0 <qprints+0xca>
     68c:	85d2                	mv	a1,s4
     68e:	fdc42503          	lw	a0,-36(s0)
     692:	3dd5                	jal	586 <qprintchar>
     694:	0485                	addi	s1,s1,1
     696:	fd442783          	lw	a5,-44(s0)
     69a:	17fd                	addi	a5,a5,-1
     69c:	fcf42a23          	sw	a5,-44(s0)
     6a0:	fd442783          	lw	a5,-44(s0)
     6a4:	fef044e3          	bgtz	a5,68c <qprints+0xb6>
     6a8:	87a6                	mv	a5,s1
     6aa:	853e                	mv	a0,a5
     6ac:	50b2                	lw	ra,44(sp)
     6ae:	5422                	lw	s0,40(sp)
     6b0:	5492                	lw	s1,36(sp)
     6b2:	5902                	lw	s2,32(sp)
     6b4:	49f2                	lw	s3,28(sp)
     6b6:	4a62                	lw	s4,24(sp)
     6b8:	6145                	addi	sp,sp,48
     6ba:	8082                	ret

000006bc <qprinti>:
     6bc:	7159                	addi	sp,sp,-112
     6be:	d686                	sw	ra,108(sp)
     6c0:	d4a2                	sw	s0,104(sp)
     6c2:	d2a6                	sw	s1,100(sp)
     6c4:	d0ca                	sw	s2,96(sp)
     6c6:	cece                	sw	s3,92(sp)
     6c8:	1880                	addi	s0,sp,112
     6ca:	faa42623          	sw	a0,-84(s0)
     6ce:	fab42423          	sw	a1,-88(s0)
     6d2:	fac42223          	sw	a2,-92(s0)
     6d6:	fad42023          	sw	a3,-96(s0)
     6da:	f8e42e23          	sw	a4,-100(s0)
     6de:	f8f42c23          	sw	a5,-104(s0)
     6e2:	87c2                	mv	a5,a6
     6e4:	f8f40ba3          	sb	a5,-105(s0)
     6e8:	4981                	li	s3,0
     6ea:	4901                	li	s2,0
     6ec:	fa842783          	lw	a5,-88(s0)
     6f0:	fcf42e23          	sw	a5,-36(s0)
     6f4:	fa842783          	lw	a5,-88(s0)
     6f8:	e39d                	bnez	a5,71e <qprinti+0x62>
     6fa:	03000793          	li	a5,48
     6fe:	faf40c23          	sb	a5,-72(s0)
     702:	fa040ca3          	sb	zero,-71(s0)
     706:	fb840793          	addi	a5,s0,-72
     70a:	f9842683          	lw	a3,-104(s0)
     70e:	f9c42603          	lw	a2,-100(s0)
     712:	85be                	mv	a1,a5
     714:	fac42503          	lw	a0,-84(s0)
     718:	3d7d                	jal	5d6 <qprints>
     71a:	87aa                	mv	a5,a0
     71c:	a8fd                	j	81a <qprinti+0x15e>
     71e:	fa042783          	lw	a5,-96(s0)
     722:	c38d                	beqz	a5,744 <qprinti+0x88>
     724:	fa442703          	lw	a4,-92(s0)
     728:	47a9                	li	a5,10
     72a:	00f71d63          	bne	a4,a5,744 <qprinti+0x88>
     72e:	fa842783          	lw	a5,-88(s0)
     732:	0007d963          	bgez	a5,744 <qprinti+0x88>
     736:	4985                	li	s3,1
     738:	fa842783          	lw	a5,-88(s0)
     73c:	40f007b3          	neg	a5,a5
     740:	fcf42e23          	sw	a5,-36(s0)
     744:	fb840493          	addi	s1,s0,-72
     748:	04fd                	addi	s1,s1,31
     74a:	00048023          	sb	zero,0(s1)
     74e:	fa442703          	lw	a4,-92(s0)
     752:	47c1                	li	a5,16
     754:	06f71c63          	bne	a4,a5,7cc <qprinti+0x110>
     758:	a0a1                	j	7a0 <qprinti+0xe4>
     75a:	fdc42783          	lw	a5,-36(s0)
     75e:	8bbd                	andi	a5,a5,15
     760:	fcf42c23          	sw	a5,-40(s0)
     764:	fd842703          	lw	a4,-40(s0)
     768:	47a5                	li	a5,9
     76a:	00e7db63          	bge	a5,a4,780 <qprinti+0xc4>
     76e:	f9744783          	lbu	a5,-105(s0)
     772:	fc678793          	addi	a5,a5,-58
     776:	fd842703          	lw	a4,-40(s0)
     77a:	97ba                	add	a5,a5,a4
     77c:	fcf42c23          	sw	a5,-40(s0)
     780:	fd842783          	lw	a5,-40(s0)
     784:	0ff7f793          	andi	a5,a5,255
     788:	14fd                	addi	s1,s1,-1
     78a:	03078793          	addi	a5,a5,48
     78e:	0ff7f793          	andi	a5,a5,255
     792:	00f48023          	sb	a5,0(s1)
     796:	fdc42783          	lw	a5,-36(s0)
     79a:	8391                	srli	a5,a5,0x4
     79c:	fcf42e23          	sw	a5,-36(s0)
     7a0:	fdc42783          	lw	a5,-36(s0)
     7a4:	fbdd                	bnez	a5,75a <qprinti+0x9e>
     7a6:	a035                	j	7d2 <qprinti+0x116>
     7a8:	fdc42503          	lw	a0,-36(s0)
     7ac:	33ad                	jal	516 <remu10>
     7ae:	87aa                	mv	a5,a0
     7b0:	0ff7f793          	andi	a5,a5,255
     7b4:	14fd                	addi	s1,s1,-1
     7b6:	03078793          	addi	a5,a5,48
     7ba:	0ff7f793          	andi	a5,a5,255
     7be:	00f48023          	sb	a5,0(s1)
     7c2:	fdc42503          	lw	a0,-36(s0)
     7c6:	31e1                	jal	48e <divu10>
     7c8:	fca42e23          	sw	a0,-36(s0)
     7cc:	fdc42783          	lw	a5,-36(s0)
     7d0:	ffe1                	bnez	a5,7a8 <qprinti+0xec>
     7d2:	02098a63          	beqz	s3,806 <qprinti+0x14a>
     7d6:	f9c42783          	lw	a5,-100(s0)
     7da:	c38d                	beqz	a5,7fc <qprinti+0x140>
     7dc:	f9842783          	lw	a5,-104(s0)
     7e0:	8b89                	andi	a5,a5,2
     7e2:	cf89                	beqz	a5,7fc <qprinti+0x140>
     7e4:	02d00593          	li	a1,45
     7e8:	fac42503          	lw	a0,-84(s0)
     7ec:	3b69                	jal	586 <qprintchar>
     7ee:	0905                	addi	s2,s2,1
     7f0:	f9c42783          	lw	a5,-100(s0)
     7f4:	17fd                	addi	a5,a5,-1
     7f6:	f8f42e23          	sw	a5,-100(s0)
     7fa:	a031                	j	806 <qprinti+0x14a>
     7fc:	14fd                	addi	s1,s1,-1
     7fe:	02d00793          	li	a5,45
     802:	00f48023          	sb	a5,0(s1)
     806:	f9842683          	lw	a3,-104(s0)
     80a:	f9c42603          	lw	a2,-100(s0)
     80e:	85a6                	mv	a1,s1
     810:	fac42503          	lw	a0,-84(s0)
     814:	33c9                	jal	5d6 <qprints>
     816:	87aa                	mv	a5,a0
     818:	97ca                	add	a5,a5,s2
     81a:	853e                	mv	a0,a5
     81c:	50b6                	lw	ra,108(sp)
     81e:	5426                	lw	s0,104(sp)
     820:	5496                	lw	s1,100(sp)
     822:	5906                	lw	s2,96(sp)
     824:	49f6                	lw	s3,92(sp)
     826:	6165                	addi	sp,sp,112
     828:	8082                	ret

0000082a <qprint>:
     82a:	7139                	addi	sp,sp,-64
     82c:	de06                	sw	ra,60(sp)
     82e:	dc22                	sw	s0,56(sp)
     830:	da26                	sw	s1,52(sp)
     832:	d84a                	sw	s2,48(sp)
     834:	d64e                	sw	s3,44(sp)
     836:	0080                	addi	s0,sp,64
     838:	fca42623          	sw	a0,-52(s0)
     83c:	fcb42423          	sw	a1,-56(s0)
     840:	fcc42223          	sw	a2,-60(s0)
     844:	4481                	li	s1,0
     846:	ac35                	j	a82 <qprint+0x258>
     848:	fc842783          	lw	a5,-56(s0)
     84c:	0007c703          	lbu	a4,0(a5)
     850:	02500793          	li	a5,37
     854:	20f71663          	bne	a4,a5,a60 <qprint+0x236>
     858:	fc842783          	lw	a5,-56(s0)
     85c:	0785                	addi	a5,a5,1
     85e:	fcf42423          	sw	a5,-56(s0)
     862:	4981                	li	s3,0
     864:	894e                	mv	s2,s3
     866:	fc842783          	lw	a5,-56(s0)
     86a:	0007c783          	lbu	a5,0(a5)
     86e:	22078163          	beqz	a5,a90 <qprint+0x266>
     872:	fc842783          	lw	a5,-56(s0)
     876:	0007c703          	lbu	a4,0(a5)
     87a:	02500793          	li	a5,37
     87e:	1ef70363          	beq	a4,a5,a64 <qprint+0x23a>
     882:	fc842783          	lw	a5,-56(s0)
     886:	0007c703          	lbu	a4,0(a5)
     88a:	02d00793          	li	a5,45
     88e:	02f71063          	bne	a4,a5,8ae <qprint+0x84>
     892:	fc842783          	lw	a5,-56(s0)
     896:	0785                	addi	a5,a5,1
     898:	fcf42423          	sw	a5,-56(s0)
     89c:	4985                	li	s3,1
     89e:	a801                	j	8ae <qprint+0x84>
     8a0:	fc842783          	lw	a5,-56(s0)
     8a4:	0785                	addi	a5,a5,1
     8a6:	fcf42423          	sw	a5,-56(s0)
     8aa:	0029e993          	ori	s3,s3,2
     8ae:	fc842783          	lw	a5,-56(s0)
     8b2:	0007c703          	lbu	a4,0(a5)
     8b6:	03000793          	li	a5,48
     8ba:	fef703e3          	beq	a4,a5,8a0 <qprint+0x76>
     8be:	a015                	j	8e2 <qprint+0xb8>
     8c0:	87ca                	mv	a5,s2
     8c2:	078a                	slli	a5,a5,0x2
     8c4:	97ca                	add	a5,a5,s2
     8c6:	0786                	slli	a5,a5,0x1
     8c8:	893e                	mv	s2,a5
     8ca:	fc842783          	lw	a5,-56(s0)
     8ce:	0007c783          	lbu	a5,0(a5)
     8d2:	fd078793          	addi	a5,a5,-48
     8d6:	993e                	add	s2,s2,a5
     8d8:	fc842783          	lw	a5,-56(s0)
     8dc:	0785                	addi	a5,a5,1
     8de:	fcf42423          	sw	a5,-56(s0)
     8e2:	fc842783          	lw	a5,-56(s0)
     8e6:	0007c703          	lbu	a4,0(a5)
     8ea:	02f00793          	li	a5,47
     8ee:	00e7fa63          	bgeu	a5,a4,902 <qprint+0xd8>
     8f2:	fc842783          	lw	a5,-56(s0)
     8f6:	0007c703          	lbu	a4,0(a5)
     8fa:	03900793          	li	a5,57
     8fe:	fce7f1e3          	bgeu	a5,a4,8c0 <qprint+0x96>
     902:	fc842783          	lw	a5,-56(s0)
     906:	0007c703          	lbu	a4,0(a5)
     90a:	07300793          	li	a5,115
     90e:	02f71a63          	bne	a4,a5,942 <qprint+0x118>
     912:	fc442783          	lw	a5,-60(s0)
     916:	00478713          	addi	a4,a5,4
     91a:	fce42223          	sw	a4,-60(s0)
     91e:	0007a083          	lw	ra,0(a5)
     922:	00008463          	beqz	ra,92a <qprint+0x100>
     926:	8786                	mv	a5,ra
     928:	a021                	j	930 <qprint+0x106>
     92a:	6785                	lui	a5,0x1
     92c:	5e878793          	addi	a5,a5,1512 # 15e8 <__DTOR_END__+0x82>
     930:	86ce                	mv	a3,s3
     932:	864a                	mv	a2,s2
     934:	85be                	mv	a1,a5
     936:	fcc42503          	lw	a0,-52(s0)
     93a:	3971                	jal	5d6 <qprints>
     93c:	87aa                	mv	a5,a0
     93e:	94be                	add	s1,s1,a5
     940:	aa25                	j	a78 <qprint+0x24e>
     942:	fc842783          	lw	a5,-56(s0)
     946:	0007c703          	lbu	a4,0(a5)
     94a:	06400793          	li	a5,100
     94e:	02f71563          	bne	a4,a5,978 <qprint+0x14e>
     952:	fc442783          	lw	a5,-60(s0)
     956:	00478713          	addi	a4,a5,4
     95a:	fce42223          	sw	a4,-60(s0)
     95e:	438c                	lw	a1,0(a5)
     960:	06100813          	li	a6,97
     964:	87ce                	mv	a5,s3
     966:	874a                	mv	a4,s2
     968:	4685                	li	a3,1
     96a:	4629                	li	a2,10
     96c:	fcc42503          	lw	a0,-52(s0)
     970:	33b1                	jal	6bc <qprinti>
     972:	87aa                	mv	a5,a0
     974:	94be                	add	s1,s1,a5
     976:	a209                	j	a78 <qprint+0x24e>
     978:	fc842783          	lw	a5,-56(s0)
     97c:	0007c703          	lbu	a4,0(a5)
     980:	07500793          	li	a5,117
     984:	02f71663          	bne	a4,a5,9b0 <qprint+0x186>
     988:	fc442783          	lw	a5,-60(s0)
     98c:	00478713          	addi	a4,a5,4
     990:	fce42223          	sw	a4,-60(s0)
     994:	439c                	lw	a5,0(a5)
     996:	85be                	mv	a1,a5
     998:	06100813          	li	a6,97
     99c:	87ce                	mv	a5,s3
     99e:	874a                	mv	a4,s2
     9a0:	4681                	li	a3,0
     9a2:	4629                	li	a2,10
     9a4:	fcc42503          	lw	a0,-52(s0)
     9a8:	3b11                	jal	6bc <qprinti>
     9aa:	87aa                	mv	a5,a0
     9ac:	94be                	add	s1,s1,a5
     9ae:	a0e9                	j	a78 <qprint+0x24e>
     9b0:	fc842783          	lw	a5,-56(s0)
     9b4:	0007c703          	lbu	a4,0(a5)
     9b8:	07800793          	li	a5,120
     9bc:	02f71663          	bne	a4,a5,9e8 <qprint+0x1be>
     9c0:	fc442783          	lw	a5,-60(s0)
     9c4:	00478713          	addi	a4,a5,4
     9c8:	fce42223          	sw	a4,-60(s0)
     9cc:	439c                	lw	a5,0(a5)
     9ce:	85be                	mv	a1,a5
     9d0:	06100813          	li	a6,97
     9d4:	87ce                	mv	a5,s3
     9d6:	874a                	mv	a4,s2
     9d8:	4681                	li	a3,0
     9da:	4641                	li	a2,16
     9dc:	fcc42503          	lw	a0,-52(s0)
     9e0:	39f1                	jal	6bc <qprinti>
     9e2:	87aa                	mv	a5,a0
     9e4:	94be                	add	s1,s1,a5
     9e6:	a849                	j	a78 <qprint+0x24e>
     9e8:	fc842783          	lw	a5,-56(s0)
     9ec:	0007c703          	lbu	a4,0(a5)
     9f0:	05800793          	li	a5,88
     9f4:	02f71663          	bne	a4,a5,a20 <qprint+0x1f6>
     9f8:	fc442783          	lw	a5,-60(s0)
     9fc:	00478713          	addi	a4,a5,4
     a00:	fce42223          	sw	a4,-60(s0)
     a04:	439c                	lw	a5,0(a5)
     a06:	85be                	mv	a1,a5
     a08:	04100813          	li	a6,65
     a0c:	87ce                	mv	a5,s3
     a0e:	874a                	mv	a4,s2
     a10:	4681                	li	a3,0
     a12:	4641                	li	a2,16
     a14:	fcc42503          	lw	a0,-52(s0)
     a18:	3155                	jal	6bc <qprinti>
     a1a:	87aa                	mv	a5,a0
     a1c:	94be                	add	s1,s1,a5
     a1e:	a8a9                	j	a78 <qprint+0x24e>
     a20:	fc842783          	lw	a5,-56(s0)
     a24:	0007c703          	lbu	a4,0(a5)
     a28:	06300793          	li	a5,99
     a2c:	04f71663          	bne	a4,a5,a78 <qprint+0x24e>
     a30:	fc442783          	lw	a5,-60(s0)
     a34:	00478713          	addi	a4,a5,4
     a38:	fce42223          	sw	a4,-60(s0)
     a3c:	439c                	lw	a5,0(a5)
     a3e:	0ff7f793          	andi	a5,a5,255
     a42:	fcf40e23          	sb	a5,-36(s0)
     a46:	fc040ea3          	sb	zero,-35(s0)
     a4a:	fdc40793          	addi	a5,s0,-36
     a4e:	86ce                	mv	a3,s3
     a50:	864a                	mv	a2,s2
     a52:	85be                	mv	a1,a5
     a54:	fcc42503          	lw	a0,-52(s0)
     a58:	3ebd                	jal	5d6 <qprints>
     a5a:	87aa                	mv	a5,a0
     a5c:	94be                	add	s1,s1,a5
     a5e:	a829                	j	a78 <qprint+0x24e>
     a60:	0001                	nop
     a62:	a011                	j	a66 <qprint+0x23c>
     a64:	0001                	nop
     a66:	fc842783          	lw	a5,-56(s0)
     a6a:	0007c783          	lbu	a5,0(a5)
     a6e:	85be                	mv	a1,a5
     a70:	fcc42503          	lw	a0,-52(s0)
     a74:	3e09                	jal	586 <qprintchar>
     a76:	0485                	addi	s1,s1,1
     a78:	fc842783          	lw	a5,-56(s0)
     a7c:	0785                	addi	a5,a5,1
     a7e:	fcf42423          	sw	a5,-56(s0)
     a82:	fc842783          	lw	a5,-56(s0)
     a86:	0007c783          	lbu	a5,0(a5)
     a8a:	da079fe3          	bnez	a5,848 <qprint+0x1e>
     a8e:	a011                	j	a92 <qprint+0x268>
     a90:	0001                	nop
     a92:	fcc42783          	lw	a5,-52(s0)
     a96:	c791                	beqz	a5,aa2 <qprint+0x278>
     a98:	fcc42783          	lw	a5,-52(s0)
     a9c:	439c                	lw	a5,0(a5)
     a9e:	00078023          	sb	zero,0(a5)
     aa2:	87a6                	mv	a5,s1
     aa4:	853e                	mv	a0,a5
     aa6:	50f2                	lw	ra,60(sp)
     aa8:	5462                	lw	s0,56(sp)
     aaa:	54d2                	lw	s1,52(sp)
     aac:	5942                	lw	s2,48(sp)
     aae:	59b2                	lw	s3,44(sp)
     ab0:	6121                	addi	sp,sp,64
     ab2:	8082                	ret

00000ab4 <printf>:
     ab4:	715d                	addi	sp,sp,-80
     ab6:	d606                	sw	ra,44(sp)
     ab8:	d422                	sw	s0,40(sp)
     aba:	1800                	addi	s0,sp,48
     abc:	fca42e23          	sw	a0,-36(s0)
     ac0:	c04c                	sw	a1,4(s0)
     ac2:	c410                	sw	a2,8(s0)
     ac4:	c454                	sw	a3,12(s0)
     ac6:	c818                	sw	a4,16(s0)
     ac8:	c85c                	sw	a5,20(s0)
     aca:	01042c23          	sw	a6,24(s0)
     ace:	01142e23          	sw	a7,28(s0)
     ad2:	02040793          	addi	a5,s0,32
     ad6:	fcf42c23          	sw	a5,-40(s0)
     ada:	fd842783          	lw	a5,-40(s0)
     ade:	1791                	addi	a5,a5,-28
     ae0:	fef42423          	sw	a5,-24(s0)
     ae4:	fe842783          	lw	a5,-24(s0)
     ae8:	863e                	mv	a2,a5
     aea:	fdc42583          	lw	a1,-36(s0)
     aee:	4501                	li	a0,0
     af0:	3b2d                	jal	82a <qprint>
     af2:	fea42623          	sw	a0,-20(s0)
     af6:	fec42783          	lw	a5,-20(s0)
     afa:	853e                	mv	a0,a5
     afc:	50b2                	lw	ra,44(sp)
     afe:	5422                	lw	s0,40(sp)
     b00:	6161                	addi	sp,sp,80
     b02:	8082                	ret

00000b04 <puts>:
     b04:	7179                	addi	sp,sp,-48
     b06:	d606                	sw	ra,44(sp)
     b08:	d422                	sw	s0,40(sp)
     b0a:	1800                	addi	s0,sp,48
     b0c:	fca42e23          	sw	a0,-36(s0)
     b10:	fe042623          	sw	zero,-20(s0)
     b14:	a839                	j	b32 <puts+0x2e>
     b16:	fec42783          	lw	a5,-20(s0)
     b1a:	00178713          	addi	a4,a5,1
     b1e:	fee42623          	sw	a4,-20(s0)
     b22:	873e                	mv	a4,a5
     b24:	fdc42783          	lw	a5,-36(s0)
     b28:	97ba                	add	a5,a5,a4
     b2a:	0007c783          	lbu	a5,0(a5)
     b2e:	853e                	mv	a0,a5
     b30:	343d                	jal	55e <putchar>
     b32:	fec42783          	lw	a5,-20(s0)
     b36:	fdc42703          	lw	a4,-36(s0)
     b3a:	97ba                	add	a5,a5,a4
     b3c:	0007c783          	lbu	a5,0(a5)
     b40:	fbf9                	bnez	a5,b16 <puts+0x12>
     b42:	4529                	li	a0,10
     b44:	3c29                	jal	55e <putchar>
     b46:	fec42783          	lw	a5,-20(s0)
     b4a:	853e                	mv	a0,a5
     b4c:	50b2                	lw	ra,44(sp)
     b4e:	5422                	lw	s0,40(sp)
     b50:	6145                	addi	sp,sp,48
     b52:	8082                	ret

00000b54 <strcmp>:
     b54:	7179                	addi	sp,sp,-48
     b56:	d622                	sw	s0,44(sp)
     b58:	1800                	addi	s0,sp,48
     b5a:	fca42e23          	sw	a0,-36(s0)
     b5e:	fcb42c23          	sw	a1,-40(s0)
     b62:	fdc42703          	lw	a4,-36(s0)
     b66:	fd842783          	lw	a5,-40(s0)
     b6a:	8fd9                	or	a5,a5,a4
     b6c:	8b8d                	andi	a5,a5,3
     b6e:	e7c9                	bnez	a5,bf8 <strcmp+0xa4>
     b70:	fdc42783          	lw	a5,-36(s0)
     b74:	fef42623          	sw	a5,-20(s0)
     b78:	fd842783          	lw	a5,-40(s0)
     b7c:	fef42423          	sw	a5,-24(s0)
     b80:	a089                	j	bc2 <strcmp+0x6e>
     b82:	fec42783          	lw	a5,-20(s0)
     b86:	4398                	lw	a4,0(a5)
     b88:	feff07b7          	lui	a5,0xfeff0
     b8c:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     b90:	973e                	add	a4,a4,a5
     b92:	fec42783          	lw	a5,-20(s0)
     b96:	439c                	lw	a5,0(a5)
     b98:	fff7c793          	not	a5,a5
     b9c:	8f7d                	and	a4,a4,a5
     b9e:	808087b7          	lui	a5,0x80808
     ba2:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     ba6:	8ff9                	and	a5,a5,a4
     ba8:	c399                	beqz	a5,bae <strcmp+0x5a>
     baa:	4781                	li	a5,0
     bac:	a041                	j	c2c <strcmp+0xd8>
     bae:	fec42783          	lw	a5,-20(s0)
     bb2:	0791                	addi	a5,a5,4
     bb4:	fef42623          	sw	a5,-20(s0)
     bb8:	fe842783          	lw	a5,-24(s0)
     bbc:	0791                	addi	a5,a5,4
     bbe:	fef42423          	sw	a5,-24(s0)
     bc2:	fec42783          	lw	a5,-20(s0)
     bc6:	4398                	lw	a4,0(a5)
     bc8:	fe842783          	lw	a5,-24(s0)
     bcc:	439c                	lw	a5,0(a5)
     bce:	faf70ae3          	beq	a4,a5,b82 <strcmp+0x2e>
     bd2:	fec42783          	lw	a5,-20(s0)
     bd6:	fcf42e23          	sw	a5,-36(s0)
     bda:	fe842783          	lw	a5,-24(s0)
     bde:	fcf42c23          	sw	a5,-40(s0)
     be2:	a819                	j	bf8 <strcmp+0xa4>
     be4:	fdc42783          	lw	a5,-36(s0)
     be8:	0785                	addi	a5,a5,1
     bea:	fcf42e23          	sw	a5,-36(s0)
     bee:	fd842783          	lw	a5,-40(s0)
     bf2:	0785                	addi	a5,a5,1
     bf4:	fcf42c23          	sw	a5,-40(s0)
     bf8:	fdc42783          	lw	a5,-36(s0)
     bfc:	0007c783          	lbu	a5,0(a5)
     c00:	cb99                	beqz	a5,c16 <strcmp+0xc2>
     c02:	fdc42783          	lw	a5,-36(s0)
     c06:	0007c703          	lbu	a4,0(a5)
     c0a:	fd842783          	lw	a5,-40(s0)
     c0e:	0007c783          	lbu	a5,0(a5)
     c12:	fcf709e3          	beq	a4,a5,be4 <strcmp+0x90>
     c16:	fdc42783          	lw	a5,-36(s0)
     c1a:	0007c783          	lbu	a5,0(a5)
     c1e:	873e                	mv	a4,a5
     c20:	fd842783          	lw	a5,-40(s0)
     c24:	0007c783          	lbu	a5,0(a5)
     c28:	40f707b3          	sub	a5,a4,a5
     c2c:	853e                	mv	a0,a5
     c2e:	5432                	lw	s0,44(sp)
     c30:	6145                	addi	sp,sp,48
     c32:	8082                	ret

00000c34 <memset>:
     c34:	7179                	addi	sp,sp,-48
     c36:	d622                	sw	s0,44(sp)
     c38:	1800                	addi	s0,sp,48
     c3a:	fca42e23          	sw	a0,-36(s0)
     c3e:	fcb42c23          	sw	a1,-40(s0)
     c42:	fcc42a23          	sw	a2,-44(s0)
     c46:	fdc42783          	lw	a5,-36(s0)
     c4a:	fef42623          	sw	a5,-20(s0)
     c4e:	a015                	j	c72 <memset+0x3e>
     c50:	fec42783          	lw	a5,-20(s0)
     c54:	00178713          	addi	a4,a5,1
     c58:	fee42623          	sw	a4,-20(s0)
     c5c:	fd842703          	lw	a4,-40(s0)
     c60:	0ff77713          	andi	a4,a4,255
     c64:	00e78023          	sb	a4,0(a5)
     c68:	fd442783          	lw	a5,-44(s0)
     c6c:	17fd                	addi	a5,a5,-1
     c6e:	fcf42a23          	sw	a5,-44(s0)
     c72:	fd442783          	lw	a5,-44(s0)
     c76:	ffe9                	bnez	a5,c50 <memset+0x1c>
     c78:	fdc42783          	lw	a5,-36(s0)
     c7c:	853e                	mv	a0,a5
     c7e:	5432                	lw	s0,44(sp)
     c80:	6145                	addi	sp,sp,48
     c82:	8082                	ret

00000c84 <strcpy>:
     c84:	7179                	addi	sp,sp,-48
     c86:	d622                	sw	s0,44(sp)
     c88:	1800                	addi	s0,sp,48
     c8a:	fca42e23          	sw	a0,-36(s0)
     c8e:	fcb42c23          	sw	a1,-40(s0)
     c92:	fdc42783          	lw	a5,-36(s0)
     c96:	fef42623          	sw	a5,-20(s0)
     c9a:	fd842783          	lw	a5,-40(s0)
     c9e:	fef42423          	sw	a5,-24(s0)
     ca2:	a01d                	j	cc8 <strcpy+0x44>
     ca4:	fe842783          	lw	a5,-24(s0)
     ca8:	0007c703          	lbu	a4,0(a5)
     cac:	fec42783          	lw	a5,-20(s0)
     cb0:	00e78023          	sb	a4,0(a5)
     cb4:	fec42783          	lw	a5,-20(s0)
     cb8:	0785                	addi	a5,a5,1
     cba:	fef42623          	sw	a5,-20(s0)
     cbe:	fe842783          	lw	a5,-24(s0)
     cc2:	0785                	addi	a5,a5,1
     cc4:	fef42423          	sw	a5,-24(s0)
     cc8:	fe842783          	lw	a5,-24(s0)
     ccc:	0007c783          	lbu	a5,0(a5)
     cd0:	fbf1                	bnez	a5,ca4 <strcpy+0x20>
     cd2:	fdc42783          	lw	a5,-36(s0)
     cd6:	853e                	mv	a0,a5
     cd8:	5432                	lw	s0,44(sp)
     cda:	6145                	addi	sp,sp,48
     cdc:	8082                	ret

00000cde <strlen>:
     cde:	7179                	addi	sp,sp,-48
     ce0:	d622                	sw	s0,44(sp)
     ce2:	1800                	addi	s0,sp,48
     ce4:	fca42e23          	sw	a0,-36(s0)
     ce8:	fdc42783          	lw	a5,-36(s0)
     cec:	fef42623          	sw	a5,-20(s0)
     cf0:	fe042423          	sw	zero,-24(s0)
     cf4:	fec42783          	lw	a5,-20(s0)
     cf8:	eb81                	bnez	a5,d08 <strlen+0x2a>
     cfa:	4781                	li	a5,0
     cfc:	a00d                	j	d1e <strlen+0x40>
     cfe:	fe842783          	lw	a5,-24(s0)
     d02:	0785                	addi	a5,a5,1
     d04:	fef42423          	sw	a5,-24(s0)
     d08:	fec42783          	lw	a5,-20(s0)
     d0c:	00178713          	addi	a4,a5,1
     d10:	fee42623          	sw	a4,-20(s0)
     d14:	0007c783          	lbu	a5,0(a5)
     d18:	f3fd                	bnez	a5,cfe <strlen+0x20>
     d1a:	fe842783          	lw	a5,-24(s0)
     d1e:	853e                	mv	a0,a5
     d20:	5432                	lw	s0,44(sp)
     d22:	6145                	addi	sp,sp,48
     d24:	8082                	ret

00000d26 <set_pin_function>:
     d26:	7179                	addi	sp,sp,-48
     d28:	d622                	sw	s0,44(sp)
     d2a:	1800                	addi	s0,sp,48
     d2c:	fca42e23          	sw	a0,-36(s0)
     d30:	fcb42c23          	sw	a1,-40(s0)
     d34:	1a1077b7          	lui	a5,0x1a107
     d38:	439c                	lw	a5,0(a5)
     d3a:	fef42623          	sw	a5,-20(s0)
     d3e:	fdc42783          	lw	a5,-36(s0)
     d42:	4705                	li	a4,1
     d44:	00f717b3          	sll	a5,a4,a5
     d48:	fff7c713          	not	a4,a5
     d4c:	fec42783          	lw	a5,-20(s0)
     d50:	8ff9                	and	a5,a5,a4
     d52:	fef42623          	sw	a5,-20(s0)
     d56:	fdc42783          	lw	a5,-36(s0)
     d5a:	fd842703          	lw	a4,-40(s0)
     d5e:	00f71733          	sll	a4,a4,a5
     d62:	fec42783          	lw	a5,-20(s0)
     d66:	8fd9                	or	a5,a5,a4
     d68:	fef42623          	sw	a5,-20(s0)
     d6c:	1a1077b7          	lui	a5,0x1a107
     d70:	fec42703          	lw	a4,-20(s0)
     d74:	c398                	sw	a4,0(a5)
     d76:	0001                	nop
     d78:	5432                	lw	s0,44(sp)
     d7a:	6145                	addi	sp,sp,48
     d7c:	8082                	ret

00000d7e <get_pin_function>:
     d7e:	7179                	addi	sp,sp,-48
     d80:	d622                	sw	s0,44(sp)
     d82:	1800                	addi	s0,sp,48
     d84:	fca42e23          	sw	a0,-36(s0)
     d88:	1a1077b7          	lui	a5,0x1a107
     d8c:	439c                	lw	a5,0(a5)
     d8e:	fef42623          	sw	a5,-20(s0)
     d92:	fec42703          	lw	a4,-20(s0)
     d96:	fdc42783          	lw	a5,-36(s0)
     d9a:	40f757b3          	sra	a5,a4,a5
     d9e:	8b85                	andi	a5,a5,1
     da0:	fef42623          	sw	a5,-20(s0)
     da4:	fec42783          	lw	a5,-20(s0)
     da8:	853e                	mv	a0,a5
     daa:	5432                	lw	s0,44(sp)
     dac:	6145                	addi	sp,sp,48
     dae:	8082                	ret

00000db0 <set_gpio_pin_direction>:
     db0:	7179                	addi	sp,sp,-48
     db2:	d622                	sw	s0,44(sp)
     db4:	1800                	addi	s0,sp,48
     db6:	fca42e23          	sw	a0,-36(s0)
     dba:	fcb42c23          	sw	a1,-40(s0)
     dbe:	1a1017b7          	lui	a5,0x1a101
     dc2:	439c                	lw	a5,0(a5)
     dc4:	fef42623          	sw	a5,-20(s0)
     dc8:	fd842783          	lw	a5,-40(s0)
     dcc:	ef91                	bnez	a5,de8 <set_gpio_pin_direction+0x38>
     dce:	fdc42783          	lw	a5,-36(s0)
     dd2:	4705                	li	a4,1
     dd4:	00f717b3          	sll	a5,a4,a5
     dd8:	fff7c713          	not	a4,a5
     ddc:	fec42783          	lw	a5,-20(s0)
     de0:	8ff9                	and	a5,a5,a4
     de2:	fef42623          	sw	a5,-20(s0)
     de6:	a819                	j	dfc <set_gpio_pin_direction+0x4c>
     de8:	fdc42783          	lw	a5,-36(s0)
     dec:	4705                	li	a4,1
     dee:	00f71733          	sll	a4,a4,a5
     df2:	fec42783          	lw	a5,-20(s0)
     df6:	8fd9                	or	a5,a5,a4
     df8:	fef42623          	sw	a5,-20(s0)
     dfc:	1a1017b7          	lui	a5,0x1a101
     e00:	fec42703          	lw	a4,-20(s0)
     e04:	c398                	sw	a4,0(a5)
     e06:	0001                	nop
     e08:	5432                	lw	s0,44(sp)
     e0a:	6145                	addi	sp,sp,48
     e0c:	8082                	ret

00000e0e <get_gpio_pin_direction>:
     e0e:	7179                	addi	sp,sp,-48
     e10:	d622                	sw	s0,44(sp)
     e12:	1800                	addi	s0,sp,48
     e14:	fca42e23          	sw	a0,-36(s0)
     e18:	1a1017b7          	lui	a5,0x1a101
     e1c:	439c                	lw	a5,0(a5)
     e1e:	fef42623          	sw	a5,-20(s0)
     e22:	fec42703          	lw	a4,-20(s0)
     e26:	fdc42783          	lw	a5,-36(s0)
     e2a:	0786                	slli	a5,a5,0x1
     e2c:	40f757b3          	sra	a5,a4,a5
     e30:	8b85                	andi	a5,a5,1
     e32:	fef42623          	sw	a5,-20(s0)
     e36:	fec42783          	lw	a5,-20(s0)
     e3a:	853e                	mv	a0,a5
     e3c:	5432                	lw	s0,44(sp)
     e3e:	6145                	addi	sp,sp,48
     e40:	8082                	ret

00000e42 <set_gpio_pin_value>:
     e42:	7179                	addi	sp,sp,-48
     e44:	d622                	sw	s0,44(sp)
     e46:	1800                	addi	s0,sp,48
     e48:	fca42e23          	sw	a0,-36(s0)
     e4c:	fcb42c23          	sw	a1,-40(s0)
     e50:	1a1017b7          	lui	a5,0x1a101
     e54:	07a1                	addi	a5,a5,8
     e56:	439c                	lw	a5,0(a5)
     e58:	fef42623          	sw	a5,-20(s0)
     e5c:	fd842783          	lw	a5,-40(s0)
     e60:	ef91                	bnez	a5,e7c <set_gpio_pin_value+0x3a>
     e62:	fdc42783          	lw	a5,-36(s0)
     e66:	4705                	li	a4,1
     e68:	00f717b3          	sll	a5,a4,a5
     e6c:	fff7c713          	not	a4,a5
     e70:	fec42783          	lw	a5,-20(s0)
     e74:	8ff9                	and	a5,a5,a4
     e76:	fef42623          	sw	a5,-20(s0)
     e7a:	a819                	j	e90 <set_gpio_pin_value+0x4e>
     e7c:	fdc42783          	lw	a5,-36(s0)
     e80:	4705                	li	a4,1
     e82:	00f71733          	sll	a4,a4,a5
     e86:	fec42783          	lw	a5,-20(s0)
     e8a:	8fd9                	or	a5,a5,a4
     e8c:	fef42623          	sw	a5,-20(s0)
     e90:	1a1017b7          	lui	a5,0x1a101
     e94:	07a1                	addi	a5,a5,8
     e96:	fec42703          	lw	a4,-20(s0)
     e9a:	c398                	sw	a4,0(a5)
     e9c:	0001                	nop
     e9e:	5432                	lw	s0,44(sp)
     ea0:	6145                	addi	sp,sp,48
     ea2:	8082                	ret

00000ea4 <get_gpio_pin_value>:
     ea4:	7179                	addi	sp,sp,-48
     ea6:	d622                	sw	s0,44(sp)
     ea8:	1800                	addi	s0,sp,48
     eaa:	fca42e23          	sw	a0,-36(s0)
     eae:	1a1017b7          	lui	a5,0x1a101
     eb2:	0791                	addi	a5,a5,4
     eb4:	439c                	lw	a5,0(a5)
     eb6:	fef42623          	sw	a5,-20(s0)
     eba:	fec42703          	lw	a4,-20(s0)
     ebe:	fdc42783          	lw	a5,-36(s0)
     ec2:	40f757b3          	sra	a5,a4,a5
     ec6:	8b85                	andi	a5,a5,1
     ec8:	fef42623          	sw	a5,-20(s0)
     ecc:	fec42783          	lw	a5,-20(s0)
     ed0:	853e                	mv	a0,a5
     ed2:	5432                	lw	s0,44(sp)
     ed4:	6145                	addi	sp,sp,48
     ed6:	8082                	ret

00000ed8 <set_gpio_pin_irq_en>:
     ed8:	7179                	addi	sp,sp,-48
     eda:	d622                	sw	s0,44(sp)
     edc:	1800                	addi	s0,sp,48
     ede:	fca42e23          	sw	a0,-36(s0)
     ee2:	fcb42c23          	sw	a1,-40(s0)
     ee6:	1a1017b7          	lui	a5,0x1a101
     eea:	07b1                	addi	a5,a5,12
     eec:	439c                	lw	a5,0(a5)
     eee:	fef42623          	sw	a5,-20(s0)
     ef2:	fd842783          	lw	a5,-40(s0)
     ef6:	ef91                	bnez	a5,f12 <set_gpio_pin_irq_en+0x3a>
     ef8:	fdc42783          	lw	a5,-36(s0)
     efc:	4705                	li	a4,1
     efe:	00f717b3          	sll	a5,a4,a5
     f02:	fff7c793          	not	a5,a5
     f06:	fec42703          	lw	a4,-20(s0)
     f0a:	8ff9                	and	a5,a5,a4
     f0c:	fef42623          	sw	a5,-20(s0)
     f10:	a819                	j	f26 <set_gpio_pin_irq_en+0x4e>
     f12:	fdc42783          	lw	a5,-36(s0)
     f16:	4705                	li	a4,1
     f18:	00f717b3          	sll	a5,a4,a5
     f1c:	fec42703          	lw	a4,-20(s0)
     f20:	8fd9                	or	a5,a5,a4
     f22:	fef42623          	sw	a5,-20(s0)
     f26:	1a1017b7          	lui	a5,0x1a101
     f2a:	07b1                	addi	a5,a5,12
     f2c:	fec42703          	lw	a4,-20(s0)
     f30:	c398                	sw	a4,0(a5)
     f32:	0001                	nop
     f34:	5432                	lw	s0,44(sp)
     f36:	6145                	addi	sp,sp,48
     f38:	8082                	ret

00000f3a <set_gpio_pin_irq_type>:
     f3a:	7179                	addi	sp,sp,-48
     f3c:	d622                	sw	s0,44(sp)
     f3e:	1800                	addi	s0,sp,48
     f40:	fca42e23          	sw	a0,-36(s0)
     f44:	fcb42c23          	sw	a1,-40(s0)
     f48:	1a1017b7          	lui	a5,0x1a101
     f4c:	07c1                	addi	a5,a5,16
     f4e:	439c                	lw	a5,0(a5)
     f50:	fef42623          	sw	a5,-20(s0)
     f54:	1a1017b7          	lui	a5,0x1a101
     f58:	07d1                	addi	a5,a5,20
     f5a:	439c                	lw	a5,0(a5)
     f5c:	fef42423          	sw	a5,-24(s0)
     f60:	fd842783          	lw	a5,-40(s0)
     f64:	8b85                	andi	a5,a5,1
     f66:	ef91                	bnez	a5,f82 <set_gpio_pin_irq_type+0x48>
     f68:	fdc42783          	lw	a5,-36(s0)
     f6c:	4705                	li	a4,1
     f6e:	00f717b3          	sll	a5,a4,a5
     f72:	fff7c793          	not	a5,a5
     f76:	fec42703          	lw	a4,-20(s0)
     f7a:	8ff9                	and	a5,a5,a4
     f7c:	fef42623          	sw	a5,-20(s0)
     f80:	a819                	j	f96 <set_gpio_pin_irq_type+0x5c>
     f82:	fdc42783          	lw	a5,-36(s0)
     f86:	4705                	li	a4,1
     f88:	00f717b3          	sll	a5,a4,a5
     f8c:	fec42703          	lw	a4,-20(s0)
     f90:	8fd9                	or	a5,a5,a4
     f92:	fef42623          	sw	a5,-20(s0)
     f96:	fd842783          	lw	a5,-40(s0)
     f9a:	8b89                	andi	a5,a5,2
     f9c:	ef91                	bnez	a5,fb8 <set_gpio_pin_irq_type+0x7e>
     f9e:	fdc42783          	lw	a5,-36(s0)
     fa2:	4705                	li	a4,1
     fa4:	00f717b3          	sll	a5,a4,a5
     fa8:	fff7c793          	not	a5,a5
     fac:	fe842703          	lw	a4,-24(s0)
     fb0:	8ff9                	and	a5,a5,a4
     fb2:	fef42423          	sw	a5,-24(s0)
     fb6:	a819                	j	fcc <set_gpio_pin_irq_type+0x92>
     fb8:	fdc42783          	lw	a5,-36(s0)
     fbc:	4705                	li	a4,1
     fbe:	00f717b3          	sll	a5,a4,a5
     fc2:	fe842703          	lw	a4,-24(s0)
     fc6:	8fd9                	or	a5,a5,a4
     fc8:	fef42423          	sw	a5,-24(s0)
     fcc:	1a1017b7          	lui	a5,0x1a101
     fd0:	07c1                	addi	a5,a5,16
     fd2:	fec42703          	lw	a4,-20(s0)
     fd6:	c398                	sw	a4,0(a5)
     fd8:	1a1017b7          	lui	a5,0x1a101
     fdc:	07d1                	addi	a5,a5,20
     fde:	fe842703          	lw	a4,-24(s0)
     fe2:	c398                	sw	a4,0(a5)
     fe4:	0001                	nop
     fe6:	5432                	lw	s0,44(sp)
     fe8:	6145                	addi	sp,sp,48
     fea:	8082                	ret

00000fec <get_gpio_irq_status>:
     fec:	1141                	addi	sp,sp,-16
     fee:	c622                	sw	s0,12(sp)
     ff0:	0800                	addi	s0,sp,16
     ff2:	1a1017b7          	lui	a5,0x1a101
     ff6:	07e1                	addi	a5,a5,24
     ff8:	439c                	lw	a5,0(a5)
     ffa:	853e                	mv	a0,a5
     ffc:	4432                	lw	s0,12(sp)
     ffe:	0141                	addi	sp,sp,16
    1000:	8082                	ret

00001002 <spi_setup_slave>:
    1002:	1141                	addi	sp,sp,-16
    1004:	c606                	sw	ra,12(sp)
    1006:	c422                	sw	s0,8(sp)
    1008:	0800                	addi	s0,sp,16
    100a:	4581                	li	a1,0
    100c:	4511                	li	a0,4
    100e:	3b21                	jal	d26 <set_pin_function>
    1010:	4581                	li	a1,0
    1012:	4515                	li	a0,5
    1014:	3b09                	jal	d26 <set_pin_function>
    1016:	4581                	li	a1,0
    1018:	4519                	li	a0,6
    101a:	3331                	jal	d26 <set_pin_function>
    101c:	4581                	li	a1,0
    101e:	451d                	li	a0,7
    1020:	3319                	jal	d26 <set_pin_function>
    1022:	4581                	li	a1,0
    1024:	450d                	li	a0,3
    1026:	3301                	jal	d26 <set_pin_function>
    1028:	0001                	nop
    102a:	40b2                	lw	ra,12(sp)
    102c:	4422                	lw	s0,8(sp)
    102e:	0141                	addi	sp,sp,16
    1030:	8082                	ret

00001032 <spi_setup_master>:
    1032:	1101                	addi	sp,sp,-32
    1034:	ce06                	sw	ra,28(sp)
    1036:	cc22                	sw	s0,24(sp)
    1038:	1000                	addi	s0,sp,32
    103a:	fea42623          	sw	a0,-20(s0)
    103e:	4581                	li	a1,0
    1040:	453d                	li	a0,15
    1042:	31d5                	jal	d26 <set_pin_function>
    1044:	4581                	li	a1,0
    1046:	4539                	li	a0,14
    1048:	39f9                	jal	d26 <set_pin_function>
    104a:	4581                	li	a1,0
    104c:	4535                	li	a0,13
    104e:	39e1                	jal	d26 <set_pin_function>
    1050:	4581                	li	a1,0
    1052:	4531                	li	a0,12
    1054:	39c9                	jal	d26 <set_pin_function>
    1056:	fec42783          	lw	a5,-20(s0)
    105a:	00f05563          	blez	a5,1064 <spi_setup_master+0x32>
    105e:	4581                	li	a1,0
    1060:	4541                	li	a0,16
    1062:	31d1                	jal	d26 <set_pin_function>
    1064:	fec42703          	lw	a4,-20(s0)
    1068:	4785                	li	a5,1
    106a:	00e7d563          	bge	a5,a4,1074 <spi_setup_master+0x42>
    106e:	4581                	li	a1,0
    1070:	452d                	li	a0,11
    1072:	3955                	jal	d26 <set_pin_function>
    1074:	fec42703          	lw	a4,-20(s0)
    1078:	4789                	li	a5,2
    107a:	00e7d563          	bge	a5,a4,1084 <spi_setup_master+0x52>
    107e:	4581                	li	a1,0
    1080:	4501                	li	a0,0
    1082:	3155                	jal	d26 <set_pin_function>
    1084:	fec42703          	lw	a4,-20(s0)
    1088:	478d                	li	a5,3
    108a:	00e7d563          	bge	a5,a4,1094 <spi_setup_master+0x62>
    108e:	4581                	li	a1,0
    1090:	4505                	li	a0,1
    1092:	3951                	jal	d26 <set_pin_function>
    1094:	0001                	nop
    1096:	40f2                	lw	ra,28(sp)
    1098:	4462                	lw	s0,24(sp)
    109a:	6105                	addi	sp,sp,32
    109c:	8082                	ret

0000109e <spi_setup_cmd_addr>:
    109e:	7179                	addi	sp,sp,-48
    10a0:	d622                	sw	s0,44(sp)
    10a2:	1800                	addi	s0,sp,48
    10a4:	fca42e23          	sw	a0,-36(s0)
    10a8:	fcb42c23          	sw	a1,-40(s0)
    10ac:	fcc42a23          	sw	a2,-44(s0)
    10b0:	fcd42823          	sw	a3,-48(s0)
    10b4:	02000713          	li	a4,32
    10b8:	fd842783          	lw	a5,-40(s0)
    10bc:	40f707b3          	sub	a5,a4,a5
    10c0:	fdc42703          	lw	a4,-36(s0)
    10c4:	00f717b3          	sll	a5,a4,a5
    10c8:	fef42623          	sw	a5,-20(s0)
    10cc:	1a1027b7          	lui	a5,0x1a102
    10d0:	07a1                	addi	a5,a5,8
    10d2:	fec42703          	lw	a4,-20(s0)
    10d6:	c398                	sw	a4,0(a5)
    10d8:	1a1027b7          	lui	a5,0x1a102
    10dc:	07b1                	addi	a5,a5,12
    10de:	fd442703          	lw	a4,-44(s0)
    10e2:	c398                	sw	a4,0(a5)
    10e4:	fd842783          	lw	a5,-40(s0)
    10e8:	03f7f693          	andi	a3,a5,63
    10ec:	fd042783          	lw	a5,-48(s0)
    10f0:	00879713          	slli	a4,a5,0x8
    10f4:	6791                	lui	a5,0x4
    10f6:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1900>
    10fa:	8f7d                	and	a4,a4,a5
    10fc:	1a1027b7          	lui	a5,0x1a102
    1100:	07c1                	addi	a5,a5,16
    1102:	8f55                	or	a4,a4,a3
    1104:	c398                	sw	a4,0(a5)
    1106:	0001                	nop
    1108:	5432                	lw	s0,44(sp)
    110a:	6145                	addi	sp,sp,48
    110c:	8082                	ret

0000110e <spi_setup_dummy>:
    110e:	1101                	addi	sp,sp,-32
    1110:	ce22                	sw	s0,28(sp)
    1112:	1000                	addi	s0,sp,32
    1114:	fea42623          	sw	a0,-20(s0)
    1118:	feb42423          	sw	a1,-24(s0)
    111c:	fe842783          	lw	a5,-24(s0)
    1120:	07c2                	slli	a5,a5,0x10
    1122:	86be                	mv	a3,a5
    1124:	fec42703          	lw	a4,-20(s0)
    1128:	67c1                	lui	a5,0x10
    112a:	17fd                	addi	a5,a5,-1
    112c:	8ff9                	and	a5,a5,a4
    112e:	00f6e733          	or	a4,a3,a5
    1132:	1a1027b7          	lui	a5,0x1a102
    1136:	07d1                	addi	a5,a5,20
    1138:	c398                	sw	a4,0(a5)
    113a:	0001                	nop
    113c:	4472                	lw	s0,28(sp)
    113e:	6105                	addi	sp,sp,32
    1140:	8082                	ret

00001142 <spi_set_datalen>:
    1142:	7179                	addi	sp,sp,-48
    1144:	d622                	sw	s0,44(sp)
    1146:	1800                	addi	s0,sp,48
    1148:	fca42e23          	sw	a0,-36(s0)
    114c:	1a1027b7          	lui	a5,0x1a102
    1150:	07c1                	addi	a5,a5,16
    1152:	439c                	lw	a5,0(a5)
    1154:	fef42623          	sw	a5,-20(s0)
    1158:	fdc42783          	lw	a5,-36(s0)
    115c:	07c2                	slli	a5,a5,0x10
    115e:	873e                	mv	a4,a5
    1160:	fec42783          	lw	a5,-20(s0)
    1164:	86be                	mv	a3,a5
    1166:	67c1                	lui	a5,0x10
    1168:	17fd                	addi	a5,a5,-1
    116a:	8ff5                	and	a5,a5,a3
    116c:	8fd9                	or	a5,a5,a4
    116e:	fef42623          	sw	a5,-20(s0)
    1172:	1a1027b7          	lui	a5,0x1a102
    1176:	07c1                	addi	a5,a5,16
    1178:	fec42703          	lw	a4,-20(s0)
    117c:	c398                	sw	a4,0(a5)
    117e:	0001                	nop
    1180:	5432                	lw	s0,44(sp)
    1182:	6145                	addi	sp,sp,48
    1184:	8082                	ret

00001186 <spi_start_transaction>:
    1186:	1101                	addi	sp,sp,-32
    1188:	ce22                	sw	s0,28(sp)
    118a:	1000                	addi	s0,sp,32
    118c:	fea42623          	sw	a0,-20(s0)
    1190:	feb42423          	sw	a1,-24(s0)
    1194:	fe842783          	lw	a5,-24(s0)
    1198:	07a1                	addi	a5,a5,8
    119a:	4705                	li	a4,1
    119c:	00f71733          	sll	a4,a4,a5
    11a0:	6785                	lui	a5,0x1
    11a2:	f0078793          	addi	a5,a5,-256 # f00 <set_gpio_pin_irq_en+0x28>
    11a6:	00f776b3          	and	a3,a4,a5
    11aa:	fec42783          	lw	a5,-20(s0)
    11ae:	4705                	li	a4,1
    11b0:	00f717b3          	sll	a5,a4,a5
    11b4:	0ff7f713          	andi	a4,a5,255
    11b8:	1a1027b7          	lui	a5,0x1a102
    11bc:	8f55                	or	a4,a4,a3
    11be:	c398                	sw	a4,0(a5)
    11c0:	0001                	nop
    11c2:	4472                	lw	s0,28(sp)
    11c4:	6105                	addi	sp,sp,32
    11c6:	8082                	ret

000011c8 <spi_get_status>:
    11c8:	1101                	addi	sp,sp,-32
    11ca:	ce22                	sw	s0,28(sp)
    11cc:	1000                	addi	s0,sp,32
    11ce:	1a1027b7          	lui	a5,0x1a102
    11d2:	439c                	lw	a5,0(a5)
    11d4:	fef42623          	sw	a5,-20(s0)
    11d8:	fec42783          	lw	a5,-20(s0)
    11dc:	853e                	mv	a0,a5
    11de:	4472                	lw	s0,28(sp)
    11e0:	6105                	addi	sp,sp,32
    11e2:	8082                	ret

000011e4 <spi_write_fifo>:
    11e4:	7179                	addi	sp,sp,-48
    11e6:	d622                	sw	s0,44(sp)
    11e8:	1800                	addi	s0,sp,48
    11ea:	fca42e23          	sw	a0,-36(s0)
    11ee:	fcb42c23          	sw	a1,-40(s0)
    11f2:	fd842783          	lw	a5,-40(s0)
    11f6:	8795                	srai	a5,a5,0x5
    11f8:	7ff7f793          	andi	a5,a5,2047
    11fc:	fef42623          	sw	a5,-20(s0)
    1200:	fd842783          	lw	a5,-40(s0)
    1204:	8bfd                	andi	a5,a5,31
    1206:	c791                	beqz	a5,1212 <spi_write_fifo+0x2e>
    1208:	fec42783          	lw	a5,-20(s0)
    120c:	0785                	addi	a5,a5,1
    120e:	fef42623          	sw	a5,-20(s0)
    1212:	fe042423          	sw	zero,-24(s0)
    1216:	a80d                	j	1248 <spi_write_fifo+0x64>
    1218:	0001                	nop
    121a:	1a1027b7          	lui	a5,0x1a102
    121e:	439c                	lw	a5,0(a5)
    1220:	87e1                	srai	a5,a5,0x18
    1222:	0f87f793          	andi	a5,a5,248
    1226:	fbf5                	bnez	a5,121a <spi_write_fifo+0x36>
    1228:	fe842783          	lw	a5,-24(s0)
    122c:	078a                	slli	a5,a5,0x2
    122e:	fdc42703          	lw	a4,-36(s0)
    1232:	973e                	add	a4,a4,a5
    1234:	1a1027b7          	lui	a5,0x1a102
    1238:	07e1                	addi	a5,a5,24
    123a:	4318                	lw	a4,0(a4)
    123c:	c398                	sw	a4,0(a5)
    123e:	fe842783          	lw	a5,-24(s0)
    1242:	0785                	addi	a5,a5,1
    1244:	fef42423          	sw	a5,-24(s0)
    1248:	fe842703          	lw	a4,-24(s0)
    124c:	fec42783          	lw	a5,-20(s0)
    1250:	fcf744e3          	blt	a4,a5,1218 <spi_write_fifo+0x34>
    1254:	0001                	nop
    1256:	0001                	nop
    1258:	5432                	lw	s0,44(sp)
    125a:	6145                	addi	sp,sp,48
    125c:	8082                	ret

0000125e <spi_read_fifo>:
    125e:	7179                	addi	sp,sp,-48
    1260:	d622                	sw	s0,44(sp)
    1262:	1800                	addi	s0,sp,48
    1264:	fca42e23          	sw	a0,-36(s0)
    1268:	fcb42c23          	sw	a1,-40(s0)
    126c:	fd842783          	lw	a5,-40(s0)
    1270:	8795                	srai	a5,a5,0x5
    1272:	7ff7f793          	andi	a5,a5,2047
    1276:	fef42623          	sw	a5,-20(s0)
    127a:	fd842783          	lw	a5,-40(s0)
    127e:	8bfd                	andi	a5,a5,31
    1280:	c791                	beqz	a5,128c <spi_read_fifo+0x2e>
    1282:	fec42783          	lw	a5,-20(s0)
    1286:	0785                	addi	a5,a5,1
    1288:	fef42623          	sw	a5,-20(s0)
    128c:	fe042423          	sw	zero,-24(s0)
    1290:	a815                	j	12c4 <spi_read_fifo+0x66>
    1292:	0001                	nop
    1294:	1a1027b7          	lui	a5,0x1a102
    1298:	439c                	lw	a5,0(a5)
    129a:	87c1                	srai	a5,a5,0x10
    129c:	0ff7f793          	andi	a5,a5,255
    12a0:	dbf5                	beqz	a5,1294 <spi_read_fifo+0x36>
    12a2:	1a1027b7          	lui	a5,0x1a102
    12a6:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    12aa:	fe842783          	lw	a5,-24(s0)
    12ae:	078a                	slli	a5,a5,0x2
    12b0:	fdc42683          	lw	a3,-36(s0)
    12b4:	97b6                	add	a5,a5,a3
    12b6:	4318                	lw	a4,0(a4)
    12b8:	c398                	sw	a4,0(a5)
    12ba:	fe842783          	lw	a5,-24(s0)
    12be:	0785                	addi	a5,a5,1
    12c0:	fef42423          	sw	a5,-24(s0)
    12c4:	fe842703          	lw	a4,-24(s0)
    12c8:	fec42783          	lw	a5,-20(s0)
    12cc:	fcf743e3          	blt	a4,a5,1292 <spi_read_fifo+0x34>
    12d0:	0001                	nop
    12d2:	0001                	nop
    12d4:	5432                	lw	s0,44(sp)
    12d6:	6145                	addi	sp,sp,48
    12d8:	8082                	ret

000012da <default_exception_handler_c>:
    12da:	1141                	addi	sp,sp,-16
    12dc:	c622                	sw	s0,12(sp)
    12de:	0800                	addi	s0,sp,16
    12e0:	a001                	j	12e0 <default_exception_handler_c+0x6>

000012e2 <illegal_insn_handler_c>:
    12e2:	1141                	addi	sp,sp,-16
    12e4:	c622                	sw	s0,12(sp)
    12e6:	0800                	addi	s0,sp,16
    12e8:	a001                	j	12e8 <illegal_insn_handler_c+0x6>

000012ea <ecall_insn_handler_c>:
    12ea:	1141                	addi	sp,sp,-16
    12ec:	c622                	sw	s0,12(sp)
    12ee:	0800                	addi	s0,sp,16
    12f0:	a001                	j	12f0 <ecall_insn_handler_c+0x6>

000012f2 <ISR_SRAM>:
    12f2:	1141                	addi	sp,sp,-16
    12f4:	c622                	sw	s0,12(sp)
    12f6:	0800                	addi	s0,sp,16
    12f8:	a001                	j	12f8 <ISR_SRAM+0x6>

000012fa <ISR_I2C>:
    12fa:	1141                	addi	sp,sp,-16
    12fc:	c622                	sw	s0,12(sp)
    12fe:	0800                	addi	s0,sp,16
    1300:	a001                	j	1300 <ISR_I2C+0x6>

00001302 <ISR_UART>:
    1302:	1141                	addi	sp,sp,-16
    1304:	c622                	sw	s0,12(sp)
    1306:	0800                	addi	s0,sp,16
    1308:	a001                	j	1308 <ISR_UART+0x6>

0000130a <ISR_GPIO>:
    130a:	1141                	addi	sp,sp,-16
    130c:	c622                	sw	s0,12(sp)
    130e:	0800                	addi	s0,sp,16
    1310:	a001                	j	1310 <ISR_GPIO+0x6>

00001312 <ISR_SPIM0>:
    1312:	1141                	addi	sp,sp,-16
    1314:	c622                	sw	s0,12(sp)
    1316:	0800                	addi	s0,sp,16
    1318:	a001                	j	1318 <ISR_SPIM0+0x6>

0000131a <ISR_SPIM1>:
    131a:	1141                	addi	sp,sp,-16
    131c:	c622                	sw	s0,12(sp)
    131e:	0800                	addi	s0,sp,16
    1320:	a001                	j	1320 <ISR_SPIM1+0x6>

00001322 <ISR_TA_OVF>:
    1322:	1141                	addi	sp,sp,-16
    1324:	c622                	sw	s0,12(sp)
    1326:	0800                	addi	s0,sp,16
    1328:	a001                	j	1328 <ISR_TA_OVF+0x6>

0000132a <ISR_TA_CMP>:
    132a:	1141                	addi	sp,sp,-16
    132c:	c622                	sw	s0,12(sp)
    132e:	0800                	addi	s0,sp,16
    1330:	a001                	j	1330 <ISR_TA_CMP+0x6>

00001332 <ISR_TB_OVF>:
    1332:	1141                	addi	sp,sp,-16
    1334:	c622                	sw	s0,12(sp)
    1336:	0800                	addi	s0,sp,16
    1338:	a001                	j	1338 <ISR_TB_OVF+0x6>

0000133a <ISR_TB_CMP>:
    133a:	1141                	addi	sp,sp,-16
    133c:	c622                	sw	s0,12(sp)
    133e:	0800                	addi	s0,sp,16
    1340:	a001                	j	1340 <ISR_TB_CMP+0x6>

00001342 <uart_set_cfg>:
    1342:	1101                	addi	sp,sp,-32
    1344:	ce22                	sw	s0,28(sp)
    1346:	1000                	addi	s0,sp,32
    1348:	fea42623          	sw	a0,-20(s0)
    134c:	87ae                	mv	a5,a1
    134e:	fef41523          	sh	a5,-22(s0)
    1352:	1a1077b7          	lui	a5,0x1a107
    1356:	0791                	addi	a5,a5,4
    1358:	4398                	lw	a4,0(a5)
    135a:	1a1077b7          	lui	a5,0x1a107
    135e:	0791                	addi	a5,a5,4
    1360:	00276713          	ori	a4,a4,2
    1364:	c398                	sw	a4,0(a5)
    1366:	1a1007b7          	lui	a5,0x1a100
    136a:	07b1                	addi	a5,a5,12
    136c:	08300713          	li	a4,131
    1370:	c398                	sw	a4,0(a5)
    1372:	fea45783          	lhu	a5,-22(s0)
    1376:	83a1                	srli	a5,a5,0x8
    1378:	07c2                	slli	a5,a5,0x10
    137a:	83c1                	srli	a5,a5,0x10
    137c:	873e                	mv	a4,a5
    137e:	1a1007b7          	lui	a5,0x1a100
    1382:	0791                	addi	a5,a5,4
    1384:	0ff77713          	andi	a4,a4,255
    1388:	c398                	sw	a4,0(a5)
    138a:	fea45703          	lhu	a4,-22(s0)
    138e:	1a1007b7          	lui	a5,0x1a100
    1392:	0ff77713          	andi	a4,a4,255
    1396:	c398                	sw	a4,0(a5)
    1398:	1a1007b7          	lui	a5,0x1a100
    139c:	07a1                	addi	a5,a5,8
    139e:	0a700713          	li	a4,167
    13a2:	c398                	sw	a4,0(a5)
    13a4:	1a1007b7          	lui	a5,0x1a100
    13a8:	07b1                	addi	a5,a5,12
    13aa:	470d                	li	a4,3
    13ac:	c398                	sw	a4,0(a5)
    13ae:	1a1007b7          	lui	a5,0x1a100
    13b2:	0791                	addi	a5,a5,4
    13b4:	439c                	lw	a5,0(a5)
    13b6:	0f07f713          	andi	a4,a5,240
    13ba:	1a1007b7          	lui	a5,0x1a100
    13be:	0791                	addi	a5,a5,4
    13c0:	00276713          	ori	a4,a4,2
    13c4:	c398                	sw	a4,0(a5)
    13c6:	0001                	nop
    13c8:	4472                	lw	s0,28(sp)
    13ca:	6105                	addi	sp,sp,32
    13cc:	8082                	ret

000013ce <uart_send>:
    13ce:	7179                	addi	sp,sp,-48
    13d0:	d622                	sw	s0,44(sp)
    13d2:	1800                	addi	s0,sp,48
    13d4:	fca42e23          	sw	a0,-36(s0)
    13d8:	fcb42c23          	sw	a1,-40(s0)
    13dc:	a891                	j	1430 <uart_send+0x62>
    13de:	0001                	nop
    13e0:	1a1007b7          	lui	a5,0x1a100
    13e4:	07d1                	addi	a5,a5,20
    13e6:	439c                	lw	a5,0(a5)
    13e8:	0207f793          	andi	a5,a5,32
    13ec:	dbf5                	beqz	a5,13e0 <uart_send+0x12>
    13ee:	fe042623          	sw	zero,-20(s0)
    13f2:	a035                	j	141e <uart_send+0x50>
    13f4:	fdc42783          	lw	a5,-36(s0)
    13f8:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    13fc:	fce42e23          	sw	a4,-36(s0)
    1400:	0007c703          	lbu	a4,0(a5)
    1404:	1a1007b7          	lui	a5,0x1a100
    1408:	c398                	sw	a4,0(a5)
    140a:	fd842783          	lw	a5,-40(s0)
    140e:	17fd                	addi	a5,a5,-1
    1410:	fcf42c23          	sw	a5,-40(s0)
    1414:	fec42783          	lw	a5,-20(s0)
    1418:	0785                	addi	a5,a5,1
    141a:	fef42623          	sw	a5,-20(s0)
    141e:	fec42703          	lw	a4,-20(s0)
    1422:	03f00793          	li	a5,63
    1426:	00e7e563          	bltu	a5,a4,1430 <uart_send+0x62>
    142a:	fd842783          	lw	a5,-40(s0)
    142e:	f3f9                	bnez	a5,13f4 <uart_send+0x26>
    1430:	fd842783          	lw	a5,-40(s0)
    1434:	f7cd                	bnez	a5,13de <uart_send+0x10>
    1436:	0001                	nop
    1438:	0001                	nop
    143a:	5432                	lw	s0,44(sp)
    143c:	6145                	addi	sp,sp,48
    143e:	8082                	ret

00001440 <uart_getchar>:
    1440:	1141                	addi	sp,sp,-16
    1442:	c622                	sw	s0,12(sp)
    1444:	0800                	addi	s0,sp,16
    1446:	0001                	nop
    1448:	1a1007b7          	lui	a5,0x1a100
    144c:	07d1                	addi	a5,a5,20
    144e:	439c                	lw	a5,0(a5)
    1450:	0017f713          	andi	a4,a5,1
    1454:	4785                	li	a5,1
    1456:	fef719e3          	bne	a4,a5,1448 <uart_getchar+0x8>
    145a:	1a1007b7          	lui	a5,0x1a100
    145e:	439c                	lw	a5,0(a5)
    1460:	0ff7f793          	andi	a5,a5,255
    1464:	853e                	mv	a0,a5
    1466:	4432                	lw	s0,12(sp)
    1468:	0141                	addi	sp,sp,16
    146a:	8082                	ret

0000146c <uart_sendchar>:
    146c:	1101                	addi	sp,sp,-32
    146e:	ce22                	sw	s0,28(sp)
    1470:	1000                	addi	s0,sp,32
    1472:	87aa                	mv	a5,a0
    1474:	fef407a3          	sb	a5,-17(s0)
    1478:	0001                	nop
    147a:	1a1007b7          	lui	a5,0x1a100
    147e:	07d1                	addi	a5,a5,20
    1480:	439c                	lw	a5,0(a5)
    1482:	0207f793          	andi	a5,a5,32
    1486:	dbf5                	beqz	a5,147a <uart_sendchar+0xe>
    1488:	1a1007b7          	lui	a5,0x1a100
    148c:	fef44703          	lbu	a4,-17(s0)
    1490:	c398                	sw	a4,0(a5)
    1492:	0001                	nop
    1494:	4472                	lw	s0,28(sp)
    1496:	6105                	addi	sp,sp,32
    1498:	8082                	ret

0000149a <uart_wait_tx_done>:
    149a:	1141                	addi	sp,sp,-16
    149c:	c622                	sw	s0,12(sp)
    149e:	0800                	addi	s0,sp,16
    14a0:	0001                	nop
    14a2:	1a1007b7          	lui	a5,0x1a100
    14a6:	07d1                	addi	a5,a5,20
    14a8:	439c                	lw	a5,0(a5)
    14aa:	0407f793          	andi	a5,a5,64
    14ae:	dbf5                	beqz	a5,14a2 <uart_wait_tx_done+0x8>
    14b0:	0001                	nop
    14b2:	0001                	nop
    14b4:	4432                	lw	s0,12(sp)
    14b6:	0141                	addi	sp,sp,16
    14b8:	8082                	ret

000014ba <uart_mysendstring>:
    14ba:	7179                	addi	sp,sp,-48
    14bc:	d606                	sw	ra,44(sp)
    14be:	d422                	sw	s0,40(sp)
    14c0:	1800                	addi	s0,sp,48
    14c2:	fca42e23          	sw	a0,-36(s0)
    14c6:	fe042623          	sw	zero,-20(s0)
    14ca:	a839                	j	14e8 <uart_mysendstring+0x2e>
    14cc:	fec42783          	lw	a5,-20(s0)
    14d0:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14d4:	fee42623          	sw	a4,-20(s0)
    14d8:	873e                	mv	a4,a5
    14da:	fdc42783          	lw	a5,-36(s0)
    14de:	97ba                	add	a5,a5,a4
    14e0:	0007c783          	lbu	a5,0(a5)
    14e4:	853e                	mv	a0,a5
    14e6:	3759                	jal	146c <uart_sendchar>
    14e8:	fec42783          	lw	a5,-20(s0)
    14ec:	17fd                	addi	a5,a5,-1
    14ee:	fdc42703          	lw	a4,-36(s0)
    14f2:	97ba                	add	a5,a5,a4
    14f4:	0007c703          	lbu	a4,0(a5)
    14f8:	47a9                	li	a5,10
    14fa:	00f70863          	beq	a4,a5,150a <uart_mysendstring+0x50>
    14fe:	fec42703          	lw	a4,-20(s0)
    1502:	02700793          	li	a5,39
    1506:	fce7d3e3          	bge	a5,a4,14cc <uart_mysendstring+0x12>
    150a:	0001                	nop
    150c:	50b2                	lw	ra,44(sp)
    150e:	5422                	lw	s0,40(sp)
    1510:	6145                	addi	sp,sp,48
    1512:	8082                	ret

00001514 <uart_getstring>:
    1514:	1101                	addi	sp,sp,-32
    1516:	ce06                	sw	ra,28(sp)
    1518:	cc22                	sw	s0,24(sp)
    151a:	ca26                	sw	s1,20(sp)
    151c:	1000                	addi	s0,sp,32
    151e:	fea42623          	sw	a0,-20(s0)
    1522:	0001                	nop
    1524:	fec42483          	lw	s1,-20(s0)
    1528:	00148793          	addi	a5,s1,1
    152c:	fef42623          	sw	a5,-20(s0)
    1530:	3f01                	jal	1440 <uart_getchar>
    1532:	87aa                	mv	a5,a0
    1534:	00f48023          	sb	a5,0(s1)
    1538:	0004c703          	lbu	a4,0(s1)
    153c:	47a9                	li	a5,10
    153e:	fef713e3          	bne	a4,a5,1524 <uart_getstring+0x10>
    1542:	fec42783          	lw	a5,-20(s0)
    1546:	00078023          	sb	zero,0(a5)
    154a:	0001                	nop
    154c:	40f2                	lw	ra,28(sp)
    154e:	4462                	lw	s0,24(sp)
    1550:	44d2                	lw	s1,20(sp)
    1552:	6105                	addi	sp,sp,32
    1554:	8082                	ret

00001556 <__CTOR_LIST__>:
	...

0000155e <__CTOR_END__>:
	...

Disassembly of section .rodata:

00001568 <.rodata>:
    1568:	5f757063          	bgeu	a0,s7,1b48 <_bss_end+0x548>
    156c:	6570                	flw	fa2,76(a0)
    156e:	6672                	flw	fa2,28(sp)
    1570:	735f 7465 203a      	0x203a7465735f
    1576:	6f6e                	flw	ft10,216(sp)
    1578:	2074                	fld	fa3,192(s0)
    157a:	6d69                	lui	s10,0x1a
    157c:	6c70                	flw	fa2,92(s0)
    157e:	6d65                	lui	s10,0x19
    1580:	6e65                	lui	t3,0x19
    1582:	6574                	flw	fa3,76(a0)
    1584:	2064                	fld	fs1,192(s0)
    1586:	6579                	lui	a0,0x1e
    1588:	0074                	addi	a3,sp,12
    158a:	0000                	unimp
    158c:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1590:	6425                	lui	s0,0x9
    1592:	6e20                	flw	fs0,88(a2)
    1594:	7920746f          	jal	s0,8d26 <_stack+0x6726>
    1598:	7465                	lui	s0,0xffff9
    159a:	7320                	flw	fs0,96(a4)
    159c:	7075                	c.lui	zero,0xffffd
    159e:	6f70                	flw	fa2,92(a4)
    15a0:	7472                	flw	fs0,60(sp)
    15a2:	6465                	lui	s0,0x19
    15a4:	000a                	c.slli	zero,0x2
    15a6:	0000                	unimp
    15a8:	01c0                	addi	s0,sp,196
    15aa:	0000                	unimp
    15ac:	01ca                	slli	gp,gp,0x12
    15ae:	0000                	unimp
    15b0:	01d4                	addi	a3,sp,196
    15b2:	0000                	unimp
    15b4:	01de                	slli	gp,gp,0x17
    15b6:	0000                	unimp
    15b8:	01e8                	addi	a0,sp,204
    15ba:	0000                	unimp
    15bc:	01f2                	slli	gp,gp,0x1c
    15be:	0000                	unimp
    15c0:	01fc                	addi	a5,sp,204
    15c2:	0000                	unimp
    15c4:	0206                	slli	tp,tp,0x1
    15c6:	0000                	unimp
    15c8:	0210                	addi	a2,sp,256
    15ca:	0000                	unimp
    15cc:	021a                	slli	tp,tp,0x6
    15ce:	0000                	unimp
    15d0:	0224                	addi	s1,sp,264
    15d2:	0000                	unimp
    15d4:	022e                	slli	tp,tp,0xb
    15d6:	0000                	unimp
    15d8:	0238                	addi	a4,sp,264
    15da:	0000                	unimp
    15dc:	0242                	slli	tp,tp,0x10
    15de:	0000                	unimp
    15e0:	024c                	addi	a1,sp,260
    15e2:	0000                	unimp
    15e4:	0256                	slli	tp,tp,0x15
    15e6:	0000                	unimp
    15e8:	6e28                	flw	fa0,88(a2)
    15ea:	6c75                	lui	s8,0x1d
    15ec:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

000015ef <.shbss>:
	...

Disassembly of section .data:

000015f0 <remu10_table>:
    15f0:	0100                	addi	s0,sp,128
    15f2:	0202                	c.slli64	tp
    15f4:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x16a50>
    15f8:	0605                	addi	a2,a2,1
    15fa:	08080707          	0x8080707
    15fe:	0009                	c.nop	2

Disassembly of section .stack:

00001600 <_stack-0x1000>:
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

