	.text
	.file	"shaOPT.LL"
	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
.LC2:
    .string    "CF Error"
    .section .text
    .align    4
.LBB1000_100:

    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.nop 200                      ### stop making possible fault injection candidates
	l.jal   	exit# call_internal
	l.nop			# nop delay slot

main:                                   # @main
# BB#0:                                 # %entry
l.nop 100                      ### start making possible fault injection candidates
	l.addi	r22, r0, 0              # CFC
	l.sw	-4(r1), r9
	l.xori	r24, r22, 0
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -356
	l.sw	-12(r2), r18
	l.sw	-16(r2), r14
	l.addi	r3, r0, 128
	l.sb	-336(r2), r3
	l.addi	r14, r2, -336
	l.ori	r3, r14, 1
	l.movhi	r18, 0
	l.addi	r5, r0, 55
	l.movhi	r4, 0
l.nop 200                      ### start making possible fault injection candidates
	l.jal	memset
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.sw	-280(r2), r18
	l.sw	-276(r2), r18
.LBB0_1:                                # %for.body4.i43.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 1                  # CFC
	l.addi	r22, r0, 0              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 1
	l.add	r3, r14, r18
	l.lwz	r4, 52(r3)
	l.lwz	r5, 32(r3)
	l.xor	r4, r5, r4
	l.lwz	r5, 8(r3)
	l.xor	r4, r4, r5
	l.lwz	r5, 0(r3)
	l.xor	r4, r4, r5
	l.sw	64(r3), r4
	l.addi	r18, r18, 4
	l.sfnei	r18, 256
	l.bf	.LBB0_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body29.i73.i.i.preheader
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 2                  # CFC
	l.addi	r22, r0, 2              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 2
	l.movhi	r6, 0
	l.movhi	r3, 26437
	l.ori	r3, r3, 8961
	l.movhi	r4, 61389
	l.ori	r13, r4, 43913
	l.movhi	r4, 39098
	l.ori	r4, r4, 56574
	l.movhi	r5, 4146
	l.ori	r17, r5, 21622
	l.movhi	r5, 50130
	l.ori	r15, r5, 57840
	l.movhi	r5, 23170
	l.ori	r8, r5, 31129
.LBB0_3:                                # %for.body29.i73.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 3                  # CFC
	l.addi	r22, r0, 2              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 3
	l.ori	r5, r3, 0
	l.ori	r12, r4, 0
	l.ori	r7, r17, 0
	l.xori	r3, r13, -1
	l.and	r3, r7, r3
	l.and	r4, r13, r12
	l.or	r3, r3, r4
	l.add	r3, r15, r3
	l.srli	r4, r5, 27
	l.slli	r15, r5, 5
	l.or	r4, r15, r4
	l.add	r3, r3, r4
	l.addi	r19, r2, -336
	l.add	r4, r19, r6
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r3, r3, r8
	l.srli	r4, r13, 2
	l.slli	r13, r13, 30
	l.or	r4, r13, r4
	l.addi	r6, r6, 4
	l.sfnei	r6, 80
	l.ori	r15, r7, 0
	l.ori	r17, r12, 0
	l.ori	r13, r5, 0
	l.bf	.LBB0_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body44.i95.i.i.preheader
	l.xori	r20, r20, 7             # CFC
	l.sfnei	r20, 4                  # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 4
	l.movhi	r15, 0
	l.addi	r17, r19, 80
	l.movhi	r6, 28377
	l.ori	r19, r6, 60321
.LBB0_5:                                # %for.body44.i95.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 5                  # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 5
	l.ori	r6, r3, 0
	l.ori	r13, r4, 0
	l.ori	r8, r12, 0
	l.srli	r3, r6, 27
	l.slli	r4, r6, 5
	l.or	r3, r4, r3
	l.xor	r4, r13, r8
	l.xor	r4, r4, r5
	l.add	r4, r7, r4
	l.add	r3, r4, r3
	l.add	r4, r17, r15
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r3, r3, r19
	l.srli	r4, r5, 2
	l.slli	r5, r5, 30
	l.or	r4, r5, r4
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r7, r8, 0
	l.ori	r12, r13, 0
	l.ori	r5, r6, 0
	l.bf	.LBB0_5
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.body63.i119.i.i.preheader
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 6                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 6
	l.movhi	r15, 0
	l.addi	r5, r2, -336
	l.addi	r17, r5, 160
	l.movhi	r5, 36635
	l.ori	r19, r5, 48348
.LBB0_7:                                # %for.body63.i119.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 7                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 7
	l.ori	r5, r3, 0
	l.ori	r12, r4, 0
	l.ori	r7, r13, 0
	l.and	r3, r12, r7
	l.or	r4, r12, r7
	l.and	r4, r4, r6
	l.or	r3, r4, r3
	l.add	r3, r8, r3
	l.srli	r4, r5, 27
	l.slli	r8, r5, 5
	l.or	r4, r8, r4
	l.add	r3, r3, r4
	l.add	r4, r17, r15
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r3, r3, r19
	l.srli	r4, r6, 2
	l.slli	r6, r6, 30
	l.or	r4, r6, r4
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r8, r7, 0
	l.ori	r13, r12, 0
	l.ori	r6, r5, 0
	l.bf	.LBB0_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.body85.i141.i.i.preheader
	l.xori	r20, r20, 15            # CFC
	l.sfnei	r20, 8                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 8
	l.movhi	r6, 0
	l.addi	r8, r2, -336
	l.addi	r8, r8, 240
	l.movhi	r13, 51810
	l.ori	r15, r13, 49622
.LBB0_9:                                # %for.body85.i141.i.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 9                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 9
	l.ori	r19, r3, 0
	l.ori	r17, r4, 0
	l.ori	r13, r12, 0
	l.srli	r3, r19, 27
	l.slli	r4, r19, 5
	l.or	r3, r4, r3
	l.xor	r4, r17, r13
	l.xor	r4, r4, r5
	l.add	r4, r7, r4
	l.add	r3, r4, r3
	l.add	r4, r8, r6
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r3, r3, r15
	l.srli	r4, r5, 2
	l.slli	r5, r5, 30
	l.or	r4, r5, r4
	l.addi	r6, r6, 4
	l.sfnei	r6, 80
	l.ori	r7, r13, 0
	l.ori	r12, r17, 0
	l.ori	r5, r19, 0
	l.bf	.LBB0_9
	l.nop	0                       # in delay slot
