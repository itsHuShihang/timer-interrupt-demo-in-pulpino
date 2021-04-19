
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
     180:	63c78513          	addi	a0,a5,1596 # 163c <__DTOR_END__>
     184:	257000ef          	jal	ra,bda <puts>
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
     1b6:	67c78793          	addi	a5,a5,1660 # 167c <__DTOR_END__+0x40>
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
     266:	66078513          	addi	a0,a5,1632 # 1660 <__DTOR_END__+0x24>
     26a:	121000ef          	jal	ra,b8a <printf>
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
     2ae:	42a70713          	addi	a4,a4,1066 # 16d4 <led_num>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	42678793          	addi	a5,a5,1062 # 16d8 <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	14c010ef          	jal	ra,1418 <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	284000ef          	jal	ra,558 <main>
     2d8:	842a                	mv	s0,a0
     2da:	296010ef          	jal	ra,1570 <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	0d80106f          	j	13c8 <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0cc0106f          	j	13d0 <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0c00106f          	j	13d8 <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0b40106f          	j	13e0 <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	0a80106f          	j	13e8 <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	09c0106f          	j	13f0 <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	1a00006f          	j	508 <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	1420006f          	j	4be <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	0800106f          	j	1410 <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	0640106f          	j	1408 <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	0000106f          	j	13b8 <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	7f50006f          	j	13c0 <ecall_insn_handler_c>

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
     434:	1101                	addi	sp,sp,-32
     436:	ce06                	sw	ra,28(sp)
     438:	cc22                	sw	s0,24(sp)
     43a:	1000                	addi	s0,sp,32
     43c:	6785                	lui	a5,0x1
     43e:	6c07aa23          	sw	zero,1748(a5) # 16d4 <led_num>
     442:	fe042623          	sw	zero,-20(s0)
     446:	a005                	j	466 <configure+0x32>
     448:	4585                	li	a1,1
     44a:	fec42503          	lw	a0,-20(s0)
     44e:	239000ef          	jal	ra,e86 <set_gpio_pin_direction>
     452:	4581                	li	a1,0
     454:	fec42503          	lw	a0,-20(s0)
     458:	2c1000ef          	jal	ra,f18 <set_gpio_pin_value>
     45c:	fec42783          	lw	a5,-20(s0)
     460:	0785                	addi	a5,a5,1
     462:	fef42623          	sw	a5,-20(s0)
     466:	fec42703          	lw	a4,-20(s0)
     46a:	479d                	li	a5,7
     46c:	fce7dee3          	bge	a5,a4,448 <configure+0x14>
     470:	1a1047b7          	lui	a5,0x1a104
     474:	07f1                	addi	a5,a5,28
     476:	577d                	li	a4,-1
     478:	c398                	sw	a4,0(a5)
     47a:	1a1047b7          	lui	a5,0x1a104
     47e:	07b1                	addi	a5,a5,12
     480:	577d                	li	a4,-1
     482:	c398                	sw	a4,0(a5)
     484:	1a1047b7          	lui	a5,0x1a104
     488:	30000737          	lui	a4,0x30000
     48c:	c398                	sw	a4,0(a5)
     48e:	3fb5                	jal	40a <int_enable>
     490:	1a1037b7          	lui	a5,0x1a103
     494:	0007a023          	sw	zero,0(a5) # 1a103000 <_stack_start+0x19fff000>
     498:	1a1037b7          	lui	a5,0x1a103
     49c:	07a1                	addi	a5,a5,8
     49e:	01000737          	lui	a4,0x1000
     4a2:	177d                	addi	a4,a4,-1
     4a4:	c398                	sw	a4,0(a5)
     4a6:	1a1037b7          	lui	a5,0x1a103
     4aa:	0791                	addi	a5,a5,4
     4ac:	4705                	li	a4,1
     4ae:	c398                	sw	a4,0(a5)
     4b0:	3ef1                	jal	8c <reset_timer>
     4b2:	3ec5                	jal	a2 <start_timer>
     4b4:	0001                	nop
     4b6:	40f2                	lw	ra,28(sp)
     4b8:	4462                	lw	s0,24(sp)
     4ba:	6105                	addi	sp,sp,32
     4bc:	8082                	ret

000004be <ISR_TA_OVF>:
     4be:	1141                	addi	sp,sp,-16
     4c0:	c606                	sw	ra,12(sp)
     4c2:	c422                	sw	s0,8(sp)
     4c4:	0800                	addi	s0,sp,16
     4c6:	4585                	li	a1,1
     4c8:	4501                	li	a0,0
     4ca:	24f000ef          	jal	ra,f18 <set_gpio_pin_value>
     4ce:	1a1047b7          	lui	a5,0x1a104
     4d2:	07b1                	addi	a5,a5,12
     4d4:	30000737          	lui	a4,0x30000
     4d8:	c398                	sw	a4,0(a5)
     4da:	6785                	lui	a5,0x1
     4dc:	6d47a703          	lw	a4,1748(a5) # 16d4 <led_num>
     4e0:	479d                	li	a5,7
     4e2:	00e7eb63          	bltu	a5,a4,4f8 <ISR_TA_OVF+0x3a>
     4e6:	6785                	lui	a5,0x1
     4e8:	6d47a783          	lw	a5,1748(a5) # 16d4 <led_num>
     4ec:	00178713          	addi	a4,a5,1
     4f0:	6785                	lui	a5,0x1
     4f2:	6ce7aa23          	sw	a4,1748(a5) # 16d4 <led_num>
     4f6:	a021                	j	4fe <ISR_TA_OVF+0x40>
     4f8:	6785                	lui	a5,0x1
     4fa:	6c07aa23          	sw	zero,1748(a5) # 16d4 <led_num>
     4fe:	0001                	nop
     500:	40b2                	lw	ra,12(sp)
     502:	4422                	lw	s0,8(sp)
     504:	0141                	addi	sp,sp,16
     506:	8082                	ret

00000508 <ISR_TA_CMP>:
     508:	1141                	addi	sp,sp,-16
     50a:	c606                	sw	ra,12(sp)
     50c:	c422                	sw	s0,8(sp)
     50e:	0800                	addi	s0,sp,16
     510:	6785                	lui	a5,0x1
     512:	6d47a783          	lw	a5,1748(a5) # 16d4 <led_num>
     516:	4585                	li	a1,1
     518:	853e                	mv	a0,a5
     51a:	1ff000ef          	jal	ra,f18 <set_gpio_pin_value>
     51e:	1a1047b7          	lui	a5,0x1a104
     522:	07b1                	addi	a5,a5,12
     524:	30000737          	lui	a4,0x30000
     528:	c398                	sw	a4,0(a5)
     52a:	6785                	lui	a5,0x1
     52c:	6d47a703          	lw	a4,1748(a5) # 16d4 <led_num>
     530:	479d                	li	a5,7
     532:	00e7eb63          	bltu	a5,a4,548 <ISR_TA_CMP+0x40>
     536:	6785                	lui	a5,0x1
     538:	6d47a783          	lw	a5,1748(a5) # 16d4 <led_num>
     53c:	00178713          	addi	a4,a5,1
     540:	6785                	lui	a5,0x1
     542:	6ce7aa23          	sw	a4,1748(a5) # 16d4 <led_num>
     546:	a021                	j	54e <ISR_TA_CMP+0x46>
     548:	6785                	lui	a5,0x1
     54a:	6c07aa23          	sw	zero,1748(a5) # 16d4 <led_num>
     54e:	0001                	nop
     550:	40b2                	lw	ra,12(sp)
     552:	4422                	lw	s0,8(sp)
     554:	0141                	addi	sp,sp,16
     556:	8082                	ret

00000558 <main>:
     558:	1141                	addi	sp,sp,-16
     55a:	c606                	sw	ra,12(sp)
     55c:	c422                	sw	s0,8(sp)
     55e:	0800                	addi	s0,sp,16
     560:	3dd1                	jal	434 <configure>
     562:	a001                	j	562 <main+0xa>

00000564 <divu10>:
     564:	7179                	addi	sp,sp,-48
     566:	d622                	sw	s0,44(sp)
     568:	1800                	addi	s0,sp,48
     56a:	fca42e23          	sw	a0,-36(s0)
     56e:	fdc42783          	lw	a5,-36(s0)
     572:	0017d713          	srli	a4,a5,0x1
     576:	fdc42783          	lw	a5,-36(s0)
     57a:	8389                	srli	a5,a5,0x2
     57c:	97ba                	add	a5,a5,a4
     57e:	fef42623          	sw	a5,-20(s0)
     582:	fec42783          	lw	a5,-20(s0)
     586:	8391                	srli	a5,a5,0x4
     588:	fec42703          	lw	a4,-20(s0)
     58c:	97ba                	add	a5,a5,a4
     58e:	fef42623          	sw	a5,-20(s0)
     592:	fec42783          	lw	a5,-20(s0)
     596:	83a1                	srli	a5,a5,0x8
     598:	fec42703          	lw	a4,-20(s0)
     59c:	97ba                	add	a5,a5,a4
     59e:	fef42623          	sw	a5,-20(s0)
     5a2:	fec42783          	lw	a5,-20(s0)
     5a6:	83c1                	srli	a5,a5,0x10
     5a8:	fec42703          	lw	a4,-20(s0)
     5ac:	97ba                	add	a5,a5,a4
     5ae:	fef42623          	sw	a5,-20(s0)
     5b2:	fec42783          	lw	a5,-20(s0)
     5b6:	838d                	srli	a5,a5,0x3
     5b8:	fef42623          	sw	a5,-20(s0)
     5bc:	fec42703          	lw	a4,-20(s0)
     5c0:	87ba                	mv	a5,a4
     5c2:	078a                	slli	a5,a5,0x2
     5c4:	97ba                	add	a5,a5,a4
     5c6:	0786                	slli	a5,a5,0x1
     5c8:	873e                	mv	a4,a5
     5ca:	fdc42783          	lw	a5,-36(s0)
     5ce:	8f99                	sub	a5,a5,a4
     5d0:	fef42423          	sw	a5,-24(s0)
     5d4:	fe842783          	lw	a5,-24(s0)
     5d8:	0799                	addi	a5,a5,6
     5da:	0047d713          	srli	a4,a5,0x4
     5de:	fec42783          	lw	a5,-20(s0)
     5e2:	97ba                	add	a5,a5,a4
     5e4:	853e                	mv	a0,a5
     5e6:	5432                	lw	s0,44(sp)
     5e8:	6145                	addi	sp,sp,48
     5ea:	8082                	ret

000005ec <remu10>:
     5ec:	1101                	addi	sp,sp,-32
     5ee:	ce22                	sw	s0,28(sp)
     5f0:	1000                	addi	s0,sp,32
     5f2:	fea42623          	sw	a0,-20(s0)
     5f6:	fec42703          	lw	a4,-20(s0)
     5fa:	1999a7b7          	lui	a5,0x1999a
     5fe:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     602:	02f70733          	mul	a4,a4,a5
     606:	fec42783          	lw	a5,-20(s0)
     60a:	8385                	srli	a5,a5,0x1
     60c:	973e                	add	a4,a4,a5
     60e:	fec42783          	lw	a5,-20(s0)
     612:	838d                	srli	a5,a5,0x3
     614:	97ba                	add	a5,a5,a4
     616:	83f1                	srli	a5,a5,0x1c
     618:	fef42623          	sw	a5,-20(s0)
     61c:	6785                	lui	a5,0x1
     61e:	6c478713          	addi	a4,a5,1732 # 16c4 <remu10_table>
     622:	fec42783          	lw	a5,-20(s0)
     626:	97ba                	add	a5,a5,a4
     628:	0007c783          	lbu	a5,0(a5)
     62c:	853e                	mv	a0,a5
     62e:	4472                	lw	s0,28(sp)
     630:	6105                	addi	sp,sp,32
     632:	8082                	ret

