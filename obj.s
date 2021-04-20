
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
     180:	5f078513          	addi	a0,a5,1520 # 15f0 <__DTOR_END__>
     184:	20b000ef          	jal	ra,b8e <puts>
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
     1b6:	63078793          	addi	a5,a5,1584 # 1630 <__DTOR_END__+0x40>
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
     266:	61478513          	addi	a0,a5,1556 # 1614 <__DTOR_END__+0x24>
     26a:	0d5000ef          	jal	ra,b3e <printf>
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
     2ae:	3de70713          	addi	a4,a4,990 # 1688 <led_num_cmp>
     2b2:	00001797          	auipc	a5,0x1
     2b6:	3da78793          	addi	a5,a5,986 # 168c <_bss_end>
     2ba:	00f75763          	bge	a4,a5,2c8 <main_entry>

000002be <zero_loop>:
     2be:	00072023          	sw	zero,0(a4)
     2c2:	0711                	addi	a4,a4,4
     2c4:	fee7dde3          	bge	a5,a4,2be <zero_loop>

000002c8 <main_entry>:
     2c8:	4501                	li	a0,0
     2ca:	4585                	li	a1,1
     2cc:	100010ef          	jal	ra,13cc <uart_set_cfg>
     2d0:	4501                	li	a0,0
     2d2:	4581                	li	a1,0
     2d4:	238000ef          	jal	ra,50c <main>
     2d8:	842a                	mv	s0,a0
     2da:	24a010ef          	jal	ra,1524 <uart_wait_tx_done>
     2de:	8522                	mv	a0,s0

000002e0 <ISR_SRAM_ASM>:
     2e0:	711d                	addi	sp,sp,-96
     2e2:	ce86                	sw	ra,92(sp)
     2e4:	0ec000ef          	jal	ra,3d0 <store_regs>
     2e8:	00000097          	auipc	ra,0x0
     2ec:	10208093          	addi	ra,ra,258 # 3ea <end_except>
     2f0:	08c0106f          	j	137c <ISR_SRAM>

000002f4 <ISR_I2C_ASM>:
     2f4:	711d                	addi	sp,sp,-96
     2f6:	ce86                	sw	ra,92(sp)
     2f8:	0d8000ef          	jal	ra,3d0 <store_regs>
     2fc:	00000097          	auipc	ra,0x0
     300:	0ee08093          	addi	ra,ra,238 # 3ea <end_except>
     304:	0800106f          	j	1384 <ISR_I2C>

00000308 <ISR_UART_ASM>:
     308:	711d                	addi	sp,sp,-96
     30a:	ce86                	sw	ra,92(sp)
     30c:	0c4000ef          	jal	ra,3d0 <store_regs>
     310:	00000097          	auipc	ra,0x0
     314:	0da08093          	addi	ra,ra,218 # 3ea <end_except>
     318:	0740106f          	j	138c <ISR_UART>

0000031c <ISR_GPIO_ASM>:
     31c:	711d                	addi	sp,sp,-96
     31e:	ce86                	sw	ra,92(sp)
     320:	0b0000ef          	jal	ra,3d0 <store_regs>
     324:	00000097          	auipc	ra,0x0
     328:	0c608093          	addi	ra,ra,198 # 3ea <end_except>
     32c:	0680106f          	j	1394 <ISR_GPIO>

00000330 <ISR_SPIM0_ASM>:
     330:	711d                	addi	sp,sp,-96
     332:	ce86                	sw	ra,92(sp)
     334:	09c000ef          	jal	ra,3d0 <store_regs>
     338:	00000097          	auipc	ra,0x0
     33c:	0b208093          	addi	ra,ra,178 # 3ea <end_except>
     340:	05c0106f          	j	139c <ISR_SPIM0>

00000344 <ISR_SPIM1_ASM>:
     344:	711d                	addi	sp,sp,-96
     346:	ce86                	sw	ra,92(sp)
     348:	088000ef          	jal	ra,3d0 <store_regs>
     34c:	00000097          	auipc	ra,0x0
     350:	09e08093          	addi	ra,ra,158 # 3ea <end_except>
     354:	0500106f          	j	13a4 <ISR_SPIM1>

00000358 <ISR_TA_CMP_ASM>:
     358:	711d                	addi	sp,sp,-96
     35a:	ce86                	sw	ra,92(sp)
     35c:	074000ef          	jal	ra,3d0 <store_regs>
     360:	00000097          	auipc	ra,0x0
     364:	08a08093          	addi	ra,ra,138 # 3ea <end_except>
     368:	1460006f          	j	4ae <ISR_TA_CMP>

0000036c <ISR_TA_OVF_ASM>:
     36c:	711d                	addi	sp,sp,-96
     36e:	ce86                	sw	ra,92(sp)
     370:	060000ef          	jal	ra,3d0 <store_regs>
     374:	00000097          	auipc	ra,0x0
     378:	07608093          	addi	ra,ra,118 # 3ea <end_except>
     37c:	0300106f          	j	13ac <ISR_TA_OVF>

00000380 <ISR_TB_CMP_ASM>:
     380:	711d                	addi	sp,sp,-96
     382:	ce86                	sw	ra,92(sp)
     384:	04c000ef          	jal	ra,3d0 <store_regs>
     388:	00000097          	auipc	ra,0x0
     38c:	06208093          	addi	ra,ra,98 # 3ea <end_except>
     390:	0340106f          	j	13c4 <ISR_TB_CMP>

00000394 <ISR_TB_OVF_ASM>:
     394:	711d                	addi	sp,sp,-96
     396:	ce86                	sw	ra,92(sp)
     398:	038000ef          	jal	ra,3d0 <store_regs>
     39c:	00000097          	auipc	ra,0x0
     3a0:	04e08093          	addi	ra,ra,78 # 3ea <end_except>
     3a4:	0180106f          	j	13bc <ISR_TB_OVF>

000003a8 <illegal_insn_handler>:
     3a8:	711d                	addi	sp,sp,-96
     3aa:	ce86                	sw	ra,92(sp)
     3ac:	024000ef          	jal	ra,3d0 <store_regs>
     3b0:	00000097          	auipc	ra,0x0
     3b4:	03a08093          	addi	ra,ra,58 # 3ea <end_except>
     3b8:	7b50006f          	j	136c <illegal_insn_handler_c>

000003bc <ecall_insn_handler>:
     3bc:	711d                	addi	sp,sp,-96
     3be:	ce86                	sw	ra,92(sp)
     3c0:	010000ef          	jal	ra,3d0 <store_regs>
     3c4:	00000097          	auipc	ra,0x0
     3c8:	02608093          	addi	ra,ra,38 # 3ea <end_except>
     3cc:	7a90006f          	j	1374 <ecall_insn_handler_c>

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
     43e:	4705                	li	a4,1
     440:	68e7a423          	sw	a4,1672(a5) # 1688 <led_num_cmp>
     444:	fe042623          	sw	zero,-20(s0)
     448:	a005                	j	468 <configure+0x34>
     44a:	4585                	li	a1,1
     44c:	fec42503          	lw	a0,-20(s0)
     450:	1eb000ef          	jal	ra,e3a <set_gpio_pin_direction>
     454:	4581                	li	a1,0
     456:	fec42503          	lw	a0,-20(s0)
     45a:	273000ef          	jal	ra,ecc <set_gpio_pin_value>
     45e:	fec42783          	lw	a5,-20(s0)
     462:	0785                	addi	a5,a5,1
     464:	fef42623          	sw	a5,-20(s0)
     468:	fec42703          	lw	a4,-20(s0)
     46c:	479d                	li	a5,7
     46e:	fce7dee3          	bge	a5,a4,44a <configure+0x16>
     472:	1a1047b7          	lui	a5,0x1a104
     476:	07f1                	addi	a5,a5,28
     478:	577d                	li	a4,-1
     47a:	c398                	sw	a4,0(a5)
     47c:	1a1047b7          	lui	a5,0x1a104
     480:	07b1                	addi	a5,a5,12
     482:	577d                	li	a4,-1
     484:	c398                	sw	a4,0(a5)
     486:	1a1047b7          	lui	a5,0x1a104
     48a:	20000737          	lui	a4,0x20000
     48e:	c398                	sw	a4,0(a5)
     490:	3fad                	jal	40a <int_enable>
     492:	1a1037b7          	lui	a5,0x1a103
     496:	07a1                	addi	a5,a5,8
     498:	01000737          	lui	a4,0x1000
     49c:	177d                	addi	a4,a4,-1
     49e:	c398                	sw	a4,0(a5)
     4a0:	36f5                	jal	8c <reset_timer>
     4a2:	3101                	jal	a2 <start_timer>
     4a4:	0001                	nop
     4a6:	40f2                	lw	ra,28(sp)
     4a8:	4462                	lw	s0,24(sp)
     4aa:	6105                	addi	sp,sp,32
     4ac:	8082                	ret

000004ae <ISR_TA_CMP>:
     4ae:	1141                	addi	sp,sp,-16
     4b0:	c606                	sw	ra,12(sp)
     4b2:	c422                	sw	s0,8(sp)
     4b4:	0800                	addi	s0,sp,16
     4b6:	1a1047b7          	lui	a5,0x1a104
     4ba:	07b1                	addi	a5,a5,12
     4bc:	20000737          	lui	a4,0x20000
     4c0:	c398                	sw	a4,0(a5)
     4c2:	6785                	lui	a5,0x1
     4c4:	6887a703          	lw	a4,1672(a5) # 1688 <led_num_cmp>
     4c8:	47a5                	li	a5,9
     4ca:	02f77733          	remu	a4,a4,a5
     4ce:	6785                	lui	a5,0x1
     4d0:	68e7a423          	sw	a4,1672(a5) # 1688 <led_num_cmp>
     4d4:	6785                	lui	a5,0x1
     4d6:	6887a783          	lw	a5,1672(a5) # 1688 <led_num_cmp>
     4da:	17fd                	addi	a5,a5,-1
     4dc:	4581                	li	a1,0
     4de:	853e                	mv	a0,a5
     4e0:	1ed000ef          	jal	ra,ecc <set_gpio_pin_value>
     4e4:	6785                	lui	a5,0x1
     4e6:	6887a783          	lw	a5,1672(a5) # 1688 <led_num_cmp>
     4ea:	4585                	li	a1,1
     4ec:	853e                	mv	a0,a5
     4ee:	1df000ef          	jal	ra,ecc <set_gpio_pin_value>
     4f2:	6785                	lui	a5,0x1
     4f4:	6887a783          	lw	a5,1672(a5) # 1688 <led_num_cmp>
     4f8:	00178713          	addi	a4,a5,1
     4fc:	6785                	lui	a5,0x1
     4fe:	68e7a423          	sw	a4,1672(a5) # 1688 <led_num_cmp>
     502:	0001                	nop
     504:	40b2                	lw	ra,12(sp)
     506:	4422                	lw	s0,8(sp)
     508:	0141                	addi	sp,sp,16
     50a:	8082                	ret

0000050c <main>:
     50c:	1141                	addi	sp,sp,-16
     50e:	c606                	sw	ra,12(sp)
     510:	c422                	sw	s0,8(sp)
     512:	0800                	addi	s0,sp,16
     514:	3705                	jal	434 <configure>
     516:	a001                	j	516 <main+0xa>

00000518 <divu10>:
     518:	7179                	addi	sp,sp,-48
     51a:	d622                	sw	s0,44(sp)
     51c:	1800                	addi	s0,sp,48
     51e:	fca42e23          	sw	a0,-36(s0)
     522:	fdc42783          	lw	a5,-36(s0)
     526:	0017d713          	srli	a4,a5,0x1
     52a:	fdc42783          	lw	a5,-36(s0)
     52e:	8389                	srli	a5,a5,0x2
     530:	97ba                	add	a5,a5,a4
     532:	fef42623          	sw	a5,-20(s0)
     536:	fec42783          	lw	a5,-20(s0)
     53a:	8391                	srli	a5,a5,0x4
     53c:	fec42703          	lw	a4,-20(s0)
     540:	97ba                	add	a5,a5,a4
     542:	fef42623          	sw	a5,-20(s0)
     546:	fec42783          	lw	a5,-20(s0)
     54a:	83a1                	srli	a5,a5,0x8
     54c:	fec42703          	lw	a4,-20(s0)
     550:	97ba                	add	a5,a5,a4
     552:	fef42623          	sw	a5,-20(s0)
     556:	fec42783          	lw	a5,-20(s0)
     55a:	83c1                	srli	a5,a5,0x10
     55c:	fec42703          	lw	a4,-20(s0)
     560:	97ba                	add	a5,a5,a4
     562:	fef42623          	sw	a5,-20(s0)
     566:	fec42783          	lw	a5,-20(s0)
     56a:	838d                	srli	a5,a5,0x3
     56c:	fef42623          	sw	a5,-20(s0)
     570:	fec42703          	lw	a4,-20(s0)
     574:	87ba                	mv	a5,a4
     576:	078a                	slli	a5,a5,0x2
     578:	97ba                	add	a5,a5,a4
     57a:	0786                	slli	a5,a5,0x1
     57c:	873e                	mv	a4,a5
     57e:	fdc42783          	lw	a5,-36(s0)
     582:	8f99                	sub	a5,a5,a4
     584:	fef42423          	sw	a5,-24(s0)
     588:	fe842783          	lw	a5,-24(s0)
     58c:	0799                	addi	a5,a5,6
     58e:	0047d713          	srli	a4,a5,0x4
     592:	fec42783          	lw	a5,-20(s0)
     596:	97ba                	add	a5,a5,a4
     598:	853e                	mv	a0,a5
     59a:	5432                	lw	s0,44(sp)
     59c:	6145                	addi	sp,sp,48
     59e:	8082                	ret