# BB#10:                                # %sha_stream.exit
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 10                 # CFC
	l.bf .LBB1000_100
	l.movhi	r5, 61389
	l.ori	r5, r5, 43913
	l.add	r5, r19, r5
	l.movhi	r6, 39098
	l.ori	r6, r6, 56574
	l.add	r4, r4, r6
	l.movhi	r6, 4146
	l.ori	r6, r6, 21622
	l.add	r6, r17, r6
	l.movhi	r7, 50130
	l.ori	r7, r7, 57840
	l.add	r7, r13, r7
	l.sw	16(r1), r7
	l.sw	12(r1), r6
	l.sw	8(r1), r4
	l.sw	4(r1), r5
	l.movhi	r4, 26437
	l.ori	r4, r4, 8961
	l.add	r3, r3, r4
	l.sw	0(r1), r3
	l.movhi	r3, hi(.L.str)
	l.ori	r3, r3, lo(.L.str)
l.nop 200                      ### start making possible fault injection candidates
	l.jal	printf
	l.nop	0                       # in delay slot

	l.movhi	r11, 0
	l.lwz	r14, -16(r2)
	l.lwz	r18, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	sha_init
	.globl	sha_init
	.p2align	2
	.type	sha_init,@function
sha_init:                               # @sha_init
# BB#0:                                 # %entry
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 26437
	l.ori	r4, r4, 8961
	l.sw	0(r3), r4
	l.movhi	r4, 61389
	l.ori	r4, r4, 43913
	l.sw	4(r3), r4
	l.movhi	r4, 39098
	l.ori	r4, r4, 56574
	l.sw	8(r3), r4
	l.movhi	r4, 4146
	l.ori	r4, r4, 21622
	l.sw	12(r3), r4
	l.movhi	r4, 50130
	l.ori	r4, r4, 57840
	l.sw	16(r3), r4
	l.movhi	r4, 0
	l.sw	20(r3), r4
	l.sw	24(r3), r4
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end1:
	.size	sha_init, .Lfunc_end1-sha_init

	.hidden	sha_update
	.globl	sha_update
	.p2align	2
	.type	sha_update,@function
sha_update:                             # @sha_update
# BB#0:                                 # %entry
	l.addi	r22, r0, 0              # CFC
	l.sw	-4(r1), r9
	l.xori	r24, r22, 0
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -432
	l.sw	-12(r2), r30
	l.sw	-16(r2), r28
	l.sw	-20(r2), r26
	l.sw	-24(r2), r18
	l.sw	-28(r2), r14
	l.ori	r27, r3, 0
	l.slli	r3, r5, 3
	l.lwz	r7, 20(r27)
	l.add	r3, r7, r3
	l.addi	r6, r0, 1
	l.sfltu	r3, r7
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 1                  # CFC
	l.addi	r22, r0, 0              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 1
	l.movhi	r6, 0
.LBB2_2:                                # %entry
	l.xori	r20, r20, 2             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 2                  # CFC
	l.addi	r22, r0, 3              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 2
	l.lwz	r7, 24(r27)
	l.andi	r6, r6, 1
	l.sfeqi	r6, 0
	l.bf	.LBB2_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 3                  # CFC
	l.addi	r22, r0, 3              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 3
	l.addi	r7, r7, 1
	l.sw	24(r27), r7
.LBB2_4:                                # %if.end
	l.xori	r20, r20, 7             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 4                  # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 4
	l.sw	20(r27), r3
	l.srli	r3, r5, 29
	l.add	r3, r7, r3
	l.sw	24(r27), r3
	l.addi	r3, r27, 28
	l.sw	-400(r2), r3
	l.sfltsi	r5, 64
	l.bf	.LBB2_18
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body.lr.ph
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 5                  # CFC
	l.addi	r22, r0, 5              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 5
	l.addi	r3, r2, -348
	l.addi	r29, r3, 240
	l.addi	r31, r3, 160
	l.addi	r11, r3, 80
	l.addi	r6, r5, -64
	l.addi	r3, r0, -64
	l.sw	-424(r2), r6
	l.and	r3, r6, r3
	l.sw	-428(r2), r3
	l.addi	r3, r3, 64
	l.sw	-432(r2), r3
	l.movhi	r3, 23170
	l.ori	r26, r3, 31129
	l.movhi	r3, 28377
	l.ori	r18, r3, 60321
	l.movhi	r3, 36635
	l.ori	r28, r3, 48348
	l.movhi	r3, 51810
	l.ori	r14, r3, 49622
	l.sw	-420(r2), r4
	l.ori	r30, r4, 0
	l.sw	-404(r2), r27
	l.sw	-408(r2), r29
	l.sw	-412(r2), r31
	l.sw	-416(r2), r11
.LBB2_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_9 Depth 2
                                        #     Child Loop BB2_11 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 6                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 6
	l.sw	-352(r2), r5
	l.addi	r5, r0, 64
	l.lwz	r3, -400(r2)
	l.ori	r4, r30, 0