00000634 <putchar>:
     634:	1101                	addi	sp,sp,-32
     636:	ce06                	sw	ra,28(sp)
     638:	cc22                	sw	s0,24(sp)
     63a:	1000                	addi	s0,sp,32
     63c:	fea42623          	sw	a0,-20(s0)
     640:	fec42783          	lw	a5,-20(s0)
     644:	0ff7f793          	andi	a5,a5,255
     648:	853e                	mv	a0,a5
     64a:	6f9000ef          	jal	ra,1542 <uart_sendchar>
     64e:	fec42783          	lw	a5,-20(s0)
     652:	853e                	mv	a0,a5
     654:	40f2                	lw	ra,28(sp)
     656:	4462                	lw	s0,24(sp)
     658:	6105                	addi	sp,sp,32
     65a:	8082                	ret

0000065c <qprintchar>:
     65c:	1101                	addi	sp,sp,-32
     65e:	ce06                	sw	ra,28(sp)
     660:	cc22                	sw	s0,24(sp)
     662:	1000                	addi	s0,sp,32
     664:	fea42623          	sw	a0,-20(s0)
     668:	feb42423          	sw	a1,-24(s0)
     66c:	fec42783          	lw	a5,-20(s0)
     670:	c39d                	beqz	a5,696 <qprintchar+0x3a>
     672:	fec42783          	lw	a5,-20(s0)
     676:	439c                	lw	a5,0(a5)
     678:	fe842703          	lw	a4,-24(s0)
     67c:	0ff77713          	andi	a4,a4,255
     680:	00e78023          	sb	a4,0(a5)
     684:	fec42783          	lw	a5,-20(s0)
     688:	439c                	lw	a5,0(a5)
     68a:	00178713          	addi	a4,a5,1
     68e:	fec42783          	lw	a5,-20(s0)
     692:	c398                	sw	a4,0(a5)
     694:	a039                	j	6a2 <qprintchar+0x46>
     696:	fe842783          	lw	a5,-24(s0)
     69a:	0ff7f793          	andi	a5,a5,255
     69e:	853e                	mv	a0,a5
     6a0:	3f51                	jal	634 <putchar>
     6a2:	0001                	nop
     6a4:	40f2                	lw	ra,28(sp)
     6a6:	4462                	lw	s0,24(sp)
     6a8:	6105                	addi	sp,sp,32
     6aa:	8082                	ret

000006ac <qprints>:
     6ac:	7179                	addi	sp,sp,-48
     6ae:	d606                	sw	ra,44(sp)
     6b0:	d422                	sw	s0,40(sp)
     6b2:	d226                	sw	s1,36(sp)
     6b4:	d04a                	sw	s2,32(sp)
     6b6:	ce4e                	sw	s3,28(sp)
     6b8:	cc52                	sw	s4,24(sp)
     6ba:	1800                	addi	s0,sp,48
     6bc:	fca42e23          	sw	a0,-36(s0)
     6c0:	fcb42c23          	sw	a1,-40(s0)
     6c4:	fcc42a23          	sw	a2,-44(s0)
     6c8:	fcd42823          	sw	a3,-48(s0)
     6cc:	4481                	li	s1,0
     6ce:	02000a13          	li	s4,32
     6d2:	fd442783          	lw	a5,-44(s0)
     6d6:	02f05e63          	blez	a5,712 <qprints+0x66>
     6da:	4901                	li	s2,0
     6dc:	fd842983          	lw	s3,-40(s0)
     6e0:	a019                	j	6e6 <qprints+0x3a>
     6e2:	0905                	addi	s2,s2,1
     6e4:	0985                	addi	s3,s3,1
     6e6:	0009c783          	lbu	a5,0(s3)
     6ea:	ffe5                	bnez	a5,6e2 <qprints+0x36>
     6ec:	fd442783          	lw	a5,-44(s0)
     6f0:	00f94563          	blt	s2,a5,6fa <qprints+0x4e>
     6f4:	fc042a23          	sw	zero,-44(s0)
     6f8:	a039                	j	706 <qprints+0x5a>
     6fa:	fd442783          	lw	a5,-44(s0)
     6fe:	412787b3          	sub	a5,a5,s2
     702:	fcf42a23          	sw	a5,-44(s0)
     706:	fd042783          	lw	a5,-48(s0)
     70a:	8b89                	andi	a5,a5,2
     70c:	c399                	beqz	a5,712 <qprints+0x66>
     70e:	03000a13          	li	s4,48
     712:	fd042783          	lw	a5,-48(s0)
     716:	8b85                	andi	a5,a5,1
     718:	ef9d                	bnez	a5,756 <qprints+0xaa>
     71a:	a819                	j	730 <qprints+0x84>
     71c:	85d2                	mv	a1,s4
     71e:	fdc42503          	lw	a0,-36(s0)
     722:	3f2d                	jal	65c <qprintchar>
     724:	0485                	addi	s1,s1,1
     726:	fd442783          	lw	a5,-44(s0)
     72a:	17fd                	addi	a5,a5,-1
     72c:	fcf42a23          	sw	a5,-44(s0)
     730:	fd442783          	lw	a5,-44(s0)
     734:	fef044e3          	bgtz	a5,71c <qprints+0x70>
     738:	a839                	j	756 <qprints+0xaa>
     73a:	fd842783          	lw	a5,-40(s0)
     73e:	0007c783          	lbu	a5,0(a5)
     742:	85be                	mv	a1,a5
     744:	fdc42503          	lw	a0,-36(s0)
     748:	3f11                	jal	65c <qprintchar>
     74a:	0485                	addi	s1,s1,1
     74c:	fd842783          	lw	a5,-40(s0)
     750:	0785                	addi	a5,a5,1
     752:	fcf42c23          	sw	a5,-40(s0)
     756:	fd842783          	lw	a5,-40(s0)
     75a:	0007c783          	lbu	a5,0(a5)
     75e:	fff1                	bnez	a5,73a <qprints+0x8e>
     760:	a819                	j	776 <qprints+0xca>
     762:	85d2                	mv	a1,s4
     764:	fdc42503          	lw	a0,-36(s0)
     768:	3dd5                	jal	65c <qprintchar>
     76a:	0485                	addi	s1,s1,1
     76c:	fd442783          	lw	a5,-44(s0)
     770:	17fd                	addi	a5,a5,-1
     772:	fcf42a23          	sw	a5,-44(s0)
     776:	fd442783          	lw	a5,-44(s0)
     77a:	fef044e3          	bgtz	a5,762 <qprints+0xb6>
     77e:	87a6                	mv	a5,s1
     780:	853e                	mv	a0,a5
     782:	50b2                	lw	ra,44(sp)
     784:	5422                	lw	s0,40(sp)
     786:	5492                	lw	s1,36(sp)
     788:	5902                	lw	s2,32(sp)
     78a:	49f2                	lw	s3,28(sp)
     78c:	4a62                	lw	s4,24(sp)
     78e:	6145                	addi	sp,sp,48
     790:	8082                	ret

00000792 <qprinti>:
     792:	7159                	addi	sp,sp,-112
     794:	d686                	sw	ra,108(sp)
     796:	d4a2                	sw	s0,104(sp)
     798:	d2a6                	sw	s1,100(sp)
     79a:	d0ca                	sw	s2,96(sp)
     79c:	cece                	sw	s3,92(sp)
     79e:	1880                	addi	s0,sp,112
     7a0:	faa42623          	sw	a0,-84(s0)
     7a4:	fab42423          	sw	a1,-88(s0)
     7a8:	fac42223          	sw	a2,-92(s0)
     7ac:	fad42023          	sw	a3,-96(s0)
     7b0:	f8e42e23          	sw	a4,-100(s0)
     7b4:	f8f42c23          	sw	a5,-104(s0)
     7b8:	87c2                	mv	a5,a6
     7ba:	f8f40ba3          	sb	a5,-105(s0)
     7be:	4981                	li	s3,0
     7c0:	4901                	li	s2,0
     7c2:	fa842783          	lw	a5,-88(s0)
     7c6:	fcf42e23          	sw	a5,-36(s0)
     7ca:	fa842783          	lw	a5,-88(s0)
     7ce:	e39d                	bnez	a5,7f4 <qprinti+0x62>
     7d0:	03000793          	li	a5,48
     7d4:	faf40c23          	sb	a5,-72(s0)
     7d8:	fa040ca3          	sb	zero,-71(s0)
     7dc:	fb840793          	addi	a5,s0,-72
     7e0:	f9842683          	lw	a3,-104(s0)
     7e4:	f9c42603          	lw	a2,-100(s0)
     7e8:	85be                	mv	a1,a5
     7ea:	fac42503          	lw	a0,-84(s0)
     7ee:	3d7d                	jal	6ac <qprints>
     7f0:	87aa                	mv	a5,a0
     7f2:	a8fd                	j	8f0 <qprinti+0x15e>
     7f4:	fa042783          	lw	a5,-96(s0)
     7f8:	c38d                	beqz	a5,81a <qprinti+0x88>
     7fa:	fa442703          	lw	a4,-92(s0)
     7fe:	47a9                	li	a5,10
     800:	00f71d63          	bne	a4,a5,81a <qprinti+0x88>
     804:	fa842783          	lw	a5,-88(s0)
     808:	0007d963          	bgez	a5,81a <qprinti+0x88>
     80c:	4985                	li	s3,1
     80e:	fa842783          	lw	a5,-88(s0)
     812:	40f007b3          	neg	a5,a5
     816:	fcf42e23          	sw	a5,-36(s0)
     81a:	fb840493          	addi	s1,s0,-72
     81e:	04fd                	addi	s1,s1,31
     820:	00048023          	sb	zero,0(s1)
     824:	fa442703          	lw	a4,-92(s0)
     828:	47c1                	li	a5,16
     82a:	06f71c63          	bne	a4,a5,8a2 <qprinti+0x110>
     82e:	a0a1                	j	876 <qprinti+0xe4>
     830:	fdc42783          	lw	a5,-36(s0)
     834:	8bbd                	andi	a5,a5,15
     836:	fcf42c23          	sw	a5,-40(s0)
     83a:	fd842703          	lw	a4,-40(s0)
     83e:	47a5                	li	a5,9
     840:	00e7db63          	bge	a5,a4,856 <qprinti+0xc4>
     844:	f9744783          	lbu	a5,-105(s0)
     848:	fc678793          	addi	a5,a5,-58
     84c:	fd842703          	lw	a4,-40(s0)
     850:	97ba                	add	a5,a5,a4
     852:	fcf42c23          	sw	a5,-40(s0)
     856:	fd842783          	lw	a5,-40(s0)
     85a:	0ff7f793          	andi	a5,a5,255
     85e:	14fd                	addi	s1,s1,-1
     860:	03078793          	addi	a5,a5,48
     864:	0ff7f793          	andi	a5,a5,255
     868:	00f48023          	sb	a5,0(s1)
     86c:	fdc42783          	lw	a5,-36(s0)
     870:	8391                	srli	a5,a5,0x4
     872:	fcf42e23          	sw	a5,-36(s0)
     876:	fdc42783          	lw	a5,-36(s0)
     87a:	fbdd                	bnez	a5,830 <qprinti+0x9e>
     87c:	a035                	j	8a8 <qprinti+0x116>
     87e:	fdc42503          	lw	a0,-36(s0)
     882:	33ad                	jal	5ec <remu10>
     884:	87aa                	mv	a5,a0
     886:	0ff7f793          	andi	a5,a5,255
     88a:	14fd                	addi	s1,s1,-1
     88c:	03078793          	addi	a5,a5,48
     890:	0ff7f793          	andi	a5,a5,255
     894:	00f48023          	sb	a5,0(s1)
     898:	fdc42503          	lw	a0,-36(s0)
     89c:	31e1                	jal	564 <divu10>
     89e:	fca42e23          	sw	a0,-36(s0)
     8a2:	fdc42783          	lw	a5,-36(s0)
     8a6:	ffe1                	bnez	a5,87e <qprinti+0xec>
     8a8:	02098a63          	beqz	s3,8dc <qprinti+0x14a>
     8ac:	f9c42783          	lw	a5,-100(s0)
     8b0:	c38d                	beqz	a5,8d2 <qprinti+0x140>
     8b2:	f9842783          	lw	a5,-104(s0)
     8b6:	8b89                	andi	a5,a5,2
     8b8:	cf89                	beqz	a5,8d2 <qprinti+0x140>
     8ba:	02d00593          	li	a1,45
     8be:	fac42503          	lw	a0,-84(s0)
     8c2:	3b69                	jal	65c <qprintchar>
     8c4:	0905                	addi	s2,s2,1
     8c6:	f9c42783          	lw	a5,-100(s0)
     8ca:	17fd                	addi	a5,a5,-1
     8cc:	f8f42e23          	sw	a5,-100(s0)
     8d0:	a031                	j	8dc <qprinti+0x14a>
     8d2:	14fd                	addi	s1,s1,-1
     8d4:	02d00793          	li	a5,45
     8d8:	00f48023          	sb	a5,0(s1)
     8dc:	f9842683          	lw	a3,-104(s0)
     8e0:	f9c42603          	lw	a2,-100(s0)
     8e4:	85a6                	mv	a1,s1
     8e6:	fac42503          	lw	a0,-84(s0)
     8ea:	33c9                	jal	6ac <qprints>
     8ec:	87aa                	mv	a5,a0
     8ee:	97ca                	add	a5,a5,s2
     8f0:	853e                	mv	a0,a5
     8f2:	50b6                	lw	ra,108(sp)
     8f4:	5426                	lw	s0,104(sp)
     8f6:	5496                	lw	s1,100(sp)
     8f8:	5906                	lw	s2,96(sp)
     8fa:	49f6                	lw	s3,92(sp)
     8fc:	6165                	addi	sp,sp,112
     8fe:	8082                	ret