000005a0 <remu10>:
     5a0:	1101                	addi	sp,sp,-32
     5a2:	ce22                	sw	s0,28(sp)
     5a4:	1000                	addi	s0,sp,32
     5a6:	fea42623          	sw	a0,-20(s0)
     5aa:	fec42703          	lw	a4,-20(s0)
     5ae:	1999a7b7          	lui	a5,0x1999a
     5b2:	99978793          	addi	a5,a5,-1639 # 19999999 <_stack_start+0x19895999>
     5b6:	02f70733          	mul	a4,a4,a5
     5ba:	fec42783          	lw	a5,-20(s0)
     5be:	8385                	srli	a5,a5,0x1
     5c0:	973e                	add	a4,a4,a5
     5c2:	fec42783          	lw	a5,-20(s0)
     5c6:	838d                	srli	a5,a5,0x3
     5c8:	97ba                	add	a5,a5,a4
     5ca:	83f1                	srli	a5,a5,0x1c
     5cc:	fef42623          	sw	a5,-20(s0)
     5d0:	6785                	lui	a5,0x1
     5d2:	67878713          	addi	a4,a5,1656 # 1678 <remu10_table>
     5d6:	fec42783          	lw	a5,-20(s0)
     5da:	97ba                	add	a5,a5,a4
     5dc:	0007c783          	lbu	a5,0(a5)
     5e0:	853e                	mv	a0,a5
     5e2:	4472                	lw	s0,28(sp)
     5e4:	6105                	addi	sp,sp,32
     5e6:	8082                	ret

000005e8 <putchar>:
     5e8:	1101                	addi	sp,sp,-32
     5ea:	ce06                	sw	ra,28(sp)
     5ec:	cc22                	sw	s0,24(sp)
     5ee:	1000                	addi	s0,sp,32
     5f0:	fea42623          	sw	a0,-20(s0)
     5f4:	fec42783          	lw	a5,-20(s0)
     5f8:	0ff7f793          	andi	a5,a5,255
     5fc:	853e                	mv	a0,a5
     5fe:	6f9000ef          	jal	ra,14f6 <uart_sendchar>
     602:	fec42783          	lw	a5,-20(s0)
     606:	853e                	mv	a0,a5
     608:	40f2                	lw	ra,28(sp)
     60a:	4462                	lw	s0,24(sp)
     60c:	6105                	addi	sp,sp,32
     60e:	8082                	ret

00000610 <qprintchar>:
     610:	1101                	addi	sp,sp,-32
     612:	ce06                	sw	ra,28(sp)
     614:	cc22                	sw	s0,24(sp)
     616:	1000                	addi	s0,sp,32
     618:	fea42623          	sw	a0,-20(s0)
     61c:	feb42423          	sw	a1,-24(s0)
     620:	fec42783          	lw	a5,-20(s0)
     624:	c39d                	beqz	a5,64a <qprintchar+0x3a>
     626:	fec42783          	lw	a5,-20(s0)
     62a:	439c                	lw	a5,0(a5)
     62c:	fe842703          	lw	a4,-24(s0)
     630:	0ff77713          	andi	a4,a4,255
     634:	00e78023          	sb	a4,0(a5)
     638:	fec42783          	lw	a5,-20(s0)
     63c:	439c                	lw	a5,0(a5)
     63e:	00178713          	addi	a4,a5,1
     642:	fec42783          	lw	a5,-20(s0)
     646:	c398                	sw	a4,0(a5)
     648:	a039                	j	656 <qprintchar+0x46>
     64a:	fe842783          	lw	a5,-24(s0)
     64e:	0ff7f793          	andi	a5,a5,255
     652:	853e                	mv	a0,a5
     654:	3f51                	jal	5e8 <putchar>
     656:	0001                	nop
     658:	40f2                	lw	ra,28(sp)
     65a:	4462                	lw	s0,24(sp)
     65c:	6105                	addi	sp,sp,32
     65e:	8082                	ret

00000660 <qprints>:
     660:	7179                	addi	sp,sp,-48
     662:	d606                	sw	ra,44(sp)
     664:	d422                	sw	s0,40(sp)
     666:	d226                	sw	s1,36(sp)
     668:	d04a                	sw	s2,32(sp)
     66a:	ce4e                	sw	s3,28(sp)
     66c:	cc52                	sw	s4,24(sp)
     66e:	1800                	addi	s0,sp,48
     670:	fca42e23          	sw	a0,-36(s0)
     674:	fcb42c23          	sw	a1,-40(s0)
     678:	fcc42a23          	sw	a2,-44(s0)
     67c:	fcd42823          	sw	a3,-48(s0)
     680:	4481                	li	s1,0
     682:	02000a13          	li	s4,32
     686:	fd442783          	lw	a5,-44(s0)
     68a:	02f05e63          	blez	a5,6c6 <qprints+0x66>
     68e:	4901                	li	s2,0
     690:	fd842983          	lw	s3,-40(s0)
     694:	a019                	j	69a <qprints+0x3a>
     696:	0905                	addi	s2,s2,1
     698:	0985                	addi	s3,s3,1
     69a:	0009c783          	lbu	a5,0(s3)
     69e:	ffe5                	bnez	a5,696 <qprints+0x36>
     6a0:	fd442783          	lw	a5,-44(s0)
     6a4:	00f94563          	blt	s2,a5,6ae <qprints+0x4e>
     6a8:	fc042a23          	sw	zero,-44(s0)
     6ac:	a039                	j	6ba <qprints+0x5a>
     6ae:	fd442783          	lw	a5,-44(s0)
     6b2:	412787b3          	sub	a5,a5,s2
     6b6:	fcf42a23          	sw	a5,-44(s0)
     6ba:	fd042783          	lw	a5,-48(s0)
     6be:	8b89                	andi	a5,a5,2
     6c0:	c399                	beqz	a5,6c6 <qprints+0x66>
     6c2:	03000a13          	li	s4,48
     6c6:	fd042783          	lw	a5,-48(s0)
     6ca:	8b85                	andi	a5,a5,1
     6cc:	ef9d                	bnez	a5,70a <qprints+0xaa>
     6ce:	a819                	j	6e4 <qprints+0x84>
     6d0:	85d2                	mv	a1,s4
     6d2:	fdc42503          	lw	a0,-36(s0)
     6d6:	3f2d                	jal	610 <qprintchar>
     6d8:	0485                	addi	s1,s1,1
     6da:	fd442783          	lw	a5,-44(s0)
     6de:	17fd                	addi	a5,a5,-1
     6e0:	fcf42a23          	sw	a5,-44(s0)
     6e4:	fd442783          	lw	a5,-44(s0)
     6e8:	fef044e3          	bgtz	a5,6d0 <qprints+0x70>
     6ec:	a839                	j	70a <qprints+0xaa>
     6ee:	fd842783          	lw	a5,-40(s0)
     6f2:	0007c783          	lbu	a5,0(a5)
     6f6:	85be                	mv	a1,a5
     6f8:	fdc42503          	lw	a0,-36(s0)
     6fc:	3f11                	jal	610 <qprintchar>
     6fe:	0485                	addi	s1,s1,1
     700:	fd842783          	lw	a5,-40(s0)
     704:	0785                	addi	a5,a5,1
     706:	fcf42c23          	sw	a5,-40(s0)
     70a:	fd842783          	lw	a5,-40(s0)
     70e:	0007c783          	lbu	a5,0(a5)
     712:	fff1                	bnez	a5,6ee <qprints+0x8e>
     714:	a819                	j	72a <qprints+0xca>
     716:	85d2                	mv	a1,s4
     718:	fdc42503          	lw	a0,-36(s0)
     71c:	3dd5                	jal	610 <qprintchar>
     71e:	0485                	addi	s1,s1,1
     720:	fd442783          	lw	a5,-44(s0)
     724:	17fd                	addi	a5,a5,-1
     726:	fcf42a23          	sw	a5,-44(s0)
     72a:	fd442783          	lw	a5,-44(s0)
     72e:	fef044e3          	bgtz	a5,716 <qprints+0xb6>
     732:	87a6                	mv	a5,s1
     734:	853e                	mv	a0,a5
     736:	50b2                	lw	ra,44(sp)
     738:	5422                	lw	s0,40(sp)
     73a:	5492                	lw	s1,36(sp)
     73c:	5902                	lw	s2,32(sp)
     73e:	49f2                	lw	s3,28(sp)
     740:	4a62                	lw	s4,24(sp)
     742:	6145                	addi	sp,sp,48
     744:	8082                	ret

