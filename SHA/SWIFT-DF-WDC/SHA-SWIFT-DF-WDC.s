	.text
	.file	"shaOPT.LL"
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
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -360
	l.addi	r1, r1, -360
	l.addi	r16, r0, 128
	l.addi	r3, r0, 128
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sb	-328(r2), r3
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r3
	l.ori	r16, r16, 1
	l.ori	r3, r3, 1
	l.addi	r18, r0, 55
	l.addi	r5, r0, 55
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.sfne	r5, r18
	l.bf	.LBB0_11
	l.sfne	r6, r19
	l.bf	.LBB0_11
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.sfne	r8, r21
	l.bf	.LBB0_11
	l.sfne	r9, r22
	l.bf	.LBB0_11
	l.sfne	r10, r23
	l.bf	.LBB0_11
	l.sfne	r11, r24
	l.bf	.LBB0_11
	l.sfne	r12, r25
	l.bf	.LBB0_11
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
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r6, -332(r2)
	l.addi	r19, r6, 0
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-272(r2), r7
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-268(r2), r7
.LBB0_1:                                # %for.body4.i43.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.add	r16, r19, r20
	l.add	r3, r6, r7
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.lwz	r4, 52(r3)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.lwz	r5, 32(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r18, r17
	l.xor	r4, r5, r4
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.lwz	r5, 8(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.lwz	r5, 0(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sw	64(r3), r4
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.sfnei	r7, 256
	l.bf	.LBB0_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body29.i73.i.i.preheader
	l.movhi	r19, 0
	l.movhi	r6, 0
	l.movhi	r16, 26437
	l.movhi	r3, 26437
	l.ori	r16, r16, 8961
	l.ori	r3, r3, 8961
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r3
	l.movhi	r16, 61389
	l.movhi	r3, 61389
	l.ori	r26, r16, 43913
	l.ori	r13, r3, 43913
	l.movhi	r16, 39098
	l.movhi	r3, 39098
	l.ori	r17, r16, 56574
	l.ori	r4, r3, 56574
	l.movhi	r16, 4146
	l.movhi	r3, 4146
	l.ori	r24, r16, 21622
	l.ori	r11, r3, 21622
	l.movhi	r16, 50130
	l.movhi	r3, 50130
	l.ori	r16, r16, 57840
	l.ori	r3, r3, 57840
	l.movhi	r18, 23170
	l.movhi	r5, 23170
	l.ori	r18, r18, 31129
	l.ori	r5, r5, 31129
	l.sfne	r5, r18
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-336(r2), r5
.LBB0_3:                                # %for.body29.i73.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r5, -332(r2)
	l.addi	r18, r5, 0
	l.ori	r25, r17, 0
	l.ori	r12, r4, 0
	l.ori	r20, r24, 0
	l.ori	r7, r11, 0
	l.xori	r17, r26, -1
	l.xori	r4, r13, -1
	l.and	r17, r20, r17
	l.and	r4, r7, r4
	l.and	r21, r26, r25
	l.and	r8, r13, r12
	l.or	r17, r17, r21
	l.or	r4, r4, r8
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.srli	r17, r18, 27
	l.srli	r4, r5, 27
	l.slli	r21, r18, 5
	l.slli	r8, r5, 5
	l.or	r17, r21, r17
	l.or	r4, r8, r4
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.addi	r21, r15, -328          # CFC
	l.addi	r8, r2, -328
	l.add	r17, r21, r19
	l.add	r4, r8, r6
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r3
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r17, r26, 30
	l.slli	r4, r13, 30
	l.or	r17, r17, r16
	l.or	r4, r4, r3
	l.addi	r19, r19, 4
	l.addi	r6, r6, 4
	l.sfne	r6, r19
	l.bf	.LBB0_11
	l.sfnei	r6, 80
	l.ori	r16, r20, 0
	l.ori	r3, r7, 0
	l.ori	r24, r25, 0
	l.ori	r11, r12, 0
	l.ori	r26, r18, 0
	l.ori	r13, r5, 0
	l.bf	.LBB0_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body44.i95.i.i.preheader
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r16, r21, 80
	l.addi	r3, r8, 80
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-336(r2), r3
	l.movhi	r16, 28377
	l.movhi	r3, 28377
	l.ori	r16, r16, 60321
	l.ori	r3, r3, 60321
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-340(r2), r3
.LBB0_5:                                # %for.body44.i95.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r6, -332(r2)
	l.addi	r19, r6, 0
	l.ori	r26, r17, 0
	l.ori	r13, r4, 0
	l.ori	r21, r25, 0
	l.ori	r8, r12, 0
	l.srli	r16, r19, 27
	l.srli	r3, r6, 27
	l.slli	r17, r19, 5
	l.slli	r4, r6, 5
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.xor	r17, r26, r21
	l.xor	r4, r13, r8
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.add	r17, r20, r17
	l.add	r4, r7, r4
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r17, r24
	l.add	r4, r4, r11
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r3
	l.srli	r16, r18, 2
	l.srli	r3, r5, 2
	l.slli	r17, r18, 30
	l.slli	r4, r5, 30
	l.or	r17, r17, r16
	l.or	r4, r4, r3
	l.addi	r24, r24, 4
	l.addi	r11, r11, 4
	l.sfne	r11, r24
	l.bf	.LBB0_11
	l.sfnei	r11, 80
	l.ori	r20, r21, 0
	l.ori	r7, r8, 0
	l.ori	r25, r26, 0
	l.ori	r12, r13, 0
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.bf	.LBB0_5
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.body63.i119.i.i.preheader
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.addi	r16, r16, 160
	l.addi	r3, r3, 160
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-336(r2), r3
	l.movhi	r16, 36635
	l.movhi	r3, 36635
	l.ori	r16, r16, 48348
	l.ori	r3, r3, 48348
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-340(r2), r3
.LBB0_7:                                # %for.body63.i119.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r5, -332(r2)
	l.addi	r18, r5, 0
	l.ori	r25, r17, 0
	l.ori	r12, r4, 0
	l.ori	r20, r26, 0
	l.ori	r7, r13, 0
	l.and	r16, r25, r20
	l.and	r3, r12, r7
	l.or	r17, r25, r20
	l.or	r4, r12, r7
	l.and	r17, r17, r19
	l.and	r4, r4, r6
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.srli	r17, r18, 27
	l.srli	r4, r5, 27
	l.slli	r21, r18, 5
	l.slli	r8, r5, 5
	l.or	r17, r21, r17
	l.or	r4, r8, r4
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r17, r24
	l.add	r4, r4, r11
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r3
	l.srli	r16, r19, 2
	l.srli	r3, r6, 2
	l.slli	r17, r19, 30
	l.slli	r4, r6, 30
	l.or	r17, r17, r16
	l.or	r4, r4, r3
	l.addi	r24, r24, 4
	l.addi	r11, r11, 4
	l.sfne	r11, r24
	l.bf	.LBB0_11
	l.sfnei	r11, 80
	l.ori	r21, r20, 0
	l.ori	r8, r7, 0
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.bf	.LBB0_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.body85.i141.i.i.preheader
	l.movhi	r19, 0
	l.movhi	r6, 0
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.addi	r16, r16, 240
	l.addi	r3, r3, 240
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-336(r2), r3
	l.movhi	r16, 51810
	l.movhi	r3, 51810
	l.ori	r24, r16, 49622
	l.ori	r11, r3, 49622
.LBB0_9:                                # %for.body85.i141.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r3, -332(r2)
	l.addi	r16, r3, 0
	l.ori	r21, r17, 0
	l.ori	r8, r4, 0
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.srli	r17, r16, 27
	l.srli	r4, r3, 27
	l.slli	r25, r16, 5
	l.slli	r12, r3, 5
	l.or	r17, r25, r17
	l.or	r4, r12, r4
	l.xor	r25, r21, r26
	l.xor	r12, r8, r13
	l.xor	r25, r25, r18
	l.xor	r12, r12, r5
	l.add	r20, r20, r25
	l.add	r7, r7, r12
	l.add	r17, r20, r17
	l.add	r4, r7, r4
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r7, -336(r2)
	l.addi	r20, r7, 0              # CFC
	l.add	r20, r20, r19
	l.add	r7, r7, r6
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.lwz	r7, 0(r7)
	l.addi	r20, r7, 0              # CFC
	l.add	r17, r17, r20
	l.add	r4, r4, r7
	l.add	r17, r17, r24
	l.add	r4, r4, r11
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sw	-332(r2), r4
	l.srli	r17, r18, 2
	l.srli	r4, r5, 2
	l.slli	r18, r18, 30
	l.slli	r5, r5, 30
	l.or	r17, r18, r17
	l.or	r4, r5, r4
	l.addi	r19, r19, 4
	l.addi	r6, r6, 4
	l.sfne	r6, r19
	l.bf	.LBB0_11
	l.sfnei	r6, 80
	l.ori	r20, r26, 0
	l.ori	r7, r13, 0
	l.ori	r25, r21, 0
	l.ori	r12, r8, 0
	l.ori	r18, r16, 0
	l.ori	r5, r3, 0
	l.bf	.LBB0_9
	l.nop	0                       # in delay slot
# BB#10:                                # %sha_stream.exit
	l.movhi	r18, 61389
	l.movhi	r5, 61389
	l.ori	r18, r18, 43913
	l.ori	r5, r5, 43913
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.movhi	r18, 39098
	l.movhi	r5, 39098
	l.ori	r18, r18, 56574
	l.ori	r5, r5, 56574
	l.add	r17, r17, r18
	l.add	r4, r4, r5
	l.movhi	r18, 4146
	l.movhi	r5, 4146
	l.ori	r18, r18, 21622
	l.ori	r5, r5, 21622
	l.add	r18, r21, r18
	l.add	r5, r8, r5
	l.movhi	r19, 50130
	l.movhi	r6, 50130
	l.ori	r19, r19, 57840
	l.ori	r6, r6, 57840
	l.add	r19, r26, r19
	l.add	r6, r13, r6
	l.sfne	r6, r19
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	16(r1), r6
	l.sfne	r5, r18
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	12(r1), r5
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	8(r1), r4
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	4(r1), r3
	l.movhi	r16, 26437
	l.movhi	r3, 26437
	l.ori	r16, r16, 8961
	l.ori	r3, r3, 8961
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.lwz	r4, -332(r2)
	l.addi	r17, r4, 0
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sw	0(r1), r3
	l.movhi	r16, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r16, r16, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.sfne	r2, r15
	l.bf	.LBB0_11
	l.sfne	r3, r16
	l.bf	.LBB0_11
	l.sfne	r4, r17
	l.bf	.LBB0_11
	l.sfne	r5, r18
	l.bf	.LBB0_11
	l.sfne	r6, r19
	l.bf	.LBB0_11
	l.sfne	r7, r20
	l.bf	.LBB0_11
	l.sfne	r8, r21
	l.bf	.LBB0_11
	l.sfne	r9, r22
	l.bf	.LBB0_11
	l.sfne	r10, r23
	l.bf	.LBB0_11
	l.sfne	r11, r24
	l.bf	.LBB0_11
	l.sfne	r12, r25
	l.bf	.LBB0_11
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
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB0_11
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_11:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB0_12:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	sha_init
	.globl	sha_init
	.p2align	2
	.type	sha_init,@function
sha_init:                               # @sha_init
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB1_1
	l.sfne	r1, r14
	l.bf	.LBB1_1
	l.sw	-4(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -4
	l.addi	r1, r1, -4
	l.movhi	r17, 26437
	l.movhi	r4, 26437
	l.ori	r17, r17, 8961
	l.ori	r4, r4, 8961
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	0(r3), r4
	l.movhi	r17, 61389
	l.movhi	r4, 61389
	l.ori	r17, r17, 43913
	l.ori	r4, r4, 43913
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	4(r3), r4
	l.movhi	r17, 39098
	l.movhi	r4, 39098
	l.ori	r17, r17, 56574
	l.ori	r4, r4, 56574
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	8(r3), r4
	l.movhi	r17, 4146
	l.movhi	r4, 4146
	l.ori	r17, r17, 21622
	l.ori	r4, r4, 21622
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	12(r3), r4
	l.movhi	r17, 50130
	l.movhi	r4, 50130
	l.ori	r17, r17, 57840
	l.ori	r4, r4, 57840
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	16(r3), r4
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	20(r3), r4
	l.sfne	r4, r17
	l.bf	.LBB1_1
	l.sfne	r3, r16
	l.bf	.LBB1_1
	l.sw	24(r3), r4
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB1_1
	l.lwz	r2, -4(r1)
	l.addi	r15, r2, 0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_1:
.LBB1_2:
.Lfunc_end1:
	.size	sha_init, .Lfunc_end1-sha_init

	.hidden	sha_update
	.globl	sha_update
	.p2align	2
	.type	sha_update,@function
sha_update:                             # @sha_update
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB2_19
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -480
	l.addi	r1, r1, -480
	l.ori	r25, r16, 0
	l.ori	r12, r3, 0
	l.slli	r16, r18, 3
	l.slli	r3, r5, 3
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.lwz	r7, 20(r12)
	l.addi	r20, r7, 0              # CFC
	l.add	r16, r20, r16
	l.add	r3, r7, r3
	l.addi	r19, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfltu	r3, r7
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.movhi	r19, 0
	l.movhi	r6, 0
.LBB2_2:                                # %entry
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.lwz	r7, 24(r12)
	l.addi	r20, r7, 0              # CFC
	l.andi	r19, r19, 1
	l.andi	r6, r6, 1
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfeqi	r6, 0
	l.bf	.LBB2_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
	l.addi	r20, r20, 1             # CFC
	l.addi	r7, r7, 1
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	24(r12), r7
.LBB2_4:                                # %if.end
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	20(r12), r3
	l.srli	r16, r18, 29
	l.srli	r3, r5, 29
	l.add	r16, r20, r16
	l.add	r3, r7, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	24(r12), r3
	l.addi	r16, r25, 28
	l.addi	r3, r12, 28
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-464(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfltsi	r5, 64
	l.bf	.LBB2_18
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body.lr.ph
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.addi	r19, r16, 240
	l.addi	r6, r3, 240
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-332(r2), r6
	l.addi	r19, r16, 160
	l.addi	r6, r3, 160
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-336(r2), r6
	l.addi	r16, r16, 80
	l.addi	r3, r3, 80
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-340(r2), r3
	l.addi	r19, r18, -64
	l.addi	r6, r5, -64
	l.addi	r16, r0, -64
	l.addi	r3, r0, -64
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-472(r2), r6
	l.and	r16, r19, r16
	l.and	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-476(r2), r3
	l.addi	r16, r16, 64
	l.addi	r3, r3, 64
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-480(r2), r3
	l.movhi	r16, 23170
	l.movhi	r3, 23170
	l.ori	r16, r16, 31129
	l.ori	r3, r3, 31129
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-344(r2), r3
	l.movhi	r16, 28377
	l.movhi	r3, 28377
	l.ori	r16, r16, 60321
	l.ori	r3, r3, 60321
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-348(r2), r3
	l.movhi	r16, 36635
	l.movhi	r3, 36635
	l.ori	r16, r16, 48348
	l.ori	r3, r3, 48348
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-352(r2), r3
	l.movhi	r16, 51810
	l.movhi	r3, 51810
	l.ori	r16, r16, 49622
	l.ori	r3, r3, 49622
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-356(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-468(r2), r4
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-364(r2), r12
.LBB2_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-368(r2), r5
	l.addi	r18, r0, 64
	l.addi	r5, r0, 64
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -464(r2)
	l.addi	r16, r3, 0
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-360(r2), r4
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r9, r22
	l.bf	.LBB2_19
	l.sfne	r10, r23
	l.bf	.LBB2_19
	l.sfne	r11, r24
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.nop	0
	l.jal	memcpy
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -360(r2)
	l.addi	r18, r5, 0
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 8(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 9(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-372(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 4(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 5(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-376(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 56(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 57(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-384(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 52(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 53(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-396(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 24(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 25(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-380(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 20(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 21(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-388(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 16(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 17(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-400(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 12(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 13(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-408(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 40(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 41(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-392(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 36(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 37(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-404(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 32(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 33(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-412(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 28(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 29(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-420(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 46(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 47(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-416(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 44(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 45(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-424(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 42(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 43(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-428(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 38(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 39(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-432(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 34(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r11, 35(r5)
	l.addi	r24, r11, 0
	l.or	r16, r16, r24
	l.or	r3, r3, r11
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-436(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r11, 30(r5)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r13, 31(r5)
	l.addi	r26, r13, 0
	l.or	r16, r24, r26
	l.or	r3, r11, r13
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-440(r2), r3
	l.ori	r26, r18, 0
	l.ori	r13, r5, 0
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 26(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r12, 27(r13)
	l.addi	r25, r12, 0
	l.or	r16, r24, r25
	l.or	r3, r11, r12
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-444(r2), r3
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 22(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r8, 23(r13)
	l.addi	r21, r8, 0              # CFC
	l.or	r16, r24, r21
	l.or	r3, r11, r8
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-448(r2), r3
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 18(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r6, 19(r13)
	l.addi	r19, r6, 0
	l.or	r16, r24, r19
	l.or	r3, r11, r6
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-452(r2), r3
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 14(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r7, 15(r13)
	l.addi	r20, r7, 0              # CFC
	l.or	r20, r24, r20
	l.or	r7, r11, r7
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 10(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r5, 11(r13)
	l.addi	r18, r5, 0
	l.or	r18, r24, r18
	l.or	r5, r11, r5
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 6(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r4, 7(r13)
	l.addi	r17, r4, 0
	l.or	r17, r24, r17
	l.or	r4, r11, r4
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 58(r13)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r3, 59(r13)
	l.addi	r16, r3, 0
	l.or	r16, r24, r16
	l.or	r3, r11, r3
	l.sfne	r13, r26
	l.bf	.LBB2_19
	l.lbz	r11, 54(r13)
	l.addi	r24, r11, 0
	l.ori	r19, r26, 0
	l.ori	r6, r13, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lbz	r13, 55(r6)
	l.addi	r26, r13, 0
	l.or	r26, r24, r26
	l.or	r13, r11, r13
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lbz	r11, 50(r6)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lbz	r12, 51(r6)
	l.addi	r25, r12, 0
	l.or	r25, r24, r25
	l.or	r12, r11, r12
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lbz	r11, 48(r6)
	l.addi	r24, r11, 0
	l.slli	r24, r24, 8
	l.slli	r11, r11, 8
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lbz	r8, 49(r6)
	l.addi	r21, r8, 0              # CFC
	l.or	r21, r24, r21
	l.or	r8, r11, r8
	l.slli	r21, r21, 16
	l.slli	r8, r8, 16
	l.or	r21, r21, r25
	l.or	r8, r8, r12
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-456(r2), r8
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r8, -396(r2)
	l.addi	r21, r8, 0              # CFC
	l.slli	r25, r21, 16
	l.slli	r12, r8, 16
	l.or	r21, r25, r26
	l.or	r8, r12, r13
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-396(r2), r8
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r8, -384(r2)
	l.addi	r21, r8, 0              # CFC
	l.slli	r26, r21, 16
	l.slli	r13, r8, 16
	l.or	r16, r26, r16
	l.or	r3, r13, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-460(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -376(r2)
	l.addi	r16, r3, 0
	l.slli	r26, r16, 16
	l.slli	r13, r3, 16
	l.or	r16, r26, r17
	l.or	r3, r13, r4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-376(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -372(r2)
	l.addi	r16, r3, 0
	l.slli	r26, r16, 16
	l.slli	r13, r3, 16
	l.or	r16, r26, r18
	l.or	r3, r13, r5
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-372(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -408(r2)
	l.addi	r16, r3, 0
	l.slli	r26, r16, 16
	l.slli	r13, r3, 16
	l.or	r16, r26, r20
	l.or	r3, r13, r7
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-384(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -400(r2)
	l.addi	r16, r3, 0
	l.slli	r26, r16, 16
	l.slli	r13, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -452(r2)
	l.addi	r16, r3, 0
	l.or	r16, r26, r16
	l.or	r3, r13, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-400(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -388(r2)
	l.addi	r16, r3, 0
	l.slli	r26, r16, 16
	l.slli	r13, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -448(r2)
	l.addi	r16, r3, 0
	l.or	r16, r26, r16
	l.or	r3, r13, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-388(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -380(r2)
	l.addi	r16, r3, 0
	l.slli	r24, r16, 16
	l.slli	r11, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -444(r2)
	l.addi	r16, r3, 0
	l.or	r16, r24, r16
	l.or	r3, r11, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-380(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -420(r2)
	l.addi	r16, r3, 0
	l.slli	r17, r16, 16
	l.slli	r4, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -440(r2)
	l.addi	r16, r3, 0
	l.or	r24, r17, r16
	l.or	r11, r4, r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -412(r2)
	l.addi	r16, r3, 0
	l.slli	r18, r16, 16
	l.slli	r5, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -436(r2)
	l.addi	r16, r3, 0
	l.or	r18, r18, r16
	l.or	r5, r5, r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -404(r2)
	l.addi	r16, r3, 0
	l.slli	r21, r16, 16
	l.slli	r8, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -432(r2)
	l.addi	r16, r3, 0
	l.or	r21, r21, r16
	l.or	r8, r8, r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -392(r2)
	l.addi	r16, r3, 0
	l.slli	r20, r16, 16
	l.slli	r7, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -428(r2)
	l.addi	r16, r3, 0
	l.or	r20, r20, r16
	l.or	r7, r7, r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -424(r2)
	l.addi	r16, r3, 0
	l.slli	r25, r16, 16
	l.slli	r12, r3, 16
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -416(r2)
	l.addi	r16, r3, 0
	l.or	r25, r25, r16
	l.or	r12, r12, r3
	l.ori	r17, r19, 0
	l.ori	r4, r6, 0
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lbz	r6, 62(r4)
	l.addi	r19, r6, 0
	l.slli	r19, r19, 8
	l.slli	r6, r6, 8
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lbz	r3, 63(r4)
	l.addi	r16, r3, 0
	l.or	r16, r19, r16
	l.or	r3, r6, r3
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lbz	r6, 60(r4)
	l.addi	r19, r6, 0
	l.slli	r19, r19, 8
	l.slli	r6, r6, 8
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lbz	r13, 61(r4)
	l.addi	r26, r13, 0
	l.or	r19, r19, r26
	l.or	r6, r6, r13
	l.slli	r19, r19, 16
	l.slli	r6, r6, 16
	l.or	r16, r19, r16
	l.or	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-268(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -460(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-272(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -396(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-276(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -456(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-280(r2), r3
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-284(r2), r12
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-288(r2), r7
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-292(r2), r8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-296(r2), r5
	l.sfne	r11, r24
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-300(r2), r11
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -380(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-304(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -388(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-308(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -400(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-312(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -384(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-316(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -372(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-320(r2), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -376(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-324(r2), r3
	l.ori	r18, r17, 0
	l.ori	r5, r4, 0
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r3, 2(r5)
	l.addi	r16, r3, 0
	l.slli	r16, r16, 8
	l.slli	r3, r3, 8
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 3(r5)
	l.addi	r17, r4, 0
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r4, 1(r5)
	l.addi	r17, r4, 0
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lbz	r5, 0(r5)
	l.addi	r18, r5, 0
	l.slli	r18, r18, 8
	l.slli	r5, r5, 8
	l.or	r17, r18, r17
	l.or	r4, r5, r4
	l.slli	r17, r17, 16
	l.slli	r4, r4, 16
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-328(r2), r3
	l.movhi	r16, 0
	l.movhi	r3, 0
.LBB2_7:                                # %for.body4.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.addi	r17, r15, -328
	l.addi	r4, r2, -328
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lwz	r5, 52(r4)
	l.addi	r18, r5, 0
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lwz	r6, 32(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r19, r18
	l.xor	r5, r6, r5
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lwz	r6, 8(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r18, r19
	l.xor	r5, r5, r6
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.lwz	r6, 0(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r18, r19
	l.xor	r5, r5, r6
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sw	64(r4), r5
	l.addi	r16, r16, 4
	l.addi	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfnei	r3, 256
	l.bf	.LBB2_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.end17.i
                                        #   in Loop: Header=BB2_6 Depth=1
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -364(r2)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.lwz	r7, 16(r3)
	l.addi	r20, r7, 0              # CFC
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.lwz	r11, 12(r3)
	l.addi	r24, r11, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.lwz	r8, 8(r3)
	l.addi	r21, r8, 0              # CFC
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.lwz	r6, 4(r3)
	l.addi	r19, r6, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.lwz	r12, 0(r3)
	l.addi	r25, r12, 0
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-372(r2), r7
	l.sfne	r11, r24
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-376(r2), r11
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-380(r2), r8
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-384(r2), r6
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sw	-388(r2), r12
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -344(r2)
	l.addi	r16, r3, 0
.LBB2_9:                                # %for.body29.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.ori	r16, r24, 0
	l.ori	r3, r11, 0
	l.xori	r21, r19, -1            # CFC
	l.xori	r8, r6, -1
	l.and	r21, r16, r21
	l.and	r8, r3, r8
	l.and	r25, r19, r18
	l.and	r12, r6, r5
	l.or	r21, r21, r25
	l.or	r8, r8, r12
	l.add	r20, r20, r21
	l.add	r7, r7, r8
	l.srli	r21, r26, 27
	l.srli	r8, r13, 27
	l.slli	r25, r26, 5
	l.slli	r12, r13, 5
	l.or	r21, r25, r21
	l.or	r8, r12, r8
	l.add	r20, r20, r21
	l.add	r7, r7, r8
	l.addi	r21, r15, -328          # CFC
	l.addi	r8, r2, -328
	l.add	r21, r21, r17
	l.add	r8, r8, r4
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.lwz	r8, 0(r8)
	l.addi	r21, r8, 0              # CFC
	l.add	r20, r20, r21
	l.add	r7, r7, r8
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r8, -344(r2)
	l.addi	r21, r8, 0              # CFC
	l.add	r25, r20, r21
	l.add	r12, r7, r8
	l.srli	r20, r19, 2
	l.srli	r7, r6, 2
	l.slli	r19, r19, 30
	l.slli	r6, r6, 30
	l.or	r21, r19, r20
	l.or	r8, r6, r7
	l.addi	r17, r17, 4
	l.addi	r4, r4, 4
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfnei	r4, 80
	l.ori	r20, r16, 0
	l.ori	r7, r3, 0
	l.ori	r24, r18, 0
	l.ori	r11, r5, 0
	l.ori	r19, r26, 0
	l.ori	r6, r13, 0
	l.bf	.LBB2_9
	l.nop	0                       # in delay slot
# BB#10:                                # %for.body44.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.movhi	r20, 0
	l.movhi	r7, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r4, -348(r2)
	l.addi	r17, r4, 0
.LBB2_11:                               # %for.body44.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r24, r25, 0
	l.ori	r11, r12, 0
	l.ori	r19, r21, 0
	l.ori	r6, r8, 0
	l.ori	r17, r18, 0
	l.ori	r4, r5, 0
	l.srli	r18, r24, 27
	l.srli	r5, r11, 27
	l.slli	r21, r24, 5
	l.slli	r8, r11, 5
	l.or	r18, r21, r18
	l.or	r5, r8, r5
	l.xor	r21, r19, r17           # CFC
	l.xor	r8, r6, r4
	l.xor	r21, r21, r26           # CFC
	l.xor	r8, r8, r13
	l.add	r16, r16, r21
	l.add	r3, r3, r8
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -340(r2)
	l.addi	r18, r5, 0
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lwz	r5, 0(r5)
	l.addi	r18, r5, 0
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -348(r2)
	l.addi	r18, r5, 0
	l.add	r25, r16, r18
	l.add	r12, r3, r5
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r18, r26, 30
	l.slli	r5, r13, 30
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfnei	r7, 80
	l.ori	r16, r17, 0
	l.ori	r3, r4, 0
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.ori	r26, r24, 0
	l.ori	r13, r11, 0
	l.bf	.LBB2_11
	l.nop	0                       # in delay slot
# BB#12:                                # %for.body63.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.movhi	r20, 0
	l.movhi	r7, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -336(r2)
	l.addi	r16, r3, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -352(r2)
	l.addi	r16, r3, 0
.LBB2_13:                               # %for.body63.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.ori	r16, r19, 0
	l.ori	r3, r6, 0
	l.and	r19, r18, r16
	l.and	r6, r5, r3
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.and	r21, r21, r24
	l.and	r8, r8, r11
	l.or	r19, r21, r19
	l.or	r6, r8, r6
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.srli	r19, r26, 27
	l.srli	r6, r13, 27
	l.slli	r21, r26, 5
	l.slli	r8, r13, 5
	l.or	r19, r21, r19
	l.or	r6, r8, r6
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r6, -336(r2)
	l.addi	r19, r6, 0
	l.add	r19, r19, r20
	l.add	r6, r6, r7
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.lwz	r6, 0(r6)
	l.addi	r19, r6, 0
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r6, -352(r2)
	l.addi	r19, r6, 0
	l.add	r25, r17, r19
	l.add	r12, r4, r6
	l.srli	r17, r24, 2
	l.srli	r4, r11, 2
	l.slli	r19, r24, 30
	l.slli	r6, r11, 30
	l.or	r21, r19, r17
	l.or	r8, r6, r4
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfnei	r7, 80
	l.ori	r17, r16, 0
	l.ori	r4, r3, 0
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.ori	r24, r26, 0
	l.ori	r11, r13, 0
	l.bf	.LBB2_13
	l.nop	0                       # in delay slot
# BB#14:                                # %for.body85.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r6, -332(r2)
	l.addi	r19, r6, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r6, -356(r2)
	l.addi	r19, r6, 0
.LBB2_15:                               # %for.body85.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r24, r25, 0
	l.ori	r11, r12, 0
	l.ori	r20, r21, 0
	l.ori	r7, r8, 0
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.srli	r18, r24, 27
	l.srli	r5, r11, 27
	l.slli	r21, r24, 5
	l.slli	r8, r11, 5
	l.or	r18, r21, r18
	l.or	r5, r8, r5
	l.xor	r21, r20, r19           # CFC
	l.xor	r8, r7, r6
	l.xor	r21, r21, r26           # CFC
	l.xor	r8, r8, r13
	l.add	r16, r16, r21
	l.add	r3, r3, r8
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -332(r2)
	l.addi	r18, r5, 0
	l.add	r18, r18, r17
	l.add	r5, r5, r4
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.lwz	r5, 0(r5)
	l.addi	r18, r5, 0
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -356(r2)
	l.addi	r18, r5, 0
	l.add	r25, r16, r18
	l.add	r12, r3, r5
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r18, r26, 30
	l.slli	r5, r13, 30
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.addi	r17, r17, 4
	l.addi	r4, r4, 4
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfnei	r4, 80
	l.ori	r16, r19, 0
	l.ori	r3, r6, 0
	l.ori	r18, r20, 0
	l.ori	r5, r7, 0
	l.ori	r26, r24, 0
	l.ori	r13, r11, 0
	l.bf	.LBB2_15
	l.nop	0                       # in delay slot
# BB#16:                                # %sha_transform.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -388(r2)
	l.addi	r16, r3, 0
	l.add	r16, r25, r16
	l.add	r3, r12, r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r12, -364(r2)
	l.addi	r25, r12, 0
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	0(r12), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -384(r2)
	l.addi	r16, r3, 0
	l.add	r16, r24, r16
	l.add	r3, r11, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	4(r12), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -380(r2)
	l.addi	r16, r3, 0
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	8(r12), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -376(r2)
	l.addi	r16, r3, 0
	l.add	r16, r20, r16
	l.add	r3, r7, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	12(r12), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -372(r2)
	l.addi	r16, r3, 0
	l.add	r16, r19, r16
	l.add	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.sw	16(r12), r3
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r4, -360(r2)
	l.addi	r17, r4, 0
	l.addi	r17, r17, 64
	l.addi	r4, r4, 64
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r5, -368(r2)
	l.addi	r18, r5, 0
	l.addi	r18, r18, -64
	l.addi	r5, r5, -64
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfgtsi	r5, 63
	l.bf	.LBB2_6
	l.nop	0                       # in delay slot
# BB#17:                                # %while.end.loopexit
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -472(r2)
	l.addi	r16, r3, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r4, -476(r2)
	l.addi	r17, r4, 0
	l.sub	r18, r16, r17
	l.sub	r5, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r4, -468(r2)
	l.addi	r17, r4, 0
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -480(r2)
	l.addi	r16, r3, 0
	l.add	r17, r17, r16
	l.add	r4, r4, r3
.LBB2_18:                               # %while.end
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.lwz	r3, -464(r2)
	l.addi	r16, r3, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.sfne	r2, r15
	l.bf	.LBB2_19
	l.sfne	r3, r16
	l.bf	.LBB2_19
	l.sfne	r4, r17
	l.bf	.LBB2_19
	l.sfne	r5, r18
	l.bf	.LBB2_19
	l.sfne	r6, r19
	l.bf	.LBB2_19
	l.sfne	r7, r20
	l.bf	.LBB2_19
	l.sfne	r8, r21
	l.bf	.LBB2_19
	l.sfne	r9, r22
	l.bf	.LBB2_19
	l.sfne	r10, r23
	l.bf	.LBB2_19
	l.sfne	r11, r24
	l.bf	.LBB2_19
	l.sfne	r12, r25
	l.bf	.LBB2_19
	l.nop	0
	l.jal	memcpy
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB2_19
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_19:
.LBB2_20:
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update

	.hidden	sha_final
	.globl	sha_final
	.p2align	2
	.type	sha_final,@function
sha_final:                              # @sha_final
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB3_24
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -376
	l.addi	r1, r1, -376
	l.ori	r19, r16, 0
	l.ori	r6, r3, 0
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r3, 24(r6)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-344(r2), r3
	l.addi	r20, r19, 28            # CFC
	l.addi	r7, r6, 28
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r3, 20(r6)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-348(r2), r3
	l.srli	r16, r16, 3
	l.srli	r3, r3, 3
	l.andi	r17, r16, 63
	l.andi	r4, r3, 63
	l.add	r16, r20, r17
	l.add	r3, r7, r4
	l.addi	r18, r0, 128
	l.addi	r5, r0, 128
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sb	0(r3), r5
	l.addi	r18, r17, 1
	l.addi	r5, r4, 1
	l.add	r16, r20, r18
	l.add	r3, r7, r5
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfltui	r5, 57
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-340(r2), r6
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-352(r2), r7
	l.bf	.LBB3_12
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.xori	r18, r17, 63
	l.xori	r5, r4, 63
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfne	r8, r21
	l.bf	.LBB3_24
	l.sfne	r9, r22
	l.bf	.LBB3_24
	l.sfne	r10, r23
	l.bf	.LBB3_24
	l.sfne	r11, r24
	l.bf	.LBB3_24
	l.sfne	r12, r25
	l.bf	.LBB3_24
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.movhi	r20, 0
	l.movhi	r7, 0
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 88(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-268(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 84(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-272(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 80(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-276(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 76(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-280(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 72(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-284(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 68(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-288(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 64(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-292(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 60(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-296(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 56(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-300(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 52(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-304(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 48(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-308(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 44(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-312(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 40(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-316(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 36(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-320(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 32(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-324(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r3, 28(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-328(r2), r3
	l.addi	r16, r17, 28
	l.addi	r3, r4, 28
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-356(r2), r3
	l.ori	r19, r17, 0
	l.ori	r6, r4, 0
.LBB3_2:                                # %for.body4.i
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.add	r16, r16, r20
	l.add	r3, r3, r7
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.lwz	r4, 52(r3)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.lwz	r5, 32(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r18, r17
	l.xor	r4, r5, r4
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.lwz	r5, 8(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.lwz	r5, 0(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	64(r3), r4
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfnei	r7, 256
	l.bf	.LBB3_2
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.end17.i
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r5, 16(r6)
	l.addi	r18, r5, 0
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r7, 12(r6)
	l.addi	r20, r7, 0              # CFC
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r12, 8(r6)
	l.addi	r25, r12, 0
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r8, 4(r6)
	l.addi	r21, r8, 0              # CFC
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r13, 0(r6)
	l.addi	r26, r13, 0
	l.movhi	r16, 23170
	l.movhi	r3, 23170
	l.ori	r16, r16, 31129
	l.ori	r3, r3, 31129
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-360(r2), r5
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r5
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-364(r2), r7
	l.ori	r16, r20, 0
	l.ori	r3, r7, 0
	l.sfne	r12, r25
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-368(r2), r12
	l.sfne	r8, r21
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-372(r2), r8
	l.ori	r19, r21, 0
	l.ori	r6, r8, 0
	l.sfne	r13, r26
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-376(r2), r13
.LBB3_4:                                # %for.body29.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r24, r26, 0
	l.ori	r11, r13, 0
	l.ori	r20, r25, 0
	l.ori	r7, r12, 0
	l.ori	r18, r16, 0
	l.ori	r5, r3, 0
	l.xori	r16, r19, -1
	l.xori	r3, r6, -1
	l.and	r16, r18, r16
	l.and	r3, r5, r3
	l.and	r21, r19, r20
	l.and	r8, r6, r7
	l.or	r16, r16, r21
	l.or	r3, r3, r8
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r8, -332(r2)
	l.addi	r21, r8, 0              # CFC
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.srli	r21, r24, 27
	l.srli	r8, r11, 27
	l.slli	r25, r24, 5
	l.slli	r12, r11, 5
	l.or	r21, r25, r21
	l.or	r8, r12, r8
	l.add	r16, r16, r21
	l.add	r3, r3, r8
	l.addi	r21, r15, -328          # CFC
	l.addi	r8, r2, -328
	l.add	r25, r21, r17
	l.add	r12, r8, r4
	l.sfne	r12, r25
	l.bf	.LBB3_24
	l.lwz	r12, 0(r12)
	l.addi	r25, r12, 0
	l.add	r16, r16, r25
	l.add	r3, r3, r12
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r12, -336(r2)
	l.addi	r25, r12, 0
	l.add	r26, r16, r25
	l.add	r13, r3, r12
	l.srli	r16, r19, 2
	l.srli	r3, r6, 2
	l.slli	r19, r19, 30
	l.slli	r6, r6, 30
	l.or	r25, r19, r16
	l.or	r12, r6, r3
	l.addi	r17, r17, 4
	l.addi	r4, r4, 4
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfnei	r4, 80
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r5
	l.ori	r16, r20, 0
	l.ori	r3, r7, 0
	l.ori	r19, r24, 0
	l.ori	r6, r11, 0
	l.bf	.LBB3_4
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body44.i.preheader
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.addi	r17, r21, 80
	l.addi	r4, r8, 80
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r4
	l.movhi	r17, 28377
	l.movhi	r4, 28377
	l.ori	r17, r17, 60321
	l.ori	r4, r4, 60321
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r4
.LBB3_6:                                # %for.body44.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r17, r26, 0
	l.ori	r4, r13, 0
	l.ori	r21, r25, 0
	l.ori	r8, r12, 0
	l.ori	r19, r20, 0
	l.ori	r6, r7, 0
	l.srli	r20, r17, 27
	l.srli	r7, r4, 27
	l.slli	r25, r17, 5
	l.slli	r12, r4, 5
	l.or	r20, r25, r20
	l.or	r7, r12, r7
	l.xor	r25, r21, r19
	l.xor	r12, r8, r6
	l.xor	r25, r25, r24
	l.xor	r12, r12, r11
	l.add	r18, r18, r25
	l.add	r5, r5, r12
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -332(r2)
	l.addi	r20, r7, 0              # CFC
	l.add	r20, r20, r16
	l.add	r7, r7, r3
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r7, 0(r7)
	l.addi	r20, r7, 0              # CFC
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -336(r2)
	l.addi	r20, r7, 0              # CFC
	l.add	r26, r18, r20
	l.add	r13, r5, r7
	l.srli	r18, r24, 2
	l.srli	r5, r11, 2
	l.slli	r20, r24, 30
	l.slli	r7, r11, 30
	l.or	r25, r20, r18
	l.or	r12, r7, r5
	l.addi	r16, r16, 4
	l.addi	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfnei	r3, 80
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.ori	r20, r21, 0
	l.ori	r7, r8, 0
	l.ori	r24, r17, 0
	l.ori	r11, r4, 0
	l.bf	.LBB3_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %for.body63.i.preheader
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.addi	r18, r15, -328
	l.addi	r5, r2, -328
	l.addi	r18, r18, 160
	l.addi	r5, r5, 160
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r5
	l.movhi	r18, 36635
	l.movhi	r5, 36635
	l.ori	r18, r18, 48348
	l.ori	r5, r5, 48348
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r5
.LBB3_8:                                # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r24, r26, 0
	l.ori	r11, r13, 0
	l.ori	r20, r25, 0
	l.ori	r7, r12, 0
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.and	r21, r20, r18
	l.and	r8, r7, r5
	l.or	r25, r20, r18
	l.or	r12, r7, r5
	l.and	r25, r25, r17
	l.and	r12, r12, r4
	l.or	r21, r25, r21
	l.or	r8, r12, r8
	l.add	r19, r19, r21
	l.add	r6, r6, r8
	l.srli	r21, r24, 27
	l.srli	r8, r11, 27
	l.slli	r25, r24, 5
	l.slli	r12, r11, 5
	l.or	r21, r25, r21
	l.or	r8, r12, r8
	l.add	r19, r19, r21
	l.add	r6, r6, r8
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r8, -332(r2)
	l.addi	r21, r8, 0              # CFC
	l.add	r21, r21, r16
	l.add	r8, r8, r3
	l.sfne	r8, r21
	l.bf	.LBB3_24
	l.lwz	r8, 0(r8)
	l.addi	r21, r8, 0              # CFC
	l.add	r19, r19, r21
	l.add	r6, r6, r8
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r8, -336(r2)
	l.addi	r21, r8, 0              # CFC
	l.add	r26, r19, r21
	l.add	r13, r6, r8
	l.srli	r19, r17, 2
	l.srli	r6, r4, 2
	l.slli	r17, r17, 30
	l.slli	r4, r4, 30
	l.or	r25, r17, r19
	l.or	r12, r4, r6
	l.addi	r16, r16, 4
	l.addi	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfnei	r3, 80
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.ori	r21, r20, 0
	l.ori	r8, r7, 0
	l.ori	r17, r24, 0
	l.ori	r4, r11, 0
	l.bf	.LBB3_8
	l.nop	0                       # in delay slot
# BB#9:                                 # %for.body85.i.preheader
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.addi	r17, r15, -328
	l.addi	r4, r2, -328
	l.addi	r17, r17, 240
	l.addi	r4, r4, 240
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r4
	l.movhi	r17, 51810
	l.movhi	r4, 51810
	l.ori	r17, r17, 49622
	l.ori	r4, r4, 49622
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r4
.LBB3_10:                               # %for.body85.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r19, r26, 0
	l.ori	r6, r13, 0
	l.ori	r17, r25, 0
	l.ori	r4, r12, 0
	l.ori	r21, r20, 0
	l.ori	r8, r7, 0
	l.srli	r20, r19, 27
	l.srli	r7, r6, 27
	l.slli	r25, r19, 5
	l.slli	r12, r6, 5
	l.or	r20, r25, r20
	l.or	r7, r12, r7
	l.xor	r25, r17, r21
	l.xor	r12, r4, r8
	l.xor	r25, r25, r24
	l.xor	r12, r12, r11
	l.add	r18, r18, r25
	l.add	r5, r5, r12
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -332(r2)
	l.addi	r20, r7, 0              # CFC
	l.add	r20, r20, r16
	l.add	r7, r7, r3
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r7, 0(r7)
	l.addi	r20, r7, 0              # CFC
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -336(r2)
	l.addi	r20, r7, 0              # CFC
	l.add	r26, r18, r20
	l.add	r13, r5, r7
	l.srli	r18, r24, 2
	l.srli	r5, r11, 2
	l.slli	r20, r24, 30
	l.slli	r7, r11, 30
	l.or	r25, r20, r18
	l.or	r12, r7, r5
	l.addi	r16, r16, 4
	l.addi	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfnei	r3, 80
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.ori	r20, r17, 0
	l.ori	r7, r4, 0
	l.ori	r24, r19, 0
	l.ori	r11, r6, 0
	l.bf	.LBB3_10
	l.nop	0                       # in delay slot
# BB#11:                                # %sha_transform.exit
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -376(r2)
	l.addi	r16, r3, 0
	l.add	r16, r26, r16
	l.add	r3, r13, r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -340(r2)
	l.addi	r20, r7, 0              # CFC
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	0(r7), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -372(r2)
	l.addi	r16, r3, 0
	l.add	r16, r19, r16
	l.add	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	4(r7), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -368(r2)
	l.addi	r16, r3, 0
	l.add	r16, r25, r16
	l.add	r3, r12, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	8(r7), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -364(r2)
	l.addi	r16, r3, 0
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	12(r7), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -360(r2)
	l.addi	r16, r3, 0
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	16(r7), r3
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r4, -352(r2)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	52(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	48(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	44(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	40(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	36(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	32(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	28(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	24(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	20(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	16(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	12(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	8(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	4(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	0(r4), r3
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -356(r2)
	l.addi	r18, r5, 0
	l.j	.LBB3_13
	l.nop	0                       # in delay slot
.LBB3_12:                               # %if.else
	l.addi	r18, r0, 55
	l.addi	r5, r0, 55
	l.sub	r18, r18, r17
	l.sub	r5, r5, r4
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfne	r8, r21
	l.bf	.LBB3_24
	l.sfne	r9, r22
	l.bf	.LBB3_24
	l.sfne	r10, r23
	l.bf	.LBB3_24
	l.sfne	r11, r24
	l.bf	.LBB3_24
	l.sfne	r12, r25
	l.bf	.LBB3_24
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -352(r2)
	l.addi	r18, r5, 0
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r7, -340(r2)
	l.addi	r20, r7, 0              # CFC
.LBB3_13:                               # %if.end
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r4, -344(r2)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	84(r7), r4
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r4, -348(r2)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sw	88(r7), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 60(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	60(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 56(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	56(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 52(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	52(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 48(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	48(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 44(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	44(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 40(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	40(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 36(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	36(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 32(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	32(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 28(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	28(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 24(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	24(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 20(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	20(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 16(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	16(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 12(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	12(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 8(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	8(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 4(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	4(r3), r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r4, 0(r5)
	l.addi	r17, r4, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sw	0(r3), r4
	l.movhi	r16, 0
	l.movhi	r3, 0
.LBB3_14:                               # %for.body4.i43
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r17, r15, -328
	l.addi	r4, r2, -328
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r5, 52(r4)
	l.addi	r18, r5, 0
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r6, 32(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r19, r18
	l.xor	r5, r6, r5
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r6, 8(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r18, r19
	l.xor	r5, r5, r6
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.lwz	r6, 0(r4)
	l.addi	r19, r6, 0
	l.xor	r18, r18, r19
	l.xor	r5, r5, r6
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	64(r4), r5
	l.addi	r16, r16, 4
	l.addi	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfnei	r3, 256
	l.bf	.LBB3_14
	l.nop	0                       # in delay slot
# BB#15:                                # %for.end17.i49
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r5, 16(r7)
	l.addi	r18, r5, 0
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r11, 12(r7)
	l.addi	r24, r11, 0
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r8, 8(r7)
	l.addi	r21, r8, 0              # CFC
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r6, 4(r7)
	l.addi	r19, r6, 0
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.lwz	r12, 0(r7)
	l.addi	r25, r12, 0
	l.movhi	r16, 23170
	l.movhi	r3, 23170
	l.ori	r16, r16, 31129
	l.ori	r3, r3, 31129
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r3
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-344(r2), r5
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r5
	l.sfne	r11, r24
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-348(r2), r11
	l.sfne	r8, r21
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-352(r2), r8
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-356(r2), r6
	l.ori	r20, r19, 0
	l.ori	r7, r6, 0
	l.sfne	r12, r25
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-360(r2), r12
.LBB3_16:                               # %for.body29.i73
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.ori	r16, r24, 0
	l.ori	r3, r11, 0
	l.xori	r19, r20, -1
	l.xori	r6, r7, -1
	l.and	r19, r16, r19
	l.and	r6, r3, r6
	l.and	r21, r20, r18
	l.and	r8, r7, r5
	l.or	r19, r19, r21
	l.or	r6, r6, r8
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r8, -332(r2)
	l.addi	r21, r8, 0              # CFC
	l.add	r19, r21, r19
	l.add	r6, r8, r6
	l.srli	r21, r26, 27
	l.srli	r8, r13, 27
	l.slli	r25, r26, 5
	l.slli	r12, r13, 5
	l.or	r21, r25, r21
	l.or	r8, r12, r8
	l.add	r21, r19, r21
	l.add	r8, r6, r8
	l.addi	r19, r15, -328
	l.addi	r6, r2, -328
	l.add	r25, r19, r17
	l.add	r12, r6, r4
	l.sfne	r12, r25
	l.bf	.LBB3_24
	l.lwz	r12, 0(r12)
	l.addi	r25, r12, 0
	l.add	r21, r21, r25
	l.add	r8, r8, r12
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r12, -336(r2)
	l.addi	r25, r12, 0
	l.add	r25, r21, r25
	l.add	r12, r8, r12
	l.srli	r21, r20, 2
	l.srli	r8, r7, 2
	l.slli	r20, r20, 30
	l.slli	r7, r7, 30
	l.or	r21, r20, r21
	l.or	r8, r7, r8
	l.addi	r17, r17, 4
	l.addi	r4, r4, 4
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfnei	r4, 80
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r3
	l.ori	r24, r18, 0
	l.ori	r11, r5, 0
	l.ori	r20, r26, 0
	l.ori	r7, r13, 0
	l.bf	.LBB3_16
	l.nop	0                       # in delay slot
# BB#17:                                # %for.body44.i95.preheader
	l.movhi	r20, 0
	l.movhi	r7, 0
	l.addi	r17, r19, 80
	l.addi	r4, r6, 80
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r4
	l.movhi	r17, 28377
	l.movhi	r4, 28377
	l.ori	r17, r17, 60321
	l.ori	r4, r4, 60321
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r4
.LBB3_18:                               # %for.body44.i95
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r24, r25, 0
	l.ori	r11, r12, 0
	l.ori	r19, r21, 0
	l.ori	r6, r8, 0
	l.ori	r17, r18, 0
	l.ori	r4, r5, 0
	l.srli	r18, r24, 27
	l.srli	r5, r11, 27
	l.slli	r21, r24, 5
	l.slli	r8, r11, 5
	l.or	r18, r21, r18
	l.or	r5, r8, r5
	l.xor	r21, r19, r17           # CFC
	l.xor	r8, r6, r4
	l.xor	r21, r21, r26           # CFC
	l.xor	r8, r8, r13
	l.add	r16, r16, r21
	l.add	r3, r3, r8
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -332(r2)
	l.addi	r18, r5, 0
	l.add	r18, r18, r20
	l.add	r5, r5, r7
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r5, 0(r5)
	l.addi	r18, r5, 0
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -336(r2)
	l.addi	r18, r5, 0
	l.add	r25, r16, r18
	l.add	r12, r3, r5
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r18, r26, 30
	l.slli	r5, r13, 30
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfnei	r7, 80
	l.ori	r16, r17, 0
	l.ori	r3, r4, 0
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.ori	r26, r24, 0
	l.ori	r13, r11, 0
	l.bf	.LBB3_18
	l.nop	0                       # in delay slot
# BB#19:                                # %for.body63.i119.preheader
	l.movhi	r20, 0
	l.movhi	r7, 0
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.addi	r16, r16, 160
	l.addi	r3, r3, 160
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r3
	l.movhi	r16, 36635
	l.movhi	r3, 36635
	l.ori	r16, r16, 48348
	l.ori	r3, r3, 48348
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r3
.LBB3_20:                               # %for.body63.i119
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r18, r21, 0
	l.ori	r5, r8, 0
	l.ori	r16, r19, 0
	l.ori	r3, r6, 0
	l.and	r19, r18, r16
	l.and	r6, r5, r3
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.and	r21, r21, r24
	l.and	r8, r8, r11
	l.or	r19, r21, r19
	l.or	r6, r8, r6
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.srli	r19, r26, 27
	l.srli	r6, r13, 27
	l.slli	r21, r26, 5
	l.slli	r8, r13, 5
	l.or	r19, r21, r19
	l.or	r6, r8, r6
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r6, -332(r2)
	l.addi	r19, r6, 0
	l.add	r19, r19, r20
	l.add	r6, r6, r7
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.lwz	r6, 0(r6)
	l.addi	r19, r6, 0
	l.add	r17, r17, r19
	l.add	r4, r4, r6
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r6, -336(r2)
	l.addi	r19, r6, 0
	l.add	r25, r17, r19
	l.add	r12, r4, r6
	l.srli	r17, r24, 2
	l.srli	r4, r11, 2
	l.slli	r19, r24, 30
	l.slli	r6, r11, 30
	l.or	r21, r19, r17
	l.or	r8, r6, r4
	l.addi	r20, r20, 4             # CFC
	l.addi	r7, r7, 4
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfnei	r7, 80
	l.ori	r17, r16, 0
	l.ori	r4, r3, 0
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.ori	r24, r26, 0
	l.ori	r11, r13, 0
	l.bf	.LBB3_20
	l.nop	0                       # in delay slot
# BB#21:                                # %for.body85.i141.preheader
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.addi	r19, r15, -328
	l.addi	r6, r2, -328
	l.addi	r19, r19, 240
	l.addi	r6, r6, 240
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-332(r2), r6
	l.movhi	r19, 51810
	l.movhi	r6, 51810
	l.ori	r19, r19, 49622
	l.ori	r6, r6, 49622
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-336(r2), r6
.LBB3_22:                               # %for.body85.i141
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r20, r25, 0
	l.ori	r7, r12, 0
	l.ori	r19, r21, 0
	l.ori	r6, r8, 0
	l.ori	r24, r18, 0
	l.ori	r11, r5, 0
	l.srli	r18, r20, 27
	l.srli	r5, r7, 27
	l.slli	r21, r20, 5
	l.slli	r8, r7, 5
	l.or	r18, r21, r18
	l.or	r5, r8, r5
	l.xor	r21, r19, r24           # CFC
	l.xor	r8, r6, r11
	l.xor	r21, r21, r26           # CFC
	l.xor	r8, r8, r13
	l.add	r16, r16, r21
	l.add	r3, r3, r8
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -332(r2)
	l.addi	r18, r5, 0
	l.add	r18, r18, r17
	l.add	r5, r5, r4
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.lwz	r5, 0(r5)
	l.addi	r18, r5, 0
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r5, -336(r2)
	l.addi	r18, r5, 0
	l.add	r25, r16, r18
	l.add	r12, r3, r5
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r18, r26, 30
	l.slli	r5, r13, 30
	l.or	r21, r18, r16
	l.or	r8, r5, r3
	l.addi	r17, r17, 4
	l.addi	r4, r4, 4
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sfnei	r4, 80
	l.ori	r16, r24, 0
	l.ori	r3, r11, 0
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.ori	r26, r20, 0
	l.ori	r13, r7, 0
	l.bf	.LBB3_22
	l.nop	0                       # in delay slot
# BB#23:                                # %sha_transform.exit147
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -360(r2)
	l.addi	r16, r3, 0
	l.add	r16, r25, r16
	l.add	r3, r12, r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	0(r4), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -356(r2)
	l.addi	r16, r3, 0
	l.add	r16, r20, r16
	l.add	r3, r7, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	4(r4), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -352(r2)
	l.addi	r16, r3, 0
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	8(r4), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -348(r2)
	l.addi	r16, r3, 0
	l.add	r16, r19, r16
	l.add	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	12(r4), r3
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.lwz	r3, -344(r2)
	l.addi	r16, r3, 0
	l.add	r16, r24, r16
	l.add	r3, r11, r3
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfne	r4, r17
	l.bf	.LBB3_24
	l.sw	16(r4), r3
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB3_24
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_24:
.LBB3_25:
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final

	.hidden	sha_stream
	.globl	sha_stream
	.p2align	2
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB4_11
	l.sfne	r1, r14
	l.bf	.LBB4_11
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sfne	r1, r14
	l.bf	.LBB4_11
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -340
	l.addi	r1, r1, -340
	l.ori	r17, r16, 0
	l.ori	r4, r3, 0
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-340(r2), r4
	l.movhi	r16, 26437
	l.movhi	r3, 26437
	l.ori	r16, r16, 8961
	l.ori	r3, r3, 8961
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	0(r4), r3
	l.movhi	r16, 61389
	l.movhi	r3, 61389
	l.ori	r16, r16, 43913
	l.ori	r3, r3, 43913
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	4(r4), r3
	l.movhi	r16, 39098
	l.movhi	r3, 39098
	l.ori	r16, r16, 56574
	l.ori	r3, r3, 56574
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	8(r4), r3
	l.movhi	r16, 4146
	l.movhi	r3, 4146
	l.ori	r16, r16, 21622
	l.ori	r3, r3, 21622
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	12(r4), r3
	l.movhi	r16, 50130
	l.movhi	r3, 50130
	l.ori	r16, r16, 57840
	l.ori	r3, r3, 57840
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	16(r4), r3
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	20(r4), r3
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	24(r4), r3
	l.addi	r16, r0, 128
	l.addi	r3, r0, 128
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sb	28(r4), r3
	l.addi	r16, r17, 29
	l.addi	r3, r4, 29
	l.addi	r18, r0, 55
	l.addi	r5, r0, 55
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r7, r20
	l.bf	.LBB4_11
	l.sfne	r8, r21
	l.bf	.LBB4_11
	l.sfne	r9, r22
	l.bf	.LBB4_11
	l.sfne	r10, r23
	l.bf	.LBB4_11
	l.sfne	r11, r24
	l.bf	.LBB4_11
	l.sfne	r12, r25
	l.bf	.LBB4_11
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.movhi	r19, 0
	l.movhi	r6, 0
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -340(r2)
	l.addi	r17, r4, 0
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	84(r4), r6
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sw	88(r4), r6
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 88(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-268(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 84(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-272(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 80(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-276(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 76(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-280(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 72(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-284(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 68(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-288(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 64(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-292(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 60(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-296(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 56(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-300(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 52(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-304(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 48(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-308(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 44(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-312(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 40(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-316(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 36(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-320(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 32(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-324(r2), r3
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r3, 28(r4)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-328(r2), r3
.LBB4_1:                                # %for.body4.i43.i
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r16, r15, -328
	l.addi	r3, r2, -328
	l.add	r16, r16, r19
	l.add	r3, r3, r6
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.lwz	r4, 52(r3)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.lwz	r5, 32(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r18, r17
	l.xor	r4, r5, r4
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.lwz	r5, 8(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.lwz	r5, 0(r3)
	l.addi	r18, r5, 0
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sw	64(r3), r4
	l.addi	r19, r19, 4
	l.addi	r6, r6, 4
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfnei	r6, 256
	l.bf	.LBB4_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body29.i73.i.preheader
	l.movhi	r19, 0
	l.movhi	r6, 0
	l.movhi	r16, 26437
	l.movhi	r3, 26437
	l.ori	r17, r16, 8961
	l.ori	r4, r3, 8961
	l.movhi	r16, 61389
	l.movhi	r3, 61389
	l.ori	r26, r16, 43913
	l.ori	r13, r3, 43913
	l.movhi	r16, 39098
	l.movhi	r3, 39098
	l.ori	r16, r16, 56574
	l.ori	r3, r3, 56574
	l.movhi	r18, 4146
	l.movhi	r5, 4146
	l.ori	r24, r18, 21622
	l.ori	r11, r5, 21622
	l.movhi	r18, 50130
	l.movhi	r5, 50130
	l.ori	r18, r18, 57840
	l.ori	r5, r5, 57840
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-332(r2), r5
	l.movhi	r18, 23170
	l.movhi	r5, 23170
	l.ori	r18, r18, 31129
	l.ori	r5, r5, 31129
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-336(r2), r5
.LBB4_3:                                # %for.body29.i73.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r18, r17, 0
	l.ori	r5, r4, 0
	l.ori	r25, r16, 0
	l.ori	r12, r3, 0
	l.ori	r20, r24, 0
	l.ori	r7, r11, 0
	l.xori	r16, r26, -1
	l.xori	r3, r13, -1
	l.and	r16, r20, r16
	l.and	r3, r7, r3
	l.and	r17, r26, r25
	l.and	r4, r13, r12
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -332(r2)
	l.addi	r17, r4, 0
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.srli	r17, r18, 27
	l.srli	r4, r5, 27
	l.slli	r21, r18, 5
	l.slli	r8, r5, 5
	l.or	r17, r21, r17
	l.or	r4, r8, r4
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.addi	r21, r15, -328          # CFC
	l.addi	r8, r2, -328
	l.add	r17, r21, r19
	l.add	r4, r8, r6
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.srli	r16, r26, 2
	l.srli	r3, r13, 2
	l.slli	r26, r26, 30
	l.slli	r13, r13, 30
	l.or	r16, r26, r16
	l.or	r3, r13, r3
	l.addi	r19, r19, 4
	l.addi	r6, r6, 4
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfnei	r6, 80
	l.sfne	r7, r20
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-332(r2), r7
	l.ori	r24, r25, 0
	l.ori	r11, r12, 0
	l.ori	r26, r18, 0
	l.ori	r13, r5, 0
	l.bf	.LBB4_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body44.i95.i.preheader
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r19, r21, 80
	l.addi	r6, r8, 80
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-332(r2), r6
	l.movhi	r19, 28377
	l.movhi	r6, 28377
	l.ori	r19, r19, 60321
	l.ori	r6, r6, 60321
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-336(r2), r6
.LBB4_5:                                # %for.body44.i95.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r19, r17, 0
	l.ori	r6, r4, 0
	l.ori	r26, r16, 0
	l.ori	r13, r3, 0
	l.ori	r21, r25, 0
	l.ori	r8, r12, 0
	l.srli	r16, r19, 27
	l.srli	r3, r6, 27
	l.slli	r17, r19, 5
	l.slli	r4, r6, 5
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.xor	r17, r26, r21
	l.xor	r4, r13, r8
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.add	r17, r20, r17
	l.add	r4, r7, r4
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -332(r2)
	l.addi	r17, r4, 0
	l.add	r17, r17, r24
	l.add	r4, r4, r11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.srli	r16, r18, 2
	l.srli	r3, r5, 2
	l.slli	r18, r18, 30
	l.slli	r5, r5, 30
	l.or	r16, r18, r16
	l.or	r3, r5, r3
	l.addi	r24, r24, 4
	l.addi	r11, r11, 4
	l.sfne	r11, r24
	l.bf	.LBB4_11
	l.sfnei	r11, 80
	l.ori	r20, r21, 0
	l.ori	r7, r8, 0
	l.ori	r25, r26, 0
	l.ori	r12, r13, 0
	l.ori	r18, r19, 0
	l.ori	r5, r6, 0
	l.bf	.LBB4_5
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.body63.i119.i.preheader
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r18, r15, -328
	l.addi	r5, r2, -328
	l.addi	r18, r18, 160
	l.addi	r5, r5, 160
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-332(r2), r5
	l.movhi	r18, 36635
	l.movhi	r5, 36635
	l.ori	r18, r18, 48348
	l.ori	r5, r5, 48348
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-336(r2), r5
.LBB4_7:                                # %for.body63.i119.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r18, r17, 0
	l.ori	r5, r4, 0
	l.ori	r25, r16, 0
	l.ori	r12, r3, 0
	l.ori	r20, r26, 0
	l.ori	r7, r13, 0
	l.and	r16, r25, r20
	l.and	r3, r12, r7
	l.or	r17, r25, r20
	l.or	r4, r12, r7
	l.and	r17, r17, r19
	l.and	r4, r4, r6
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.srli	r17, r18, 27
	l.srli	r4, r5, 27
	l.slli	r21, r18, 5
	l.slli	r8, r5, 5
	l.or	r17, r21, r17
	l.or	r4, r8, r4
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -332(r2)
	l.addi	r17, r4, 0
	l.add	r17, r17, r24
	l.add	r4, r4, r11
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.srli	r16, r19, 2
	l.srli	r3, r6, 2
	l.slli	r19, r19, 30
	l.slli	r6, r6, 30
	l.or	r16, r19, r16
	l.or	r3, r6, r3
	l.addi	r24, r24, 4
	l.addi	r11, r11, 4
	l.sfne	r11, r24
	l.bf	.LBB4_11
	l.sfnei	r11, 80
	l.ori	r21, r20, 0
	l.ori	r8, r7, 0
	l.ori	r26, r25, 0
	l.ori	r13, r12, 0
	l.ori	r19, r18, 0
	l.ori	r6, r5, 0
	l.bf	.LBB4_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.body85.i141.i.preheader
	l.movhi	r26, 0
	l.movhi	r13, 0
	l.addi	r19, r15, -328
	l.addi	r6, r2, -328
	l.addi	r19, r19, 240
	l.addi	r6, r6, 240
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-332(r2), r6
	l.movhi	r19, 51810
	l.movhi	r6, 51810
	l.ori	r19, r19, 49622
	l.ori	r6, r6, 49622
	l.sfne	r6, r19
	l.bf	.LBB4_11
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.sw	-336(r2), r6
.LBB4_9:                                # %for.body85.i141.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r24, r17, 0
	l.ori	r11, r4, 0
	l.ori	r21, r16, 0
	l.ori	r8, r3, 0
	l.ori	r19, r25, 0
	l.ori	r6, r12, 0
	l.srli	r16, r24, 27
	l.srli	r3, r11, 27
	l.slli	r17, r24, 5
	l.slli	r4, r11, 5
	l.or	r16, r17, r16
	l.or	r3, r4, r3
	l.xor	r17, r21, r19
	l.xor	r4, r8, r6
	l.xor	r17, r17, r18
	l.xor	r4, r4, r5
	l.add	r17, r20, r17
	l.add	r4, r7, r4
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -332(r2)
	l.addi	r17, r4, 0
	l.add	r17, r17, r26
	l.add	r4, r4, r13
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.lwz	r4, 0(r4)
	l.addi	r17, r4, 0
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r4, -336(r2)
	l.addi	r17, r4, 0
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.srli	r16, r18, 2
	l.srli	r3, r5, 2
	l.slli	r18, r18, 30
	l.slli	r5, r5, 30
	l.or	r16, r18, r16
	l.or	r3, r5, r3
	l.addi	r26, r26, 4
	l.addi	r13, r13, 4
	l.sfne	r13, r26
	l.bf	.LBB4_11
	l.sfnei	r13, 80
	l.ori	r20, r19, 0
	l.ori	r7, r6, 0
	l.ori	r25, r21, 0
	l.ori	r12, r8, 0
	l.ori	r18, r24, 0
	l.ori	r5, r11, 0
	l.bf	.LBB4_9
	l.nop	0                       # in delay slot
# BB#10:                                # %sha_final.exit
	l.movhi	r18, 26437
	l.movhi	r5, 26437
	l.ori	r18, r18, 8961
	l.ori	r5, r5, 8961
	l.add	r17, r17, r18
	l.add	r4, r4, r5
	l.sfne	r2, r15
	l.bf	.LBB4_11
	l.lwz	r5, -340(r2)
	l.addi	r18, r5, 0
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sw	0(r5), r4
	l.movhi	r17, 61389
	l.movhi	r4, 61389
	l.ori	r17, r17, 43913
	l.ori	r4, r4, 43913
	l.add	r17, r24, r17
	l.add	r4, r11, r4
	l.sfne	r4, r17
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sw	4(r5), r4
	l.movhi	r17, 39098
	l.movhi	r4, 39098
	l.ori	r17, r17, 56574
	l.ori	r4, r4, 56574
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sw	8(r5), r3
	l.movhi	r16, 4146
	l.movhi	r3, 4146
	l.ori	r16, r16, 21622
	l.ori	r3, r3, 21622
	l.add	r16, r21, r16
	l.add	r3, r8, r3
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sw	12(r5), r3
	l.movhi	r16, 50130
	l.movhi	r3, 50130
	l.ori	r16, r16, 57840
	l.ori	r3, r3, 57840
	l.add	r16, r19, r16
	l.add	r3, r6, r3
	l.sfne	r3, r16
	l.bf	.LBB4_11
	l.sfne	r5, r18
	l.bf	.LBB4_11
	l.sw	16(r5), r3
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB4_11
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB4_11
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB4_11:
.LBB4_12:
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream

	.hidden	sha_print
	.globl	sha_print
	.p2align	2
	.type	sha_print,@function
sha_print:                              # @sha_print
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	-4(r1), r9
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	-8(r1), r2
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -28
	l.addi	r1, r1, -28
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.lwz	r4, 0(r3)
	l.addi	r17, r4, 0
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.lwz	r5, 4(r3)
	l.addi	r18, r5, 0
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.lwz	r6, 8(r3)
	l.addi	r19, r6, 0
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.lwz	r7, 12(r3)
	l.addi	r20, r7, 0              # CFC
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.lwz	r3, 16(r3)
	l.addi	r16, r3, 0
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	16(r1), r3
	l.sfne	r7, r20
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	12(r1), r7
	l.sfne	r6, r19
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	8(r1), r6
	l.sfne	r5, r18
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	4(r1), r5
	l.sfne	r4, r17
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	0(r1), r4
	l.movhi	r16, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r16, r16, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r4, r17
	l.bf	.LBB5_1
	l.sfne	r5, r18
	l.bf	.LBB5_1
	l.sfne	r6, r19
	l.bf	.LBB5_1
	l.sfne	r7, r20
	l.bf	.LBB5_1
	l.sfne	r8, r21
	l.bf	.LBB5_1
	l.sfne	r9, r22
	l.bf	.LBB5_1
	l.sfne	r10, r23
	l.bf	.LBB5_1
	l.sfne	r11, r24
	l.bf	.LBB5_1
	l.sfne	r12, r25
	l.bf	.LBB5_1
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
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.lwz	r2, -8(r1)
	l.addi	r15, r2, 0
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.lwz	r9, -4(r1)
	l.addi	r22, r9, 0              # CFC
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_1:
.LBB5_2:
.Lfunc_end5:
	.size	sha_print, .Lfunc_end5-sha_print

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str, 31


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