00000900 <qprint>:
     900:	7139                	addi	sp,sp,-64
     902:	de06                	sw	ra,60(sp)
     904:	dc22                	sw	s0,56(sp)
     906:	da26                	sw	s1,52(sp)
     908:	d84a                	sw	s2,48(sp)
     90a:	d64e                	sw	s3,44(sp)
     90c:	0080                	addi	s0,sp,64
     90e:	fca42623          	sw	a0,-52(s0)
     912:	fcb42423          	sw	a1,-56(s0)
     916:	fcc42223          	sw	a2,-60(s0)
     91a:	4481                	li	s1,0
     91c:	ac35                	j	b58 <qprint+0x258>
     91e:	fc842783          	lw	a5,-56(s0)
     922:	0007c703          	lbu	a4,0(a5)
     926:	02500793          	li	a5,37
     92a:	20f71663          	bne	a4,a5,b36 <qprint+0x236>
     92e:	fc842783          	lw	a5,-56(s0)
     932:	0785                	addi	a5,a5,1
     934:	fcf42423          	sw	a5,-56(s0)
     938:	4981                	li	s3,0
     93a:	894e                	mv	s2,s3
     93c:	fc842783          	lw	a5,-56(s0)
     940:	0007c783          	lbu	a5,0(a5)
     944:	22078163          	beqz	a5,b66 <qprint+0x266>
     948:	fc842783          	lw	a5,-56(s0)
     94c:	0007c703          	lbu	a4,0(a5)
     950:	02500793          	li	a5,37
     954:	1ef70363          	beq	a4,a5,b3a <qprint+0x23a>
     958:	fc842783          	lw	a5,-56(s0)
     95c:	0007c703          	lbu	a4,0(a5)
     960:	02d00793          	li	a5,45
     964:	02f71063          	bne	a4,a5,984 <qprint+0x84>
     968:	fc842783          	lw	a5,-56(s0)
     96c:	0785                	addi	a5,a5,1
     96e:	fcf42423          	sw	a5,-56(s0)
     972:	4985                	li	s3,1
     974:	a801                	j	984 <qprint+0x84>
     976:	fc842783          	lw	a5,-56(s0)
     97a:	0785                	addi	a5,a5,1
     97c:	fcf42423          	sw	a5,-56(s0)
     980:	0029e993          	ori	s3,s3,2
     984:	fc842783          	lw	a5,-56(s0)
     988:	0007c703          	lbu	a4,0(a5)
     98c:	03000793          	li	a5,48
     990:	fef703e3          	beq	a4,a5,976 <qprint+0x76>
     994:	a015                	j	9b8 <qprint+0xb8>
     996:	87ca                	mv	a5,s2
     998:	078a                	slli	a5,a5,0x2
     99a:	97ca                	add	a5,a5,s2
     99c:	0786                	slli	a5,a5,0x1
     99e:	893e                	mv	s2,a5
     9a0:	fc842783          	lw	a5,-56(s0)
     9a4:	0007c783          	lbu	a5,0(a5)
     9a8:	fd078793          	addi	a5,a5,-48
     9ac:	993e                	add	s2,s2,a5
     9ae:	fc842783          	lw	a5,-56(s0)
     9b2:	0785                	addi	a5,a5,1
     9b4:	fcf42423          	sw	a5,-56(s0)
     9b8:	fc842783          	lw	a5,-56(s0)
     9bc:	0007c703          	lbu	a4,0(a5)
     9c0:	02f00793          	li	a5,47
     9c4:	00e7fa63          	bgeu	a5,a4,9d8 <qprint+0xd8>
     9c8:	fc842783          	lw	a5,-56(s0)
     9cc:	0007c703          	lbu	a4,0(a5)
     9d0:	03900793          	li	a5,57
     9d4:	fce7f1e3          	bgeu	a5,a4,996 <qprint+0x96>
     9d8:	fc842783          	lw	a5,-56(s0)
     9dc:	0007c703          	lbu	a4,0(a5)
     9e0:	07300793          	li	a5,115
     9e4:	02f71a63          	bne	a4,a5,a18 <qprint+0x118>
     9e8:	fc442783          	lw	a5,-60(s0)
     9ec:	00478713          	addi	a4,a5,4
     9f0:	fce42223          	sw	a4,-60(s0)
     9f4:	0007a083          	lw	ra,0(a5)
     9f8:	00008463          	beqz	ra,a00 <qprint+0x100>
     9fc:	8786                	mv	a5,ra
     9fe:	a021                	j	a06 <qprint+0x106>
     a00:	6785                	lui	a5,0x1
     a02:	6bc78793          	addi	a5,a5,1724 # 16bc <__DTOR_END__+0x80>
     a06:	86ce                	mv	a3,s3
     a08:	864a                	mv	a2,s2
     a0a:	85be                	mv	a1,a5
     a0c:	fcc42503          	lw	a0,-52(s0)
     a10:	3971                	jal	6ac <qprints>
     a12:	87aa                	mv	a5,a0
     a14:	94be                	add	s1,s1,a5
     a16:	aa25                	j	b4e <qprint+0x24e>
     a18:	fc842783          	lw	a5,-56(s0)
     a1c:	0007c703          	lbu	a4,0(a5)
     a20:	06400793          	li	a5,100
     a24:	02f71563          	bne	a4,a5,a4e <qprint+0x14e>
     a28:	fc442783          	lw	a5,-60(s0)
     a2c:	00478713          	addi	a4,a5,4
     a30:	fce42223          	sw	a4,-60(s0)
     a34:	438c                	lw	a1,0(a5)
     a36:	06100813          	li	a6,97
     a3a:	87ce                	mv	a5,s3
     a3c:	874a                	mv	a4,s2
     a3e:	4685                	li	a3,1
     a40:	4629                	li	a2,10
     a42:	fcc42503          	lw	a0,-52(s0)
     a46:	33b1                	jal	792 <qprinti>
     a48:	87aa                	mv	a5,a0
     a4a:	94be                	add	s1,s1,a5
     a4c:	a209                	j	b4e <qprint+0x24e>
     a4e:	fc842783          	lw	a5,-56(s0)
     a52:	0007c703          	lbu	a4,0(a5)
     a56:	07500793          	li	a5,117
     a5a:	02f71663          	bne	a4,a5,a86 <qprint+0x186>
     a5e:	fc442783          	lw	a5,-60(s0)
     a62:	00478713          	addi	a4,a5,4
     a66:	fce42223          	sw	a4,-60(s0)
     a6a:	439c                	lw	a5,0(a5)
     a6c:	85be                	mv	a1,a5
     a6e:	06100813          	li	a6,97
     a72:	87ce                	mv	a5,s3
     a74:	874a                	mv	a4,s2
     a76:	4681                	li	a3,0
     a78:	4629                	li	a2,10
     a7a:	fcc42503          	lw	a0,-52(s0)
     a7e:	3b11                	jal	792 <qprinti>
     a80:	87aa                	mv	a5,a0
     a82:	94be                	add	s1,s1,a5
     a84:	a0e9                	j	b4e <qprint+0x24e>
     a86:	fc842783          	lw	a5,-56(s0)
     a8a:	0007c703          	lbu	a4,0(a5)
     a8e:	07800793          	li	a5,120
     a92:	02f71663          	bne	a4,a5,abe <qprint+0x1be>
     a96:	fc442783          	lw	a5,-60(s0)
     a9a:	00478713          	addi	a4,a5,4
     a9e:	fce42223          	sw	a4,-60(s0)
     aa2:	439c                	lw	a5,0(a5)
     aa4:	85be                	mv	a1,a5
     aa6:	06100813          	li	a6,97
     aaa:	87ce                	mv	a5,s3
     aac:	874a                	mv	a4,s2
     aae:	4681                	li	a3,0
     ab0:	4641                	li	a2,16
     ab2:	fcc42503          	lw	a0,-52(s0)
     ab6:	39f1                	jal	792 <qprinti>
     ab8:	87aa                	mv	a5,a0
     aba:	94be                	add	s1,s1,a5
     abc:	a849                	j	b4e <qprint+0x24e>
     abe:	fc842783          	lw	a5,-56(s0)
     ac2:	0007c703          	lbu	a4,0(a5)
     ac6:	05800793          	li	a5,88
     aca:	02f71663          	bne	a4,a5,af6 <qprint+0x1f6>
     ace:	fc442783          	lw	a5,-60(s0)
     ad2:	00478713          	addi	a4,a5,4
     ad6:	fce42223          	sw	a4,-60(s0)
     ada:	439c                	lw	a5,0(a5)
     adc:	85be                	mv	a1,a5
     ade:	04100813          	li	a6,65
     ae2:	87ce                	mv	a5,s3
     ae4:	874a                	mv	a4,s2
     ae6:	4681                	li	a3,0
     ae8:	4641                	li	a2,16
     aea:	fcc42503          	lw	a0,-52(s0)
     aee:	3155                	jal	792 <qprinti>
     af0:	87aa                	mv	a5,a0
     af2:	94be                	add	s1,s1,a5
     af4:	a8a9                	j	b4e <qprint+0x24e>
     af6:	fc842783          	lw	a5,-56(s0)
     afa:	0007c703          	lbu	a4,0(a5)
     afe:	06300793          	li	a5,99
     b02:	04f71663          	bne	a4,a5,b4e <qprint+0x24e>
     b06:	fc442783          	lw	a5,-60(s0)
     b0a:	00478713          	addi	a4,a5,4
     b0e:	fce42223          	sw	a4,-60(s0)
     b12:	439c                	lw	a5,0(a5)
     b14:	0ff7f793          	andi	a5,a5,255
     b18:	fcf40e23          	sb	a5,-36(s0)
     b1c:	fc040ea3          	sb	zero,-35(s0)
     b20:	fdc40793          	addi	a5,s0,-36
     b24:	86ce                	mv	a3,s3
     b26:	864a                	mv	a2,s2
     b28:	85be                	mv	a1,a5
     b2a:	fcc42503          	lw	a0,-52(s0)
     b2e:	3ebd                	jal	6ac <qprints>
     b30:	87aa                	mv	a5,a0
     b32:	94be                	add	s1,s1,a5
     b34:	a829                	j	b4e <qprint+0x24e>
     b36:	0001                	nop
     b38:	a011                	j	b3c <qprint+0x23c>
     b3a:	0001                	nop
     b3c:	fc842783          	lw	a5,-56(s0)
     b40:	0007c783          	lbu	a5,0(a5)
     b44:	85be                	mv	a1,a5
     b46:	fcc42503          	lw	a0,-52(s0)
     b4a:	3e09                	jal	65c <qprintchar>
     b4c:	0485                	addi	s1,s1,1
     b4e:	fc842783          	lw	a5,-56(s0)
     b52:	0785                	addi	a5,a5,1
     b54:	fcf42423          	sw	a5,-56(s0)
     b58:	fc842783          	lw	a5,-56(s0)
     b5c:	0007c783          	lbu	a5,0(a5)
     b60:	da079fe3          	bnez	a5,91e <qprint+0x1e>
     b64:	a011                	j	b68 <qprint+0x268>
     b66:	0001                	nop
     b68:	fcc42783          	lw	a5,-52(s0)
     b6c:	c791                	beqz	a5,b78 <qprint+0x278>
     b6e:	fcc42783          	lw	a5,-52(s0)
     b72:	439c                	lw	a5,0(a5)
     b74:	00078023          	sb	zero,0(a5)
     b78:	87a6                	mv	a5,s1
     b7a:	853e                	mv	a0,a5
     b7c:	50f2                	lw	ra,60(sp)
     b7e:	5462                	lw	s0,56(sp)
     b80:	54d2                	lw	s1,52(sp)
     b82:	5942                	lw	s2,48(sp)
     b84:	59b2                	lw	s3,44(sp)
     b86:	6121                	addi	sp,sp,64
     b88:	8082                	ret