00000746 <qprinti>:
     746:	7159                	addi	sp,sp,-112
     748:	d686                	sw	ra,108(sp)
     74a:	d4a2                	sw	s0,104(sp)
     74c:	d2a6                	sw	s1,100(sp)
     74e:	d0ca                	sw	s2,96(sp)
     750:	cece                	sw	s3,92(sp)
     752:	1880                	addi	s0,sp,112
     754:	faa42623          	sw	a0,-84(s0)
     758:	fab42423          	sw	a1,-88(s0)
     75c:	fac42223          	sw	a2,-92(s0)
     760:	fad42023          	sw	a3,-96(s0)
     764:	f8e42e23          	sw	a4,-100(s0)
     768:	f8f42c23          	sw	a5,-104(s0)
     76c:	87c2                	mv	a5,a6
     76e:	f8f40ba3          	sb	a5,-105(s0)
     772:	4981                	li	s3,0
     774:	4901                	li	s2,0
     776:	fa842783          	lw	a5,-88(s0)
     77a:	fcf42e23          	sw	a5,-36(s0)
     77e:	fa842783          	lw	a5,-88(s0)
     782:	e39d                	bnez	a5,7a8 <qprinti+0x62>
     784:	03000793          	li	a5,48
     788:	faf40c23          	sb	a5,-72(s0)
     78c:	fa040ca3          	sb	zero,-71(s0)
     790:	fb840793          	addi	a5,s0,-72
     794:	f9842683          	lw	a3,-104(s0)
     798:	f9c42603          	lw	a2,-100(s0)
     79c:	85be                	mv	a1,a5
     79e:	fac42503          	lw	a0,-84(s0)
     7a2:	3d7d                	jal	660 <qprints>
     7a4:	87aa                	mv	a5,a0
     7a6:	a8fd                	j	8a4 <qprinti+0x15e>
     7a8:	fa042783          	lw	a5,-96(s0)
     7ac:	c38d                	beqz	a5,7ce <qprinti+0x88>
     7ae:	fa442703          	lw	a4,-92(s0)
     7b2:	47a9                	li	a5,10
     7b4:	00f71d63          	bne	a4,a5,7ce <qprinti+0x88>
     7b8:	fa842783          	lw	a5,-88(s0)
     7bc:	0007d963          	bgez	a5,7ce <qprinti+0x88>
     7c0:	4985                	li	s3,1
     7c2:	fa842783          	lw	a5,-88(s0)
     7c6:	40f007b3          	neg	a5,a5
     7ca:	fcf42e23          	sw	a5,-36(s0)
     7ce:	fb840493          	addi	s1,s0,-72
     7d2:	04fd                	addi	s1,s1,31
     7d4:	00048023          	sb	zero,0(s1)
     7d8:	fa442703          	lw	a4,-92(s0)
     7dc:	47c1                	li	a5,16
     7de:	06f71c63          	bne	a4,a5,856 <qprinti+0x110>
     7e2:	a0a1                	j	82a <qprinti+0xe4>
     7e4:	fdc42783          	lw	a5,-36(s0)
     7e8:	8bbd                	andi	a5,a5,15
     7ea:	fcf42c23          	sw	a5,-40(s0)
     7ee:	fd842703          	lw	a4,-40(s0)
     7f2:	47a5                	li	a5,9
     7f4:	00e7db63          	bge	a5,a4,80a <qprinti+0xc4>
     7f8:	f9744783          	lbu	a5,-105(s0)
     7fc:	fc678793          	addi	a5,a5,-58
     800:	fd842703          	lw	a4,-40(s0)
     804:	97ba                	add	a5,a5,a4
     806:	fcf42c23          	sw	a5,-40(s0)
     80a:	fd842783          	lw	a5,-40(s0)
     80e:	0ff7f793          	andi	a5,a5,255
     812:	14fd                	addi	s1,s1,-1
     814:	03078793          	addi	a5,a5,48
     818:	0ff7f793          	andi	a5,a5,255
     81c:	00f48023          	sb	a5,0(s1)
     820:	fdc42783          	lw	a5,-36(s0)
     824:	8391                	srli	a5,a5,0x4
     826:	fcf42e23          	sw	a5,-36(s0)
     82a:	fdc42783          	lw	a5,-36(s0)
     82e:	fbdd                	bnez	a5,7e4 <qprinti+0x9e>
     830:	a035                	j	85c <qprinti+0x116>
     832:	fdc42503          	lw	a0,-36(s0)
     836:	33ad                	jal	5a0 <remu10>
     838:	87aa                	mv	a5,a0
     83a:	0ff7f793          	andi	a5,a5,255
     83e:	14fd                	addi	s1,s1,-1
     840:	03078793          	addi	a5,a5,48
     844:	0ff7f793          	andi	a5,a5,255
     848:	00f48023          	sb	a5,0(s1)
     84c:	fdc42503          	lw	a0,-36(s0)
     850:	31e1                	jal	518 <divu10>
     852:	fca42e23          	sw	a0,-36(s0)
     856:	fdc42783          	lw	a5,-36(s0)
     85a:	ffe1                	bnez	a5,832 <qprinti+0xec>
     85c:	02098a63          	beqz	s3,890 <qprinti+0x14a>
     860:	f9c42783          	lw	a5,-100(s0)
     864:	c38d                	beqz	a5,886 <qprinti+0x140>
     866:	f9842783          	lw	a5,-104(s0)
     86a:	8b89                	andi	a5,a5,2
     86c:	cf89                	beqz	a5,886 <qprinti+0x140>
     86e:	02d00593          	li	a1,45
     872:	fac42503          	lw	a0,-84(s0)
     876:	3b69                	jal	610 <qprintchar>
     878:	0905                	addi	s2,s2,1
     87a:	f9c42783          	lw	a5,-100(s0)
     87e:	17fd                	addi	a5,a5,-1
     880:	f8f42e23          	sw	a5,-100(s0)
     884:	a031                	j	890 <qprinti+0x14a>
     886:	14fd                	addi	s1,s1,-1
     888:	02d00793          	li	a5,45
     88c:	00f48023          	sb	a5,0(s1)
     890:	f9842683          	lw	a3,-104(s0)
     894:	f9c42603          	lw	a2,-100(s0)
     898:	85a6                	mv	a1,s1
     89a:	fac42503          	lw	a0,-84(s0)
     89e:	33c9                	jal	660 <qprints>
     8a0:	87aa                	mv	a5,a0
     8a2:	97ca                	add	a5,a5,s2
     8a4:	853e                	mv	a0,a5
     8a6:	50b6                	lw	ra,108(sp)
     8a8:	5426                	lw	s0,104(sp)
     8aa:	5496                	lw	s1,100(sp)
     8ac:	5906                	lw	s2,96(sp)
     8ae:	49f6                	lw	s3,92(sp)
     8b0:	6165                	addi	sp,sp,112
     8b2:	8082                	ret

000008b4 <qprint>:
     8b4:	7139                	addi	sp,sp,-64
     8b6:	de06                	sw	ra,60(sp)
     8b8:	dc22                	sw	s0,56(sp)
     8ba:	da26                	sw	s1,52(sp)
     8bc:	d84a                	sw	s2,48(sp)
     8be:	d64e                	sw	s3,44(sp)
     8c0:	0080                	addi	s0,sp,64
     8c2:	fca42623          	sw	a0,-52(s0)
     8c6:	fcb42423          	sw	a1,-56(s0)
     8ca:	fcc42223          	sw	a2,-60(s0)
     8ce:	4481                	li	s1,0
     8d0:	ac35                	j	b0c <qprint+0x258>
     8d2:	fc842783          	lw	a5,-56(s0)
     8d6:	0007c703          	lbu	a4,0(a5)
     8da:	02500793          	li	a5,37
     8de:	20f71663          	bne	a4,a5,aea <qprint+0x236>
     8e2:	fc842783          	lw	a5,-56(s0)
     8e6:	0785                	addi	a5,a5,1
     8e8:	fcf42423          	sw	a5,-56(s0)
     8ec:	4981                	li	s3,0
     8ee:	894e                	mv	s2,s3
     8f0:	fc842783          	lw	a5,-56(s0)
     8f4:	0007c783          	lbu	a5,0(a5)
     8f8:	22078163          	beqz	a5,b1a <qprint+0x266>
     8fc:	fc842783          	lw	a5,-56(s0)
     900:	0007c703          	lbu	a4,0(a5)
     904:	02500793          	li	a5,37
     908:	1ef70363          	beq	a4,a5,aee <qprint+0x23a>
     90c:	fc842783          	lw	a5,-56(s0)
     910:	0007c703          	lbu	a4,0(a5)
     914:	02d00793          	li	a5,45
     918:	02f71063          	bne	a4,a5,938 <qprint+0x84>
     91c:	fc842783          	lw	a5,-56(s0)
     920:	0785                	addi	a5,a5,1
     922:	fcf42423          	sw	a5,-56(s0)
     926:	4985                	li	s3,1
     928:	a801                	j	938 <qprint+0x84>
     92a:	fc842783          	lw	a5,-56(s0)
     92e:	0785                	addi	a5,a5,1
     930:	fcf42423          	sw	a5,-56(s0)
     934:	0029e993          	ori	s3,s3,2
     938:	fc842783          	lw	a5,-56(s0)
     93c:	0007c703          	lbu	a4,0(a5)
     940:	03000793          	li	a5,48
     944:	fef703e3          	beq	a4,a5,92a <qprint+0x76>
     948:	a015                	j	96c <qprint+0xb8>
     94a:	87ca                	mv	a5,s2
     94c:	078a                	slli	a5,a5,0x2
     94e:	97ca                	add	a5,a5,s2
     950:	0786                	slli	a5,a5,0x1
     952:	893e                	mv	s2,a5
     954:	fc842783          	lw	a5,-56(s0)
     958:	0007c783          	lbu	a5,0(a5)
     95c:	fd078793          	addi	a5,a5,-48
     960:	993e                	add	s2,s2,a5
     962:	fc842783          	lw	a5,-56(s0)
     966:	0785                	addi	a5,a5,1
     968:	fcf42423          	sw	a5,-56(s0)
     96c:	fc842783          	lw	a5,-56(s0)
     970:	0007c703          	lbu	a4,0(a5)
     974:	02f00793          	li	a5,47
     978:	00e7fa63          	bgeu	a5,a4,98c <qprint+0xd8>
     97c:	fc842783          	lw	a5,-56(s0)
     980:	0007c703          	lbu	a4,0(a5)
     984:	03900793          	li	a5,57
     988:	fce7f1e3          	bgeu	a5,a4,94a <qprint+0x96>
     98c:	fc842783          	lw	a5,-56(s0)
     990:	0007c703          	lbu	a4,0(a5)
     994:	07300793          	li	a5,115
     998:	02f71a63          	bne	a4,a5,9cc <qprint+0x118>
     99c:	fc442783          	lw	a5,-60(s0)
     9a0:	00478713          	addi	a4,a5,4
     9a4:	fce42223          	sw	a4,-60(s0)
     9a8:	0007a083          	lw	ra,0(a5)
     9ac:	00008463          	beqz	ra,9b4 <qprint+0x100>
     9b0:	8786                	mv	a5,ra
     9b2:	a021                	j	9ba <qprint+0x106>
     9b4:	6785                	lui	a5,0x1
     9b6:	67078793          	addi	a5,a5,1648 # 1670 <__DTOR_END__+0x80>
     9ba:	86ce                	mv	a3,s3
     9bc:	864a                	mv	a2,s2
     9be:	85be                	mv	a1,a5
     9c0:	fcc42503          	lw	a0,-52(s0)
     9c4:	3971                	jal	660 <qprints>
     9c6:	87aa                	mv	a5,a0
     9c8:	94be                	add	s1,s1,a5
     9ca:	aa25                	j	b02 <qprint+0x24e>
     9cc:	fc842783          	lw	a5,-56(s0)
     9d0:	0007c703          	lbu	a4,0(a5)
     9d4:	06400793          	li	a5,100
     9d8:	02f71563          	bne	a4,a5,a02 <qprint+0x14e>
     9dc:	fc442783          	lw	a5,-60(s0)
     9e0:	00478713          	addi	a4,a5,4
     9e4:	fce42223          	sw	a4,-60(s0)
     9e8:	438c                	lw	a1,0(a5)
     9ea:	06100813          	li	a6,97
     9ee:	87ce                	mv	a5,s3
     9f0:	874a                	mv	a4,s2
     9f2:	4685                	li	a3,1
     9f4:	4629                	li	a2,10
     9f6:	fcc42503          	lw	a0,-52(s0)
     9fa:	33b1                	jal	746 <qprinti>
     9fc:	87aa                	mv	a5,a0
     9fe:	94be                	add	s1,s1,a5
     a00:	a209                	j	b02 <qprint+0x24e>
     a02:	fc842783          	lw	a5,-56(s0)
     a06:	0007c703          	lbu	a4,0(a5)
     a0a:	07500793          	li	a5,117
     a0e:	02f71663          	bne	a4,a5,a3a <qprint+0x186>
     a12:	fc442783          	lw	a5,-60(s0)
     a16:	00478713          	addi	a4,a5,4
     a1a:	fce42223          	sw	a4,-60(s0)
     a1e:	439c                	lw	a5,0(a5)
     a20:	85be                	mv	a1,a5
     a22:	06100813          	li	a6,97
     a26:	87ce                	mv	a5,s3
     a28:	874a                	mv	a4,s2
     a2a:	4681                	li	a3,0
     a2c:	4629                	li	a2,10
     a2e:	fcc42503          	lw	a0,-52(s0)
     a32:	3b11                	jal	746 <qprinti>
     a34:	87aa                	mv	a5,a0
     a36:	94be                	add	s1,s1,a5
     a38:	a0e9                	j	b02 <qprint+0x24e>
     a3a:	fc842783          	lw	a5,-56(s0)
     a3e:	0007c703          	lbu	a4,0(a5)
     a42:	07800793          	li	a5,120
     a46:	02f71663          	bne	a4,a5,a72 <qprint+0x1be>
     a4a:	fc442783          	lw	a5,-60(s0)
     a4e:	00478713          	addi	a4,a5,4
     a52:	fce42223          	sw	a4,-60(s0)
     a56:	439c                	lw	a5,0(a5)
     a58:	85be                	mv	a1,a5
     a5a:	06100813          	li	a6,97
     a5e:	87ce                	mv	a5,s3
     a60:	874a                	mv	a4,s2
     a62:	4681                	li	a3,0
     a64:	4641                	li	a2,16
     a66:	fcc42503          	lw	a0,-52(s0)
     a6a:	39f1                	jal	746 <qprinti>
     a6c:	87aa                	mv	a5,a0
     a6e:	94be                	add	s1,s1,a5
     a70:	a849                	j	b02 <qprint+0x24e>
     a72:	fc842783          	lw	a5,-56(s0)
     a76:	0007c703          	lbu	a4,0(a5)
     a7a:	05800793          	li	a5,88
     a7e:	02f71663          	bne	a4,a5,aaa <qprint+0x1f6>
     a82:	fc442783          	lw	a5,-60(s0)
     a86:	00478713          	addi	a4,a5,4
     a8a:	fce42223          	sw	a4,-60(s0)
     a8e:	439c                	lw	a5,0(a5)
     a90:	85be                	mv	a1,a5
     a92:	04100813          	li	a6,65
     a96:	87ce                	mv	a5,s3
     a98:	874a                	mv	a4,s2
     a9a:	4681                	li	a3,0
     a9c:	4641                	li	a2,16
     a9e:	fcc42503          	lw	a0,-52(s0)
     aa2:	3155                	jal	746 <qprinti>
     aa4:	87aa                	mv	a5,a0
     aa6:	94be                	add	s1,s1,a5
     aa8:	a8a9                	j	b02 <qprint+0x24e>
     aaa:	fc842783          	lw	a5,-56(s0)
     aae:	0007c703          	lbu	a4,0(a5)
     ab2:	06300793          	li	a5,99
     ab6:	04f71663          	bne	a4,a5,b02 <qprint+0x24e>
     aba:	fc442783          	lw	a5,-60(s0)
     abe:	00478713          	addi	a4,a5,4
     ac2:	fce42223          	sw	a4,-60(s0)
     ac6:	439c                	lw	a5,0(a5)
     ac8:	0ff7f793          	andi	a5,a5,255
     acc:	fcf40e23          	sb	a5,-36(s0)
     ad0:	fc040ea3          	sb	zero,-35(s0)
     ad4:	fdc40793          	addi	a5,s0,-36
     ad8:	86ce                	mv	a3,s3
     ada:	864a                	mv	a2,s2
     adc:	85be                	mv	a1,a5
     ade:	fcc42503          	lw	a0,-52(s0)
     ae2:	3ebd                	jal	660 <qprints>
     ae4:	87aa                	mv	a5,a0
     ae6:	94be                	add	s1,s1,a5
     ae8:	a829                	j	b02 <qprint+0x24e>
     aea:	0001                	nop
     aec:	a011                	j	af0 <qprint+0x23c>
     aee:	0001                	nop
     af0:	fc842783          	lw	a5,-56(s0)
     af4:	0007c783          	lbu	a5,0(a5)
     af8:	85be                	mv	a1,a5
     afa:	fcc42503          	lw	a0,-52(s0)
     afe:	3e09                	jal	610 <qprintchar>
     b00:	0485                	addi	s1,s1,1
     b02:	fc842783          	lw	a5,-56(s0)
     b06:	0785                	addi	a5,a5,1
     b08:	fcf42423          	sw	a5,-56(s0)
     b0c:	fc842783          	lw	a5,-56(s0)
     b10:	0007c783          	lbu	a5,0(a5)
     b14:	da079fe3          	bnez	a5,8d2 <qprint+0x1e>
     b18:	a011                	j	b1c <qprint+0x268>
     b1a:	0001                	nop
     b1c:	fcc42783          	lw	a5,-52(s0)
     b20:	c791                	beqz	a5,b2c <qprint+0x278>
     b22:	fcc42783          	lw	a5,-52(s0)
     b26:	439c                	lw	a5,0(a5)
     b28:	00078023          	sb	zero,0(a5)
     b2c:	87a6                	mv	a5,s1
     b2e:	853e                	mv	a0,a5
     b30:	50f2                	lw	ra,60(sp)
     b32:	5462                	lw	s0,56(sp)
     b34:	54d2                	lw	s1,52(sp)
     b36:	5942                	lw	s2,48(sp)
     b38:	59b2                	lw	s3,44(sp)
     b3a:	6121                	addi	sp,sp,64
     b3c:	8082                	ret

