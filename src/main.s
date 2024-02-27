
main.o:     file format elf64-littleriscv


Disassembly of section .plt:

00000000000005b0 <.plt>:
 5b0:	00002397          	auipc	t2,0x2
 5b4:	41c30333          	sub	t1,t1,t3
 5b8:	a583be03          	ld	t3,-1448(t2) # 2008 <__TMC_END__>
 5bc:	fd430313          	addi	t1,t1,-44
 5c0:	a5838293          	addi	t0,t2,-1448
 5c4:	00135313          	srli	t1,t1,0x1
 5c8:	0082b283          	ld	t0,8(t0)
 5cc:	000e0067          	jr	t3

00000000000005d0 <__libc_start_main@plt>:
 5d0:	00002e17          	auipc	t3,0x2
 5d4:	a48e3e03          	ld	t3,-1464(t3) # 2018 <__libc_start_main@GLIBC_2.34>
 5d8:	000e0367          	jalr	t1,t3
 5dc:	00000013          	nop

00000000000005e0 <__isoc99_scanf@plt>:
 5e0:	00002e17          	auipc	t3,0x2
 5e4:	a40e3e03          	ld	t3,-1472(t3) # 2020 <__isoc99_scanf@GLIBC_2.27>
 5e8:	000e0367          	jalr	t1,t3
 5ec:	00000013          	nop

00000000000005f0 <printf@plt>:
 5f0:	00002e17          	auipc	t3,0x2
 5f4:	a38e3e03          	ld	t3,-1480(t3) # 2028 <printf@GLIBC_2.27>
 5f8:	000e0367          	jalr	t1,t3
 5fc:	00000013          	nop

Disassembly of section .text:

0000000000000600 <main>:
 600:	1101                	addi	sp,sp,-32
 602:	00000517          	auipc	a0,0x0
 606:	15650513          	addi	a0,a0,342 # 758 <_IO_stdin_used+0x20>
 60a:	ec06                	sd	ra,24(sp)
 60c:	fe5ff0ef          	jal	ra,5f0 <printf@plt>
 610:	006c                	addi	a1,sp,12
 612:	00000517          	auipc	a0,0x0
 616:	16650513          	addi	a0,a0,358 # 778 <_IO_stdin_used+0x40>
 61a:	fc7ff0ef          	jal	ra,5e0 <__isoc99_scanf@plt>
 61e:	45b2                	lw	a1,12(sp)
 620:	02b05563          	blez	a1,64a <main+0x4a>
 624:	0015871b          	addiw	a4,a1,1
 628:	4785                	li	a5,1
 62a:	4605                	li	a2,1
 62c:	02f6063b          	mulw	a2,a2,a5
 630:	2785                	addiw	a5,a5,1
 632:	fee79de3          	bne	a5,a4,62c <main+0x2c>
 636:	00000517          	auipc	a0,0x0
 63a:	10a50513          	addi	a0,a0,266 # 740 <_IO_stdin_used+0x8>
 63e:	fb3ff0ef          	jal	ra,5f0 <printf@plt>
 642:	60e2                	ld	ra,24(sp)
 644:	4501                	li	a0,0
 646:	6105                	addi	sp,sp,32
 648:	8082                	ret
 64a:	4605                	li	a2,1
 64c:	b7ed                	j	636 <main+0x36>
	...

0000000000000650 <_start>:
 650:	022000ef          	jal	ra,672 <load_gp>
 654:	87aa                	mv	a5,a0
 656:	00002517          	auipc	a0,0x2
 65a:	9ea53503          	ld	a0,-1558(a0) # 2040 <_GLOBAL_OFFSET_TABLE_+0x10>
 65e:	6582                	ld	a1,0(sp)
 660:	0030                	addi	a2,sp,8
 662:	ff017113          	andi	sp,sp,-16
 666:	4681                	li	a3,0
 668:	4701                	li	a4,0
 66a:	880a                	mv	a6,sp
 66c:	f65ff0ef          	jal	ra,5d0 <__libc_start_main@plt>
 670:	9002                	ebreak

0000000000000672 <load_gp>:
 672:	00002197          	auipc	gp,0x2
 676:	18e18193          	addi	gp,gp,398 # 2800 <__global_pointer$>
 67a:	8082                	ret
	...