00000b8a <printf>:
     b8a:	715d                	addi	sp,sp,-80
     b8c:	d606                	sw	ra,44(sp)
     b8e:	d422                	sw	s0,40(sp)
     b90:	1800                	addi	s0,sp,48
     b92:	fca42e23          	sw	a0,-36(s0)
     b96:	c04c                	sw	a1,4(s0)
     b98:	c410                	sw	a2,8(s0)
     b9a:	c454                	sw	a3,12(s0)
     b9c:	c818                	sw	a4,16(s0)
     b9e:	c85c                	sw	a5,20(s0)
     ba0:	01042c23          	sw	a6,24(s0)
     ba4:	01142e23          	sw	a7,28(s0)
     ba8:	02040793          	addi	a5,s0,32
     bac:	fcf42c23          	sw	a5,-40(s0)
     bb0:	fd842783          	lw	a5,-40(s0)
     bb4:	1791                	addi	a5,a5,-28
     bb6:	fef42423          	sw	a5,-24(s0)
     bba:	fe842783          	lw	a5,-24(s0)
     bbe:	863e                	mv	a2,a5
     bc0:	fdc42583          	lw	a1,-36(s0)
     bc4:	4501                	li	a0,0
     bc6:	3b2d                	jal	900 <qprint>
     bc8:	fea42623          	sw	a0,-20(s0)
     bcc:	fec42783          	lw	a5,-20(s0)
     bd0:	853e                	mv	a0,a5
     bd2:	50b2                	lw	ra,44(sp)
     bd4:	5422                	lw	s0,40(sp)
     bd6:	6161                	addi	sp,sp,80
     bd8:	8082                	ret

00000bda <puts>:
     bda:	7179                	addi	sp,sp,-48
     bdc:	d606                	sw	ra,44(sp)
     bde:	d422                	sw	s0,40(sp)
     be0:	1800                	addi	s0,sp,48
     be2:	fca42e23          	sw	a0,-36(s0)
     be6:	fe042623          	sw	zero,-20(s0)
     bea:	a839                	j	c08 <puts+0x2e>
     bec:	fec42783          	lw	a5,-20(s0)
     bf0:	00178713          	addi	a4,a5,1
     bf4:	fee42623          	sw	a4,-20(s0)
     bf8:	873e                	mv	a4,a5
     bfa:	fdc42783          	lw	a5,-36(s0)
     bfe:	97ba                	add	a5,a5,a4
     c00:	0007c783          	lbu	a5,0(a5)
     c04:	853e                	mv	a0,a5
     c06:	343d                	jal	634 <putchar>
     c08:	fec42783          	lw	a5,-20(s0)
     c0c:	fdc42703          	lw	a4,-36(s0)
     c10:	97ba                	add	a5,a5,a4
     c12:	0007c783          	lbu	a5,0(a5)
     c16:	fbf9                	bnez	a5,bec <puts+0x12>
     c18:	4529                	li	a0,10
     c1a:	3c29                	jal	634 <putchar>
     c1c:	fec42783          	lw	a5,-20(s0)
     c20:	853e                	mv	a0,a5
     c22:	50b2                	lw	ra,44(sp)
     c24:	5422                	lw	s0,40(sp)
     c26:	6145                	addi	sp,sp,48
     c28:	8082                	ret

00000c2a <strcmp>:
     c2a:	7179                	addi	sp,sp,-48
     c2c:	d622                	sw	s0,44(sp)
     c2e:	1800                	addi	s0,sp,48
     c30:	fca42e23          	sw	a0,-36(s0)
     c34:	fcb42c23          	sw	a1,-40(s0)
     c38:	fdc42703          	lw	a4,-36(s0)
     c3c:	fd842783          	lw	a5,-40(s0)
     c40:	8fd9                	or	a5,a5,a4
     c42:	8b8d                	andi	a5,a5,3
     c44:	e7c9                	bnez	a5,cce <strcmp+0xa4>
     c46:	fdc42783          	lw	a5,-36(s0)
     c4a:	fef42623          	sw	a5,-20(s0)
     c4e:	fd842783          	lw	a5,-40(s0)
     c52:	fef42423          	sw	a5,-24(s0)
     c56:	a089                	j	c98 <strcmp+0x6e>
     c58:	fec42783          	lw	a5,-20(s0)
     c5c:	4398                	lw	a4,0(a5)
     c5e:	feff07b7          	lui	a5,0xfeff0
     c62:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c66:	973e                	add	a4,a4,a5
     c68:	fec42783          	lw	a5,-20(s0)
     c6c:	439c                	lw	a5,0(a5)
     c6e:	fff7c793          	not	a5,a5
     c72:	8f7d                	and	a4,a4,a5
     c74:	808087b7          	lui	a5,0x80808
     c78:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c7c:	8ff9                	and	a5,a5,a4
     c7e:	c399                	beqz	a5,c84 <strcmp+0x5a>
     c80:	4781                	li	a5,0
     c82:	a041                	j	d02 <strcmp+0xd8>
     c84:	fec42783          	lw	a5,-20(s0)
     c88:	0791                	addi	a5,a5,4
     c8a:	fef42623          	sw	a5,-20(s0)
     c8e:	fe842783          	lw	a5,-24(s0)
     c92:	0791                	addi	a5,a5,4
     c94:	fef42423          	sw	a5,-24(s0)
     c98:	fec42783          	lw	a5,-20(s0)
     c9c:	4398                	lw	a4,0(a5)
     c9e:	fe842783          	lw	a5,-24(s0)
     ca2:	439c                	lw	a5,0(a5)
     ca4:	faf70ae3          	beq	a4,a5,c58 <strcmp+0x2e>
     ca8:	fec42783          	lw	a5,-20(s0)
     cac:	fcf42e23          	sw	a5,-36(s0)
     cb0:	fe842783          	lw	a5,-24(s0)
     cb4:	fcf42c23          	sw	a5,-40(s0)
     cb8:	a819                	j	cce <strcmp+0xa4>
     cba:	fdc42783          	lw	a5,-36(s0)
     cbe:	0785                	addi	a5,a5,1
     cc0:	fcf42e23          	sw	a5,-36(s0)
     cc4:	fd842783          	lw	a5,-40(s0)
     cc8:	0785                	addi	a5,a5,1
     cca:	fcf42c23          	sw	a5,-40(s0)
     cce:	fdc42783          	lw	a5,-36(s0)
     cd2:	0007c783          	lbu	a5,0(a5)
     cd6:	cb99                	beqz	a5,cec <strcmp+0xc2>
     cd8:	fdc42783          	lw	a5,-36(s0)
     cdc:	0007c703          	lbu	a4,0(a5)
     ce0:	fd842783          	lw	a5,-40(s0)
     ce4:	0007c783          	lbu	a5,0(a5)
     ce8:	fcf709e3          	beq	a4,a5,cba <strcmp+0x90>
     cec:	fdc42783          	lw	a5,-36(s0)
     cf0:	0007c783          	lbu	a5,0(a5)
     cf4:	873e                	mv	a4,a5
     cf6:	fd842783          	lw	a5,-40(s0)
     cfa:	0007c783          	lbu	a5,0(a5)
     cfe:	40f707b3          	sub	a5,a4,a5
     d02:	853e                	mv	a0,a5
     d04:	5432                	lw	s0,44(sp)
     d06:	6145                	addi	sp,sp,48
     d08:	8082                	ret

00000d0a <memset>:
     d0a:	7179                	addi	sp,sp,-48
     d0c:	d622                	sw	s0,44(sp)
     d0e:	1800                	addi	s0,sp,48
     d10:	fca42e23          	sw	a0,-36(s0)
     d14:	fcb42c23          	sw	a1,-40(s0)
     d18:	fcc42a23          	sw	a2,-44(s0)
     d1c:	fdc42783          	lw	a5,-36(s0)
     d20:	fef42623          	sw	a5,-20(s0)
     d24:	a015                	j	d48 <memset+0x3e>
     d26:	fec42783          	lw	a5,-20(s0)
     d2a:	00178713          	addi	a4,a5,1
     d2e:	fee42623          	sw	a4,-20(s0)
     d32:	fd842703          	lw	a4,-40(s0)
     d36:	0ff77713          	andi	a4,a4,255
     d3a:	00e78023          	sb	a4,0(a5)
     d3e:	fd442783          	lw	a5,-44(s0)
     d42:	17fd                	addi	a5,a5,-1
     d44:	fcf42a23          	sw	a5,-44(s0)
     d48:	fd442783          	lw	a5,-44(s0)
     d4c:	ffe9                	bnez	a5,d26 <memset+0x1c>
     d4e:	fdc42783          	lw	a5,-36(s0)
     d52:	853e                	mv	a0,a5
     d54:	5432                	lw	s0,44(sp)
     d56:	6145                	addi	sp,sp,48
     d58:	8082                	ret

00000d5a <strcpy>:
     d5a:	7179                	addi	sp,sp,-48
     d5c:	d622                	sw	s0,44(sp)
     d5e:	1800                	addi	s0,sp,48
     d60:	fca42e23          	sw	a0,-36(s0)
     d64:	fcb42c23          	sw	a1,-40(s0)
     d68:	fdc42783          	lw	a5,-36(s0)
     d6c:	fef42623          	sw	a5,-20(s0)
     d70:	fd842783          	lw	a5,-40(s0)
     d74:	fef42423          	sw	a5,-24(s0)
     d78:	a01d                	j	d9e <strcpy+0x44>
     d7a:	fe842783          	lw	a5,-24(s0)
     d7e:	0007c703          	lbu	a4,0(a5)
     d82:	fec42783          	lw	a5,-20(s0)
     d86:	00e78023          	sb	a4,0(a5)
     d8a:	fec42783          	lw	a5,-20(s0)
     d8e:	0785                	addi	a5,a5,1
     d90:	fef42623          	sw	a5,-20(s0)
     d94:	fe842783          	lw	a5,-24(s0)
     d98:	0785                	addi	a5,a5,1
     d9a:	fef42423          	sw	a5,-24(s0)
     d9e:	fe842783          	lw	a5,-24(s0)
     da2:	0007c783          	lbu	a5,0(a5)
     da6:	fbf1                	bnez	a5,d7a <strcpy+0x20>
     da8:	fdc42783          	lw	a5,-36(s0)
     dac:	853e                	mv	a0,a5
     dae:	5432                	lw	s0,44(sp)
     db0:	6145                	addi	sp,sp,48
     db2:	8082                	ret