00000b3e <printf>:
     b3e:	715d                	addi	sp,sp,-80
     b40:	d606                	sw	ra,44(sp)
     b42:	d422                	sw	s0,40(sp)
     b44:	1800                	addi	s0,sp,48
     b46:	fca42e23          	sw	a0,-36(s0)
     b4a:	c04c                	sw	a1,4(s0)
     b4c:	c410                	sw	a2,8(s0)
     b4e:	c454                	sw	a3,12(s0)
     b50:	c818                	sw	a4,16(s0)
     b52:	c85c                	sw	a5,20(s0)
     b54:	01042c23          	sw	a6,24(s0)
     b58:	01142e23          	sw	a7,28(s0)
     b5c:	02040793          	addi	a5,s0,32
     b60:	fcf42c23          	sw	a5,-40(s0)
     b64:	fd842783          	lw	a5,-40(s0)
     b68:	1791                	addi	a5,a5,-28
     b6a:	fef42423          	sw	a5,-24(s0)
     b6e:	fe842783          	lw	a5,-24(s0)
     b72:	863e                	mv	a2,a5
     b74:	fdc42583          	lw	a1,-36(s0)
     b78:	4501                	li	a0,0
     b7a:	3b2d                	jal	8b4 <qprint>
     b7c:	fea42623          	sw	a0,-20(s0)
     b80:	fec42783          	lw	a5,-20(s0)
     b84:	853e                	mv	a0,a5
     b86:	50b2                	lw	ra,44(sp)
     b88:	5422                	lw	s0,40(sp)
     b8a:	6161                	addi	sp,sp,80
     b8c:	8082                	ret

00000b8e <puts>:
     b8e:	7179                	addi	sp,sp,-48
     b90:	d606                	sw	ra,44(sp)
     b92:	d422                	sw	s0,40(sp)
     b94:	1800                	addi	s0,sp,48
     b96:	fca42e23          	sw	a0,-36(s0)
     b9a:	fe042623          	sw	zero,-20(s0)
     b9e:	a839                	j	bbc <puts+0x2e>
     ba0:	fec42783          	lw	a5,-20(s0)
     ba4:	00178713          	addi	a4,a5,1
     ba8:	fee42623          	sw	a4,-20(s0)
     bac:	873e                	mv	a4,a5
     bae:	fdc42783          	lw	a5,-36(s0)
     bb2:	97ba                	add	a5,a5,a4
     bb4:	0007c783          	lbu	a5,0(a5)
     bb8:	853e                	mv	a0,a5
     bba:	343d                	jal	5e8 <putchar>
     bbc:	fec42783          	lw	a5,-20(s0)
     bc0:	fdc42703          	lw	a4,-36(s0)
     bc4:	97ba                	add	a5,a5,a4
     bc6:	0007c783          	lbu	a5,0(a5)
     bca:	fbf9                	bnez	a5,ba0 <puts+0x12>
     bcc:	4529                	li	a0,10
     bce:	3c29                	jal	5e8 <putchar>
     bd0:	fec42783          	lw	a5,-20(s0)
     bd4:	853e                	mv	a0,a5
     bd6:	50b2                	lw	ra,44(sp)
     bd8:	5422                	lw	s0,40(sp)
     bda:	6145                	addi	sp,sp,48
     bdc:	8082                	ret

00000bde <strcmp>:
     bde:	7179                	addi	sp,sp,-48
     be0:	d622                	sw	s0,44(sp)
     be2:	1800                	addi	s0,sp,48
     be4:	fca42e23          	sw	a0,-36(s0)
     be8:	fcb42c23          	sw	a1,-40(s0)
     bec:	fdc42703          	lw	a4,-36(s0)
     bf0:	fd842783          	lw	a5,-40(s0)
     bf4:	8fd9                	or	a5,a5,a4
     bf6:	8b8d                	andi	a5,a5,3
     bf8:	e7c9                	bnez	a5,c82 <strcmp+0xa4>
     bfa:	fdc42783          	lw	a5,-36(s0)
     bfe:	fef42623          	sw	a5,-20(s0)
     c02:	fd842783          	lw	a5,-40(s0)
     c06:	fef42423          	sw	a5,-24(s0)
     c0a:	a089                	j	c4c <strcmp+0x6e>
     c0c:	fec42783          	lw	a5,-20(s0)
     c10:	4398                	lw	a4,0(a5)
     c12:	feff07b7          	lui	a5,0xfeff0
     c16:	eff78793          	addi	a5,a5,-257 # fefefeff <_stack_start+0xfeeebeff>
     c1a:	973e                	add	a4,a4,a5
     c1c:	fec42783          	lw	a5,-20(s0)
     c20:	439c                	lw	a5,0(a5)
     c22:	fff7c793          	not	a5,a5
     c26:	8f7d                	and	a4,a4,a5
     c28:	808087b7          	lui	a5,0x80808
     c2c:	08078793          	addi	a5,a5,128 # 80808080 <_stack_start+0x80704080>
     c30:	8ff9                	and	a5,a5,a4
     c32:	c399                	beqz	a5,c38 <strcmp+0x5a>
     c34:	4781                	li	a5,0
     c36:	a041                	j	cb6 <strcmp+0xd8>
     c38:	fec42783          	lw	a5,-20(s0)
     c3c:	0791                	addi	a5,a5,4
     c3e:	fef42623          	sw	a5,-20(s0)
     c42:	fe842783          	lw	a5,-24(s0)
     c46:	0791                	addi	a5,a5,4
     c48:	fef42423          	sw	a5,-24(s0)
     c4c:	fec42783          	lw	a5,-20(s0)
     c50:	4398                	lw	a4,0(a5)
     c52:	fe842783          	lw	a5,-24(s0)
     c56:	439c                	lw	a5,0(a5)
     c58:	faf70ae3          	beq	a4,a5,c0c <strcmp+0x2e>
     c5c:	fec42783          	lw	a5,-20(s0)
     c60:	fcf42e23          	sw	a5,-36(s0)
     c64:	fe842783          	lw	a5,-24(s0)
     c68:	fcf42c23          	sw	a5,-40(s0)
     c6c:	a819                	j	c82 <strcmp+0xa4>
     c6e:	fdc42783          	lw	a5,-36(s0)
     c72:	0785                	addi	a5,a5,1
     c74:	fcf42e23          	sw	a5,-36(s0)
     c78:	fd842783          	lw	a5,-40(s0)
     c7c:	0785                	addi	a5,a5,1
     c7e:	fcf42c23          	sw	a5,-40(s0)
     c82:	fdc42783          	lw	a5,-36(s0)
     c86:	0007c783          	lbu	a5,0(a5)
     c8a:	cb99                	beqz	a5,ca0 <strcmp+0xc2>
     c8c:	fdc42783          	lw	a5,-36(s0)
     c90:	0007c703          	lbu	a4,0(a5)
     c94:	fd842783          	lw	a5,-40(s0)
     c98:	0007c783          	lbu	a5,0(a5)
     c9c:	fcf709e3          	beq	a4,a5,c6e <strcmp+0x90>
     ca0:	fdc42783          	lw	a5,-36(s0)
     ca4:	0007c783          	lbu	a5,0(a5)
     ca8:	873e                	mv	a4,a5
     caa:	fd842783          	lw	a5,-40(s0)
     cae:	0007c783          	lbu	a5,0(a5)
     cb2:	40f707b3          	sub	a5,a4,a5
     cb6:	853e                	mv	a0,a5
     cb8:	5432                	lw	s0,44(sp)
     cba:	6145                	addi	sp,sp,48
     cbc:	8082                	ret

00000cbe <memset>:
     cbe:	7179                	addi	sp,sp,-48
     cc0:	d622                	sw	s0,44(sp)
     cc2:	1800                	addi	s0,sp,48
     cc4:	fca42e23          	sw	a0,-36(s0)
     cc8:	fcb42c23          	sw	a1,-40(s0)
     ccc:	fcc42a23          	sw	a2,-44(s0)
     cd0:	fdc42783          	lw	a5,-36(s0)
     cd4:	fef42623          	sw	a5,-20(s0)
     cd8:	a015                	j	cfc <memset+0x3e>
     cda:	fec42783          	lw	a5,-20(s0)
     cde:	00178713          	addi	a4,a5,1
     ce2:	fee42623          	sw	a4,-20(s0)
     ce6:	fd842703          	lw	a4,-40(s0)
     cea:	0ff77713          	andi	a4,a4,255
     cee:	00e78023          	sb	a4,0(a5)
     cf2:	fd442783          	lw	a5,-44(s0)
     cf6:	17fd                	addi	a5,a5,-1
     cf8:	fcf42a23          	sw	a5,-44(s0)
     cfc:	fd442783          	lw	a5,-44(s0)
     d00:	ffe9                	bnez	a5,cda <memset+0x1c>
     d02:	fdc42783          	lw	a5,-36(s0)
     d06:	853e                	mv	a0,a5
     d08:	5432                	lw	s0,44(sp)
     d0a:	6145                	addi	sp,sp,48
     d0c:	8082                	ret

