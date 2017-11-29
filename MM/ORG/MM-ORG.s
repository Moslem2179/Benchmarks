	.text
	.file	"matmul.LL"
	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
l.nop 100                      ### start making possible fault injection candidates
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -1232
	l.sw	-12(r2), r24
	l.sw	-16(r2), r22
	l.sw	-20(r2), r20
	l.sw	-24(r2), r18
	l.sw	-28(r2), r14
	l.addi	r3, r2, -1228
	l.movhi	r14, 0
	l.addi	r5, r0, 400
	l.movhi	r4, 0
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	memset
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.addi	r3, r2, -428
	l.addi	r3, r3, 20
	l.addi	r4, r2, -828
	l.addi	r4, r4, 20
.LBB0_1:                                # %for.cond3.preheader
                                        # =>This Inner Loop Header: Depth=1
	l.sw	-20(r3), r14
	l.sw	-20(r4), r14
	l.addi	r5, r14, 1
	l.sw	-16(r3), r5
	l.sw	-16(r4), r5
	l.addi	r6, r14, 2
	l.sw	-12(r3), r6
	l.sw	-12(r4), r6
	l.addi	r6, r14, 3
	l.sw	-8(r3), r6
	l.sw	-8(r4), r6
	l.addi	r6, r14, 4
	l.sw	-4(r3), r6
	l.sw	-4(r4), r6
	l.addi	r6, r14, 5
	l.sw	0(r3), r6
	l.sw	0(r4), r6
	l.addi	r6, r14, 6
	l.sw	4(r3), r6
	l.sw	4(r4), r6
	l.addi	r6, r14, 7
	l.sw	8(r3), r6
	l.sw	8(r4), r6
	l.addi	r6, r14, 8
	l.sw	12(r3), r6
	l.sw	12(r4), r6
	l.addi	r6, r14, 9
	l.sw	16(r3), r6
	l.sw	16(r4), r6
	l.addi	r3, r3, 40
	l.addi	r4, r4, 40
	l.sfnei	r5, 10
	l.ori	r14, r5, 0
	l.bf	.LBB0_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.cond19.preheader.preheader
	l.movhi	r3, 0
	l.addi	r4, r2, -428
.LBB0_3:                                # %for.cond19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	l.addi	r5, r2, -828
	l.movhi	r6, 0
.LBB0_4:                                # %for.cond22.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	l.sfltsi	r6, 1
	l.bf	.LBB0_8
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body24.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=2
	l.muli	r7, r3, 40
	l.addi	r8, r2, -1228
	l.add	r7, r8, r7
	l.slli	r8, r6, 2
	l.add	r7, r7, r8
	l.movhi	r12, 0
	l.lwz	r8, 0(r7)
	l.ori	r13, r4, 0
	l.ori	r15, r5, 0
.LBB0_6:                                # %for.body24
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.lwz	r17, 0(r13)
	l.lwz	r19, 0(r15)
	l.mul	r17, r19, r17
	l.add	r8, r17, r8
	l.addi	r13, r13, 4
	l.addi	r15, r15, 40
	l.addi	r12, r12, 1
	l.sfne	r6, r12
	l.bf	.LBB0_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %for.cond22.for.inc35_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=2
	l.sw	0(r7), r8
.LBB0_8:                                # %for.inc35
                                        #   in Loop: Header=BB0_4 Depth=2
	l.addi	r5, r5, 4
	l.addi	r6, r6, 1
	l.sfnei	r6, 10
	l.bf	.LBB0_4
	l.nop	0                       # in delay slot
# BB#9:                                 # %for.inc38
                                        #   in Loop: Header=BB0_3 Depth=1
	l.addi	r4, r4, 40
	l.addi	r3, r3, 1
	l.sfnei	r3, 10
	l.bf	.LBB0_3
	l.nop	0                       # in delay slot
# BB#10:                                # %for.end40
	l.lwz	r3, -336(r2)
	l.sfeqi	r3, 15
	l.bf	.LBB0_14
	l.nop	0                       # in delay slot
# BB#11:                                # %for.cond47.preheader.preheader
	l.movhi	r18, 0
	l.addi	r20, r2, -1228          # CFC
	l.addi	r22, r20, 20            # CFC
	l.movhi	r3, hi(.L.str)
	l.ori	r14, r3, lo(.L.str)
.LBB0_12:                               # %for.cond47.preheader
                                        # =>This Inner Loop Header: Depth=1
	l.add	r3, r20, r18
	l.lwz	r3, 0(r3)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	printf
	l.nop	0                       # in delay slot
	l.add	r24, r22, r18
	l.lwz	r3, -16(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, -12(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, -8(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, -4(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, 0(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, 4(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, 8(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, 12(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, 16(r24)
	l.sw	0(r1), r3
	l.ori	r3, r14, 0
	l.jal	printf
	l.nop	0                       # in delay slot
	l.addi	r18, r18, 40
	l.sfnei	r18, 400
	l.bf	.LBB0_12
	l.nop	0                       # in delay slot
# BB#13:                                # %for.end57
	l.movhi	r11, 0
	l.lwz	r14, -28(r2)
	l.lwz	r18, -24(r2)
	l.lwz	r20, -20(r2)
	l.lwz	r22, -16(r2)
	l.lwz	r24, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_14:                               # %if.then
	l.addi	r3, r0, 1
	l.jal	exit
	l.nop	0                       # in delay slot
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