l.nop 200                      ### start making possible fault injection candidatesl.nop 200                      ### start making possible fault injection candidates
	l.jal	memcpy
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.lbz	r3, 8(r30)
	l.slli	r3, r3, 8
	l.lbz	r4, 9(r30)
	l.or	r3, r3, r4
	l.sw	-356(r2), r3
	l.lbz	r4, 4(r30)
	l.slli	r4, r4, 8
	l.lbz	r5, 5(r30)
	l.or	r3, r4, r5
	l.sw	-360(r2), r3
	l.lbz	r5, 56(r30)
	l.slli	r5, r5, 8
	l.lbz	r6, 57(r30)
	l.or	r3, r5, r6
	l.sw	-368(r2), r3
	l.lbz	r5, 52(r30)
	l.slli	r5, r5, 8
	l.lbz	r7, 53(r30)
	l.or	r3, r5, r7
	l.sw	-380(r2), r3
	l.lbz	r5, 24(r30)
	l.slli	r5, r5, 8
	l.lbz	r7, 25(r30)
	l.or	r3, r5, r7
	l.sw	-364(r2), r3
	l.lbz	r7, 20(r30)
	l.slli	r7, r7, 8
	l.lbz	r8, 21(r30)
	l.or	r3, r7, r8
	l.sw	-372(r2), r3
	l.lbz	r8, 16(r30)
	l.slli	r8, r8, 8
	l.lbz	r13, 17(r30)
	l.or	r3, r8, r13
	l.sw	-384(r2), r3
	l.lbz	r8, 12(r30)
	l.slli	r8, r8, 8
	l.lbz	r15, 13(r30)
	l.or	r3, r8, r15
	l.sw	-392(r2), r3
	l.lbz	r8, 40(r30)
	l.slli	r8, r8, 8
	l.lbz	r15, 41(r30)
	l.or	r3, r8, r15
	l.sw	-376(r2), r3
	l.lbz	r15, 36(r30)
	l.slli	r15, r15, 8
	l.lbz	r19, 37(r30)
	l.or	r3, r15, r19
	l.sw	-388(r2), r3
	l.lbz	r19, 32(r30)
	l.slli	r19, r19, 8
	l.lbz	r21, 33(r30)
	l.or	r3, r19, r21
	l.sw	-396(r2), r3
	l.lbz	r21, 28(r30)
	l.slli	r21, r21, 8
	l.lbz	r23, 29(r30)
	l.or	r23, r21, r23
	l.lbz	r21, 46(r30)
	l.slli	r21, r21, 8
	l.lbz	r25, 47(r30)
	l.or	r21, r21, r25
	l.lbz	r25, 44(r30)
	l.slli	r25, r25, 8
	l.lbz	r27, 45(r30)
	l.or	r25, r25, r27
	l.lbz	r27, 42(r30)
	l.slli	r27, r27, 8
	l.lbz	r29, 43(r30)
	l.or	r27, r27, r29
	l.lbz	r29, 38(r30)
	l.slli	r29, r29, 8
	l.lbz	r31, 39(r30)
	l.or	r29, r29, r31
	l.lbz	r31, 34(r30)
	l.slli	r31, r31, 8
	l.lbz	r11, 35(r30)
	l.or	r31, r31, r11
	l.lbz	r11, 30(r30)
	l.slli	r11, r11, 8
	l.lbz	r3, 31(r30)
	l.or	r3, r11, r3
	l.lbz	r11, 26(r30)
	l.slli	r11, r11, 8
	l.lbz	r4, 27(r30)
	l.or	r4, r11, r4
	l.lbz	r11, 22(r30)
	l.slli	r11, r11, 8
	l.lbz	r5, 23(r30)
	l.or	r5, r11, r5
	l.lbz	r11, 18(r30)
	l.slli	r11, r11, 8
	l.lbz	r6, 19(r30)
	l.or	r6, r11, r6
	l.lbz	r11, 14(r30)
	l.slli	r11, r11, 8
	l.lbz	r7, 15(r30)
	l.or	r7, r11, r7
	l.lbz	r11, 10(r30)
	l.slli	r11, r11, 8
	l.lbz	r8, 11(r30)
	l.or	r8, r11, r8
	l.lbz	r11, 6(r30)
	l.slli	r11, r11, 8
	l.lbz	r12, 7(r30)
	l.or	r12, r11, r12
	l.lbz	r11, 58(r30)
	l.slli	r11, r11, 8
	l.lbz	r13, 59(r30)
	l.or	r13, r11, r13
	l.lbz	r11, 54(r30)
	l.slli	r11, r11, 8
	l.lbz	r15, 55(r30)
	l.or	r15, r11, r15
	l.lbz	r11, 50(r30)
	l.slli	r11, r11, 8
	l.lbz	r17, 51(r30)
	l.or	r17, r11, r17
	l.lbz	r11, 48(r30)
	l.slli	r11, r11, 8
	l.lbz	r19, 49(r30)
	l.or	r19, r11, r19
	l.slli	r19, r19, 16
	l.or	r17, r19, r17
	l.lwz	r19, -380(r2)
	l.slli	r19, r19, 16
	l.or	r15, r19, r15
	l.lwz	r19, -368(r2)
	l.slli	r19, r19, 16
	l.or	r13, r19, r13
	l.lwz	r19, -360(r2)
	l.slli	r19, r19, 16
	l.or	r12, r19, r12
	l.lwz	r19, -356(r2)
	l.slli	r19, r19, 16
	l.or	r8, r19, r8
	l.lwz	r19, -392(r2)
	l.slli	r19, r19, 16
	l.or	r7, r19, r7
	l.lwz	r19, -384(r2)
	l.slli	r19, r19, 16
	l.or	r6, r19, r6
	l.lwz	r19, -372(r2)
	l.slli	r19, r19, 16
	l.or	r5, r19, r5
	l.lwz	r19, -364(r2)
	l.slli	r19, r19, 16
	l.or	r4, r19, r4
	l.slli	r19, r23, 16
	l.or	r3, r19, r3
	l.lwz	r19, -396(r2)
	l.slli	r19, r19, 16
	l.or	r19, r19, r31
	l.lwz	r23, -388(r2)
	l.slli	r23, r23, 16
	l.or	r23, r23, r29
	l.lwz	r29, -376(r2)
	l.slli	r29, r29, 16
	l.or	r27, r29, r27
	l.slli	r25, r25, 16
	l.or	r21, r25, r21
	l.lbz	r25, 62(r30)
	l.slli	r25, r25, 8
	l.lbz	r29, 63(r30)
	l.or	r25, r25, r29
	l.lbz	r29, 60(r30)
	l.slli	r29, r29, 8
	l.lbz	r31, 61(r30)
	l.or	r29, r29, r31
	l.slli	r29, r29, 16
	l.or	r25, r29, r25
	l.sw	-288(r2), r25
	l.sw	-292(r2), r13
	l.sw	-296(r2), r15
	l.sw	-300(r2), r17
	l.sw	-304(r2), r21
	l.sw	-308(r2), r27
	l.sw	-312(r2), r23
	l.sw	-316(r2), r19
	l.sw	-320(r2), r3
	l.sw	-324(r2), r4
	l.sw	-328(r2), r5
	l.sw	-332(r2), r6
	l.sw	-336(r2), r7
	l.sw	-340(r2), r8
	l.sw	-344(r2), r12
	l.lbz	r3, 2(r30)
	l.slli	r3, r3, 8
	l.lbz	r4, 3(r30)
	l.or	r3, r3, r4
	l.lbz	r4, 1(r30)
	l.lbz	r5, 0(r30)
	l.slli	r5, r5, 8
	l.or	r4, r5, r4
	l.slli	r4, r4, 16
	l.or	r3, r4, r3
	l.sw	-348(r2), r3
	l.movhi	r3, 0
.LBB2_7:                                # %for.body4.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 7                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 7
	l.addi	r4, r2, -348
	l.add	r4, r4, r3
	l.lwz	r5, 52(r4)
	l.lwz	r6, 32(r4)
	l.xor	r5, r6, r5
	l.lwz	r6, 8(r4)
	l.xor	r5, r5, r6
	l.lwz	r6, 0(r4)
	l.xor	r5, r5, r6
	l.sw	64(r4), r5
	l.addi	r3, r3, 4
	l.sfnei	r3, 256
	l.bf	.LBB2_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.end17.i
                                        #   in Loop: Header=BB2_6 Depth=1
	l.xori	r20, r20, 15            # CFC
	l.sfnei	r20, 8                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 8
	l.movhi	r15, 0
	l.lwz	r27, -404(r2)
	l.lwz	r3, 16(r27)
	l.lwz	r4, 12(r27)
	l.lwz	r5, 8(r27)
	l.lwz	r6, 4(r27)
	l.lwz	r7, 0(r27)
	l.ori	r23, r3, 0
	l.ori	r25, r4, 0
	l.ori	r8, r5, 0
	l.ori	r19, r6, 0
	l.ori	r12, r7, 0