00000d0e <strcpy>:
     d0e:	7179                	addi	sp,sp,-48
     d10:	d622                	sw	s0,44(sp)
     d12:	1800                	addi	s0,sp,48
     d14:	fca42e23          	sw	a0,-36(s0)
     d18:	fcb42c23          	sw	a1,-40(s0)
     d1c:	fdc42783          	lw	a5,-36(s0)
     d20:	fef42623          	sw	a5,-20(s0)
     d24:	fd842783          	lw	a5,-40(s0)
     d28:	fef42423          	sw	a5,-24(s0)
     d2c:	a01d                	j	d52 <strcpy+0x44>
     d2e:	fe842783          	lw	a5,-24(s0)
     d32:	0007c703          	lbu	a4,0(a5)
     d36:	fec42783          	lw	a5,-20(s0)
     d3a:	00e78023          	sb	a4,0(a5)
     d3e:	fec42783          	lw	a5,-20(s0)
     d42:	0785                	addi	a5,a5,1
     d44:	fef42623          	sw	a5,-20(s0)
     d48:	fe842783          	lw	a5,-24(s0)
     d4c:	0785                	addi	a5,a5,1
     d4e:	fef42423          	sw	a5,-24(s0)
     d52:	fe842783          	lw	a5,-24(s0)
     d56:	0007c783          	lbu	a5,0(a5)
     d5a:	fbf1                	bnez	a5,d2e <strcpy+0x20>
     d5c:	fdc42783          	lw	a5,-36(s0)
     d60:	853e                	mv	a0,a5
     d62:	5432                	lw	s0,44(sp)
     d64:	6145                	addi	sp,sp,48
     d66:	8082                	ret

00000d68 <strlen>:
     d68:	7179                	addi	sp,sp,-48
     d6a:	d622                	sw	s0,44(sp)
     d6c:	1800                	addi	s0,sp,48
     d6e:	fca42e23          	sw	a0,-36(s0)
     d72:	fdc42783          	lw	a5,-36(s0)
     d76:	fef42623          	sw	a5,-20(s0)
     d7a:	fe042423          	sw	zero,-24(s0)
     d7e:	fec42783          	lw	a5,-20(s0)
     d82:	eb81                	bnez	a5,d92 <strlen+0x2a>
     d84:	4781                	li	a5,0
     d86:	a00d                	j	da8 <strlen+0x40>
     d88:	fe842783          	lw	a5,-24(s0)
     d8c:	0785                	addi	a5,a5,1
     d8e:	fef42423          	sw	a5,-24(s0)
     d92:	fec42783          	lw	a5,-20(s0)
     d96:	00178713          	addi	a4,a5,1
     d9a:	fee42623          	sw	a4,-20(s0)
     d9e:	0007c783          	lbu	a5,0(a5)
     da2:	f3fd                	bnez	a5,d88 <strlen+0x20>
     da4:	fe842783          	lw	a5,-24(s0)
     da8:	853e                	mv	a0,a5
     daa:	5432                	lw	s0,44(sp)
     dac:	6145                	addi	sp,sp,48
     dae:	8082                	ret

00000db0 <set_pin_function>:
     db0:	7179                	addi	sp,sp,-48
     db2:	d622                	sw	s0,44(sp)
     db4:	1800                	addi	s0,sp,48
     db6:	fca42e23          	sw	a0,-36(s0)
     dba:	fcb42c23          	sw	a1,-40(s0)
     dbe:	1a1077b7          	lui	a5,0x1a107
     dc2:	439c                	lw	a5,0(a5)
     dc4:	fef42623          	sw	a5,-20(s0)
     dc8:	fdc42783          	lw	a5,-36(s0)
     dcc:	4705                	li	a4,1
     dce:	00f717b3          	sll	a5,a4,a5
     dd2:	fff7c713          	not	a4,a5
     dd6:	fec42783          	lw	a5,-20(s0)
     dda:	8ff9                	and	a5,a5,a4
     ddc:	fef42623          	sw	a5,-20(s0)
     de0:	fdc42783          	lw	a5,-36(s0)
     de4:	fd842703          	lw	a4,-40(s0)
     de8:	00f71733          	sll	a4,a4,a5
     dec:	fec42783          	lw	a5,-20(s0)
     df0:	8fd9                	or	a5,a5,a4
     df2:	fef42623          	sw	a5,-20(s0)
     df6:	1a1077b7          	lui	a5,0x1a107
     dfa:	fec42703          	lw	a4,-20(s0)
     dfe:	c398                	sw	a4,0(a5)
     e00:	0001                	nop
     e02:	5432                	lw	s0,44(sp)
     e04:	6145                	addi	sp,sp,48
     e06:	8082                	ret

00000e08 <get_pin_function>:
     e08:	7179                	addi	sp,sp,-48
     e0a:	d622                	sw	s0,44(sp)
     e0c:	1800                	addi	s0,sp,48
     e0e:	fca42e23          	sw	a0,-36(s0)
     e12:	1a1077b7          	lui	a5,0x1a107
     e16:	439c                	lw	a5,0(a5)
     e18:	fef42623          	sw	a5,-20(s0)
     e1c:	fec42703          	lw	a4,-20(s0)
     e20:	fdc42783          	lw	a5,-36(s0)
     e24:	40f757b3          	sra	a5,a4,a5
     e28:	8b85                	andi	a5,a5,1
     e2a:	fef42623          	sw	a5,-20(s0)
     e2e:	fec42783          	lw	a5,-20(s0)
     e32:	853e                	mv	a0,a5
     e34:	5432                	lw	s0,44(sp)
     e36:	6145                	addi	sp,sp,48
     e38:	8082                	ret

00000e3a <set_gpio_pin_direction>:
     e3a:	7179                	addi	sp,sp,-48
     e3c:	d622                	sw	s0,44(sp)
     e3e:	1800                	addi	s0,sp,48
     e40:	fca42e23          	sw	a0,-36(s0)
     e44:	fcb42c23          	sw	a1,-40(s0)
     e48:	1a1017b7          	lui	a5,0x1a101
     e4c:	439c                	lw	a5,0(a5)
     e4e:	fef42623          	sw	a5,-20(s0)
     e52:	fd842783          	lw	a5,-40(s0)
     e56:	ef91                	bnez	a5,e72 <set_gpio_pin_direction+0x38>
     e58:	fdc42783          	lw	a5,-36(s0)
     e5c:	4705                	li	a4,1
     e5e:	00f717b3          	sll	a5,a4,a5
     e62:	fff7c713          	not	a4,a5
     e66:	fec42783          	lw	a5,-20(s0)
     e6a:	8ff9                	and	a5,a5,a4
     e6c:	fef42623          	sw	a5,-20(s0)
     e70:	a819                	j	e86 <set_gpio_pin_direction+0x4c>
     e72:	fdc42783          	lw	a5,-36(s0)
     e76:	4705                	li	a4,1
     e78:	00f71733          	sll	a4,a4,a5
     e7c:	fec42783          	lw	a5,-20(s0)
     e80:	8fd9                	or	a5,a5,a4
     e82:	fef42623          	sw	a5,-20(s0)
     e86:	1a1017b7          	lui	a5,0x1a101
     e8a:	fec42703          	lw	a4,-20(s0)
     e8e:	c398                	sw	a4,0(a5)
     e90:	0001                	nop
     e92:	5432                	lw	s0,44(sp)
     e94:	6145                	addi	sp,sp,48
     e96:	8082                	ret

00000e98 <get_gpio_pin_direction>:
     e98:	7179                	addi	sp,sp,-48
     e9a:	d622                	sw	s0,44(sp)
     e9c:	1800                	addi	s0,sp,48
     e9e:	fca42e23          	sw	a0,-36(s0)
     ea2:	1a1017b7          	lui	a5,0x1a101
     ea6:	439c                	lw	a5,0(a5)
     ea8:	fef42623          	sw	a5,-20(s0)
     eac:	fec42703          	lw	a4,-20(s0)
     eb0:	fdc42783          	lw	a5,-36(s0)
     eb4:	0786                	slli	a5,a5,0x1
     eb6:	40f757b3          	sra	a5,a4,a5
     eba:	8b85                	andi	a5,a5,1
     ebc:	fef42623          	sw	a5,-20(s0)
     ec0:	fec42783          	lw	a5,-20(s0)
     ec4:	853e                	mv	a0,a5
     ec6:	5432                	lw	s0,44(sp)
     ec8:	6145                	addi	sp,sp,48
     eca:	8082                	ret

00000ecc <set_gpio_pin_value>:
     ecc:	7179                	addi	sp,sp,-48
     ece:	d622                	sw	s0,44(sp)
     ed0:	1800                	addi	s0,sp,48
     ed2:	fca42e23          	sw	a0,-36(s0)
     ed6:	fcb42c23          	sw	a1,-40(s0)
     eda:	1a1017b7          	lui	a5,0x1a101
     ede:	07a1                	addi	a5,a5,8
     ee0:	439c                	lw	a5,0(a5)
     ee2:	fef42623          	sw	a5,-20(s0)
     ee6:	fd842783          	lw	a5,-40(s0)
     eea:	ef91                	bnez	a5,f06 <set_gpio_pin_value+0x3a>
     eec:	fdc42783          	lw	a5,-36(s0)
     ef0:	4705                	li	a4,1
     ef2:	00f717b3          	sll	a5,a4,a5
     ef6:	fff7c713          	not	a4,a5
     efa:	fec42783          	lw	a5,-20(s0)
     efe:	8ff9                	and	a5,a5,a4
     f00:	fef42623          	sw	a5,-20(s0)
     f04:	a819                	j	f1a <set_gpio_pin_value+0x4e>
     f06:	fdc42783          	lw	a5,-36(s0)
     f0a:	4705                	li	a4,1
     f0c:	00f71733          	sll	a4,a4,a5
     f10:	fec42783          	lw	a5,-20(s0)
     f14:	8fd9                	or	a5,a5,a4
     f16:	fef42623          	sw	a5,-20(s0)
     f1a:	1a1017b7          	lui	a5,0x1a101
     f1e:	07a1                	addi	a5,a5,8
     f20:	fec42703          	lw	a4,-20(s0)
     f24:	c398                	sw	a4,0(a5)
     f26:	0001                	nop
     f28:	5432                	lw	s0,44(sp)
     f2a:	6145                	addi	sp,sp,48
     f2c:	8082                	ret

00000f2e <get_gpio_pin_value>:
     f2e:	7179                	addi	sp,sp,-48
     f30:	d622                	sw	s0,44(sp)
     f32:	1800                	addi	s0,sp,48
     f34:	fca42e23          	sw	a0,-36(s0)
     f38:	1a1017b7          	lui	a5,0x1a101
     f3c:	0791                	addi	a5,a5,4
     f3e:	439c                	lw	a5,0(a5)
     f40:	fef42623          	sw	a5,-20(s0)
     f44:	fec42703          	lw	a4,-20(s0)
     f48:	fdc42783          	lw	a5,-36(s0)
     f4c:	40f757b3          	sra	a5,a4,a5
     f50:	8b85                	andi	a5,a5,1
     f52:	fef42623          	sw	a5,-20(s0)
     f56:	fec42783          	lw	a5,-20(s0)
     f5a:	853e                	mv	a0,a5
     f5c:	5432                	lw	s0,44(sp)
     f5e:	6145                	addi	sp,sp,48
     f60:	8082                	ret

00000f62 <set_gpio_pin_irq_en>:
     f62:	7179                	addi	sp,sp,-48
     f64:	d622                	sw	s0,44(sp)
     f66:	1800                	addi	s0,sp,48
     f68:	fca42e23          	sw	a0,-36(s0)
     f6c:	fcb42c23          	sw	a1,-40(s0)
     f70:	1a1017b7          	lui	a5,0x1a101
     f74:	07b1                	addi	a5,a5,12
     f76:	439c                	lw	a5,0(a5)
     f78:	fef42623          	sw	a5,-20(s0)
     f7c:	fd842783          	lw	a5,-40(s0)
     f80:	ef91                	bnez	a5,f9c <set_gpio_pin_irq_en+0x3a>
     f82:	fdc42783          	lw	a5,-36(s0)
     f86:	4705                	li	a4,1
     f88:	00f717b3          	sll	a5,a4,a5
     f8c:	fff7c793          	not	a5,a5
     f90:	fec42703          	lw	a4,-20(s0)
     f94:	8ff9                	and	a5,a5,a4
     f96:	fef42623          	sw	a5,-20(s0)
     f9a:	a819                	j	fb0 <set_gpio_pin_irq_en+0x4e>
     f9c:	fdc42783          	lw	a5,-36(s0)
     fa0:	4705                	li	a4,1
     fa2:	00f717b3          	sll	a5,a4,a5
     fa6:	fec42703          	lw	a4,-20(s0)
     faa:	8fd9                	or	a5,a5,a4
     fac:	fef42623          	sw	a5,-20(s0)
     fb0:	1a1017b7          	lui	a5,0x1a101
     fb4:	07b1                	addi	a5,a5,12
     fb6:	fec42703          	lw	a4,-20(s0)
     fba:	c398                	sw	a4,0(a5)
     fbc:	0001                	nop
     fbe:	5432                	lw	s0,44(sp)
     fc0:	6145                	addi	sp,sp,48
     fc2:	8082                	ret