000000000000067e <deregister_tm_clones>:
 67e:	00002517          	auipc	a0,0x2
 682:	98a50513          	addi	a0,a0,-1654 # 2008 <__TMC_END__>
 686:	00002797          	auipc	a5,0x2
 68a:	98278793          	addi	a5,a5,-1662 # 2008 <__TMC_END__>
 68e:	00a78863          	beq	a5,a0,69e <deregister_tm_clones+0x20>
 692:	00002797          	auipc	a5,0x2
 696:	9a67b783          	ld	a5,-1626(a5) # 2038 <_ITM_deregisterTMCloneTable@Base>
 69a:	c391                	beqz	a5,69e <deregister_tm_clones+0x20>
 69c:	8782                	jr	a5
 69e:	8082                	ret

00000000000006a0 <register_tm_clones>:
 6a0:	00002517          	auipc	a0,0x2
 6a4:	96850513          	addi	a0,a0,-1688 # 2008 <__TMC_END__>
 6a8:	00002597          	auipc	a1,0x2
 6ac:	96058593          	addi	a1,a1,-1696 # 2008 <__TMC_END__>
 6b0:	8d89                	sub	a1,a1,a0
 6b2:	4035d793          	srai	a5,a1,0x3
 6b6:	91fd                	srli	a1,a1,0x3f
 6b8:	95be                	add	a1,a1,a5
 6ba:	8585                	srai	a1,a1,0x1
 6bc:	c599                	beqz	a1,6ca <register_tm_clones+0x2a>
 6be:	00002797          	auipc	a5,0x2
 6c2:	9927b783          	ld	a5,-1646(a5) # 2050 <_ITM_registerTMCloneTable@Base>
 6c6:	c391                	beqz	a5,6ca <register_tm_clones+0x2a>
 6c8:	8782                	jr	a5
 6ca:	8082                	ret

00000000000006cc <__do_global_dtors_aux>:
 6cc:	1141                	addi	sp,sp,-16
 6ce:	e022                	sd	s0,0(sp)
 6d0:	00002417          	auipc	s0,0x2
 6d4:	98840413          	addi	s0,s0,-1656 # 2058 <completed.0>
 6d8:	00044783          	lbu	a5,0(s0)
 6dc:	e406                	sd	ra,8(sp)
 6de:	e385                	bnez	a5,6fe <__do_global_dtors_aux+0x32>
 6e0:	00002797          	auipc	a5,0x2
 6e4:	9687b783          	ld	a5,-1688(a5) # 2048 <__cxa_finalize@GLIBC_2.27>
 6e8:	c791                	beqz	a5,6f4 <__do_global_dtors_aux+0x28>
 6ea:	00002517          	auipc	a0,0x2
 6ee:	91653503          	ld	a0,-1770(a0) # 2000 <__dso_handle>
 6f2:	9782                	jalr	a5
 6f4:	f8bff0ef          	jal	ra,67e <deregister_tm_clones>
 6f8:	4785                	li	a5,1
 6fa:	00f40023          	sb	a5,0(s0)
 6fe:	60a2                	ld	ra,8(sp)
 700:	6402                	ld	s0,0(sp)
 702:	0141                	addi	sp,sp,16
 704:	8082                	ret

0000000000000706 <frame_dummy>:
 706:	bf69                	j	6a0 <register_tm_clones>

0000000000000708 <factorial>:
 708:	85aa                	mv	a1,a0
 70a:	02a05063          	blez	a0,72a <factorial+0x22>
 70e:	0015071b          	addiw	a4,a0,1
 712:	4785                	li	a5,1
 714:	4605                	li	a2,1
 716:	02f6063b          	mulw	a2,a2,a5
 71a:	2785                	addiw	a5,a5,1
 71c:	fee79de3          	bne	a5,a4,716 <factorial+0xe>
 720:	00000517          	auipc	a0,0x0
 724:	02050513          	addi	a0,a0,32 # 740 <_IO_stdin_used+0x8>
 728:	b5e1                	j	5f0 <printf@plt>
 72a:	4605                	li	a2,1
 72c:	00000517          	auipc	a0,0x0
 730:	01450513          	addi	a0,a0,20 # 740 <_IO_stdin_used+0x8>
 734:	bd75                	j	5f0 <printf@plt>