.LBB2_9:                                # %for.body29.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 9                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 9
	l.ori	r13, r12, 0
	l.ori	r21, r8, 0
	l.ori	r17, r25, 0
	l.xori	r8, r19, -1
	l.and	r8, r17, r8
	l.and	r12, r19, r21
	l.or	r8, r8, r12
	l.add	r8, r23, r8
	l.srli	r12, r13, 27
	l.slli	r23, r13, 5
	l.or	r12, r23, r12
	l.add	r8, r8, r12
	l.addi	r12, r2, -348
	l.add	r12, r12, r15
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r26
	l.srli	r8, r19, 2
	l.slli	r19, r19, 30
	l.or	r8, r19, r8
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r23, r17, 0
	l.ori	r25, r21, 0
	l.ori	r19, r13, 0
	l.bf	.LBB2_9
	l.nop	0                       # in delay slot
# BB#10:                                # %for.body44.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 10                 # CFC
	l.addi	r22, r0, 10             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 10
	l.movhi	r25, 0
	l.lwz	r29, -408(r2)
	l.lwz	r31, -412(r2)
	l.lwz	r11, -416(r2)
.LBB2_11:                               # %for.body44.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 11                 # CFC
	l.addi	r22, r0, 10             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 11
	l.ori	r15, r12, 0
	l.ori	r23, r8, 0
	l.ori	r19, r21, 0
	l.srli	r8, r15, 27
	l.slli	r12, r15, 5
	l.or	r8, r12, r8
	l.xor	r12, r23, r19
	l.xor	r12, r12, r13
	l.add	r12, r17, r12
	l.add	r8, r12, r8
	l.add	r12, r11, r25
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r18
	l.srli	r8, r13, 2
	l.slli	r13, r13, 30
	l.or	r8, r13, r8
	l.addi	r25, r25, 4
	l.sfnei	r25, 80
	l.ori	r17, r19, 0
	l.ori	r21, r23, 0
	l.ori	r13, r15, 0
	l.bf	.LBB2_11
	l.nop	0                       # in delay slot
# BB#12:                                # %for.body63.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.xori	r20, r20, 7             # CFC
	l.sfnei	r20, 12                 # CFC
	l.addi	r22, r0, 12             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 12
	l.movhi	r25, 0
.LBB2_13:                               # %for.body63.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 13                 # CFC
	l.addi	r22, r0, 12             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 13
	l.ori	r13, r12, 0
	l.ori	r21, r8, 0
	l.ori	r17, r23, 0
	l.and	r8, r21, r17
	l.or	r12, r21, r17
	l.and	r12, r12, r15
	l.or	r8, r12, r8
	l.add	r8, r19, r8
	l.srli	r12, r13, 27
	l.slli	r19, r13, 5
	l.or	r12, r19, r12
	l.add	r8, r8, r12
	l.add	r12, r31, r25
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r28
	l.srli	r8, r15, 2
	l.slli	r15, r15, 30
	l.or	r8, r15, r8
	l.addi	r25, r25, 4
	l.sfnei	r25, 80
	l.ori	r19, r17, 0
	l.ori	r23, r21, 0
	l.ori	r15, r13, 0
	l.bf	.LBB2_13
	l.nop	0                       # in delay slot
# BB#14:                                # %for.body85.i.preheader
                                        #   in Loop: Header=BB2_6 Depth=1
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 14                 # CFC
	l.addi	r22, r0, 14             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 14
	l.movhi	r15, 0
.LBB2_15:                               # %for.body85.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 15                 # CFC
	l.addi	r22, r0, 14             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 15
	l.ori	r25, r12, 0
	l.ori	r23, r8, 0
	l.ori	r19, r21, 0
	l.srli	r8, r25, 27
	l.slli	r12, r25, 5
	l.or	r8, r12, r8
	l.xor	r12, r23, r19
	l.xor	r12, r12, r13
	l.add	r12, r17, r12
	l.add	r8, r12, r8
	l.add	r12, r29, r15
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r14
	l.srli	r8, r13, 2
	l.slli	r13, r13, 30
	l.or	r8, r13, r8
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r17, r19, 0
	l.ori	r21, r23, 0
	l.ori	r13, r25, 0
	l.bf	.LBB2_15
	l.nop	0                       # in delay slot
# BB#16:                                # %sha_transform.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	l.xori	r20, r20, 31            # CFC
	l.sfnei	r20, 16                 # CFC
	l.addi	r22, r0, 5              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 16
	l.add	r7, r12, r7
	l.sw	0(r27), r7
	l.add	r6, r25, r6
	l.sw	4(r27), r6
	l.add	r5, r8, r5
	l.sw	8(r27), r5
	l.add	r4, r23, r4
	l.sw	12(r27), r4
	l.add	r3, r19, r3
	l.sw	16(r27), r3
	l.addi	r30, r30, 64
	l.lwz	r5, -352(r2)
	l.addi	r5, r5, -64
	l.sfgtsi	r5, 63
	l.bf	.LBB2_6
	l.nop	0                       # in delay slot
# BB#17:                                # %while.end.loopexit
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 17                 # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 17
	l.lwz	r3, -424(r2)
	l.lwz	r4, -428(r2)
	l.sub	r5, r3, r4
	l.lwz	r4, -420(r2)
	l.lwz	r3, -432(r2)
	l.add	r4, r4, r3
.LBB2_18:                               # %while.end
	l.xori	r20, r20, 22            # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 18                 # CFC
	l.bf .LBB1000_100
	l.lwz	r3, -400(r2)
l.nop 200                      ### start making possible fault injection candidates
	l.jal	memcpy
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.lwz	r14, -28(r2)
	l.lwz	r18, -24(r2)
	l.lwz	r26, -20(r2)
	l.lwz	r28, -16(r2)
	l.lwz	r30, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update

	.hidden	sha_final
	.globl	sha_final
	.p2align	2
	.type	sha_final,@function
sha_final:                              # @sha_final
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -348
	l.sw	-12(r2), r30
	l.sw	-16(r2), r28
	l.sw	-20(r2), r26
	l.sw	-24(r2), r18
	l.sw	-28(r2), r14
	l.ori	r14, r3, 0
	l.lwz	r18, 24(r14)
	l.addi	r28, r14, 28
	l.lwz	r26, 20(r14)
	l.srli	r3, r26, 3
	l.andi	r4, r3, 63
	l.add	r3, r28, r4
	l.addi	r5, r0, 128
	l.sb	0(r3), r5
	l.addi	r5, r4, 1
	l.add	r3, r28, r5
	l.sfltui	r5, 57
	l.bf	.LBB3_12
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 1                  # CFC
	l.addi	r22, r0, 1              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 1
	l.xori	r5, r4, 63
	l.movhi	r30, 0
	l.movhi	r4, 0