00000fc4 <set_gpio_pin_irq_type>:
     fc4:	7179                	addi	sp,sp,-48
     fc6:	d622                	sw	s0,44(sp)
     fc8:	1800                	addi	s0,sp,48
     fca:	fca42e23          	sw	a0,-36(s0)
     fce:	fcb42c23          	sw	a1,-40(s0)
     fd2:	1a1017b7          	lui	a5,0x1a101
     fd6:	07c1                	addi	a5,a5,16
     fd8:	439c                	lw	a5,0(a5)
     fda:	fef42623          	sw	a5,-20(s0)
     fde:	1a1017b7          	lui	a5,0x1a101
     fe2:	07d1                	addi	a5,a5,20
     fe4:	439c                	lw	a5,0(a5)
     fe6:	fef42423          	sw	a5,-24(s0)
     fea:	fd842783          	lw	a5,-40(s0)
     fee:	8b85                	andi	a5,a5,1
     ff0:	ef91                	bnez	a5,100c <_min_stack+0xc>
     ff2:	fdc42783          	lw	a5,-36(s0)
     ff6:	4705                	li	a4,1
     ff8:	00f717b3          	sll	a5,a4,a5
     ffc:	fff7c793          	not	a5,a5
    1000:	fec42703          	lw	a4,-20(s0)
    1004:	8ff9                	and	a5,a5,a4
    1006:	fef42623          	sw	a5,-20(s0)
    100a:	a819                	j	1020 <_min_stack+0x20>
    100c:	fdc42783          	lw	a5,-36(s0)
    1010:	4705                	li	a4,1
    1012:	00f717b3          	sll	a5,a4,a5
    1016:	fec42703          	lw	a4,-20(s0)
    101a:	8fd9                	or	a5,a5,a4
    101c:	fef42623          	sw	a5,-20(s0)
    1020:	fd842783          	lw	a5,-40(s0)
    1024:	8b89                	andi	a5,a5,2
    1026:	ef91                	bnez	a5,1042 <_min_stack+0x42>
    1028:	fdc42783          	lw	a5,-36(s0)
    102c:	4705                	li	a4,1
    102e:	00f717b3          	sll	a5,a4,a5
    1032:	fff7c793          	not	a5,a5
    1036:	fe842703          	lw	a4,-24(s0)
    103a:	8ff9                	and	a5,a5,a4
    103c:	fef42423          	sw	a5,-24(s0)
    1040:	a819                	j	1056 <_min_stack+0x56>
    1042:	fdc42783          	lw	a5,-36(s0)
    1046:	4705                	li	a4,1
    1048:	00f717b3          	sll	a5,a4,a5
    104c:	fe842703          	lw	a4,-24(s0)
    1050:	8fd9                	or	a5,a5,a4
    1052:	fef42423          	sw	a5,-24(s0)
    1056:	1a1017b7          	lui	a5,0x1a101
    105a:	07c1                	addi	a5,a5,16
    105c:	fec42703          	lw	a4,-20(s0)
    1060:	c398                	sw	a4,0(a5)
    1062:	1a1017b7          	lui	a5,0x1a101
    1066:	07d1                	addi	a5,a5,20
    1068:	fe842703          	lw	a4,-24(s0)
    106c:	c398                	sw	a4,0(a5)
    106e:	0001                	nop
    1070:	5432                	lw	s0,44(sp)
    1072:	6145                	addi	sp,sp,48
    1074:	8082                	ret

00001076 <get_gpio_irq_status>:
    1076:	1141                	addi	sp,sp,-16
    1078:	c622                	sw	s0,12(sp)
    107a:	0800                	addi	s0,sp,16
    107c:	1a1017b7          	lui	a5,0x1a101
    1080:	07e1                	addi	a5,a5,24
    1082:	439c                	lw	a5,0(a5)
    1084:	853e                	mv	a0,a5
    1086:	4432                	lw	s0,12(sp)
    1088:	0141                	addi	sp,sp,16
    108a:	8082                	ret

0000108c <spi_setup_slave>:
    108c:	1141                	addi	sp,sp,-16
    108e:	c606                	sw	ra,12(sp)
    1090:	c422                	sw	s0,8(sp)
    1092:	0800                	addi	s0,sp,16
    1094:	4581                	li	a1,0
    1096:	4511                	li	a0,4
    1098:	3b21                	jal	db0 <set_pin_function>
    109a:	4581                	li	a1,0
    109c:	4515                	li	a0,5
    109e:	3b09                	jal	db0 <set_pin_function>
    10a0:	4581                	li	a1,0
    10a2:	4519                	li	a0,6
    10a4:	3331                	jal	db0 <set_pin_function>
    10a6:	4581                	li	a1,0
    10a8:	451d                	li	a0,7
    10aa:	3319                	jal	db0 <set_pin_function>
    10ac:	4581                	li	a1,0
    10ae:	450d                	li	a0,3
    10b0:	3301                	jal	db0 <set_pin_function>
    10b2:	0001                	nop
    10b4:	40b2                	lw	ra,12(sp)
    10b6:	4422                	lw	s0,8(sp)
    10b8:	0141                	addi	sp,sp,16
    10ba:	8082                	ret

000010bc <spi_setup_master>:
    10bc:	1101                	addi	sp,sp,-32
    10be:	ce06                	sw	ra,28(sp)
    10c0:	cc22                	sw	s0,24(sp)
    10c2:	1000                	addi	s0,sp,32
    10c4:	fea42623          	sw	a0,-20(s0)
    10c8:	4581                	li	a1,0
    10ca:	453d                	li	a0,15
    10cc:	31d5                	jal	db0 <set_pin_function>
    10ce:	4581                	li	a1,0
    10d0:	4539                	li	a0,14
    10d2:	39f9                	jal	db0 <set_pin_function>
    10d4:	4581                	li	a1,0
    10d6:	4535                	li	a0,13
    10d8:	39e1                	jal	db0 <set_pin_function>
    10da:	4581                	li	a1,0
    10dc:	4531                	li	a0,12
    10de:	39c9                	jal	db0 <set_pin_function>
    10e0:	fec42783          	lw	a5,-20(s0)
    10e4:	00f05563          	blez	a5,10ee <spi_setup_master+0x32>
    10e8:	4581                	li	a1,0
    10ea:	4541                	li	a0,16
    10ec:	31d1                	jal	db0 <set_pin_function>
    10ee:	fec42703          	lw	a4,-20(s0)
    10f2:	4785                	li	a5,1
    10f4:	00e7d563          	bge	a5,a4,10fe <spi_setup_master+0x42>
    10f8:	4581                	li	a1,0
    10fa:	452d                	li	a0,11
    10fc:	3955                	jal	db0 <set_pin_function>
    10fe:	fec42703          	lw	a4,-20(s0)
    1102:	4789                	li	a5,2
    1104:	00e7d563          	bge	a5,a4,110e <spi_setup_master+0x52>
    1108:	4581                	li	a1,0
    110a:	4501                	li	a0,0
    110c:	3155                	jal	db0 <set_pin_function>
    110e:	fec42703          	lw	a4,-20(s0)
    1112:	478d                	li	a5,3
    1114:	00e7d563          	bge	a5,a4,111e <spi_setup_master+0x62>
    1118:	4581                	li	a1,0
    111a:	4505                	li	a0,1
    111c:	3951                	jal	db0 <set_pin_function>
    111e:	0001                	nop
    1120:	40f2                	lw	ra,28(sp)
    1122:	4462                	lw	s0,24(sp)
    1124:	6105                	addi	sp,sp,32
    1126:	8082                	ret

00001128 <spi_setup_cmd_addr>:
    1128:	7179                	addi	sp,sp,-48
    112a:	d622                	sw	s0,44(sp)
    112c:	1800                	addi	s0,sp,48
    112e:	fca42e23          	sw	a0,-36(s0)
    1132:	fcb42c23          	sw	a1,-40(s0)
    1136:	fcc42a23          	sw	a2,-44(s0)
    113a:	fcd42823          	sw	a3,-48(s0)
    113e:	02000713          	li	a4,32
    1142:	fd842783          	lw	a5,-40(s0)
    1146:	40f707b3          	sub	a5,a4,a5
    114a:	fdc42703          	lw	a4,-36(s0)
    114e:	00f717b3          	sll	a5,a4,a5
    1152:	fef42623          	sw	a5,-20(s0)
    1156:	1a1027b7          	lui	a5,0x1a102
    115a:	07a1                	addi	a5,a5,8
    115c:	fec42703          	lw	a4,-20(s0)
    1160:	c398                	sw	a4,0(a5)
    1162:	1a1027b7          	lui	a5,0x1a102
    1166:	07b1                	addi	a5,a5,12
    1168:	fd442703          	lw	a4,-44(s0)
    116c:	c398                	sw	a4,0(a5)
    116e:	fd842783          	lw	a5,-40(s0)
    1172:	03f7f693          	andi	a3,a5,63
    1176:	fd042783          	lw	a5,-48(s0)
    117a:	00879713          	slli	a4,a5,0x8
    117e:	6791                	lui	a5,0x4
    1180:	f0078793          	addi	a5,a5,-256 # 3f00 <_stack+0x1874>
    1184:	8f7d                	and	a4,a4,a5
    1186:	1a1027b7          	lui	a5,0x1a102
    118a:	07c1                	addi	a5,a5,16
    118c:	8f55                	or	a4,a4,a3
    118e:	c398                	sw	a4,0(a5)
    1190:	0001                	nop
    1192:	5432                	lw	s0,44(sp)
    1194:	6145                	addi	sp,sp,48
    1196:	8082                	ret

00001198 <spi_setup_dummy>:
    1198:	1101                	addi	sp,sp,-32
    119a:	ce22                	sw	s0,28(sp)
    119c:	1000                	addi	s0,sp,32
    119e:	fea42623          	sw	a0,-20(s0)
    11a2:	feb42423          	sw	a1,-24(s0)
    11a6:	fe842783          	lw	a5,-24(s0)
    11aa:	07c2                	slli	a5,a5,0x10
    11ac:	86be                	mv	a3,a5
    11ae:	fec42703          	lw	a4,-20(s0)
    11b2:	67c1                	lui	a5,0x10
    11b4:	17fd                	addi	a5,a5,-1
    11b6:	8ff9                	and	a5,a5,a4
    11b8:	00f6e733          	or	a4,a3,a5
    11bc:	1a1027b7          	lui	a5,0x1a102
    11c0:	07d1                	addi	a5,a5,20
    11c2:	c398                	sw	a4,0(a5)
    11c4:	0001                	nop
    11c6:	4472                	lw	s0,28(sp)
    11c8:	6105                	addi	sp,sp,32
    11ca:	8082                	ret

000011cc <spi_set_datalen>:
    11cc:	7179                	addi	sp,sp,-48
    11ce:	d622                	sw	s0,44(sp)
    11d0:	1800                	addi	s0,sp,48
    11d2:	fca42e23          	sw	a0,-36(s0)
    11d6:	1a1027b7          	lui	a5,0x1a102
    11da:	07c1                	addi	a5,a5,16
    11dc:	439c                	lw	a5,0(a5)
    11de:	fef42623          	sw	a5,-20(s0)
    11e2:	fdc42783          	lw	a5,-36(s0)
    11e6:	07c2                	slli	a5,a5,0x10
    11e8:	873e                	mv	a4,a5
    11ea:	fec42783          	lw	a5,-20(s0)
    11ee:	86be                	mv	a3,a5
    11f0:	67c1                	lui	a5,0x10
    11f2:	17fd                	addi	a5,a5,-1
    11f4:	8ff5                	and	a5,a5,a3
    11f6:	8fd9                	or	a5,a5,a4
    11f8:	fef42623          	sw	a5,-20(s0)
    11fc:	1a1027b7          	lui	a5,0x1a102
    1200:	07c1                	addi	a5,a5,16
    1202:	fec42703          	lw	a4,-20(s0)
    1206:	c398                	sw	a4,0(a5)
    1208:	0001                	nop
    120a:	5432                	lw	s0,44(sp)
    120c:	6145                	addi	sp,sp,48
    120e:	8082                	ret