00000db4 <strlen>:
     db4:	7179                	addi	sp,sp,-48
     db6:	d622                	sw	s0,44(sp)
     db8:	1800                	addi	s0,sp,48
     dba:	fca42e23          	sw	a0,-36(s0)
     dbe:	fdc42783          	lw	a5,-36(s0)
     dc2:	fef42623          	sw	a5,-20(s0)
     dc6:	fe042423          	sw	zero,-24(s0)
     dca:	fec42783          	lw	a5,-20(s0)
     dce:	eb81                	bnez	a5,dde <strlen+0x2a>
     dd0:	4781                	li	a5,0
     dd2:	a00d                	j	df4 <strlen+0x40>
     dd4:	fe842783          	lw	a5,-24(s0)
     dd8:	0785                	addi	a5,a5,1
     dda:	fef42423          	sw	a5,-24(s0)
     dde:	fec42783          	lw	a5,-20(s0)
     de2:	00178713          	addi	a4,a5,1
     de6:	fee42623          	sw	a4,-20(s0)
     dea:	0007c783          	lbu	a5,0(a5)
     dee:	f3fd                	bnez	a5,dd4 <strlen+0x20>
     df0:	fe842783          	lw	a5,-24(s0)
     df4:	853e                	mv	a0,a5
     df6:	5432                	lw	s0,44(sp)
     df8:	6145                	addi	sp,sp,48
     dfa:	8082                	ret

00000dfc <set_pin_function>:
     dfc:	7179                	addi	sp,sp,-48
     dfe:	d622                	sw	s0,44(sp)
     e00:	1800                	addi	s0,sp,48
     e02:	fca42e23          	sw	a0,-36(s0)
     e06:	fcb42c23          	sw	a1,-40(s0)
     e0a:	1a1077b7          	lui	a5,0x1a107
     e0e:	439c                	lw	a5,0(a5)
     e10:	fef42623          	sw	a5,-20(s0)
     e14:	fdc42783          	lw	a5,-36(s0)
     e18:	4705                	li	a4,1
     e1a:	00f717b3          	sll	a5,a4,a5
     e1e:	fff7c713          	not	a4,a5
     e22:	fec42783          	lw	a5,-20(s0)
     e26:	8ff9                	and	a5,a5,a4
     e28:	fef42623          	sw	a5,-20(s0)
     e2c:	fdc42783          	lw	a5,-36(s0)
     e30:	fd842703          	lw	a4,-40(s0)
     e34:	00f71733          	sll	a4,a4,a5
     e38:	fec42783          	lw	a5,-20(s0)
     e3c:	8fd9                	or	a5,a5,a4
     e3e:	fef42623          	sw	a5,-20(s0)
     e42:	1a1077b7          	lui	a5,0x1a107
     e46:	fec42703          	lw	a4,-20(s0)
     e4a:	c398                	sw	a4,0(a5)
     e4c:	0001                	nop
     e4e:	5432                	lw	s0,44(sp)
     e50:	6145                	addi	sp,sp,48
     e52:	8082                	ret

00000e54 <get_pin_function>:
     e54:	7179                	addi	sp,sp,-48
     e56:	d622                	sw	s0,44(sp)
     e58:	1800                	addi	s0,sp,48
     e5a:	fca42e23          	sw	a0,-36(s0)
     e5e:	1a1077b7          	lui	a5,0x1a107
     e62:	439c                	lw	a5,0(a5)
     e64:	fef42623          	sw	a5,-20(s0)
     e68:	fec42703          	lw	a4,-20(s0)
     e6c:	fdc42783          	lw	a5,-36(s0)
     e70:	40f757b3          	sra	a5,a4,a5
     e74:	8b85                	andi	a5,a5,1
     e76:	fef42623          	sw	a5,-20(s0)
     e7a:	fec42783          	lw	a5,-20(s0)
     e7e:	853e                	mv	a0,a5
     e80:	5432                	lw	s0,44(sp)
     e82:	6145                	addi	sp,sp,48
     e84:	8082                	ret

00000e86 <set_gpio_pin_direction>:
     e86:	7179                	addi	sp,sp,-48
     e88:	d622                	sw	s0,44(sp)
     e8a:	1800                	addi	s0,sp,48
     e8c:	fca42e23          	sw	a0,-36(s0)
     e90:	fcb42c23          	sw	a1,-40(s0)
     e94:	1a1017b7          	lui	a5,0x1a101
     e98:	439c                	lw	a5,0(a5)
     e9a:	fef42623          	sw	a5,-20(s0)
     e9e:	fd842783          	lw	a5,-40(s0)
     ea2:	ef91                	bnez	a5,ebe <set_gpio_pin_direction+0x38>
     ea4:	fdc42783          	lw	a5,-36(s0)
     ea8:	4705                	li	a4,1
     eaa:	00f717b3          	sll	a5,a4,a5
     eae:	fff7c713          	not	a4,a5
     eb2:	fec42783          	lw	a5,-20(s0)
     eb6:	8ff9                	and	a5,a5,a4
     eb8:	fef42623          	sw	a5,-20(s0)
     ebc:	a819                	j	ed2 <set_gpio_pin_direction+0x4c>
     ebe:	fdc42783          	lw	a5,-36(s0)
     ec2:	4705                	li	a4,1
     ec4:	00f71733          	sll	a4,a4,a5
     ec8:	fec42783          	lw	a5,-20(s0)
     ecc:	8fd9                	or	a5,a5,a4
     ece:	fef42623          	sw	a5,-20(s0)
     ed2:	1a1017b7          	lui	a5,0x1a101
     ed6:	fec42703          	lw	a4,-20(s0)
     eda:	c398                	sw	a4,0(a5)
     edc:	0001                	nop
     ede:	5432                	lw	s0,44(sp)
     ee0:	6145                	addi	sp,sp,48
     ee2:	8082                	ret

00000ee4 <get_gpio_pin_direction>:
     ee4:	7179                	addi	sp,sp,-48
     ee6:	d622                	sw	s0,44(sp)
     ee8:	1800                	addi	s0,sp,48
     eea:	fca42e23          	sw	a0,-36(s0)
     eee:	1a1017b7          	lui	a5,0x1a101
     ef2:	439c                	lw	a5,0(a5)
     ef4:	fef42623          	sw	a5,-20(s0)
     ef8:	fec42703          	lw	a4,-20(s0)
     efc:	fdc42783          	lw	a5,-36(s0)
     f00:	0786                	slli	a5,a5,0x1
     f02:	40f757b3          	sra	a5,a4,a5
     f06:	8b85                	andi	a5,a5,1
     f08:	fef42623          	sw	a5,-20(s0)
     f0c:	fec42783          	lw	a5,-20(s0)
     f10:	853e                	mv	a0,a5
     f12:	5432                	lw	s0,44(sp)
     f14:	6145                	addi	sp,sp,48
     f16:	8082                	ret

00000f18 <set_gpio_pin_value>:
     f18:	7179                	addi	sp,sp,-48
     f1a:	d622                	sw	s0,44(sp)
     f1c:	1800                	addi	s0,sp,48
     f1e:	fca42e23          	sw	a0,-36(s0)
     f22:	fcb42c23          	sw	a1,-40(s0)
     f26:	1a1017b7          	lui	a5,0x1a101
     f2a:	07a1                	addi	a5,a5,8
     f2c:	439c                	lw	a5,0(a5)
     f2e:	fef42623          	sw	a5,-20(s0)
     f32:	fd842783          	lw	a5,-40(s0)
     f36:	ef91                	bnez	a5,f52 <set_gpio_pin_value+0x3a>
     f38:	fdc42783          	lw	a5,-36(s0)
     f3c:	4705                	li	a4,1
     f3e:	00f717b3          	sll	a5,a4,a5
     f42:	fff7c713          	not	a4,a5
     f46:	fec42783          	lw	a5,-20(s0)
     f4a:	8ff9                	and	a5,a5,a4
     f4c:	fef42623          	sw	a5,-20(s0)
     f50:	a819                	j	f66 <set_gpio_pin_value+0x4e>
     f52:	fdc42783          	lw	a5,-36(s0)
     f56:	4705                	li	a4,1
     f58:	00f71733          	sll	a4,a4,a5
     f5c:	fec42783          	lw	a5,-20(s0)
     f60:	8fd9                	or	a5,a5,a4
     f62:	fef42623          	sw	a5,-20(s0)
     f66:	1a1017b7          	lui	a5,0x1a101
     f6a:	07a1                	addi	a5,a5,8
     f6c:	fec42703          	lw	a4,-20(s0)
     f70:	c398                	sw	a4,0(a5)
     f72:	0001                	nop
     f74:	5432                	lw	s0,44(sp)
     f76:	6145                	addi	sp,sp,48
     f78:	8082                	ret

00000f7a <get_gpio_pin_value>:
     f7a:	7179                	addi	sp,sp,-48
     f7c:	d622                	sw	s0,44(sp)
     f7e:	1800                	addi	s0,sp,48
     f80:	fca42e23          	sw	a0,-36(s0)
     f84:	1a1017b7          	lui	a5,0x1a101
     f88:	0791                	addi	a5,a5,4
     f8a:	439c                	lw	a5,0(a5)
     f8c:	fef42623          	sw	a5,-20(s0)
     f90:	fec42703          	lw	a4,-20(s0)
     f94:	fdc42783          	lw	a5,-36(s0)
     f98:	40f757b3          	sra	a5,a4,a5
     f9c:	8b85                	andi	a5,a5,1
     f9e:	fef42623          	sw	a5,-20(s0)
     fa2:	fec42783          	lw	a5,-20(s0)
     fa6:	853e                	mv	a0,a5
     fa8:	5432                	lw	s0,44(sp)
     faa:	6145                	addi	sp,sp,48
     fac:	8082                	ret

00000fae <set_gpio_pin_irq_en>:
     fae:	7179                	addi	sp,sp,-48
     fb0:	d622                	sw	s0,44(sp)
     fb2:	1800                	addi	s0,sp,48
     fb4:	fca42e23          	sw	a0,-36(s0)
     fb8:	fcb42c23          	sw	a1,-40(s0)
     fbc:	1a1017b7          	lui	a5,0x1a101
     fc0:	07b1                	addi	a5,a5,12
     fc2:	439c                	lw	a5,0(a5)
     fc4:	fef42623          	sw	a5,-20(s0)
     fc8:	fd842783          	lw	a5,-40(s0)
     fcc:	ef91                	bnez	a5,fe8 <set_gpio_pin_irq_en+0x3a>
     fce:	fdc42783          	lw	a5,-36(s0)
     fd2:	4705                	li	a4,1
     fd4:	00f717b3          	sll	a5,a4,a5
     fd8:	fff7c793          	not	a5,a5
     fdc:	fec42703          	lw	a4,-20(s0)
     fe0:	8ff9                	and	a5,a5,a4
     fe2:	fef42623          	sw	a5,-20(s0)
     fe6:	a819                	j	ffc <set_gpio_pin_irq_en+0x4e>
     fe8:	fdc42783          	lw	a5,-36(s0)
     fec:	4705                	li	a4,1
     fee:	00f717b3          	sll	a5,a4,a5
     ff2:	fec42703          	lw	a4,-20(s0)
     ff6:	8fd9                	or	a5,a5,a4
     ff8:	fef42623          	sw	a5,-20(s0)
     ffc:	1a1017b7          	lui	a5,0x1a101
    1000:	07b1                	addi	a5,a5,12
    1002:	fec42703          	lw	a4,-20(s0)
    1006:	c398                	sw	a4,0(a5)
    1008:	0001                	nop
    100a:	5432                	lw	s0,44(sp)
    100c:	6145                	addi	sp,sp,48
    100e:	8082                	ret