l.nop 200                      ### start making possible fault injection candidates
	l.jal	memset
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.lwz	r3, 88(r14)
	l.sw	-288(r2), r3
	l.lwz	r3, 84(r14)
	l.sw	-292(r2), r3
	l.lwz	r3, 80(r14)
	l.sw	-296(r2), r3
	l.lwz	r3, 76(r14)
	l.sw	-300(r2), r3
	l.lwz	r3, 72(r14)
	l.sw	-304(r2), r3
	l.lwz	r3, 68(r14)
	l.sw	-308(r2), r3
	l.lwz	r3, 64(r14)
	l.sw	-312(r2), r3
	l.lwz	r3, 60(r14)
	l.sw	-316(r2), r3
	l.lwz	r3, 56(r14)
	l.sw	-320(r2), r3
	l.lwz	r3, 52(r14)
	l.sw	-324(r2), r3
	l.lwz	r3, 48(r14)
	l.sw	-328(r2), r3
	l.lwz	r3, 44(r14)
	l.sw	-332(r2), r3
	l.lwz	r3, 40(r14)
	l.sw	-336(r2), r3
	l.lwz	r3, 36(r14)
	l.sw	-340(r2), r3
	l.lwz	r3, 32(r14)
	l.sw	-344(r2), r3
	l.lwz	r3, 28(r14)
	l.sw	-348(r2), r3
	l.addi	r3, r14, 28
.LBB3_2:                                # %for.body4.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 2                  # CFC
	l.addi	r22, r0, 1              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 2
	l.addi	r4, r2, -348
	l.add	r4, r4, r30
	l.lwz	r5, 52(r4)
	l.lwz	r6, 32(r4)
	l.xor	r5, r6, r5
	l.lwz	r6, 8(r4)
	l.xor	r5, r5, r6
	l.lwz	r6, 0(r4)
	l.xor	r5, r5, r6
	l.sw	64(r4), r5
	l.addi	r30, r30, 4
	l.sfnei	r30, 256
	l.bf	.LBB3_2
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.end17.i
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 3                  # CFC
	l.addi	r22, r0, 3              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 3
	l.movhi	r17, 0
	l.lwz	r4, 16(r14)
	l.lwz	r5, 12(r14)
	l.lwz	r6, 8(r14)
	l.lwz	r7, 4(r14)
	l.lwz	r8, 0(r14)
	l.movhi	r12, 23170
	l.ori	r21, r12, 31129
	l.ori	r27, r4, 0
	l.ori	r31, r5, 0
	l.ori	r12, r6, 0
	l.ori	r25, r7, 0
	l.ori	r13, r8, 0
.LBB3_4:                                # %for.body29.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 7             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 4                  # CFC
	l.addi	r22, r0, 3              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 4
	l.ori	r15, r13, 0
	l.ori	r23, r12, 0
	l.ori	r19, r31, 0
	l.xori	r12, r25, -1
	l.and	r12, r19, r12
	l.and	r13, r25, r23
	l.or	r12, r12, r13
	l.add	r12, r27, r12
	l.srli	r13, r15, 27
	l.slli	r27, r15, 5
	l.or	r13, r27, r13
	l.add	r12, r12, r13
	l.addi	r29, r2, -348
	l.add	r13, r29, r17
	l.lwz	r13, 0(r13)
	l.add	r12, r12, r13
	l.add	r13, r12, r21
	l.srli	r12, r25, 2
	l.slli	r25, r25, 30
	l.or	r12, r25, r12
	l.addi	r17, r17, 4
	l.sfnei	r17, 80
	l.ori	r27, r19, 0
	l.ori	r31, r23, 0
	l.ori	r25, r15, 0
	l.bf	.LBB3_4
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body44.i.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 5                  # CFC
	l.addi	r22, r0, 5              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 5
	l.movhi	r27, 0
	l.addi	r29, r29, 80
	l.movhi	r17, 28377
	l.ori	r31, r17, 60321
.LBB3_6:                                # %for.body44.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 6                  # CFC
	l.addi	r22, r0, 5              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 6
	l.ori	r17, r13, 0
	l.ori	r25, r12, 0
	l.ori	r21, r23, 0
	l.srli	r12, r17, 27
	l.slli	r13, r17, 5
	l.or	r12, r13, r12
	l.xor	r13, r25, r21
	l.xor	r13, r13, r15
	l.add	r13, r19, r13
	l.add	r12, r13, r12
	l.add	r13, r29, r27
	l.lwz	r13, 0(r13)
	l.add	r12, r12, r13
	l.add	r13, r12, r31
	l.srli	r12, r15, 2
	l.slli	r15, r15, 30
	l.or	r12, r15, r12
	l.addi	r27, r27, 4
	l.sfnei	r27, 80
	l.ori	r19, r21, 0
	l.ori	r23, r25, 0
	l.ori	r15, r17, 0
	l.bf	.LBB3_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %for.body63.i.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 7                  # CFC
	l.addi	r22, r0, 7              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 7
	l.movhi	r27, 0
	l.addi	r15, r2, -348
	l.addi	r29, r15, 160
	l.movhi	r15, 36635
	l.ori	r31, r15, 48348
.LBB3_8:                                # %for.body63.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 15            # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 8                  # CFC
	l.addi	r22, r0, 7              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 8
	l.ori	r15, r13, 0
	l.ori	r23, r12, 0
	l.ori	r19, r25, 0
	l.and	r12, r23, r19
	l.or	r13, r23, r19
	l.and	r13, r13, r17
	l.or	r12, r13, r12
	l.add	r12, r21, r12
	l.srli	r13, r15, 27
	l.slli	r21, r15, 5
	l.or	r13, r21, r13
	l.add	r12, r12, r13
	l.add	r13, r29, r27
	l.lwz	r13, 0(r13)
	l.add	r12, r12, r13
	l.add	r13, r12, r31
	l.srli	r12, r17, 2
	l.slli	r17, r17, 30
	l.or	r12, r17, r12
	l.addi	r27, r27, 4
	l.sfnei	r27, 80
	l.ori	r21, r19, 0
	l.ori	r25, r23, 0
	l.ori	r17, r15, 0
	l.bf	.LBB3_8
	l.nop	0                       # in delay slot
# BB#9:                                 # %for.body85.i.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 9                  # CFC
	l.addi	r22, r0, 9              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 9
	l.movhi	r17, 0
	l.addi	r21, r2, -348           # CFC
	l.addi	r21, r21, 240           # CFC
	l.movhi	r25, 51810
	l.ori	r25, r25, 49622