00001210 <spi_start_transaction>:
    1210:	1101                	addi	sp,sp,-32
    1212:	ce22                	sw	s0,28(sp)
    1214:	1000                	addi	s0,sp,32
    1216:	fea42623          	sw	a0,-20(s0)
    121a:	feb42423          	sw	a1,-24(s0)
    121e:	fe842783          	lw	a5,-24(s0)
    1222:	07a1                	addi	a5,a5,8
    1224:	4705                	li	a4,1
    1226:	00f71733          	sll	a4,a4,a5
    122a:	6785                	lui	a5,0x1
    122c:	f0078793          	addi	a5,a5,-256 # f00 <set_gpio_pin_value+0x34>
    1230:	00f776b3          	and	a3,a4,a5
    1234:	fec42783          	lw	a5,-20(s0)
    1238:	4705                	li	a4,1
    123a:	00f717b3          	sll	a5,a4,a5
    123e:	0ff7f713          	andi	a4,a5,255
    1242:	1a1027b7          	lui	a5,0x1a102
    1246:	8f55                	or	a4,a4,a3
    1248:	c398                	sw	a4,0(a5)
    124a:	0001                	nop
    124c:	4472                	lw	s0,28(sp)
    124e:	6105                	addi	sp,sp,32
    1250:	8082                	ret

00001252 <spi_get_status>:
    1252:	1101                	addi	sp,sp,-32
    1254:	ce22                	sw	s0,28(sp)
    1256:	1000                	addi	s0,sp,32
    1258:	1a1027b7          	lui	a5,0x1a102
    125c:	439c                	lw	a5,0(a5)
    125e:	fef42623          	sw	a5,-20(s0)
    1262:	fec42783          	lw	a5,-20(s0)
    1266:	853e                	mv	a0,a5
    1268:	4472                	lw	s0,28(sp)
    126a:	6105                	addi	sp,sp,32
    126c:	8082                	ret

0000126e <spi_write_fifo>:
    126e:	7179                	addi	sp,sp,-48
    1270:	d622                	sw	s0,44(sp)
    1272:	1800                	addi	s0,sp,48
    1274:	fca42e23          	sw	a0,-36(s0)
    1278:	fcb42c23          	sw	a1,-40(s0)
    127c:	fd842783          	lw	a5,-40(s0)
    1280:	8795                	srai	a5,a5,0x5
    1282:	7ff7f793          	andi	a5,a5,2047
    1286:	fef42623          	sw	a5,-20(s0)
    128a:	fd842783          	lw	a5,-40(s0)
    128e:	8bfd                	andi	a5,a5,31
    1290:	c791                	beqz	a5,129c <spi_write_fifo+0x2e>
    1292:	fec42783          	lw	a5,-20(s0)
    1296:	0785                	addi	a5,a5,1
    1298:	fef42623          	sw	a5,-20(s0)
    129c:	fe042423          	sw	zero,-24(s0)
    12a0:	a80d                	j	12d2 <spi_write_fifo+0x64>
    12a2:	0001                	nop
    12a4:	1a1027b7          	lui	a5,0x1a102
    12a8:	439c                	lw	a5,0(a5)
    12aa:	87e1                	srai	a5,a5,0x18
    12ac:	0f87f793          	andi	a5,a5,248
    12b0:	fbf5                	bnez	a5,12a4 <spi_write_fifo+0x36>
    12b2:	fe842783          	lw	a5,-24(s0)
    12b6:	078a                	slli	a5,a5,0x2
    12b8:	fdc42703          	lw	a4,-36(s0)
    12bc:	973e                	add	a4,a4,a5
    12be:	1a1027b7          	lui	a5,0x1a102
    12c2:	07e1                	addi	a5,a5,24
    12c4:	4318                	lw	a4,0(a4)
    12c6:	c398                	sw	a4,0(a5)
    12c8:	fe842783          	lw	a5,-24(s0)
    12cc:	0785                	addi	a5,a5,1
    12ce:	fef42423          	sw	a5,-24(s0)
    12d2:	fe842703          	lw	a4,-24(s0)
    12d6:	fec42783          	lw	a5,-20(s0)
    12da:	fcf744e3          	blt	a4,a5,12a2 <spi_write_fifo+0x34>
    12de:	0001                	nop
    12e0:	0001                	nop
    12e2:	5432                	lw	s0,44(sp)
    12e4:	6145                	addi	sp,sp,48
    12e6:	8082                	ret

000012e8 <spi_read_fifo>:
    12e8:	7179                	addi	sp,sp,-48
    12ea:	d622                	sw	s0,44(sp)
    12ec:	1800                	addi	s0,sp,48
    12ee:	fca42e23          	sw	a0,-36(s0)
    12f2:	fcb42c23          	sw	a1,-40(s0)
    12f6:	fd842783          	lw	a5,-40(s0)
    12fa:	8795                	srai	a5,a5,0x5
    12fc:	7ff7f793          	andi	a5,a5,2047
    1300:	fef42623          	sw	a5,-20(s0)
    1304:	fd842783          	lw	a5,-40(s0)
    1308:	8bfd                	andi	a5,a5,31
    130a:	c791                	beqz	a5,1316 <spi_read_fifo+0x2e>
    130c:	fec42783          	lw	a5,-20(s0)
    1310:	0785                	addi	a5,a5,1
    1312:	fef42623          	sw	a5,-20(s0)
    1316:	fe042423          	sw	zero,-24(s0)
    131a:	a815                	j	134e <spi_read_fifo+0x66>
    131c:	0001                	nop
    131e:	1a1027b7          	lui	a5,0x1a102
    1322:	439c                	lw	a5,0(a5)
    1324:	87c1                	srai	a5,a5,0x10
    1326:	0ff7f793          	andi	a5,a5,255
    132a:	dbf5                	beqz	a5,131e <spi_read_fifo+0x36>
    132c:	1a1027b7          	lui	a5,0x1a102
    1330:	02078713          	addi	a4,a5,32 # 1a102020 <_stack_start+0x19ffe020>
    1334:	fe842783          	lw	a5,-24(s0)
    1338:	078a                	slli	a5,a5,0x2
    133a:	fdc42683          	lw	a3,-36(s0)
    133e:	97b6                	add	a5,a5,a3
    1340:	4318                	lw	a4,0(a4)
    1342:	c398                	sw	a4,0(a5)
    1344:	fe842783          	lw	a5,-24(s0)
    1348:	0785                	addi	a5,a5,1
    134a:	fef42423          	sw	a5,-24(s0)
    134e:	fe842703          	lw	a4,-24(s0)
    1352:	fec42783          	lw	a5,-20(s0)
    1356:	fcf743e3          	blt	a4,a5,131c <spi_read_fifo+0x34>
    135a:	0001                	nop
    135c:	0001                	nop
    135e:	5432                	lw	s0,44(sp)
    1360:	6145                	addi	sp,sp,48
    1362:	8082                	ret

00001364 <default_exception_handler_c>:
    1364:	1141                	addi	sp,sp,-16
    1366:	c622                	sw	s0,12(sp)
    1368:	0800                	addi	s0,sp,16
    136a:	a001                	j	136a <default_exception_handler_c+0x6>

0000136c <illegal_insn_handler_c>:
    136c:	1141                	addi	sp,sp,-16
    136e:	c622                	sw	s0,12(sp)
    1370:	0800                	addi	s0,sp,16
    1372:	a001                	j	1372 <illegal_insn_handler_c+0x6>

00001374 <ecall_insn_handler_c>:
    1374:	1141                	addi	sp,sp,-16
    1376:	c622                	sw	s0,12(sp)
    1378:	0800                	addi	s0,sp,16
    137a:	a001                	j	137a <ecall_insn_handler_c+0x6>

0000137c <ISR_SRAM>:
    137c:	1141                	addi	sp,sp,-16
    137e:	c622                	sw	s0,12(sp)
    1380:	0800                	addi	s0,sp,16
    1382:	a001                	j	1382 <ISR_SRAM+0x6>

00001384 <ISR_I2C>:
    1384:	1141                	addi	sp,sp,-16
    1386:	c622                	sw	s0,12(sp)
    1388:	0800                	addi	s0,sp,16
    138a:	a001                	j	138a <ISR_I2C+0x6>

0000138c <ISR_UART>:
    138c:	1141                	addi	sp,sp,-16
    138e:	c622                	sw	s0,12(sp)
    1390:	0800                	addi	s0,sp,16
    1392:	a001                	j	1392 <ISR_UART+0x6>

00001394 <ISR_GPIO>:
    1394:	1141                	addi	sp,sp,-16
    1396:	c622                	sw	s0,12(sp)
    1398:	0800                	addi	s0,sp,16
    139a:	a001                	j	139a <ISR_GPIO+0x6>

0000139c <ISR_SPIM0>:
    139c:	1141                	addi	sp,sp,-16
    139e:	c622                	sw	s0,12(sp)
    13a0:	0800                	addi	s0,sp,16
    13a2:	a001                	j	13a2 <ISR_SPIM0+0x6>

000013a4 <ISR_SPIM1>:
    13a4:	1141                	addi	sp,sp,-16
    13a6:	c622                	sw	s0,12(sp)
    13a8:	0800                	addi	s0,sp,16
    13aa:	a001                	j	13aa <ISR_SPIM1+0x6>

000013ac <ISR_TA_OVF>:
    13ac:	1141                	addi	sp,sp,-16
    13ae:	c622                	sw	s0,12(sp)
    13b0:	0800                	addi	s0,sp,16
    13b2:	a001                	j	13b2 <ISR_TA_OVF+0x6>
    13b4:	1141                	addi	sp,sp,-16
    13b6:	c622                	sw	s0,12(sp)
    13b8:	0800                	addi	s0,sp,16
    13ba:	a001                	j	13ba <ISR_TA_OVF+0xe>

000013bc <ISR_TB_OVF>:
    13bc:	1141                	addi	sp,sp,-16
    13be:	c622                	sw	s0,12(sp)
    13c0:	0800                	addi	s0,sp,16
    13c2:	a001                	j	13c2 <ISR_TB_OVF+0x6>

000013c4 <ISR_TB_CMP>:
    13c4:	1141                	addi	sp,sp,-16
    13c6:	c622                	sw	s0,12(sp)
    13c8:	0800                	addi	s0,sp,16
    13ca:	a001                	j	13ca <ISR_TB_CMP+0x6>

000013cc <uart_set_cfg>:
    13cc:	1101                	addi	sp,sp,-32
    13ce:	ce22                	sw	s0,28(sp)
    13d0:	1000                	addi	s0,sp,32
    13d2:	fea42623          	sw	a0,-20(s0)
    13d6:	87ae                	mv	a5,a1
    13d8:	fef41523          	sh	a5,-22(s0)
    13dc:	1a1077b7          	lui	a5,0x1a107
    13e0:	0791                	addi	a5,a5,4
    13e2:	4398                	lw	a4,0(a5)
    13e4:	1a1077b7          	lui	a5,0x1a107
    13e8:	0791                	addi	a5,a5,4
    13ea:	00276713          	ori	a4,a4,2
    13ee:	c398                	sw	a4,0(a5)
    13f0:	1a1007b7          	lui	a5,0x1a100
    13f4:	07b1                	addi	a5,a5,12
    13f6:	08300713          	li	a4,131
    13fa:	c398                	sw	a4,0(a5)
    13fc:	fea45783          	lhu	a5,-22(s0)
    1400:	83a1                	srli	a5,a5,0x8
    1402:	07c2                	slli	a5,a5,0x10
    1404:	83c1                	srli	a5,a5,0x10
    1406:	873e                	mv	a4,a5
    1408:	1a1007b7          	lui	a5,0x1a100
    140c:	0791                	addi	a5,a5,4
    140e:	0ff77713          	andi	a4,a4,255
    1412:	c398                	sw	a4,0(a5)
    1414:	fea45703          	lhu	a4,-22(s0)
    1418:	1a1007b7          	lui	a5,0x1a100
    141c:	0ff77713          	andi	a4,a4,255
    1420:	c398                	sw	a4,0(a5)
    1422:	1a1007b7          	lui	a5,0x1a100
    1426:	07a1                	addi	a5,a5,8
    1428:	0a700713          	li	a4,167
    142c:	c398                	sw	a4,0(a5)
    142e:	1a1007b7          	lui	a5,0x1a100
    1432:	07b1                	addi	a5,a5,12
    1434:	470d                	li	a4,3
    1436:	c398                	sw	a4,0(a5)
    1438:	1a1007b7          	lui	a5,0x1a100
    143c:	0791                	addi	a5,a5,4
    143e:	439c                	lw	a5,0(a5)
    1440:	0f07f713          	andi	a4,a5,240
    1444:	1a1007b7          	lui	a5,0x1a100
    1448:	0791                	addi	a5,a5,4
    144a:	00276713          	ori	a4,a4,2
    144e:	c398                	sw	a4,0(a5)
    1450:	0001                	nop
    1452:	4472                	lw	s0,28(sp)
    1454:	6105                	addi	sp,sp,32
    1456:	8082                	ret

