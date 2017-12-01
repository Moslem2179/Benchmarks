	.text
	.file	"BITCOUNTOPT.LL"
	.hidden	alloc_bit_array
	.globl	alloc_bit_array
	.p2align	2
	.type	alloc_bit_array,@function
alloc_bit_array:                        # @alloc_bit_array
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB0_1
	l.sfne	r1, r14
	l.bf	.LBB0_1
	l.sw	-4(r1), r9
	l.sw	8188(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB0_1
	l.sfne	r1, r14
	l.bf	.LBB0_1
	l.sw	-8(r1), r2
	l.sw	8184(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB0_1
	l.sfne	r2, r15
	l.bf	.LBB0_1
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.addi	r16, r16, 7
	l.addi	r3, r3, 7
	l.srli	r16, r16, 3
	l.srli	r3, r3, 3
	l.addi	r17, r0, 1
	l.addi	r4, r0, 1
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB0_1
	l.sfne	r2, r15
	l.bf	.LBB0_1
	l.sfne	r3, r16
	l.bf	.LBB0_1
	l.sfne	r4, r17
	l.bf	.LBB0_1
	l.sfne	r5, r18
	l.bf	.LBB0_1
	l.sfne	r6, r19
	l.bf	.LBB0_1
	l.sfne	r7, r20
	l.bf	.LBB0_1
	l.sfne	r8, r21
	l.bf	.LBB0_1
	l.sfne	r9, r22
	l.bf	.LBB0_1
	l.sfne	r10, r23
	l.bf	.LBB0_1
	l.sfne	r11, r24
	l.bf	.LBB0_1
	l.sfne	r12, r25
	l.bf	.LBB0_1
	l.nop	0
	l.jal	calloc
	l.addi	r14, r1, 0
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.sfne	r11, r24
	l.bf	.LBB0_1
	l.sfne	r2, r15
	l.bf	.LBB0_1
	l.sw	-16(r2), r11
	l.sw	8176(r15), r24
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8184(r14)
	l.lwz	r2, -8(r1)
	l.lwz	r22, 8188(r14)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_1:
.LBB0_2:
.Lfunc_end0:
	.size	alloc_bit_array, .Lfunc_end0-alloc_bit_array

	.hidden	getbit
	.globl	getbit
	.p2align	2
	.type	getbit,@function
getbit:                                 # @getbit
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB1_3
	l.sfne	r1, r14
	l.bf	.LBB1_3
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -12
	l.addi	r1, r1, -12
	l.sfne	r3, r16
	l.bf	.LBB1_3
	l.sfne	r2, r15
	l.bf	.LBB1_3
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB1_3
	l.sfne	r2, r15
	l.bf	.LBB1_3
	l.sw	-12(r2), r4
	l.sw	8180(r15), r17
	l.srai	r16, r17, 31
	l.srai	r3, r4, 31
	l.srli	r16, r16, 29
	l.srli	r3, r3, 29
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.srai	r16, r16, 3
	l.srai	r3, r3, 3
	l.lwz	r17, 8184(r15)
	l.lwz	r4, -8(r2)
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.sfne	r4, r17
	l.bf	.LBB1_3
	l.sfne	r2, r15
	l.bf	.LBB1_3
	l.sw	-8(r2), r4
	l.sw	8184(r15), r17
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r18, r16, 31
	l.srai	r5, r3, 31
	l.srli	r18, r18, 29
	l.srli	r5, r5, 29
	l.add	r18, r16, r18
	l.add	r5, r3, r5
	l.addi	r19, r0, -8
	l.addi	r6, r0, -8
	l.and	r18, r18, r19
	l.and	r5, r5, r6
	l.sub	r18, r16, r18
	l.sub	r5, r3, r5
	l.addi	r16, r0, 1
	l.addi	r3, r0, 1
	l.sll	r18, r16, r18
	l.sll	r5, r3, r5
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.and	r17, r17, r18
	l.and	r4, r4, r5
	l.sfne	r4, r17
	l.bf	.LBB1_3
	l.sfnei	r4, 0
	l.bf	.LBB1_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.movhi	r16, 0
	l.movhi	r3, 0
.LBB1_2:                                # %entry
	l.andi	r24, r16, 1
	l.andi	r11, r3, 1
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_3:
.LBB1_4:
.Lfunc_end1:
	.size	getbit, .Lfunc_end1-getbit

	.hidden	setbit
	.globl	setbit
	.p2align	2
	.type	setbit,@function
setbit:                                 # @setbit
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB2_4
	l.sfne	r1, r14
	l.bf	.LBB2_4
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB2_4
	l.sfne	r2, r15
	l.bf	.LBB2_4
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB2_4
	l.sfne	r2, r15
	l.bf	.LBB2_4
	l.sw	-12(r2), r4
	l.sw	8180(r15), r17
	l.sfne	r5, r18
	l.bf	.LBB2_4
	l.sfne	r2, r15
	l.bf	.LBB2_4
	l.sw	-16(r2), r5
	l.sw	8176(r15), r18
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r17, r16, 31
	l.srai	r4, r3, 31
	l.srli	r17, r17, 29
	l.srli	r4, r4, 29
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.srai	r16, r16, 3
	l.srai	r3, r3, 3
	l.lwz	r17, 8184(r15)
	l.lwz	r4, -8(r2)
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB2_4
	l.sfne	r2, r15
	l.bf	.LBB2_4
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.sfne	r3, r16
	l.bf	.LBB2_4
	l.sfeqi	r3, 0
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r17, r16, 31
	l.srai	r4, r3, 31
	l.srli	r17, r17, 29
	l.srli	r4, r4, 29
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.addi	r18, r0, -8
	l.addi	r5, r0, -8
	l.and	r17, r17, r18
	l.and	r4, r4, r5
	l.sub	r16, r16, r17
	l.sub	r3, r3, r4
	l.addi	r17, r0, 1
	l.addi	r4, r0, 1
	l.sll	r16, r17, r16
	l.sll	r3, r4, r3
	l.lwz	r17, 8184(r15)
	l.lwz	r4, -8(r2)
	l.lbz	r18, 8192(r17)
	l.lbz	r5, 0(r4)
	l.or	r16, r18, r16
	l.or	r3, r5, r3
	l.j	.LBB2_3
	l.nop	0                       # in delay slot
.LBB2_2:                                # %if.else
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r17, r16, 31
	l.srai	r4, r3, 31
	l.srli	r17, r17, 29
	l.srli	r4, r4, 29
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.addi	r18, r0, -8
	l.addi	r5, r0, -8
	l.and	r17, r17, r18
	l.and	r4, r4, r5
	l.sub	r16, r16, r17
	l.sub	r3, r3, r4
	l.addi	r17, r0, 1
	l.addi	r4, r0, 1
	l.sll	r16, r17, r16
	l.sll	r3, r4, r3
	l.xori	r16, r16, -1
	l.xori	r3, r3, -1
	l.lwz	r17, 8184(r15)
	l.lwz	r4, -8(r2)
	l.lbz	r18, 8192(r17)
	l.lbz	r5, 0(r4)
	l.and	r16, r18, r16
	l.and	r3, r5, r3
.LBB2_3:                                # %if.end
	l.sfne	r3, r16
	l.bf	.LBB2_4
	l.sfne	r4, r17
	l.bf	.LBB2_4
	l.sb	0(r4), r3
	l.sb	8192(r17), r16
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_4:
.LBB2_5:
.Lfunc_end2:
	.size	setbit, .Lfunc_end2-setbit

	.hidden	flipbit
	.globl	flipbit
	.p2align	2
	.type	flipbit,@function
flipbit:                                # @flipbit
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB3_1
	l.sfne	r1, r14
	l.bf	.LBB3_1
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -12
	l.addi	r1, r1, -12
	l.sfne	r3, r16
	l.bf	.LBB3_1
	l.sfne	r2, r15
	l.bf	.LBB3_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB3_1
	l.sfne	r2, r15
	l.bf	.LBB3_1
	l.sw	-12(r2), r4
	l.sw	8180(r15), r17
	l.srai	r16, r17, 31
	l.srai	r3, r4, 31
	l.srli	r16, r16, 29
	l.srli	r3, r3, 29
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.srai	r16, r16, 3
	l.srai	r3, r3, 3
	l.lwz	r17, 8184(r15)
	l.lwz	r4, -8(r2)
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB3_1
	l.sfne	r2, r15
	l.bf	.LBB3_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.lwz	r17, 8180(r15)
	l.lwz	r4, -12(r2)
	l.srai	r18, r17, 31
	l.srai	r5, r4, 31
	l.srli	r18, r18, 29
	l.srli	r5, r5, 29
	l.add	r18, r17, r18
	l.add	r5, r4, r5
	l.addi	r19, r0, -8
	l.addi	r6, r0, -8
	l.and	r18, r18, r19
	l.and	r5, r5, r6
	l.sub	r17, r17, r18
	l.sub	r4, r4, r5
	l.addi	r18, r0, 1
	l.addi	r5, r0, 1
	l.sll	r17, r18, r17
	l.sll	r4, r5, r4
	l.lbz	r18, 8192(r16)
	l.lbz	r5, 0(r3)
	l.xor	r17, r18, r17
	l.xor	r4, r5, r4
	l.sfne	r4, r17
	l.bf	.LBB3_1
	l.sfne	r3, r16
	l.bf	.LBB3_1
	l.sb	0(r3), r4
	l.sb	8192(r16), r17
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_1:
.LBB3_2:
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit

	.hidden	bit_count
	.globl	bit_count
	.p2align	2
	.type	bit_count,@function
bit_count:                              # @bit_count
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB4_3
	l.sfne	r1, r14
	l.bf	.LBB4_3
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -12
	l.addi	r1, r1, -12
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfne	r2, r15
	l.bf	.LBB4_3
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfne	r2, r15
	l.bf	.LBB4_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfeqi	r3, 0
	l.bf	.LBB4_2
	l.nop	0                       # in delay slot
.LBB4_1:                                # %do.cond
                                        # =>This Inner Loop Header: Depth=1
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfne	r2, r15
	l.bf	.LBB4_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.addi	r17, r16, -1
	l.addi	r4, r3, -1
	l.and	r16, r16, r17
	l.and	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfne	r2, r15
	l.bf	.LBB4_3
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB4_3
	l.sfnei	r3, 0
	l.bf	.LBB4_1
	l.nop	0                       # in delay slot
.LBB4_2:                                # %if.end
	l.lwz	r24, 8180(r15)
	l.lwz	r11, -12(r2)
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB4_3:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB4_4:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end4:
	.size	bit_count, .Lfunc_end4-bit_count

	.hidden	bitcount
	.globl	bitcount
	.p2align	2
	.type	bitcount,@function
bitcount:                               # @bitcount
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sfne	r1, r14
	l.bf	.LBB5_1
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -8
	l.addi	r1, r1, -8
	l.movhi	r17, 21845
	l.movhi	r4, 21845
	l.ori	r17, r17, 21845
	l.ori	r4, r4, 21845
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.and	r17, r16, r17
	l.and	r4, r3, r4
	l.movhi	r18, 43690
	l.movhi	r5, 43690
	l.ori	r18, r18, 43690
	l.ori	r5, r5, 43690
	l.and	r16, r16, r18
	l.and	r3, r3, r5
	l.srli	r16, r16, 1
	l.srli	r3, r3, 1
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.movhi	r17, 13107
	l.movhi	r4, 13107
	l.ori	r17, r17, 13107
	l.ori	r4, r4, 13107
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.and	r17, r16, r17
	l.and	r4, r3, r4
	l.movhi	r18, 52428
	l.movhi	r5, 52428
	l.ori	r18, r18, 52428
	l.ori	r5, r5, 52428
	l.and	r16, r16, r18
	l.and	r3, r3, r5
	l.srli	r16, r16, 2
	l.srli	r3, r3, 2
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.movhi	r17, 28912
	l.movhi	r4, 28912
	l.ori	r17, r17, 61680
	l.ori	r4, r4, 61680
	l.movhi	r18, 3855
	l.movhi	r5, 3855
	l.ori	r18, r18, 3855
	l.ori	r5, r5, 3855
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.and	r18, r16, r18
	l.and	r5, r3, r5
	l.and	r16, r16, r17
	l.and	r3, r3, r4
	l.srli	r16, r16, 4
	l.srli	r3, r3, 4
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.movhi	r17, 7936
	l.movhi	r4, 7936
	l.ori	r17, r17, 65280
	l.ori	r4, r4, 65280
	l.movhi	r18, 255
	l.movhi	r5, 255
	l.ori	r18, r18, 255
	l.ori	r5, r5, 255
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.and	r18, r16, r18
	l.and	r5, r3, r5
	l.and	r16, r16, r17
	l.and	r3, r3, r4
	l.srli	r16, r16, 8
	l.srli	r3, r3, 8
	l.add	r16, r16, r18
	l.add	r3, r3, r5
	l.sfne	r3, r16
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.andi	r17, r16, 65535
	l.andi	r4, r3, 65535
	l.srli	r16, r16, 16
	l.srli	r3, r3, 16
	l.add	r24, r16, r17
	l.add	r11, r3, r4
	l.sfne	r11, r24
	l.bf	.LBB5_1
	l.sfne	r2, r15
	l.bf	.LBB5_1
	l.sw	-8(r2), r11
	l.sw	8184(r15), r24
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_1:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB5_2:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end5:
	.size	bitcount, .Lfunc_end5-bitcount

	.hidden	ntbl_bitcount
	.globl	ntbl_bitcount
	.p2align	2
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB6_1
	l.sfne	r1, r14
	l.bf	.LBB6_1
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -8
	l.addi	r1, r1, -8
	l.sfne	r3, r16
	l.bf	.LBB6_1
	l.sfne	r2, r15
	l.bf	.LBB6_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.movhi	r17, hi(bits)
	l.movhi	r4, hi(bits)
	l.ori	r17, r17, lo(bits)
	l.ori	r4, r4, lo(bits)
	l.andi	r18, r16, 15
	l.andi	r5, r3, 15
	l.add	r18, r18, r17
	l.add	r5, r5, r4
	l.lbs	r18, 8192(r18)
	l.lbs	r5, 0(r5)
	l.andi	r19, r16, 240
	l.andi	r6, r3, 240
	l.srli	r19, r19, 4
	l.srli	r6, r6, 4
	l.add	r19, r19, r17
	l.add	r6, r6, r4
	l.lbs	r19, 8192(r19)
	l.lbs	r6, 0(r6)
	l.add	r18, r18, r19
	l.add	r5, r5, r6
	l.andi	r19, r16, 3840
	l.andi	r6, r3, 3840
	l.srli	r19, r19, 8
	l.srli	r6, r6, 8
	l.add	r19, r19, r17
	l.add	r6, r6, r4
	l.lbs	r19, 8192(r19)
	l.lbs	r6, 0(r6)
	l.add	r18, r18, r19
	l.add	r5, r5, r6
	l.andi	r19, r16, 61440
	l.andi	r6, r3, 61440
	l.srli	r19, r19, 12
	l.srli	r6, r6, 12
	l.add	r19, r19, r17
	l.add	r6, r6, r4
	l.lbs	r19, 8192(r19)
	l.lbs	r6, 0(r6)
	l.add	r18, r18, r19
	l.add	r5, r5, r6
	l.movhi	r19, 15
	l.movhi	r6, 15
	l.and	r19, r16, r19
	l.and	r6, r3, r6
	l.srli	r19, r19, 16
	l.srli	r6, r6, 16
	l.add	r19, r19, r17
	l.add	r6, r6, r4
	l.lbs	r19, 8192(r19)
	l.lbs	r6, 0(r6)
	l.add	r18, r18, r19
	l.add	r5, r5, r6
	l.movhi	r19, 240
	l.movhi	r6, 240
	l.and	r19, r16, r19
	l.and	r6, r3, r6
	l.srli	r19, r19, 20
	l.srli	r6, r6, 20
	l.add	r19, r19, r17
	l.add	r6, r6, r4
	l.lbs	r19, 8192(r19)
	l.lbs	r6, 0(r6)
	l.add	r18, r18, r19
	l.add	r5, r5, r6
	l.movhi	r19, 3840
	l.movhi	r6, 3840
	l.and	r19, r16, r19
	l.and	r6, r3, r6
	l.srli	r16, r16, 28
	l.srli	r3, r3, 28
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.srli	r19, r19, 24
	l.srli	r6, r6, 24
	l.add	r17, r19, r17
	l.add	r4, r6, r4
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.add	r17, r18, r17
	l.add	r4, r5, r4
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.add	r24, r17, r16
	l.add	r11, r4, r3
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB6_1:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB6_2:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end6:
	.size	ntbl_bitcount, .Lfunc_end6-ntbl_bitcount

	.hidden	BW_btbl_bitcount
	.globl	BW_btbl_bitcount
	.p2align	2
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB7_1
	l.sfne	r1, r14
	l.bf	.LBB7_1
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -12
	l.addi	r1, r1, -12
	l.sfne	r3, r16
	l.bf	.LBB7_1
	l.sfne	r2, r15
	l.bf	.LBB7_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB7_1
	l.sfne	r2, r15
	l.bf	.LBB7_1
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.movhi	r16, hi(bits)
	l.movhi	r3, hi(bits)
	l.ori	r16, r16, lo(bits)
	l.ori	r3, r3, lo(bits)
	l.lbz	r17, 8181(r15)
	l.lbz	r4, -11(r2)
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.lbz	r18, 8180(r15)
	l.lbz	r5, -12(r2)
	l.add	r18, r18, r16
	l.add	r5, r5, r3
	l.lbs	r18, 8192(r18)
	l.lbs	r5, 0(r5)
	l.add	r17, r18, r17
	l.add	r4, r5, r4
	l.lbz	r18, 8183(r15)
	l.lbz	r5, -9(r2)
	l.add	r18, r18, r16
	l.add	r5, r5, r3
	l.lbs	r18, 8192(r18)
	l.lbs	r5, 0(r5)
	l.add	r17, r17, r18
	l.add	r4, r4, r5
	l.lbz	r18, 8182(r15)
	l.lbz	r5, -10(r2)
	l.add	r16, r18, r16
	l.add	r3, r5, r3
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.add	r24, r17, r16
	l.add	r11, r4, r3
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB7_1:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB7_2:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end7:
	.size	BW_btbl_bitcount, .Lfunc_end7-BW_btbl_bitcount

	.hidden	AR_btbl_bitcount
	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sfne	r1, r14
	l.bf	.LBB8_1
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.addi	r16, r15, -8
	l.addi	r3, r2, -8
	l.sfne	r3, r16
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.ori	r16, r16, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.movhi	r16, hi(bits)
	l.movhi	r3, hi(bits)
	l.ori	r16, r16, lo(bits)
	l.ori	r3, r3, lo(bits)
	l.lbz	r17, 8184(r15)
	l.lbz	r4, -8(r2)
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.sfne	r4, r17
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-16(r2), r4
	l.sw	8176(r15), r17
	l.lwz	r17, 8180(r15)
	l.lwz	r4, -12(r2)
	l.addi	r18, r17, 1
	l.addi	r5, r4, 1
	l.sfne	r5, r18
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-12(r2), r5
	l.sw	8180(r15), r18
	l.lbz	r17, 8192(r17)
	l.lbz	r4, 0(r4)
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.lwz	r18, 8176(r15)
	l.lwz	r5, -16(r2)
	l.add	r17, r18, r17
	l.add	r4, r5, r4
	l.sfne	r4, r17
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-16(r2), r4
	l.sw	8176(r15), r17
	l.lwz	r17, 8180(r15)
	l.lwz	r4, -12(r2)
	l.addi	r18, r17, 1
	l.addi	r5, r4, 1
	l.sfne	r5, r18
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-12(r2), r5
	l.sw	8180(r15), r18
	l.lbz	r17, 8192(r17)
	l.lbz	r4, 0(r4)
	l.add	r17, r17, r16
	l.add	r4, r4, r3
	l.lbs	r17, 8192(r17)
	l.lbs	r4, 0(r4)
	l.lwz	r18, 8176(r15)
	l.lwz	r5, -16(r2)
	l.add	r17, r18, r17
	l.add	r4, r5, r4
	l.sfne	r4, r17
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-16(r2), r4
	l.sw	8176(r15), r17
	l.lwz	r18, 8180(r15)
	l.lwz	r5, -12(r2)
	l.lbz	r18, 8192(r18)
	l.lbz	r5, 0(r5)
	l.add	r16, r18, r16
	l.add	r3, r5, r3
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.add	r24, r17, r16
	l.add	r11, r4, r3
	l.sfne	r11, r24
	l.bf	.LBB8_1
	l.sfne	r2, r15
	l.bf	.LBB8_1
	l.sw	-16(r2), r11
	l.sw	8176(r15), r24
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_1:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB8_2:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end8:
	.size	AR_btbl_bitcount, .Lfunc_end8-AR_btbl_bitcount

	.hidden	ntbl_bitcnt
	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB9_3
	l.sfne	r1, r14
	l.bf	.LBB9_3
	l.sw	-4(r1), r9
	l.sw	8188(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB9_3
	l.sfne	r1, r14
	l.bf	.LBB9_3
	l.sw	-8(r1), r2
	l.sw	8184(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB9_3
	l.sfne	r2, r15
	l.bf	.LBB9_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.movhi	r17, hi(bits.1)
	l.movhi	r4, hi(bits.1)
	l.ori	r17, r17, lo(bits.1)
	l.ori	r4, r4, lo(bits.1)
	l.andi	r16, r16, 15
	l.andi	r3, r3, 15
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.sfne	r3, r16
	l.bf	.LBB9_3
	l.sfne	r2, r15
	l.bf	.LBB9_3
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r16, r16, 4
	l.srai	r3, r3, 4
	l.sfne	r3, r16
	l.bf	.LBB9_3
	l.sfne	r2, r15
	l.bf	.LBB9_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB9_3
	l.sfeqi	r3, 0
	l.bf	.LBB9_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)

	l.jal	ntbl_bitcnt
	l.addi	r22, r9, 0              # CFC

	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.add	r16, r16, r24
	l.add	r3, r3, r11
	l.sfne	r3, r16
	l.bf	.LBB9_3
	l.sfne	r2, r15
	l.bf	.LBB9_3
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
.LBB9_2:                                # %if.end
	l.lwz	r24, 8176(r15)
	l.lwz	r11, -16(r2)
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8184(r14)
	l.lwz	r2, -8(r1)
	l.lwz	r22, 8188(r14)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_3:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB9_4:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end9:
	.size	ntbl_bitcnt, .Lfunc_end9-ntbl_bitcnt

	.hidden	btbl_bitcnt
	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB10_3
	l.sfne	r1, r14
	l.bf	.LBB10_3
	l.sw	-4(r1), r9
	l.sw	8188(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sfne	r1, r14
	l.bf	.LBB10_3
	l.sw	-8(r1), r2
	l.sw	8184(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.movhi	r16, hi(bits.1)
	l.movhi	r3, hi(bits.1)
	l.ori	r16, r16, lo(bits.1)
	l.ori	r3, r3, lo(bits.1)
	l.lbz	r17, 8180(r15)
	l.lbz	r4, -12(r2)
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.srai	r16, r16, 8
	l.srai	r3, r3, 8
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfeqi	r3, 0
	l.bf	.LBB10_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB10_3
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfne	r4, r17
	l.bf	.LBB10_3
	l.sfne	r5, r18
	l.bf	.LBB10_3
	l.sfne	r6, r19
	l.bf	.LBB10_3
	l.sfne	r7, r20
	l.bf	.LBB10_3
	l.sfne	r8, r21
	l.bf	.LBB10_3
	l.sfne	r9, r22
	l.bf	.LBB10_3
	l.sfne	r10, r23
	l.bf	.LBB10_3
	l.sfne	r11, r24
	l.bf	.LBB10_3
	l.sfne	r12, r25
	l.bf	.LBB10_3
	l.nop	0
	l.jal	btbl_bitcnt
	l.addi	r14, r1, 0
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.add	r16, r16, r24
	l.add	r3, r3, r11
	l.sfne	r3, r16
	l.bf	.LBB10_3
	l.sfne	r2, r15
	l.bf	.LBB10_3
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
.LBB10_2:                               # %if.end
	l.lwz	r24, 8176(r15)
	l.lwz	r11, -16(r2)
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8184(r14)
	l.lwz	r2, -8(r1)
	l.lwz	r22, 8188(r14)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB10_3:
.LBB10_4:
.Lfunc_end10:
	.size	btbl_bitcnt, .Lfunc_end10-btbl_bitcnt

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
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.sfne	r9, r22
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	-4(r1), r9
	l.sw	8188(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	-8(r1), r2
	l.sw	8184(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r26, r14, -104
	l.addi	r13, r1, -104
	l.srli	r26, r26, 3
	l.srli	r13, r13, 3
	l.slli	r14, r26, 3
	l.slli	r1, r13, 3
	l.movhi	r18, 0
	l.movhi	r5, 0
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	92(r1), r5
	l.sw	8284(r14), r18
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	88(r1), r3
	l.sw	8280(r14), r16
	l.sfne	r4, r17
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	84(r1), r4
	l.sw	8276(r14), r17
	l.addi	r16, r0, -1
	l.addi	r3, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	60(r1), r3
	l.sw	8252(r14), r16
	l.movhi	r16, 32751
	l.movhi	r3, 32751
	l.ori	r16, r16, 65535
	l.ori	r3, r3, 65535
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	56(r1), r3
	l.sw	8248(r14), r16
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	52(r1), r5
	l.sw	8244(r14), r18
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	48(r1), r5
	l.sw	8240(r14), r18
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	44(r1), r5
	l.sw	8236(r14), r18
	l.movhi	r16, hi(main.pBitCntFunc)
	l.movhi	r3, hi(main.pBitCntFunc)
	l.ori	r16, r16, lo(main.pBitCntFunc)
	l.ori	r3, r3, lo(main.pBitCntFunc)
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	16(r1), r3
	l.sw	8208(r14), r16
	l.movhi	r16, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r16, r16, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	12(r1), r3
	l.sw	8204(r14), r16
	l.j	.LBB11_1
	l.nop	0                       # in delay slot
.LBB11_5:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	l.lwz	r16, 8220(r14)
	l.lwz	r3, 28(r1)
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	0(r1), r3
	l.sw	8192(r14), r16
	l.lwz	r16, 8204(r14)
	l.lwz	r3, 12(r1)
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sfne	r2, r15
	l.bf	.LBB11_7
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r4, r17
	l.bf	.LBB11_7
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r6, r19
	l.bf	.LBB11_7
	l.sfne	r7, r20
	l.bf	.LBB11_7
	l.sfne	r8, r21
	l.bf	.LBB11_7
	l.sfne	r9, r22
	l.bf	.LBB11_7
	l.sfne	r10, r23
	l.bf	.LBB11_7
	l.sfne	r11, r24
	l.bf	.LBB11_7
	l.sfne	r12, r25
	l.bf	.LBB11_7
	l.nop	0
	l.jal	printf
	l.addi	r14, r1, 0
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.lwz	r16, 8236(r14)
	l.lwz	r3, 44(r1)
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	44(r1), r3
	l.sw	8236(r14), r16
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	l.lwz	r16, 8236(r14)
	l.lwz	r3, 44(r1)
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfgtsi	r3, 6
	l.bf	.LBB11_6
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	28(r1), r3
	l.sw	8220(r14), r16
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	32(r1), r3
	l.sw	8224(r14), r16
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sfne	r2, r15
	l.bf	.LBB11_7
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r4, r17
	l.bf	.LBB11_7
	l.sfne	r5, r18
	l.bf	.LBB11_7
	l.sfne	r6, r19
	l.bf	.LBB11_7
	l.sfne	r7, r20
	l.bf	.LBB11_7
	l.sfne	r8, r21
	l.bf	.LBB11_7
	l.sfne	r9, r22
	l.bf	.LBB11_7
	l.sfne	r10, r23
	l.bf	.LBB11_7
	l.sfne	r11, r24
	l.bf	.LBB11_7
	l.sfne	r12, r25
	l.bf	.LBB11_7
	l.nop	0
	l.jal	rand
	l.addi	r14, r1, 0
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.sfne	r11, r24
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	24(r1), r11
	l.sw	8216(r14), r24
.LBB11_3:                               # %for.cond1
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.lwz	r16, 8224(r14)
	l.lwz	r3, 32(r1)
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfgtsi	r3, 99
	l.bf	.LBB11_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB11_3 Depth=2
	l.lwz	r16, 8236(r14)
	l.lwz	r3, 44(r1)
	l.slli	r16, r16, 2
	l.slli	r3, r3, 2
	l.lwz	r17, 8208(r14)
	l.lwz	r4, 16(r1)
	l.add	r16, r16, r17
	l.add	r3, r3, r4
	l.lwz	r17, 8192(r16)
	l.lwz	r4, 0(r3)
	l.lwz	r16, 8216(r14)
	l.lwz	r3, 24(r1)

	l.jalr	r4
	l.addi	r22, r9, 0              # CFC

	l.lwz	r16, 8220(r14)
	l.lwz	r3, 28(r1)
	l.add	r16, r16, r24
	l.add	r3, r3, r11
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	28(r1), r3
	l.sw	8220(r14), r16
	l.lwz	r16, 8224(r14)
	l.lwz	r3, 32(r1)
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	32(r1), r3
	l.sw	8224(r14), r16
	l.lwz	r16, 8216(r14)
	l.lwz	r3, 24(r1)
	l.addi	r16, r16, 13
	l.addi	r3, r3, 13
	l.sfne	r3, r16
	l.bf	.LBB11_7
	l.sfne	r1, r14
	l.bf	.LBB11_7
	l.sw	24(r1), r3
	l.sw	8216(r14), r16
	l.j	.LBB11_3
	l.nop	0                       # in delay slot
.LBB11_6:                               # %for.end9
	l.movhi	r24, 0
	l.movhi	r11, 0
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8184(r14)
	l.lwz	r2, -8(r1)
	l.lwz	r22, 8188(r14)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB11_7:
    l.movhi      r3,hi(.LC1) # movsi_high
    l.ori       r3,r3,lo(.LC1) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.LBB11_8:
    l.movhi      r3,hi(.LC2) # movsi_high
    l.ori       r3,r3,lo(.LC2) # movsi_lo_sum
    l.jal       puts # call_value_internal
l.nop	0                       # in delay slot
	l.addi  	r3,r0,1	 # move immediate I
	l.jal   	exit# call_internal
	l.nop			# nop delay slot
.Lfunc_end11:
	.size	main, .Lfunc_end11-main

	.p2align	2
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sfne	r1, r14
	l.bf	.LBB12_7
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -16
	l.addi	r1, r1, -16
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.j	.LBB12_1
	l.nop	0                       # in delay slot
.LBB12_4:                               # %land.end
                                        #   in Loop: Header=BB12_1 Depth=1
	l.andi	r16, r16, 1
	l.andi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfeqi	r3, 0
	l.bf	.LBB12_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.andi	r16, r16, 1
	l.andi	r3, r3, 1
	l.lwz	r17, 8176(r15)
	l.lwz	r4, -16(r2)
	l.add	r16, r17, r16
	l.add	r3, r4, r3
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.srai	r16, r16, 1
	l.srai	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfne	r2, r15
	l.bf	.LBB12_7
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.sfne	r3, r16
	l.bf	.LBB12_7
	l.sfeqi	r3, 0
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	l.lwz	r17, 8180(r15)
	l.lwz	r4, -12(r2)
	l.addi	r16, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r4, r17
	l.bf	.LBB12_7
	l.sfltui	r4, 32
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB12_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.j	.LBB12_4
	l.nop	0                       # in delay slot
.LBB12_6:                               # %for.end
	l.lwz	r24, 8176(r15)
	l.lwz	r11, -16(r2)
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB12_7:
.LBB12_8:
.Lfunc_end12:
	.size	bit_shifter, .Lfunc_end12-bit_shifter

	.hidden	bitstring
	.globl	bitstring
	.p2align	2
	.type	bitstring,@function
bitstring:                              # @bitstring
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sfne	r1, r14
	l.bf	.LBB13_10
	l.sw	-4(r1), r2
	l.sw	8188(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -28
	l.addi	r1, r1, -28
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-8(r2), r3
	l.sw	8184(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-12(r2), r4
	l.sw	8180(r15), r17
	l.sfne	r5, r18
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-16(r2), r5
	l.sw	8176(r15), r18
	l.sfne	r6, r19
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-20(r2), r6
	l.sw	8172(r15), r19
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.srai	r17, r16, 31
	l.srai	r4, r3, 31
	l.srli	r17, r17, 30
	l.srli	r4, r4, 30
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.addi	r18, r0, -4
	l.addi	r5, r0, -4
	l.and	r18, r17, r18
	l.and	r5, r4, r5
	l.srai	r17, r16, 2
	l.srai	r4, r3, 2
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.sub	r20, r16, r18
	l.sub	r7, r3, r5
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.addi	r18, r0, 1
	l.addi	r5, r0, 1
	l.sfne	r7, r20
	l.bf	.LBB13_10
	l.sfeqi	r7, 0
	l.bf	.LBB13_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.movhi	r18, 0
	l.movhi	r5, 0
.LBB13_2:                               # %entry
	l.andi	r18, r18, 1
	l.andi	r5, r5, 1
	l.sub	r17, r17, r18
	l.sub	r4, r4, r5
	l.sub	r17, r19, r17
	l.sub	r4, r6, r4
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-28(r2), r4
	l.sw	8164(r15), r17
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-24(r2), r3
	l.sw	8168(r15), r16
	l.lwz	r16, 8164(r15)
	l.lwz	r3, -28(r2)
	l.lwz	r17, 8168(r15)
	l.lwz	r4, -24(r2)
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfges	r4, r3
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.addi	r17, r16, 1
	l.addi	r4, r3, 1
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-8(r2), r4
	l.sw	8184(r15), r17
	l.addi	r17, r0, 32
	l.addi	r4, r0, 32
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sb	0(r3), r4
	l.sb	8192(r16), r17
	l.lwz	r16, 8168(r15)
	l.lwz	r3, -24(r2)
	l.addi	r16, r16, 1
	l.addi	r3, r3, 1
	l.j	.LBB13_3
	l.nop	0                       # in delay slot
.LBB13_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.addi	r16, r16, -1
	l.addi	r3, r3, -1
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfltsi	r3, 0
	l.bf	.LBB13_9
	l.nop	0                       # in delay slot
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB13_5 Depth=1
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.addi	r17, r16, 1
	l.addi	r4, r3, 1
	l.lwz	r18, 8176(r15)
	l.lwz	r5, -16(r2)
	l.lwz	r19, 8180(r15)
	l.lwz	r6, -12(r2)
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-8(r2), r4
	l.sw	8184(r15), r17
	l.srl	r17, r19, r18
	l.srl	r4, r6, r5
	l.andi	r17, r17, 1
	l.andi	r4, r4, 1
	l.ori	r17, r17, 48
	l.ori	r4, r4, 48
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sb	0(r3), r4
	l.sb	8192(r16), r17
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.srai	r17, r16, 31
	l.srai	r4, r3, 31
	l.srli	r17, r17, 30
	l.srli	r4, r4, 30
	l.add	r17, r16, r17
	l.add	r4, r3, r4
	l.addi	r18, r0, -4
	l.addi	r5, r0, -4
	l.and	r17, r17, r18
	l.and	r4, r4, r5
	l.sub	r16, r16, r17
	l.sub	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfnei	r3, 0
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_5 Depth=1
	l.lwz	r16, 8176(r15)
	l.lwz	r3, -16(r2)
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sfeqi	r3, 0
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB13_5 Depth=1
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.addi	r17, r16, 1
	l.addi	r4, r3, 1
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r2, r15
	l.bf	.LBB13_10
	l.sw	-8(r2), r4
	l.sw	8184(r15), r17
	l.addi	r17, r0, 32
	l.addi	r4, r0, 32
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sb	0(r3), r4
	l.sb	8192(r16), r17
	l.j	.LBB13_5
	l.nop	0                       # in delay slot
.LBB13_9:                               # %while.end
	l.lwz	r16, 8184(r15)
	l.lwz	r3, -8(r2)
	l.movhi	r17, 0
	l.movhi	r4, 0
	l.sfne	r4, r17
	l.bf	.LBB13_10
	l.sfne	r3, r16
	l.bf	.LBB13_10
	l.sb	0(r3), r4
	l.sb	8192(r16), r17
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8188(r14)
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB13_10:
.LBB13_11:
.Lfunc_end13:
	.size	bitstring, .Lfunc_end13-bitstring

	.hidden	bstr_i
	.globl	bstr_i
	.p2align	2
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB14_8
	l.sfne	r1, r14
	l.bf	.LBB14_8
	l.sw	-4(r1), r9
	l.sw	8188(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sfne	r1, r14
	l.bf	.LBB14_8
	l.sw	-8(r1), r2
	l.sw	8184(r14), r15
	l.addi	r15, r14, 0
	l.addi	r2, r1, 0
	l.addi	r14, r14, -24
	l.addi	r1, r1, -24
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-12(r2), r3
	l.sw	8180(r15), r16
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-20(r2), r3
	l.sw	8172(r15), r16
	l.movhi	r16, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r16, r16, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-24(r2), r3
	l.sw	8168(r15), r16
	l.j	.LBB14_1
	l.nop	0                       # in delay slot
.LBB14_5:                               # %land.end
                                        #   in Loop: Header=BB14_1 Depth=1
	l.andi	r16, r16, 1
	l.andi	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfeqi	r3, 0
	l.bf	.LBB14_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.addi	r17, r16, 1
	l.addi	r4, r3, 1
	l.sfne	r4, r17
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-12(r2), r4
	l.sw	8180(r15), r17
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.addi	r16, r16, -48
	l.addi	r3, r3, -48
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-16(r2), r3
	l.sw	8176(r15), r16
	l.lwz	r16, 8172(r15)
	l.lwz	r3, -20(r2)
	l.slli	r16, r16, 1
	l.slli	r3, r3, 1
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-20(r2), r3
	l.sw	8172(r15), r16
	l.lwz	r17, 8176(r15)
	l.lwz	r4, -16(r2)
	l.andi	r17, r17, 1
	l.andi	r4, r4, 1
	l.or	r16, r16, r17
	l.or	r3, r3, r4
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sw	-20(r2), r3
	l.sw	8172(r15), r16
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfeqi	r3, 0
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.bf	.LBB14_5
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_1 Depth=1
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.lbs	r16, 8192(r16)
	l.lbs	r3, 0(r3)
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfeqi	r3, 0
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.bf	.LBB14_5
	l.nop	0                       # in delay slot
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB14_1 Depth=1
	l.lwz	r16, 8180(r15)
	l.lwz	r3, -12(r2)
	l.lbs	r17, 8192(r16)
	l.lbs	r4, 0(r3)
	l.lwz	r16, 8168(r15)
	l.lwz	r3, -24(r2)
	l.nop	200
	l.sfne	r1, r14
	l.bf	.LBB14_8
	l.sfne	r2, r15
	l.bf	.LBB14_8
	l.sfne	r3, r16
	l.bf	.LBB14_8
	l.sfne	r4, r17
	l.bf	.LBB14_8
	l.sfne	r5, r18
	l.bf	.LBB14_8
	l.sfne	r6, r19
	l.bf	.LBB14_8
	l.sfne	r7, r20
	l.bf	.LBB14_8
	l.sfne	r8, r21
	l.bf	.LBB14_8
	l.sfne	r9, r22
	l.bf	.LBB14_8
	l.sfne	r10, r23
	l.bf	.LBB14_8
	l.sfne	r11, r24
	l.bf	.LBB14_8
	l.sfne	r12, r25
	l.bf	.LBB14_8
	l.nop	0
	l.jal	strchr
	l.addi	r14, r1, 0
	l.addi	r25, r12, 0
	l.addi	r24, r11, 0
	l.addi	r23, r10, 0
	l.addi	r22, r9, 0              # CFC
	l.addi	r21, r8, 0              # CFC
	l.addi	r20, r7, 0              # CFC
	l.addi	r19, r6, 0
	l.addi	r18, r5, 0
	l.addi	r17, r4, 0
	l.addi	r16, r3, 0
	l.addi	r15, r2, 0
	l.addi	r14, r1, 0
	l.addi	r26, r13, 0
	l.nop	100
	l.nop	0                       # in delay slot
	l.nop	0                       # in delay slot
	l.addi	r16, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r11, r24
	l.bf	.LBB14_8
	l.sfnei	r11, 0
	l.bf	.LBB14_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB14_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r3, 0
	l.j	.LBB14_5
	l.nop	0                       # in delay slot
.LBB14_7:                               # %while.end
	l.lwz	r24, 8172(r15)
	l.lwz	r11, -20(r2)
	l.addi	r14, r15, 0
	l.addi	r1, r2, 0
	l.lwz	r15, 8184(r14)
	l.lwz	r2, -8(r1)
	l.lwz	r22, 8188(r14)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_8:
.LBB14_9:
.Lfunc_end14:
	.size	bstr_i, .Lfunc_end14-bstr_i

	
	.data
	.type	bits,@object            # @bits
	.p2align	13
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,@object          # @bits.1
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	main.pBitCntFunc,@object # @main.pBitCntFunc
	.p2align	2
main.pBitCntFunc:
	.long	bit_count
	.long	bitcount
	.long	ntbl_bitcnt
	.long	ntbl_bitcount
	.long	BW_btbl_bitcount
	.long	AR_btbl_bitcount
	.long	bit_shifter
	.size	main.pBitCntFunc, 28

	.type	.L.str.7,@object        # @.str.7
	#.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%ld\n"
	.size	.L.str.7, 5

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"01"
	.size	.L.str, 3

	
	
	.type	s_bits,@object            # @bits
	.p2align	13
s_bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	s_bits, 256

	.type	s_bits.1,@object          # @bits.1
s_bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	s_bits.1, 256

	.type	s_main.pBitCntFunc,@object # @main.pBitCntFunc
	.p2align	2
s_main.pBitCntFunc:
	.long	bit_count
	.long	bitcount
	.long	ntbl_bitcnt
	.long	ntbl_bitcount
	.long	BW_btbl_bitcount
	.long	AR_btbl_bitcount
	.long	bit_shifter
	.size	s_main.pBitCntFunc, 28

	.type	s_.L.str.7,@object        # @.str.7
	#.section	.rodata.str1.1,"aMS",@progbits,1
s_.L.str.7:
	.asciz	"%ld\n"
	.size	s_.L.str.7, 5

	.type	s_.L.str,@object          # @.str
s_.L.str:
	.asciz	"01"
	.size	s_.L.str, 3


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