00001010 <set_gpio_pin_irq_type>:
    1010:	7179                	addi	sp,sp,-48
    1012:	d622                	sw	s0,44(sp)
    1014:	1800                	addi	s0,sp,48
    1016:	fca42e23          	sw	a0,-36(s0)
    101a:	fcb42c23          	sw	a1,-40(s0)
    101e:	1a1017b7          	lui	a5,0x1a101
    1022:	07c1                	addi	a5,a5,16
    1024:	439c                	lw	a5,0(a5)
    1026:	fef42623          	sw	a5,-20(s0)
    102a:	1a1017b7          	lui	a5,0x1a101
    102e:	07d1                	addi	a5,a5,20
    1030:	439c                	lw	a5,0(a5)
    1032:	fef42423          	sw	a5,-24(s0)
    1036:	fd842783          	lw	a5,-40(s0)
    103a:	8b85                	andi	a5,a5,1
    103c:	ef91                	bnez	a5,1058 <set_gpio_pin_irq_type+0x48>
    103e:	fdc42783          	lw	a5,-36(s0)
    1042:	4705                	li	a4,1
    1044:	00f717b3          	sll	a5,a4,a5
    1048:	fff7c793          	not	a5,a5
    104c:	fec42703          	lw	a4,-20(s0)
    1050:	8ff9                	and	a5,a5,a4
    1052:	fef42623          	sw	a5,-20(s0)
    1056:	a819                	j	106c <set_gpio_pin_irq_type+0x5c>
    1058:	fdc42783          	lw	a5,-36(s0)
    105c:	4705                	li	a4,1
    105e:	00f717b3          	sll	a5,a4,a5
    1062:	fec42703          	lw	a4,-20(s0)
    1066:	8fd9                	or	a5,a5,a4
    1068:	fef42623          	sw	a5,-20(s0)
    106c:	fd842783          	lw	a5,-40(s0)
    1070:	8b89                	andi	a5,a5,2
    1072:	ef91                	bnez	a5,108e <set_gpio_pin_irq_type+0x7e>
    1074:	fdc42783          	lw	a5,-36(s0)
    1078:	4705                	li	a4,1
    107a:	00f717b3          	sll	a5,a4,a5
    107e:	fff7c793          	not	a5,a5
    1082:	fe842703          	lw	a4,-24(s0)
    1086:	8ff9                	and	a5,a5,a4
    1088:	fef42423          	sw	a5,-24(s0)
    108c:	a819                	j	10a2 <set_gpio_pin_irq_type+0x92>
    108e:	fdc42783          	lw	a5,-36(s0)
    1092:	4705                	li	a4,1
    1094:	00f717b3          	sll	a5,a4,a5
    1098:	fe842703          	lw	a4,-24(s0)
    109c:	8fd9                	or	a5,a5,a4
    109e:	fef42423          	sw	a5,-24(s0)
    10a2:	1a1017b7          	lui	a5,0x1a101
    10a6:	07c1                	addi	a5,a5,16
    10a8:	fec42703          	lw	a4,-20(s0)
    10ac:	c398                	sw	a4,0(a5)
    10ae:	1a1017b7          	lui	a5,0x1a101
    10b2:	07d1                	addi	a5,a5,20
    10b4:	fe842703          	lw	a4,-24(s0)
    10b8:	c398                	sw	a4,0(a5)
    10ba:	0001                	nop
    10bc:	5432                	lw	s0,44(sp)
    10be:	6145                	addi	sp,sp,48
    10c0:	8082                	ret

000010c2 <get_gpio_irq_status>:
    10c2:	1141                	addi	sp,sp,-16
    10c4:	c622                	sw	s0,12(sp)
    10c6:	0800                	addi	s0,sp,16
    10c8:	1a1017b7          	lui	a5,0x1a101
    10cc:	07e1                	addi	a5,a5,24
    10ce:	439c                	lw	a5,0(a5)
    10d0:	853e                	mv	a0,a5
    10d2:	4432                	lw	s0,12(sp)
    10d4:	0141                	addi	sp,sp,16
    10d6:	8082                	ret

000010d8 <spi_setup_slave>:
    10d8:	1141                	addi	sp,sp,-16
    10da:	c606                	sw	ra,12(sp)
    10dc:	c422                	sw	s0,8(sp)
    10de:	0800                	addi	s0,sp,16
    10e0:	4581                	li	a1,0
    10e2:	4511                	li	a0,4
    10e4:	3b21                	jal	dfc <set_pin_function>
    10e6:	4581                	li	a1,0
    10e8:	4515                	li	a0,5
    10ea:	3b09                	jal	dfc <set_pin_function>
    10ec:	4581                	li	a1,0
    10ee:	4519                	li	a0,6
    10f0:	3331                	jal	dfc <set_pin_function>
    10f2:	4581                	li	a1,0
    10f4:	451d                	li	a0,7
    10f6:	3319                	jal	dfc <set_pin_function>
    10f8:	4581                	li	a1,0
    10fa:	450d                	li	a0,3
    10fc:	3301                	jal	dfc <set_pin_function>
    10fe:	0001                	nop
    1100:	40b2                	lw	ra,12(sp)
    1102:	4422                	lw	s0,8(sp)
    1104:	0141                	addi	sp,sp,16
    1106:	8082                	ret

00001108 <spi_setup_master>:
    1108:	1101                	addi	sp,sp,-32
    110a:	ce06                	sw	ra,28(sp)
    110c:	cc22                	sw	s0,24(sp)
    110e:	1000                	addi	s0,sp,32
    1110:	fea42623          	sw	a0,-20(s0)
    1114:	4581                	li	a1,0
    1116:	453d                	li	a0,15
    1118:	31d5                	jal	dfc <set_pin_function>
    111a:	4581                	li	a1,0
    111c:	4539                	li	a0,14
    111e:	39f9                	jal	dfc <set_pin_function>
    1120:	4581                	li	a1,0
    1122:	4535                	li	a0,13
    1124:	39e1                	jal	dfc <set_pin_function>
    1126:	4581                	li	a1,0
    1128:	4531                	li	a0,12
    112a:	39c9                	jal	dfc <set_pin_function>
    112c:	fec42783          	lw	a5,-20(s0)
    1130:	00f05563          	blez	a5,113a <spi_setup_master+0x32>
    1134:	4581                	li	a1,0
    1136:	4541                	li	a0,16
    1138:	31d1                	jal	dfc <set_pin_function>
    113a:	fec42703          	lw	a4,-20(s0)
    113e:	4785                	li	a5,1
    1140:	00e7d563          	bge	a5,a4,114a <spi_setup_master+0x42>
    1144:	4581                	li	a1,0
    1146:	452d                	li	a0,11
    1148:	3955                	jal	dfc <set_pin_function>
    114a:	fec42703          	lw	a4,-20(s0)
    114e:	4789                	li	a5,2
    1150:	00e7d563          	bge	a5,a4,115a <spi_setup_master+0x52>
    1154:	4581                	li	a1,0
    1156:	4501                	li	a0,0
    1158:	3155                	jal	dfc <set_pin_function>
    115a:	fec42703          	lw	a4,-20(s0)
    115e:	478d                	li	a5,3
    1160:	00e7d563          	bge	a5,a4,116a <spi_setup_master+0x62>
    1164:	4581                	li	a1,0
    1166:	4505                	li	a0,1
    1168:	3951                	jal	dfc <set_pin_function>
    116a:	0001                	nop
    116c:	40f2                	lw	ra,28(sp)
    116e:	4462                	lw	s0,24(sp)
    1170:	6105                	addi	sp,sp,32
    1172:	8082                	ret

00001174 <spi_setup_cmd_addr>:
    1174:	7179                	addi	sp,sp,-48
    1176:	d622                	sw	s0,44(sp)
    1178:	1800                	addi	s0,sp,48
    117a:	fca42e23          	sw	a0,-36(s0)
    117e:	fcb42c23          	sw	a1,-40(s0)
    1182:	fcc42a23          	sw	a2,-44(s0)
    1186:	fcd42823          	sw	a3,-48(s0)
    118a:	02000713          	li	a4,32
    118e:	fd842783          	lw	a5,-40(s0)
    1192:	40f707b3          	sub	a5,a4,a5
    1196:	fdc42703          	lw	a4,-36(s0)
    119a:	00f717b3          	sll	a5,a4,a5
    119e:	fef42623          	sw	a5,-20(s0)
    11a2:	1a1027b7          	lui	a5,0x1a102
    11a6:	07a1                	addi	a5,a5,8
    11a8:	fec42703          	lw	a4,-20(s0)
    11ac:	c398                	sw	a4,0(a5)
    11ae:	1a1027b7          	lui	a5,0x1a102
    11b2:	07b1                	addi	a5,a5,12
    11b4:	fd442703          	lw	a4,-44(s0)
    11b8:	c398                	sw	a4,0(a5)
    11ba:	fd842783          	lw	a5,-40(s0)
    11be:	03f7f693          	andi	a3,a5,63
    11c2:	fd042783          	lw	a5,-48(s0)
    11c6:	00879713          	slli	a4,a5,0x8
    11ca:	6791                	lui	a5,0x4
    11cc:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1828>
    11d0:	8f7d                	and	a4,a4,a5
    11d2:	1a1027b7          	lui	a5,0x1a102
    11d6:	07c1                	addi	a5,a5,16
    11d8:	8f55                	or	a4,a4,a3
    11da:	c398                	sw	a4,0(a5)
    11dc:	0001                	nop
    11de:	5432                	lw	s0,44(sp)
    11e0:	6145                	addi	sp,sp,48
    11e2:	8082                	ret

000011e4 <spi_setup_dummy>:
    11e4:	1101                	addi	sp,sp,-32
    11e6:	ce22                	sw	s0,28(sp)
    11e8:	1000                	addi	s0,sp,32
    11ea:	fea42623          	sw	a0,-20(s0)
    11ee:	feb42423          	sw	a1,-24(s0)
    11f2:	fe842783          	lw	a5,-24(s0)
    11f6:	07c2                	slli	a5,a5,0x10
    11f8:	86be                	mv	a3,a5
    11fa:	fec42703          	lw	a4,-20(s0)
    11fe:	67c1                	lui	a5,0x10
    1200:	17fd                	addi	a5,a5,-1
    1202:	8ff9                	and	a5,a5,a4
    1204:	00f6e733          	or	a4,a3,a5
    1208:	1a1027b7          	lui	a5,0x1a102
    120c:	07d1                	addi	a5,a5,20
    120e:	c398                	sw	a4,0(a5)
    1210:	0001                	nop
    1212:	4472                	lw	s0,28(sp)
    1214:	6105                	addi	sp,sp,32
    1216:	8082                	ret

00001218 <spi_set_datalen>:
    1218:	7179                	addi	sp,sp,-48
    121a:	d622                	sw	s0,44(sp)
    121c:	1800                	addi	s0,sp,48
    121e:	fca42e23          	sw	a0,-36(s0)
    1222:	1a1027b7          	lui	a5,0x1a102
    1226:	07c1                	addi	a5,a5,16
    1228:	439c                	lw	a5,0(a5)
    122a:	fef42623          	sw	a5,-20(s0)
    122e:	fdc42783          	lw	a5,-36(s0)
    1232:	07c2                	slli	a5,a5,0x10
    1234:	873e                	mv	a4,a5
    1236:	fec42783          	lw	a5,-20(s0)
    123a:	86be                	mv	a3,a5
    123c:	67c1                	lui	a5,0x10
    123e:	17fd                	addi	a5,a5,-1
    1240:	8ff5                	and	a5,a5,a3
    1242:	8fd9                	or	a5,a5,a4
    1244:	fef42623          	sw	a5,-20(s0)
    1248:	1a1027b7          	lui	a5,0x1a102
    124c:	07c1                	addi	a5,a5,16
    124e:	fec42703          	lw	a4,-20(s0)
    1252:	c398                	sw	a4,0(a5)
    1254:	0001                	nop
    1256:	5432                	lw	s0,44(sp)
    1258:	6145                	addi	sp,sp,48
    125a:	8082                	ret