.LBB3_10:                               # %for.body85.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 10                 # CFC
	l.addi	r22, r0, 9              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 10
	l.ori	r31, r13, 0
	l.ori	r29, r12, 0
	l.ori	r27, r23, 0
	l.srli	r12, r31, 27
	l.slli	r13, r31, 5
	l.or	r12, r13, r12
	l.xor	r13, r29, r27
	l.xor	r13, r13, r15
	l.add	r13, r19, r13
	l.add	r12, r13, r12
	l.add	r13, r21, r17
	l.lwz	r13, 0(r13)
	l.add	r12, r12, r13
	l.add	r13, r12, r25
	l.srli	r12, r15, 2
	l.slli	r15, r15, 30
	l.or	r12, r15, r12
	l.addi	r17, r17, 4
	l.sfnei	r17, 80
	l.ori	r19, r27, 0
	l.ori	r23, r29, 0
	l.ori	r15, r31, 0
	l.bf	.LBB3_10
	l.nop	0                       # in delay slot
# BB#11:                                # %sha_transform.exit
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 11                 # CFC
	l.addi	r22, r0, 12             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 11
	l.add	r8, r13, r8
	l.sw	0(r14), r8
	l.add	r7, r31, r7
	l.sw	4(r14), r7
	l.add	r6, r12, r6
	l.sw	8(r14), r6
	l.add	r5, r29, r5
	l.sw	12(r14), r5
	l.add	r4, r27, r4
	l.sw	16(r14), r4
	l.movhi	r4, 0
	l.sw	52(r28), r4
	l.sw	48(r28), r4
	l.sw	44(r28), r4
	l.sw	40(r28), r4
	l.sw	36(r28), r4
	l.sw	32(r28), r4
	l.sw	28(r28), r4
	l.sw	24(r28), r4
	l.sw	20(r28), r4
	l.sw	16(r28), r4
	l.sw	12(r28), r4
	l.sw	8(r28), r4
	l.sw	4(r28), r4
	l.sw	0(r28), r4
	l.addi	r4, r2, -348
	l.j	.LBB3_13
	l.nop	0                       # in delay slot
.LBB3_12:                               # %if.else
	l.xori	r20, r20, 12            # CFC
	l.sfnei	r20, 12                 # CFC
	l.addi	r22, r0, 12             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 12
	l.addi	r5, r0, 55
	l.sub	r5, r5, r4
	l.movhi	r4, 0
l.nop 200                      ### start making possible fault injection candidates
	l.jal	memset
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.addi	r4, r2, -348
	l.ori	r3, r28, 0
.LBB3_13:                               # %if.end
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 13                 # CFC
	l.addi	r22, r0, 13             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 13
	l.sw	84(r14), r18
	l.sw	88(r14), r26
	l.lwz	r5, 60(r3)
	l.sw	60(r4), r5
	l.lwz	r5, 56(r3)
	l.sw	56(r4), r5
	l.lwz	r5, 52(r3)
	l.sw	52(r4), r5
	l.lwz	r5, 48(r3)
	l.sw	48(r4), r5
	l.lwz	r5, 44(r3)
	l.sw	44(r4), r5
	l.lwz	r5, 40(r3)
	l.sw	40(r4), r5
	l.lwz	r5, 36(r3)
	l.sw	36(r4), r5
	l.lwz	r5, 32(r3)
	l.sw	32(r4), r5
	l.lwz	r5, 28(r3)
	l.sw	28(r4), r5
	l.lwz	r5, 24(r3)
	l.sw	24(r4), r5
	l.lwz	r5, 20(r3)
	l.sw	20(r4), r5
	l.lwz	r5, 16(r3)
	l.sw	16(r4), r5
	l.lwz	r5, 12(r3)
	l.sw	12(r4), r5
	l.lwz	r5, 8(r3)
	l.sw	8(r4), r5
	l.lwz	r5, 4(r3)
	l.sw	4(r4), r5
	l.lwz	r3, 0(r3)
	l.sw	0(r4), r3
	l.movhi	r3, 0
.LBB3_14:                               # %for.body4.i43
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 14                 # CFC
	l.addi	r22, r0, 13             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 14
	l.addi	r4, r2, -348
	l.add	r4, r4, r3
	l.lwz	r5, 52(r4)
	l.lwz	r6, 32(r4)
	l.xor	r5, r6, r5
	l.lwz	r6, 8(r4)
	l.xor	r5, r5, r6
	l.lwz	r6, 0(r4)
	l.xor	r5, r5, r6
	l.sw	64(r4), r5
	l.addi	r3, r3, 4
	l.sfnei	r3, 256
	l.bf	.LBB3_14
	l.nop	0                       # in delay slot
# BB#15:                                # %for.end17.i49
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 15                 # CFC
	l.addi	r22, r0, 15             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 15
	l.movhi	r15, 0
	l.lwz	r3, 16(r14)
	l.lwz	r4, 12(r14)
	l.lwz	r5, 8(r14)
	l.lwz	r6, 4(r14)
	l.lwz	r7, 0(r14)
	l.movhi	r8, 23170
	l.ori	r19, r8, 31129
	l.ori	r25, r3, 0
	l.ori	r29, r4, 0
	l.ori	r8, r5, 0
	l.ori	r23, r6, 0
	l.ori	r12, r7, 0
.LBB3_16:                               # %for.body29.i73
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 31            # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 16                 # CFC
	l.addi	r22, r0, 15             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 16
	l.ori	r13, r12, 0
	l.ori	r21, r8, 0
	l.ori	r17, r29, 0
	l.xori	r8, r23, -1
	l.and	r8, r17, r8
	l.and	r12, r23, r21
	l.or	r8, r8, r12
	l.add	r8, r25, r8
	l.srli	r12, r13, 27
	l.slli	r25, r13, 5
	l.or	r12, r25, r12
	l.add	r8, r8, r12
	l.addi	r27, r2, -348
	l.add	r12, r27, r15
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r19
	l.srli	r8, r23, 2
	l.slli	r23, r23, 30
	l.or	r8, r23, r8
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r25, r17, 0
	l.ori	r29, r21, 0
	l.ori	r23, r13, 0
	l.bf	.LBB3_16
	l.nop	0                       # in delay slot
# BB#17:                                # %for.body44.i95.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 17                 # CFC
	l.addi	r22, r0, 17             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 17
	l.movhi	r25, 0
	l.addi	r27, r27, 80
	l.movhi	r15, 28377
	l.ori	r29, r15, 60321
.LBB3_18:                               # %for.body44.i95
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 18                 # CFC
	l.addi	r22, r0, 17             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 18
	l.ori	r15, r12, 0
	l.ori	r23, r8, 0
	l.ori	r19, r21, 0
	l.srli	r8, r15, 27
	l.slli	r12, r15, 5
	l.or	r8, r12, r8
	l.xor	r12, r23, r19
	l.xor	r12, r12, r13
	l.add	r12, r17, r12
	l.add	r8, r12, r8
	l.add	r12, r27, r25
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r29
	l.srli	r8, r13, 2
	l.slli	r13, r13, 30
	l.or	r8, r13, r8
	l.addi	r25, r25, 4
	l.sfnei	r25, 80
	l.ori	r17, r19, 0
	l.ori	r21, r23, 0
	l.ori	r13, r15, 0
	l.bf	.LBB3_18
	l.nop	0                       # in delay slot