00001458 <uart_send>:
    1458:	7179                	addi	sp,sp,-48
    145a:	d622                	sw	s0,44(sp)
    145c:	1800                	addi	s0,sp,48
    145e:	fca42e23          	sw	a0,-36(s0)
    1462:	fcb42c23          	sw	a1,-40(s0)
    1466:	a891                	j	14ba <uart_send+0x62>
    1468:	0001                	nop
    146a:	1a1007b7          	lui	a5,0x1a100
    146e:	07d1                	addi	a5,a5,20
    1470:	439c                	lw	a5,0(a5)
    1472:	0207f793          	andi	a5,a5,32
    1476:	dbf5                	beqz	a5,146a <uart_send+0x12>
    1478:	fe042623          	sw	zero,-20(s0)
    147c:	a035                	j	14a8 <uart_send+0x50>
    147e:	fdc42783          	lw	a5,-36(s0)
    1482:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    1486:	fce42e23          	sw	a4,-36(s0)
    148a:	0007c703          	lbu	a4,0(a5)
    148e:	1a1007b7          	lui	a5,0x1a100
    1492:	c398                	sw	a4,0(a5)
    1494:	fd842783          	lw	a5,-40(s0)
    1498:	17fd                	addi	a5,a5,-1
    149a:	fcf42c23          	sw	a5,-40(s0)
    149e:	fec42783          	lw	a5,-20(s0)
    14a2:	0785                	addi	a5,a5,1
    14a4:	fef42623          	sw	a5,-20(s0)
    14a8:	fec42703          	lw	a4,-20(s0)
    14ac:	03f00793          	li	a5,63
    14b0:	00e7e563          	bltu	a5,a4,14ba <uart_send+0x62>
    14b4:	fd842783          	lw	a5,-40(s0)
    14b8:	f3f9                	bnez	a5,147e <uart_send+0x26>
    14ba:	fd842783          	lw	a5,-40(s0)
    14be:	f7cd                	bnez	a5,1468 <uart_send+0x10>
    14c0:	0001                	nop
    14c2:	0001                	nop
    14c4:	5432                	lw	s0,44(sp)
    14c6:	6145                	addi	sp,sp,48
    14c8:	8082                	ret

000014ca <uart_getchar>:
    14ca:	1141                	addi	sp,sp,-16
    14cc:	c622                	sw	s0,12(sp)
    14ce:	0800                	addi	s0,sp,16
    14d0:	0001                	nop
    14d2:	1a1007b7          	lui	a5,0x1a100
    14d6:	07d1                	addi	a5,a5,20
    14d8:	439c                	lw	a5,0(a5)
    14da:	0017f713          	andi	a4,a5,1
    14de:	4785                	li	a5,1
    14e0:	fef719e3          	bne	a4,a5,14d2 <uart_getchar+0x8>
    14e4:	1a1007b7          	lui	a5,0x1a100
    14e8:	439c                	lw	a5,0(a5)
    14ea:	0ff7f793          	andi	a5,a5,255
    14ee:	853e                	mv	a0,a5
    14f0:	4432                	lw	s0,12(sp)
    14f2:	0141                	addi	sp,sp,16
    14f4:	8082                	ret

000014f6 <uart_sendchar>:
    14f6:	1101                	addi	sp,sp,-32
    14f8:	ce22                	sw	s0,28(sp)
    14fa:	1000                	addi	s0,sp,32
    14fc:	87aa                	mv	a5,a0
    14fe:	fef407a3          	sb	a5,-17(s0)
    1502:	0001                	nop
    1504:	1a1007b7          	lui	a5,0x1a100
    1508:	07d1                	addi	a5,a5,20
    150a:	439c                	lw	a5,0(a5)
    150c:	0207f793          	andi	a5,a5,32
    1510:	dbf5                	beqz	a5,1504 <uart_sendchar+0xe>
    1512:	1a1007b7          	lui	a5,0x1a100
    1516:	fef44703          	lbu	a4,-17(s0)
    151a:	c398                	sw	a4,0(a5)
    151c:	0001                	nop
    151e:	4472                	lw	s0,28(sp)
    1520:	6105                	addi	sp,sp,32
    1522:	8082                	ret

00001524 <uart_wait_tx_done>:
    1524:	1141                	addi	sp,sp,-16
    1526:	c622                	sw	s0,12(sp)
    1528:	0800                	addi	s0,sp,16
    152a:	0001                	nop
    152c:	1a1007b7          	lui	a5,0x1a100
    1530:	07d1                	addi	a5,a5,20
    1532:	439c                	lw	a5,0(a5)
    1534:	0407f793          	andi	a5,a5,64
    1538:	dbf5                	beqz	a5,152c <uart_wait_tx_done+0x8>
    153a:	0001                	nop
    153c:	0001                	nop
    153e:	4432                	lw	s0,12(sp)
    1540:	0141                	addi	sp,sp,16
    1542:	8082                	ret

00001544 <uart_mysendstring>:
    1544:	7179                	addi	sp,sp,-48
    1546:	d606                	sw	ra,44(sp)
    1548:	d422                	sw	s0,40(sp)
    154a:	1800                	addi	s0,sp,48
    154c:	fca42e23          	sw	a0,-36(s0)
    1550:	fe042623          	sw	zero,-20(s0)
    1554:	a839                	j	1572 <uart_mysendstring+0x2e>
    1556:	fec42783          	lw	a5,-20(s0)
    155a:	00178713          	addi	a4,a5,1 # 1a100001 <_stack_start+0x19ffc001>
    155e:	fee42623          	sw	a4,-20(s0)
    1562:	873e                	mv	a4,a5
    1564:	fdc42783          	lw	a5,-36(s0)
    1568:	97ba                	add	a5,a5,a4
    156a:	0007c783          	lbu	a5,0(a5)
    156e:	853e                	mv	a0,a5
    1570:	3759                	jal	14f6 <uart_sendchar>
    1572:	fec42783          	lw	a5,-20(s0)
    1576:	17fd                	addi	a5,a5,-1
    1578:	fdc42703          	lw	a4,-36(s0)
    157c:	97ba                	add	a5,a5,a4
    157e:	0007c703          	lbu	a4,0(a5)
    1582:	47a9                	li	a5,10
    1584:	00f70863          	beq	a4,a5,1594 <uart_mysendstring+0x50>
    1588:	fec42703          	lw	a4,-20(s0)
    158c:	02700793          	li	a5,39
    1590:	fce7d3e3          	bge	a5,a4,1556 <uart_mysendstring+0x12>
    1594:	0001                	nop
    1596:	50b2                	lw	ra,44(sp)
    1598:	5422                	lw	s0,40(sp)
    159a:	6145                	addi	sp,sp,48
    159c:	8082                	ret

0000159e <uart_getstring>:
    159e:	1101                	addi	sp,sp,-32
    15a0:	ce06                	sw	ra,28(sp)
    15a2:	cc22                	sw	s0,24(sp)
    15a4:	ca26                	sw	s1,20(sp)
    15a6:	1000                	addi	s0,sp,32
    15a8:	fea42623          	sw	a0,-20(s0)
    15ac:	0001                	nop
    15ae:	fec42483          	lw	s1,-20(s0)
    15b2:	00148793          	addi	a5,s1,1
    15b6:	fef42623          	sw	a5,-20(s0)
    15ba:	3f01                	jal	14ca <uart_getchar>
    15bc:	87aa                	mv	a5,a0
    15be:	00f48023          	sb	a5,0(s1)
    15c2:	0004c703          	lbu	a4,0(s1)
    15c6:	47a9                	li	a5,10
    15c8:	fef713e3          	bne	a4,a5,15ae <uart_getstring+0x10>
    15cc:	fec42783          	lw	a5,-20(s0)
    15d0:	00078023          	sb	zero,0(a5)
    15d4:	0001                	nop
    15d6:	40f2                	lw	ra,28(sp)
    15d8:	4462                	lw	s0,24(sp)
    15da:	44d2                	lw	s1,20(sp)
    15dc:	6105                	addi	sp,sp,32
    15de:	8082                	ret

000015e0 <__CTOR_LIST__>:
	...

000015e8 <__CTOR_END__>:
	...

Disassembly of section .rodata:

000015f0 <.rodata>:
    15f0:	5f757063          	bgeu	a0,s7,1bd0 <_bss_end+0x544>
    15f4:	6570                	flw	fa2,76(a0)
    15f6:	6672                	flw	fa2,28(sp)
    15f8:	735f 7465 203a      	0x203a7465735f
    15fe:	6f6e                	flw	ft10,216(sp)
    1600:	2074                	fld	fa3,192(s0)
    1602:	6d69                	lui	s10,0x1a
    1604:	6c70                	flw	fa2,92(s0)
    1606:	6d65                	lui	s10,0x19
    1608:	6e65                	lui	t3,0x19
    160a:	6574                	flw	fa3,76(a0)
    160c:	2064                	fld	fs1,192(s0)
    160e:	6579                	lui	a0,0x1e
    1610:	0074                	addi	a3,sp,12
    1612:	0000                	unimp
    1614:	20525343          	fmadd.s	ft6,ft4,ft5,ft4,unknown
    1618:	6425                	lui	s0,0x9
    161a:	6e20                	flw	fs0,88(a2)
    161c:	7920746f          	jal	s0,8dae <_stack+0x6722>
    1620:	7465                	lui	s0,0xffff9
    1622:	7320                	flw	fs0,96(a4)
    1624:	7075                	c.lui	zero,0xffffd
    1626:	6f70                	flw	fa2,92(a4)
    1628:	7472                	flw	fs0,60(sp)
    162a:	6465                	lui	s0,0x19
    162c:	000a                	c.slli	zero,0x2
    162e:	0000                	unimp
    1630:	01c0                	addi	s0,sp,196
    1632:	0000                	unimp
    1634:	01ca                	slli	gp,gp,0x12
    1636:	0000                	unimp
    1638:	01d4                	addi	a3,sp,196
    163a:	0000                	unimp
    163c:	01de                	slli	gp,gp,0x17
    163e:	0000                	unimp
    1640:	01e8                	addi	a0,sp,204
    1642:	0000                	unimp
    1644:	01f2                	slli	gp,gp,0x1c
    1646:	0000                	unimp
    1648:	01fc                	addi	a5,sp,204
    164a:	0000                	unimp
    164c:	0206                	slli	tp,tp,0x1
    164e:	0000                	unimp
    1650:	0210                	addi	a2,sp,256
    1652:	0000                	unimp
    1654:	021a                	slli	tp,tp,0x6
    1656:	0000                	unimp
    1658:	0224                	addi	s1,sp,264
    165a:	0000                	unimp
    165c:	022e                	slli	tp,tp,0xb
    165e:	0000                	unimp
    1660:	0238                	addi	a4,sp,264
    1662:	0000                	unimp
    1664:	0242                	slli	tp,tp,0x10
    1666:	0000                	unimp
    1668:	024c                	addi	a1,sp,260
    166a:	0000                	unimp
    166c:	0256                	slli	tp,tp,0x15
    166e:	0000                	unimp
    1670:	6e28                	flw	fa0,88(a2)
    1672:	6c75                	lui	s8,0x1d
    1674:	296c                	fld	fa1,208(a0)
	...

Disassembly of section .shbss:

00001677 <.shbss>:
	...

Disassembly of section .data:

00001678 <remu10_table>:
    1678:	0100                	addi	s0,sp,128
    167a:	0202                	c.slli64	tp
    167c:	05040303          	lb	t1,80(s0) # 19050 <_stack+0x169c4>
    1680:	0605                	addi	a2,a2,1
    1682:	08080707          	0x8080707
    1686:	0009                	c.nop	2

Disassembly of section .bss:

00001688 <led_num_cmp>:
    1688:	0000                	unimp
	...

Disassembly of section .stack:

0000168c <_stack-0x1000>:
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