0000125c <spi_start_transaction>:
    125c:	1101                	addi	sp,sp,-32
    125e:	ce22                	sw	s0,28(sp)
    1260:	1000                	addi	s0,sp,32
    1262:	fea42623          	sw	a0,-20(s0)
    1266:	feb42423          	sw	a1,-24(s0)
    126a:	fe842783          	lw	a5,-24(s0)
    126e:	07a1                	addi	a5,a5,8
    1270:	4705                	li	a4,1
    1272:	00f71733          	sll	a4,a4,a5
    1276:	6785                	lui	a5,0x1
    1278:	f0078793          	addi	a5,a5,-256 # f00 <get_gpio_pin_direction+0x1c>
    127c:	00f776b3          	and	a3,a4,a5
    1280:	fec42783          	lw	a5,-20(s0)
    1284:	4705                	li	a4,1
    1286:	00f717b3          	sll	a5,a4,a5
    128a:	0ff7f713          	andi	a4,a5,255
    128e:	1a1027b7          	lui	a5,0x1a102
    1292:	8f55                	or	a4,a4,a3
    1294:	c398                	sw	a4,0(a5)
    1296:	0001                	nop
    1298:	4472                	lw	s0,28(sp)
    129a:	6105                	addi	sp,sp,32
    129c:	8082                	ret

0000129e <spi_get_status>:
    129e:	1101                	addi	sp,sp,-32
    12a0:	ce22                	sw	s0,28(sp)
    12a2:	1000                	addi	s0,sp,32
    12a4:	1a1027b7          	lui	a5,0x1a102
    12a8:	439c                	lw	a5,0(a5)
    12aa:	fef42623          	sw	a5,-20(s0)
    12ae:	fec42783          	lw	a5,-20(s0)
    12b2:	853e                	mv	a0,a5
    12b4:	4472                	lw	s0,28(sp)
    12b6:	6105                	addi	sp,sp,32
    12b8:	8082                	ret

000012ba <spi_write_fifo>:
    12ba:	7179                	addi	sp,sp,-48
    12bc:	d622                	sw	s0,44(sp)
    12be:	1800                	addi	s0,sp,48
    12c0:	fca42e23          	sw	a0,-36(s0)
    12c4:	fcb42c23          	sw	a1,-40(s0)
    12c8:	fd842783          	lw	a5,-40(s0)
    12cc:	8795                	srai	a5,a5,0x5
    12ce:	7ff7f793          	andi	a5,a5,2047
    12d2:	fef42623          	sw	a5,-20(s0)
    12d6:	fd842783          	lw	a5,-40(s0)
    12da:	8bfd                	andi	a5,a5,31
    12dc:	c791                	beqz	a5,12e8 <spi_write_fifo+0x2e>
    12de:	fec42783          	lw	a5,-20(s0)
    12e2:	0785                	addi	a5,a5,1
    12e4:	fef42623          	sw	a5,-20(s0)
    12e8:	fe042423          	sw	zero,-24(s0)
    12ec:	a80d                	j	131e <spi_write_fifo+0x64>
    12ee:	0001                	nop
    12f0:	1a1027b7          	lui	a5,0x1a102
    12f4:	439c                	lw	a5,0(a5)
    12f6:	87e1                	srai	a5,a5,0x18
    12f8:	0f87f793          	andi	a5,a5,248
    12fc:	fbf5                	bnez	a5,12f0 <spi_write_fifo+0x36>
    12fe:	fe842783          	lw	a5,-24(s0)
    1302:	078a                	slli	a5,a5,0x2
    1304:	fdc42703          	lw	a4,-36(s0)
    1308:	973e                	add	a4,a4,a5
    130a:	1a1027b7          	lui	a5,0x1a102
    130e:	07e1                	addi	a5,a5,24
    1310:	4318                	lw	a4,0(a4)
    1312:	c398                	sw	a4,0(a5)
    1314:	fe842783          	lw	a5,-24(s0)
    1318:	0785                	addi	a5,a5,1
    131a:	fef42423          	sw	a5,-24(s0)
    131e:	fe842703          	lw	a4,-24(s0)
    1322:	fec42783          	lw	a5,-20(s0)
    1326:	fcf744e3          	blt	a4,a5,12ee <spi_write_fifo+0x34>
    132a:	0001                	nop
    132c:	0001                	nop
    132e:	5432                	lw	s0,44(sp)
    1330:	6145                	addi	sp,sp,48
    1332:	8082                	ret

00001334 <spi_read_fifo>:
    1334:	7179                	addi	sp,sp,-48
    1336:	d622                	sw	s0,44(sp)
    1338:	1800                	addi	s0,sp,48
    133a:	fca42e23          	sw	a0,-36(s0)
    133e:	fcb42c23          	sw	a1,-40(s0)
    1342:	fd842783          	lw	a5,-40(s0)
    1346:	8795                	srai	a5,a5,0x5
    1348:	7ff7f793          	andi	a5,a5,2047
    134c:	fef42623          	sw	a5,-20(s0)
    1350:	fd842783          	lw	a5,-40(s0)
    1354:	8bfd                	andi	a5,a5,31
    1356:	c791                	beqz	a5,1362 <spi_read_fifo+0x2e>
    1358:	fec42783          	lw	a5,-20(s0)
    135c:	0785                	addi	a5,a5,1
    135e:	fef42623          	sw	a5,-20(s0)
    1362:	fe042423          	sw	zero,-24(s0)
    1366:	a815                	j	139a <spi_read_fifo+0x66>
    1368:	0001                	nop
    136a:	1a1027b7          	lui	a5,0x1a102
    136e:	439c                	lw	a5,0(a5)
    1370:	87c1                	srai	a5,a5,0x10
    1372:	0ff7f793          	andi	a5,a5,255
    1376:	dbf5                	beqz	a5,136a <spi_read_fifo+0x36>
    1378:	1a1027b7          	lui	a5,0x1a102
    137c:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    1380:	fe842783          	lw	a5,-24(s0)
    1384:	078a                	slli	a5,a5,0x2
    1386:	fdc42683          	lw	a3,-36(s0)
    138a:	97b6                	add	a5,a5,a3
    138c:	4318                	lw	a4,0(a4)
    138e:	c398                	sw	a4,0(a5)
    1390:	fe842783          	lw	a5,-24(s0)
    1394:	0785                	addi	a5,a5,1
    1396:	fef42423          	sw	a5,-24(s0)
    139a:	fe842703          	lw	a4,-24(s0)
    139e:	fec42783          	lw	a5,-20(s0)
    13a2:	fcf743e3          	blt	a4,a5,1368 <spi_read_fifo+0x34>
    13a6:	0001                	nop
    13a8:	0001                	nop
    13aa:	5432                	lw	s0,44(sp)
    13ac:	6145                	addi	sp,sp,48
    13ae:	8082                	ret

000013b0 <default_exception_handler_c>:
    13b0:	1141                	addi	sp,sp,-16
    13b2:	c622                	sw	s0,12(sp)
    13b4:	0800                	addi	s0,sp,16
    13b6:	a001                	j	13b6 <default_exception_handler_c+0x6>

000013b8 <illegal_insn_handler_c>:
    13b8:	1141                	addi	sp,sp,-16
    13ba:	c622                	sw	s0,12(sp)
    13bc:	0800                	addi	s0,sp,16
    13be:	a001                	j	13be <illegal_insn_handler_c+0x6>

000013c0 <ecall_insn_handler_c>:
    13c0:	1141                	addi	sp,sp,-16
    13c2:	c622                	sw	s0,12(sp)
    13c4:	0800                	addi	s0,sp,16
    13c6:	a001                	j	13c6 <ecall_insn_handler_c+0x6>

000013c8 <ISR_SRAM>:
    13c8:	1141                	addi	sp,sp,-16
    13ca:	c622                	sw	s0,12(sp)
    13cc:	0800                	addi	s0,sp,16
    13ce:	a001                	j	13ce <ISR_SRAM+0x6>

000013d0 <ISR_I2C>:
    13d0:	1141                	addi	sp,sp,-16
    13d2:	c622                	sw	s0,12(sp)
    13d4:	0800                	addi	s0,sp,16
    13d6:	a001                	j	13d6 <ISR_I2C+0x6>

000013d8 <ISR_UART>:
    13d8:	1141                	addi	sp,sp,-16
    13da:	c622                	sw	s0,12(sp)
    13dc:	0800                	addi	s0,sp,16
    13de:	a001                	j	13de <ISR_UART+0x6>

000013e0 <ISR_GPIO>:
    13e0:	1141                	addi	sp,sp,-16
    13e2:	c622                	sw	s0,12(sp)
    13e4:	0800                	addi	s0,sp,16
    13e6:	a001                	j	13e6 <ISR_GPIO+0x6>

000013e8 <ISR_SPIM0>:
    13e8:	1141                	addi	sp,sp,-16
    13ea:	c622                	sw	s0,12(sp)
    13ec:	0800                	addi	s0,sp,16
    13ee:	a001                	j	13ee <ISR_SPIM0+0x6>

000013f0 <ISR_SPIM1>:
    13f0:	1141                	addi	sp,sp,-16
    13f2:	c622                	sw	s0,12(sp)
    13f4:	0800                	addi	s0,sp,16
    13f6:	a001                	j	13f6 <ISR_SPIM1+0x6>
    13f8:	1141                	addi	sp,sp,-16
    13fa:	c622                	sw	s0,12(sp)
    13fc:	0800                	addi	s0,sp,16
    13fe:	a001                	j	13fe <ISR_SPIM1+0xe>
    1400:	1141                	addi	sp,sp,-16
    1402:	c622                	sw	s0,12(sp)
    1404:	0800                	addi	s0,sp,16
    1406:	a001                	j	1406 <ISR_SPIM1+0x16>

00001408 <ISR_TB_OVF>:
    1408:	1141                	addi	sp,sp,-16
    140a:	c622                	sw	s0,12(sp)
    140c:	0800                	addi	s0,sp,16
    140e:	a001                	j	140e <ISR_TB_OVF+0x6>

00001410 <ISR_TB_CMP>:
    1410:	1141                	addi	sp,sp,-16
    1412:	c622                	sw	s0,12(sp)
    1414:	0800                	addi	s0,sp,16
    1416:	a001                	j	1416 <ISR_TB_CMP+0x6>

00001418 <uart_set_cfg>:
    1418:	1101                	addi	sp,sp,-32
    141a:	ce22                	sw	s0,28(sp)
    141c:	1000                	addi	s0,sp,32
    141e:	fea42623          	sw	a0,-20(s0)
    1422:	87ae                	mv	a5,a1
    1424:	fef41523          	sh	a5,-22(s0)
    1428:	1a1077b7          	lui	a5,0x1a107
    142c:	0791                	addi	a5,a5,4
    142e:	4398                	lw	a4,0(a5)
    1430:	1a1077b7          	lui	a5,0x1a107
    1434:	0791                	addi	a5,a5,4
    1436:	00276713          	ori	a4,a4,2
    143a:	c398                	sw	a4,0(a5)
    143c:	1a1007b7          	lui	a5,0x1a100
    1440:	07b1                	addi	a5,a5,12
    1442:	08300713          	li	a4,131
    1446:	c398                	sw	a4,0(a5)
    1448:	fea45783          	lhu	a5,-22(s0)
    144c:	83a1                	srli	a5,a5,0x8
    144e:	07c2                	slli	a5,a5,0x10
    1450:	83c1                	srli	a5,a5,0x10
    1452:	873e                	mv	a4,a5
    1454:	1a1007b7          	lui	a5,0x1a100
    1458:	0791                	addi	a5,a5,4
    145a:	0ff77713          	andi	a4,a4,255
    145e:	c398                	sw	a4,0(a5)
    1460:	fea45703          	lhu	a4,-22(s0)
    1464:	1a1007b7          	lui	a5,0x1a100
    1468:	0ff77713          	andi	a4,a4,255
    146c:	c398                	sw	a4,0(a5)
    146e:	1a1007b7          	lui	a5,0x1a100
    1472:	07a1                	addi	a5,a5,8
    1474:	0a700713          	li	a4,167
    1478:	c398                	sw	a4,0(a5)
    147a:	1a1007b7          	lui	a5,0x1a100
    147e:	07b1                	addi	a5,a5,12
    1480:	470d                	li	a4,3
    1482:	c398                	sw	a4,0(a5)
    1484:	1a1007b7          	lui	a5,0x1a100
    1488:	0791                	addi	a5,a5,4
    148a:	439c                	lw	a5,0(a5)
    148c:	0f07f713          	andi	a4,a5,240
    1490:	1a1007b7          	lui	a5,0x1a100
    1494:	0791                	addi	a5,a5,4
    1496:	00276713          	ori	a4,a4,2
    149a:	c398                	sw	a4,0(a5)
    149c:	0001                	nop
    149e:	4472                	lw	s0,28(sp)
    14a0:	6105                	addi	sp,sp,32
    14a2:	8082                	ret