# BB#19:                                # %for.body63.i119.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 19                 # CFC
	l.addi	r22, r0, 19             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 19
	l.movhi	r25, 0
	l.addi	r13, r2, -348
	l.addi	r27, r13, 160
	l.movhi	r13, 36635
	l.ori	r29, r13, 48348
.LBB3_20:                               # %for.body63.i119
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 7             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 20                 # CFC
	l.addi	r22, r0, 19             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 20
	l.ori	r13, r12, 0
	l.ori	r21, r8, 0
	l.ori	r17, r23, 0
	l.and	r8, r21, r17
	l.or	r12, r21, r17
	l.and	r12, r12, r15
	l.or	r8, r12, r8
	l.add	r8, r19, r8
	l.srli	r12, r13, 27
	l.slli	r19, r13, 5
	l.or	r12, r19, r12
	l.add	r8, r8, r12
	l.add	r12, r27, r25
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r29
	l.srli	r8, r15, 2
	l.slli	r15, r15, 30
	l.or	r8, r15, r8
	l.addi	r25, r25, 4
	l.sfnei	r25, 80
	l.ori	r19, r17, 0
	l.ori	r23, r21, 0
	l.ori	r15, r13, 0
	l.bf	.LBB3_20
	l.nop	0                       # in delay slot
# BB#21:                                # %for.body85.i141.preheader
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 21                 # CFC
	l.addi	r22, r0, 21             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 21
	l.movhi	r15, 0
	l.addi	r19, r2, -348
	l.addi	r19, r19, 240
	l.movhi	r23, 51810
	l.ori	r23, r23, 49622
.LBB3_22:                               # %for.body85.i141
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 3             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 22                 # CFC
	l.addi	r22, r0, 21             # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 22
	l.ori	r29, r12, 0
	l.ori	r27, r8, 0
	l.ori	r25, r21, 0
	l.srli	r8, r29, 27
	l.slli	r12, r29, 5
	l.or	r8, r12, r8
	l.xor	r12, r27, r25
	l.xor	r12, r12, r13
	l.add	r12, r17, r12
	l.add	r8, r12, r8
	l.add	r12, r19, r15
	l.lwz	r12, 0(r12)
	l.add	r8, r8, r12
	l.add	r12, r8, r23
	l.srli	r8, r13, 2
	l.slli	r13, r13, 30
	l.or	r8, r13, r8
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r17, r25, 0
	l.ori	r21, r27, 0
	l.ori	r13, r29, 0
	l.bf	.LBB3_22
	l.nop	0                       # in delay slot
# BB#23:                                # %sha_transform.exit147
	l.xori	r20, r20, 1             # CFC
	l.sfnei	r20, 23                 # CFC
	l.bf .LBB1000_100
	l.add	r7, r12, r7
	l.sw	0(r14), r7
	l.add	r6, r29, r6
	l.sw	4(r14), r6
	l.add	r5, r8, r5
	l.sw	8(r14), r5
	l.add	r4, r27, r4
	l.sw	12(r14), r4
	l.add	r3, r25, r3
	l.sw	16(r14), r3
	l.lwz	r14, -28(r2)
	l.lwz	r18, -24(r2)
	l.lwz	r26, -20(r2)
	l.lwz	r28, -16(r2)
	l.lwz	r30, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final

	.hidden	sha_stream
	.globl	sha_stream
	.p2align	2
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
# BB#0:                                 # %entry
	l.addi	r22, r0, 0              # CFC
	l.sw	-4(r1), r9
	l.xori	r24, r22, 0
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -336
	l.sw	-12(r2), r18
	l.sw	-16(r2), r14
	l.ori	r14, r3, 0
	l.movhi	r3, 26437
	l.ori	r3, r3, 8961
	l.sw	0(r14), r3
	l.movhi	r3, 61389
	l.ori	r3, r3, 43913
	l.sw	4(r14), r3
	l.movhi	r3, 39098
	l.ori	r3, r3, 56574
	l.sw	8(r14), r3
	l.movhi	r3, 4146
	l.ori	r3, r3, 21622
	l.sw	12(r14), r3
	l.movhi	r3, 50130
	l.ori	r3, r3, 57840
	l.sw	16(r14), r3
	l.movhi	r18, 0
	l.sw	20(r14), r18
	l.sw	24(r14), r18
	l.addi	r3, r0, 128
	l.sb	28(r14), r3
	l.addi	r3, r14, 29
	l.addi	r5, r0, 55
	l.movhi	r4, 0
l.nop 200                      ### start making possible fault injection candidates
	l.jal	memset
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.sw	84(r14), r18
	l.sw	88(r14), r18
	l.lwz	r3, 88(r14)
	l.sw	-276(r2), r3
	l.lwz	r3, 84(r14)
	l.sw	-280(r2), r3
	l.lwz	r3, 80(r14)
	l.sw	-284(r2), r3
	l.lwz	r3, 76(r14)
	l.sw	-288(r2), r3
	l.lwz	r3, 72(r14)
	l.sw	-292(r2), r3
	l.lwz	r3, 68(r14)
	l.sw	-296(r2), r3
	l.lwz	r3, 64(r14)
	l.sw	-300(r2), r3
	l.lwz	r3, 60(r14)
	l.sw	-304(r2), r3
	l.lwz	r3, 56(r14)
	l.sw	-308(r2), r3
	l.lwz	r3, 52(r14)
	l.sw	-312(r2), r3
	l.lwz	r3, 48(r14)
	l.sw	-316(r2), r3
	l.lwz	r3, 44(r14)
	l.sw	-320(r2), r3
	l.lwz	r3, 40(r14)
	l.sw	-324(r2), r3
	l.lwz	r3, 36(r14)
	l.sw	-328(r2), r3
	l.lwz	r3, 32(r14)
	l.sw	-332(r2), r3
	l.lwz	r3, 28(r14)
	l.sw	-336(r2), r3
.LBB4_1:                                # %for.body4.i43.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 1                  # CFC
	l.addi	r22, r0, 0              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 1
	l.addi	r3, r2, -336
	l.add	r3, r3, r18
	l.lwz	r4, 52(r3)
	l.lwz	r5, 32(r3)
	l.xor	r4, r5, r4
	l.lwz	r5, 8(r3)
	l.xor	r4, r4, r5
	l.lwz	r5, 0(r3)
	l.xor	r4, r4, r5
	l.sw	64(r3), r4
	l.addi	r18, r18, 4
	l.sfnei	r18, 256
	l.bf	.LBB4_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body29.i73.i.preheader
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 2                  # CFC
	l.addi	r22, r0, 2              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 2
	l.movhi	r6, 0
	l.movhi	r3, 26437
	l.ori	r4, r3, 8961
	l.movhi	r3, 61389
	l.ori	r13, r3, 43913
	l.movhi	r3, 39098
	l.ori	r3, r3, 56574
	l.movhi	r5, 4146
	l.ori	r17, r5, 21622
	l.movhi	r5, 50130
	l.ori	r15, r5, 57840
	l.movhi	r5, 23170
	l.ori	r8, r5, 31129
