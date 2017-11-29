	.text
	.file	"matmul.LL"
	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
.LC1:
    .string    "DF Error"
    .section .text
    .align    4

.LC2:
    .string    "CF Error"
    .section .text
    .align    4
main:                                   # @main
# BB#0:                                 # %entry
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -1232
	l.addi	r1, r1, -1232
	l.addi	r16, r15, -1208
	l.addi	r3, r2, -1208
	l.addi	r18, r0, 400
	l.addi	r5, r0, 400
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	memset
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.movhi	r20, 0
	l.movhi	r7, 0
	l.addi	r16, r15, -408
	l.addi	r3, r2, -408
	l.addi	r16, r16, 20
	l.addi	r3, r3, 20
	l.addi	r17, r15, -808
	l.addi	r4, r2, -808
	l.addi	r17, r17, 20
	l.addi	r4, r4, 20
.LBB0_1:                                # %for.cond3.preheader
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	-20(r3), r7
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	-20(r4), r7
	l.addi	r18, r20, 1
	l.addi	r5, r7, 1
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	-16(r3), r5
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	-16(r4), r5
	l.addi	r19, r20, 2
	l.addi	r6, r7, 2
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	-12(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	-12(r4), r6
	l.addi	r19, r20, 3
	l.addi	r6, r7, 3
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	-8(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	-8(r4), r6
	l.addi	r19, r20, 4
	l.addi	r6, r7, 4
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	-4(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	-4(r4), r6
	l.addi	r19, r20, 5
	l.addi	r6, r7, 5
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	0(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	0(r4), r6
	l.addi	r19, r20, 6
	l.addi	r6, r7, 6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	4(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	4(r4), r6
	l.addi	r19, r20, 7
	l.addi	r6, r7, 7
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	8(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	8(r4), r6
	l.addi	r19, r20, 8
	l.addi	r6, r7, 8
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	12(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	12(r4), r6
	l.addi	r19, r20, 9
	l.addi	r6, r7, 9
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sw	16(r3), r6
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sw	16(r4), r6
	l.addi	r16, r16, 40
	l.addi	r3, r3, 40
	l.addi	r17, r17, 40
	l.addi	r4, r4, 40
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfnei	r5, 10
	l.ori	r20, r18, 0
	l.ori	r7, r5, 0
	l.bf	.LBB0_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.cond19.preheader.preheader
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1212(r2), r3
	l.addi	r16, r15, -408
	l.addi	r3, r2, -408
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1216(r2), r3
.LBB0_3:                                # %for.cond19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	l.addi	r18, r15, -808
	l.addi	r5, r2, -808
	l.movhi	r19, 0
	l.movhi	r6, 0
.LBB0_4:                                # %for.cond22.preheader
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfltsi	r6, 1
	l.bf	.LBB0_8
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body24.lr.ph
                                        #   in Loop: Header=BB0_4 Depth=2
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.muli	r20, r16, 40
	l.muli	r7, r3, 40
	l.addi	r21, r15, -1208         # CFC
	l.addi	r8, r2, -1208
	l.add	r20, r21, r20
	l.add	r7, r8, r7
	l.slli	r21, r19, 2
	l.slli	r8, r6, 2
	l.add	r20, r20, r21
	l.add	r7, r7, r8
	l.movhi	r25, 0
	l.movhi	r12, 0
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.lwz	r8, 0(r7)
	l.addi	r21, r8, 0              # CFC
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r13, -1216(r2)
	l.addi	r26, r13, 0
	l.ori	r24, r18, 0
	l.ori	r11, r5, 0
.LBB0_6:                                # %for.body24
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.sfne	r13, r26
	l.bf	.LBB0_15
	l.lwz	r4, 0(r13)
	l.addi	r17, r4, 0
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.lwz	r3, 0(r11)
	l.addi	r16, r3, 0
	l.mul	r16, r16, r17
	l.mul	r3, r3, r4
	l.add	r21, r16, r21
	l.add	r8, r3, r8
	l.addi	r26, r26, 4
	l.addi	r13, r13, 4
	l.addi	r24, r24, 40
	l.addi	r11, r11, 40
	l.addi	r25, r25, 1
	l.addi	r12, r12, 1
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.sfne	r6, r12
	l.bf	.LBB0_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %for.cond22.for.inc35_crit_edge
                                        #   in Loop: Header=BB0_4 Depth=2
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sw	0(r7), r8
.LBB0_8:                                # %for.inc35
                                        #   in Loop: Header=BB0_4 Depth=2
	l.addi	r18, r18, 4
	l.addi	r5, r5, 4
	l.addi	r19, r19, 1
	l.addi	r6, r6, 1
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfnei	r6, 10
	l.bf	.LBB0_4
	l.nop	0                       # in delay slot
# BB#9:                                 # %for.inc38
                                        #   in Loop: Header=BB0_3 Depth=1
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.addi	r16, r16, 40
	l.addi	r3, r3, 40
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1216(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1212(r2), r3
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfnei	r3, 10
	l.bf	.LBB0_3
	l.nop	0                       # in delay slot
# BB#10:                                # %for.end40
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -316(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfeqi	r3, 15
	l.bf	.LBB0_14
	l.nop	0                       # in delay slot
# BB#11:                                # %for.cond47.preheader.preheader
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.addi	r16, r15, -1208
	l.addi	r3, r2, -1208
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1224(r2), r3
	l.addi	r16, r16, 20
	l.addi	r3, r3, 20
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1228(r2), r3
	l.movhi	r16, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r16, r16, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1212(r2), r3
.LBB0_12:                               # %for.cond47.preheader
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1220(r2), r4
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1224(r2)
	l.addi	r16, r3, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 0(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1220(r2)
	l.addi	r16, r3, 0
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r4, -1228(r2)
	l.addi	r17, r4, 0
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sw	-1216(r2), r3
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, -16(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, -12(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, -8(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, -4(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 0(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 4(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 8(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 12(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1216(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.lwz	r3, 16(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sw	0(r1), r3
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r3, -1212(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r22, r9, 0              # CFC
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
	l.nop	100

	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.lwz	r4, -1220(r2)
	l.addi	r17, r4, 0
	l.addi	r17, r17, 40
	l.addi	r4, r4, 40
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfnei	r4, 400
	l.bf	.LBB0_12
	l.nop	0                       # in delay slot
# BB#13:                                # %for.end57
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_14:                               # %if.then
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_15
	l.sfne	r2, r15
	l.bf	.LBB0_15
	l.sfne	r3, r16
	l.bf	.LBB0_15
	l.sfne	r4, r17
	l.bf	.LBB0_15
	l.sfne	r5, r18
	l.bf	.LBB0_15
	l.sfne	r6, r19
	l.bf	.LBB0_15
	l.sfne	r7, r20
	l.bf	.LBB0_15
	l.sfne	r8, r21
	l.bf	.LBB0_15
	l.sfne	r9, r22
	l.bf	.LBB0_15
	l.sfne	r10, r23
	l.bf	.LBB0_15
	l.sfne	r11, r24
	l.bf	.LBB0_15
	l.sfne	r12, r25
	l.bf	.LBB0_15
	l.nop	0
	l.addi	r16, r0, 1
	l.addi	r3, r0, 1
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB0_15:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB0_16:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot

.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d\n"
	.size	.L.str, 4


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