000014a4 <uart_send>:
    14a4:	7179                	addi	sp,sp,-48
    14a6:	d622                	sw	s0,44(sp)
    14a8:	1800                	addi	s0,sp,48
    14aa:	fca42e23          	sw	a0,-36(s0)
    14ae:	fcb42c23          	sw	a1,-40(s0)
    14b2:	a891                	j	1506 <uart_send+0x62>
    14b4:	0001                	nop
    14b6:	1a1007b7          	lui	a5,0x1a100
    14ba:	07d1                	addi	a5,a5,20
    14bc:	439c                	lw	a5,0(a5)
    14be:	0207f793          	andi	a5,a5,32
    14c2:	dbf5                	beqz	a5,14b6 <uart_send+0x12>
    14c4:	fe042623          	sw	zero,-20(s0)
    14c8:	a035                	j	14f4 <uart_send+0x50>
    14ca:	fdc42783          	lw	a5,-36(s0)
    14ce:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    14d2:	fce42e23          	sw	a4,-36(s0)
    14d6:	0007c703          	lbu	a4,0(a5)
    14da:	1a1007b7          	lui	a5,0x1a100
    14de:	c398                	sw	a4,0(a5)
    14e0:	fd842783          	lw	a5,-40(s0)
    14e4:	17fd                	addi	a5,a5,-1
    14e6:	fcf42c23          	sw	a5,-40(s0)
    14ea:	fec42783          	lw	a5,-20(s0)
    14ee:	0785                	addi	a5,a5,1
    14f0:	fef42623          	sw	a5,-20(s0)
    14f4:	fec42703          	lw	a4,-20(s0)
    14f8:	03f00793          	li	a5,63
    14fc:	00e7e563          	bltu	a5,a4,1506 <uart_send+0x62>
    1500:	fd842783          	lw	a5,-40(s0)
    1504:	f3f9                	bnez	a5,14ca <uart_send+0x26>
    1506:	fd842783          	lw	a5,-40(s0)
    150a:	f7cd                	bnez	a5,14b4 <uart_send+0x10>
    150c:	0001                	nop
    150e:	0001                	nop
    1510:	5432                	lw	s0,44(sp)
    1512:	6145                	addi	sp,sp,48
    1514:	8082                	ret

00001516 <uart_getchar>:
    1516:	1141                	addi	sp,sp,-16
    1518:	c622                	sw	s0,12(sp)
    151a:	0800                	addi	s0,sp,16
    151c:	0001                	nop
    151e:	1a1007b7          	lui	a5,0x1a100
    1522:	07d1                	addi	a5,a5,20
    1524:	439c                	lw	a5,0(a5)
    1526:	0017f713          	andi	a4,a5,1
    152a:	4785                	li	a5,1
    152c:	fef719e3          	bne	a4,a5,151e <uart_getchar+0x8>
    1530:	1a1007b7          	lui	a5,0x1a100
    1534:	439c                	lw	a5,0(a5)
    1536:	0ff7f793          	andi	a5,a5,255
    153a:	853e                	mv	a0,a5
    153c:	4432                	lw	s0,12(sp)
    153e:	0141                	addi	sp,sp,16
    1540:	8082                	ret

00001542 <uart_sendchar>:
    1542:	1101                	addi	sp,sp,-32
    1544:	ce22                	sw	s0,28(sp)
    1546:	1000                	addi	s0,sp,32
    1548:	87aa                	mv	a5,a0
    154a:	fef407a3          	sb	a5,-17(s0)
    154e:	0001                	nop
    1550:	1a1007b7          	lui	a5,0x1a100
    1554:	07d1                	addi	a5,a5,20
    1556:	439c                	lw	a5,0(a5)
    1558:	0207f793          	andi	a5,a5,32
    155c:	dbf5                	beqz	a5,1550 <uart_sendchar+0xe>
    155e:	1a1007b7          	lui	a5,0x1a100
    1562:	fef44703          	lbu	a4,-17(s0)
    1566:	c398                	sw	a4,0(a5)
    1568:	0001                	nop
    156a:	4472                	lw	s0,28(sp)
    156c:	6105                	addi	sp,sp,32
    156e:	8082                	ret

00001570 <uart_wait_tx_done>:
    1570:	1141                	addi	sp,sp,-16
    1572:	c622                	sw	s0,12(sp)
    1574:	0800                	addi	s0,sp,16
    1576:	0001                	nop
    1578:	1a1007b7          	lui	a5,0x1a100
    157c:	07d1                	addi	a5,a5,20
    157e:	439c                	lw	a5,0(a5)
    1580:	0407f793          	andi	a5,a5,64
    1584:	dbf5                	beqz	a5,1578 <uart_wait_tx_done+0x8>
    1586:	0001                	nop
    1588:	0001                	nop
    158a:	4432                	lw	s0,12(sp)
    158c:	0141                	addi	sp,sp,16
    158e:	8082                	ret

00001590 <uart_mysendstring>:
    1590:	7179                	addi	sp,sp,-48
    1592:	d606                	sw	ra,44(sp)
    1594:	d422                	sw	s0,40(sp)
    1596:	1800                	addi	s0,sp,48
    1598:	fca42e23          	sw	a0,-36(s0)
    159c:	fe042623          	sw	zero,-20(s0)
    15a0:	a839                	j	15be <uart_mysendstring+0x2e>
    15a2:	fec42783          	lw	a5,-20(s0)
    15a6:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    15aa:	fee42623          	sw	a4,-20(s0)
    15ae:	873e                	mv	a4,a5
    15b0:	fdc42783          	lw	a5,-36(s0)
    15b4:	97ba                	add	a5,a5,a4
    15b6:	0007c783          	lbu	a5,0(a5)
    15ba:	853e                	mv	a0,a5
    15bc:	3759                	jal	1542 <uart_sendchar>
    15be:	fec42783          	lw	a5,-20(s0)
    15c2:	17fd                	addi	a5,a5,-1
    15c4:	fdc42703          	lw	a4,-36(s0)
    15c8:	97ba                	add	a5,a5,a4
    15ca:	0007c703          	lbu	a4,0(a5)
    15ce:	47a9                	li	a5,10
    15d0:	00f70863          	beq	a4,a5,15e0 <uart_mysendstring+0x50>
    15d4:	fec42703          	lw	a4,-20(s0)
    15d8:	02700793          	li	a5,39
    15dc:	fce7d3e3          	bge	a5,a4,15a2 <uart_mysendstring+0x12>
    15e0:	0001                	nop
    15e2:	50b2                	lw	ra,44(sp)
    15e4:	5422                	lw	s0,40(sp)
    15e6:	6145                	addi	sp,sp,48
    15e8:	8082                	ret

000015ea <uart_getstring>:
    15ea:	1101                	addi	sp,sp,-32
    15ec:	ce06                	sw	ra,28(sp)
    15ee:	cc22                	sw	s0,24(sp)
    15f0:	ca26                	sw	s1,20(sp)
    15f2:	1000                	addi	s0,sp,32
    15f4:	fea42623          	sw	a0,-20(s0)
    15f8:	0001                	nop
    15fa:	fec42483          	lw	s1,-20(s0)
    15fe:	00148793          	addi	a5,s1,1
    1602:	fef42623          	sw	a5,-20(s0)
    1606:	3f01                	jal	1516 <uart_getchar>
    1608:	87aa                	mv	a5,a0
    160a:	00f48023          	sb	a5,0(s1)
    160e:	0004c703          	lbu	a4,0(s1)
    1612:	47a9                	li	a5,10
    1614:	fef713e3          	bne	a4,a5,15fa <uart_getstring+0x10>
    1618:	fec42783          	lw	a5,-20(s0)
    161c:	00078023          	sb	zero,0(a5)
    1620:	0001                	nop
    1622:	40f2                	lw	ra,28(sp)
    1624:	4462                	lw	s0,24(sp)
    1626:	44d2                	lw	s1,20(sp)
    1628:	6105                	addi	sp,sp,32
    162a:	8082                	ret

0000162c <__CTOR_LIST__>:
	...

00001634 <__CTOR_END__>:
	...

Disassembly of section .rodata:

0000163c <.rodata>:
    163c:	5f757063          	bgeu	a0,s7,1c1c <_bss_end+0x544>
    1640:	6570                	flw	fa2,76(a0)
    1642:	6672                	flw	fa2,28(sp)
    1644:	735f 7465 203a      	0x203a7465735f
    164a:	6f6e                	flw	ft10,216(sp)
    164c:	2074                	fld	fa3,192(s0)
    164e:	6d69                	lui	s10,0x1a
    1650:	6c70                	flw	fa2,92(s0)
    1652:	6d65                	lui	s10,0x19
    1654:	6e65                	lui	t3,0x19
    1656:	6574                	flw	fa3,76(a0)
    1658:	2064                	fld	fs1,192(s0)
    165a:	6579                	lui	a0,0x1e
    165c:	0074                	addi	a3,sp,12
    165e:	0000                	unimp
    1660:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1664:	6425                	lui	s0,0x9
    1666:	6e20                	flw	fs0,88(a2)
    1668:	7920746f          	jal	s0,8dfa <_stack+0x6722>
    166c:	7465                	lui	s0,0xffff9
    166e:	7320                	flw	fs0,96(a4)
    1670:	7075                	c.lui	zero,0xffffd
    1672:	6f70                	flw	fa2,92(a4)
    1674:	7472                	flw	fs0,60(sp)
    1676:	6465                	lui	s0,0x19
    1678:	000a                	c.slli	zero,0x2
    167a:	0000                	unimp
    167c:	01c0                	addi	s0,sp,196
    167e:	0000                	unimp
    1680:	01ca                	slli	gp,gp,0x12
    1682:	0000                	unimp
    1684:	01d4                	addi	a3,sp,196
    1686:	0000                	unimp
    1688:	01de                	slli	gp,gp,0x17
    168a:	0000                	unimp
    168c:	01e8                	addi	a0,sp,204
    168e:	0000                	unimp
    1690:	01f2                	slli	gp,gp,0x1c
    1692:	0000                	unimp
    1694:	01fc                	addi	a5,sp,204
    1696:	0000                	unimp
    1698:	0206                	slli	tp,tp,0x1
    169a:	0000                	unimp
    169c:	0210                	addi	a2,sp,256
    169e:	0000                	unimp
    16a0:	021a                	slli	tp,tp,0x6
    16a2:	0000                	unimp
    16a4:	0224                	addi	s1,sp,264
    16a6:	0000                	unimp
    16a8:	022e                	slli	tp,tp,0xb
    16aa:	0000                	unimp
    16ac:	0238                	addi	a4,sp,264
    16ae:	0000                	unimp
    16b0:	0242                	slli	tp,tp,0x10
    16b2:	0000                	unimp
    16b4:	024c                	addi	a1,sp,260
    16b6:	0000                	unimp
    16b8:	0256                	slli	tp,tp,0x15
    16ba:	0000                	unimp
    16bc:	6e28                	flw	fa0,88(a2)
    16be:	6c75                	lui	s8,0x1d
    16c0:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

000016c3 <.shbss>:
	...

Disassembly of section .data:

000016c4 <remu10_table>:
    16c4:	0100                	addi	s0,sp,128
    16c6:	0202                	c.slli64	tp
    16c8:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x16978>
    16cc:	0605                	addi	a2,a2,1
    16ce:	08080707          	0x8080707
    16d2:	0009                	c.nop	2

Disassembly of section .bss:

000016d4 <led_num>:
    16d4:	0000                	unimp
	...

Disassembly of section .stack:

000016d8 <_stack-0x1000>:
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