.LBB4_3:                                # %for.body29.i73.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 3                  # CFC
	l.addi	r22, r0, 2              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 3
	l.ori	r5, r4, 0
	l.ori	r12, r3, 0
	l.ori	r7, r17, 0
	l.xori	r3, r13, -1
	l.and	r3, r7, r3
	l.and	r4, r13, r12
	l.or	r3, r3, r4
	l.add	r3, r15, r3
	l.srli	r4, r5, 27
	l.slli	r15, r5, 5
	l.or	r4, r15, r4
	l.add	r3, r3, r4
	l.addi	r19, r2, -336
	l.add	r4, r19, r6
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r4, r3, r8
	l.srli	r3, r13, 2
	l.slli	r13, r13, 30
	l.or	r3, r13, r3
	l.addi	r6, r6, 4
	l.sfnei	r6, 80
	l.ori	r15, r7, 0
	l.ori	r17, r12, 0
	l.ori	r13, r5, 0
	l.bf	.LBB4_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body44.i95.i.preheader
	l.xori	r20, r20, 7             # CFC
	l.sfnei	r20, 4                  # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 4
	l.movhi	r15, 0
	l.addi	r17, r19, 80
	l.movhi	r6, 28377
	l.ori	r19, r6, 60321
.LBB4_5:                                # %for.body44.i95.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 5                  # CFC
	l.addi	r22, r0, 4              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 5
	l.ori	r6, r4, 0
	l.ori	r13, r3, 0
	l.ori	r8, r12, 0
	l.srli	r3, r6, 27
	l.slli	r4, r6, 5
	l.or	r3, r4, r3
	l.xor	r4, r13, r8
	l.xor	r4, r4, r5
	l.add	r4, r7, r4
	l.add	r3, r4, r3
	l.add	r4, r17, r15
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r4, r3, r19
	l.srli	r3, r5, 2
	l.slli	r5, r5, 30
	l.or	r3, r5, r3
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r7, r8, 0
	l.ori	r12, r13, 0
	l.ori	r5, r6, 0
	l.bf	.LBB4_5
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.body63.i119.i.preheader
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 6                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 6
	l.movhi	r15, 0
	l.addi	r5, r2, -336
	l.addi	r17, r5, 160
	l.movhi	r5, 36635
	l.ori	r19, r5, 48348
.LBB4_7:                                # %for.body63.i119.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 7                  # CFC
	l.addi	r22, r0, 6              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 7
	l.ori	r5, r4, 0
	l.ori	r12, r3, 0
	l.ori	r7, r13, 0
	l.and	r3, r12, r7
	l.or	r4, r12, r7
	l.and	r4, r4, r6
	l.or	r3, r4, r3
	l.add	r3, r8, r3
	l.srli	r4, r5, 27
	l.slli	r8, r5, 5
	l.or	r4, r8, r4
	l.add	r3, r3, r4
	l.add	r4, r17, r15
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r4, r3, r19
	l.srli	r3, r6, 2
	l.slli	r6, r6, 30
	l.or	r3, r6, r3
	l.addi	r15, r15, 4
	l.sfnei	r15, 80
	l.ori	r8, r7, 0
	l.ori	r13, r12, 0
	l.ori	r6, r5, 0
	l.bf	.LBB4_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.body85.i141.i.preheader
	l.xori	r20, r20, 15            # CFC
	l.sfnei	r20, 8                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 8
	l.movhi	r13, 0
	l.addi	r6, r2, -336
	l.addi	r15, r6, 240
	l.movhi	r6, 51810
	l.ori	r17, r6, 49622
.LBB4_9:                                # %for.body85.i141.i
                                        # =>This Inner Loop Header: Depth=1
	l.xori	r20, r20, 1             # CFC
	l.xor	r20, r20, r24           # CFC
	l.sfnei	r20, 9                  # CFC
	l.addi	r22, r0, 8              # CFC
	l.bf .LBB1000_100
	l.xori	r24, r22, 9
	l.ori	r19, r4, 0
	l.ori	r8, r3, 0
	l.ori	r6, r12, 0
	l.srli	r3, r19, 27
	l.slli	r4, r19, 5
	l.or	r3, r4, r3
	l.xor	r4, r8, r6
	l.xor	r4, r4, r5
	l.add	r4, r7, r4
	l.add	r3, r4, r3
	l.add	r4, r15, r13
	l.lwz	r4, 0(r4)
	l.add	r3, r3, r4
	l.add	r4, r3, r17
	l.srli	r3, r5, 2
	l.slli	r5, r5, 30
	l.or	r3, r5, r3
	l.addi	r13, r13, 4
	l.sfnei	r13, 80
	l.ori	r7, r6, 0
	l.ori	r12, r8, 0
	l.ori	r5, r19, 0
	l.bf	.LBB4_9
	l.nop	0                       # in delay slot
# BB#10:                                # %sha_final.exit
	l.xori	r20, r20, 3             # CFC
	l.sfnei	r20, 10                 # CFC
	l.bf .LBB1000_100
	l.movhi	r5, 26437
	l.ori	r5, r5, 8961
	l.add	r4, r4, r5
	l.sw	0(r14), r4
	l.movhi	r4, 61389
	l.ori	r4, r4, 43913
	l.add	r4, r19, r4
	l.sw	4(r14), r4
	l.movhi	r4, 39098
	l.ori	r4, r4, 56574
	l.add	r3, r3, r4
	l.sw	8(r14), r3
	l.movhi	r3, 4146
	l.ori	r3, r3, 21622
	l.add	r3, r8, r3
	l.sw	12(r14), r3
	l.movhi	r3, 50130
	l.ori	r3, r3, 57840
	l.add	r3, r6, r3
	l.sw	16(r14), r3
	l.lwz	r14, -16(r2)
	l.lwz	r18, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream

	.hidden	sha_print
	.globl	sha_print
	.p2align	2
	.type	sha_print,@function
sha_print:                              # @sha_print
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.lwz	r4, 0(r3)
	l.lwz	r5, 4(r3)
	l.lwz	r6, 8(r3)
	l.lwz	r7, 12(r3)
	l.lwz	r3, 16(r3)
	l.sw	16(r1), r3
	l.sw	12(r1), r7
	l.sw	8(r1), r6
	l.sw	4(r1), r5
	l.sw	0(r1), r4
	l.movhi	r3, hi(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.jal	printf
	l.nop	0                       # in delay slot

	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
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
