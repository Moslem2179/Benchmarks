	.text
	.file	"dijkstra_small.LL"
	.hidden	print_path
	.globl	print_path
	.p2align	2
	.type	print_path,@function
print_path:                             # @print_path
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.sw	-12(r2), r14
	l.ori	r14, r4, 0
	l.slli	r4, r14, 3
	l.add	r4, r3, r4
	l.lwz	r4, 4(r4)
	l.sfeqi	r4, 9999
	l.bf	.LBB0_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.jal	print_path
	l.nop	0                       # in delay slot
.LBB0_2:                                # %if.end
	l.sw	0(r1), r14
	l.movhi	r3, hi(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r14, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path

	.hidden	enqueue
	.globl	enqueue
	.p2align	2
	.type	enqueue,@function
enqueue:                                # @enqueue
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.sw	-12(r2), r20
	l.sw	-16(r2), r18
	l.sw	-20(r2), r14
	l.ori	r14, r5, 0
	l.ori	r18, r4, 0
	l.ori	r20, r3, 0
	l.addi	r3, r0, 16
	l.jal	malloc
	l.nop	0                       # in delay slot
	l.sfnei	r11, 0
	l.bf	.LBB1_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.addi	r3, r0, 1
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB1_2:                                # %if.end
	l.movhi	r3, hi(qHead)
	l.ori	r3, r3, lo(qHead)
	l.lwz	r3, 0(r3)
	l.sw	0(r11), r20
	l.sw	4(r11), r18
	l.sw	8(r11), r14
	l.movhi	r4, 0
	l.sw	12(r11), r4
	l.sfeqi	r3, 0
	l.bf	.LBB1_6
	l.nop	0                       # in delay slot
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r4, r3, 0
	l.lwz	r3, 12(r4)
	l.sfnei	r3, 0
	l.bf	.LBB1_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %while.end
	l.sw	12(r4), r11
	l.j	.LBB1_5
	l.nop	0                       # in delay slot
.LBB1_6:                                # %if.then5
	l.movhi	r3, hi(qHead)
	l.ori	r3, r3, lo(qHead)
	l.sw	0(r3), r11
.LBB1_5:                                # %if.end10
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.lwz	r4, 0(r3)
	l.addi	r4, r4, 1
	l.sw	0(r3), r4
	l.lwz	r14, -20(r2)
	l.lwz	r18, -16(r2)
	l.lwz	r20, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end1:
	.size	enqueue, .Lfunc_end1-enqueue

	.hidden	dequeue
	.globl	dequeue
	.p2align	2
	.type	dequeue,@function
dequeue:                                # @dequeue
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.ori	r6, r3, 0
	l.movhi	r3, hi(qHead)
	l.ori	r7, r3, lo(qHead)
	l.lwz	r3, 0(r7)
	l.sfeqi	r3, 0
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.lwz	r8, 0(r3)
	l.sw	0(r6), r8
	l.lwz	r6, 4(r3)
	l.sw	0(r4), r6
	l.lwz	r4, 8(r3)
	l.sw	0(r5), r4
	l.lwz	r4, 12(r3)
	l.sw	0(r7), r4
	l.jal	free
	l.nop	0                       # in delay slot
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.lwz	r4, 0(r3)
	l.addi	r4, r4, -1
	l.sw	0(r3), r4
.LBB2_2:                                # %if.end
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end2:
	.size	dequeue, .Lfunc_end2-dequeue

	.hidden	qcount
	.globl	qcount
	.p2align	2
	.type	qcount,@function
qcount:                                 # @qcount
# BB#0:                                 # %entry
	l.sw	-4(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.lwz	r11, 0(r3)
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount

	.hidden	dijkstra
	.globl	dijkstra
	.p2align	2
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
# BB#0:                                 # %entry
	l.sw	-4(r1), r9
	l.sw	-8(r1), r2
	l.addi	r2, r1, 0
	l.addi	r1, r1, -76
	l.sw	-12(r2), r30
	l.sw	-16(r2), r28
	l.sw	-20(r2), r26
	l.sw	-24(r2), r24
	l.sw	-28(r2), r22
	l.sw	-32(r2), r20
	l.sw	-36(r2), r18
	l.sw	-40(r2), r14
	l.ori	r20, r4, 0
	l.ori	r18, r3, 0
	l.movhi	r3, hi(rgnNodes)
	l.ori	r4, r3, lo(rgnNodes)
	l.addi	r3, r0, 9999
	l.sw	0(r4), r3
	l.movhi	r5, hi(rgnNodes+4)
	l.ori	r5, r5, lo(rgnNodes+4)
	l.sw	0(r5), r3
	l.movhi	r6, hi(rgnNodes+8)
	l.ori	r6, r6, lo(rgnNodes+8)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+12)
	l.ori	r6, r6, lo(rgnNodes+12)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+16)
	l.ori	r6, r6, lo(rgnNodes+16)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+20)
	l.ori	r6, r6, lo(rgnNodes+20)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+24)
	l.ori	r6, r6, lo(rgnNodes+24)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+28)
	l.ori	r6, r6, lo(rgnNodes+28)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+32)
	l.ori	r6, r6, lo(rgnNodes+32)
	l.sw	0(r6), r3
	l.movhi	r6, hi(rgnNodes+36)
	l.ori	r6, r6, lo(rgnNodes+36)
	l.sw	0(r6), r3
	l.movhi	r6, hi(ch)
	l.ori	r6, r6, lo(ch)
	l.addi	r7, r0, 5
	l.sw	0(r6), r7
	l.sfne	r18, r20
	l.bf	.LBB4_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.movhi	r3, hi(.Lstr)
	l.ori	r3, r3, lo(.Lstr)
	l.jal	puts
	l.nop	0                       # in delay slot
	l.j	.LBB4_26
	l.nop	0                       # in delay slot
.LBB4_2:                                # %if.else
	l.slli	r6, r18, 3
	l.add	r4, r6, r4
	l.movhi	r14, 0
	l.sw	0(r4), r14
	l.add	r4, r6, r5
	l.sw	0(r4), r3
	l.addi	r3, r0, 16
	l.jal	malloc
	l.nop	0                       # in delay slot
	l.ori	r3, r11, 0
	l.sfnei	r3, 0
	l.bf	.LBB4_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then.i
	l.addi	r3, r0, 1
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB4_4:                                # %if.end.i
	l.movhi	r4, hi(qHead)
	l.ori	r4, r4, lo(qHead)
	l.lwz	r4, 0(r4)
	l.sw	0(r3), r18
	l.sw	4(r3), r14
	l.addi	r5, r0, 9999
	l.sw	8(r3), r5
	l.sw	12(r3), r14
	l.sfeqi	r4, 0
	l.sw	-72(r2), r20
	l.bf	.LBB4_27
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.cond.i.preheader
	l.ori	r5, r4, 0
.LBB4_6:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r6, r5, 0
	l.lwz	r5, 12(r6)
	l.sfnei	r5, 0
	l.bf	.LBB4_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %while.end.i
	l.sw	12(r6), r3
	l.ori	r3, r4, 0
	l.j	.LBB4_8
	l.nop	0                       # in delay slot
.LBB4_27:                               # %if.then5.i
	l.movhi	r4, hi(qHead)
	l.ori	r4, r4, lo(qHead)
	l.sw	0(r4), r3
.LBB4_8:                                # %enqueue.exit
	l.movhi	r4, hi(g_qCount)
	l.ori	r5, r4, lo(g_qCount)
	l.lwz	r4, 0(r5)
	l.addi	r14, r4, 1
	l.sw	-44(r2), r5
	l.sw	0(r5), r14
	l.sfltsi	r4, 0
	l.bf	.LBB4_25
	l.nop	0                       # in delay slot
# BB#9:                                 # %while.body.preheader
	l.movhi	r6, hi(i)
	l.ori	r4, r6, lo(i)
	l.sw	-52(r2), r4
	l.movhi	r4, hi(iDist)
	l.ori	r4, r4, lo(iDist)
	l.sw	-56(r2), r4
	l.movhi	r4, hi(iNode)
	l.ori	r4, r4, lo(iNode)
	l.sw	-60(r2), r4
	l.movhi	r4, hi(AdjMatrix)
	l.ori	r18, r4, lo(AdjMatrix)
	l.movhi	r4, hi(iCost)
	l.ori	r26, r4, lo(iCost)
	l.movhi	r7, hi(qHead)
	l.ori	r4, r7, lo(qHead)
	l.sw	-64(r2), r4
	l.movhi	r4, hi(rgnNodes)
	l.ori	r28, r4, lo(rgnNodes)
	l.movhi	r4, hi(rgnNodes+4)
	l.ori	r4, r4, lo(rgnNodes+4)
	l.sw	-48(r2), r4
	l.movhi	r4, hi(iPrev)
	l.ori	r4, r4, lo(iPrev)
	l.sw	-68(r2), r4
	l.j	.LBB4_12
	l.nop	0                       # in delay slot
.LBB4_10:                               # %while.condthread-pre-split
                                        #   in Loop: Header=BB4_12 Depth=1
	l.sfltsi	r14, 1
	l.bf	.LBB4_25
	l.nop	0                       # in delay slot
# BB#11:                                # %while.condthread-pre-split.while.body_crit_edge
                                        #   in Loop: Header=BB4_12 Depth=1
	l.lwz	r3, -64(r2)
	l.lwz	r3, 0(r3)
.LBB4_12:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
                                        #       Child Loop BB4_21 Depth 3
	l.sfeqi	r3, 0
	l.bf	.LBB4_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.then.i47
                                        #   in Loop: Header=BB4_12 Depth=1
	l.movhi	r4, hi(iNode)
	l.ori	r4, r4, lo(iNode)
	l.lwz	r5, 0(r3)
	l.sw	0(r4), r5
	l.movhi	r4, hi(iDist)
	l.ori	r4, r4, lo(iDist)
	l.lwz	r5, 4(r3)
	l.sw	0(r4), r5
	l.lwz	r4, 8(r3)
	l.lwz	r5, -68(r2)
	l.sw	0(r5), r4
	l.ori	r4, r7, lo(qHead)
	l.lwz	r5, 12(r3)
	l.sw	0(r4), r5
	l.jal	free
	l.nop	0                       # in delay slot
	l.movhi	r7, hi(qHead)
	l.movhi	r6, hi(i)
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.lwz	r4, 0(r3)
	l.addi	r14, r4, -1
	l.sw	0(r3), r14
.LBB4_14:                               # %for.cond9.preheader
                                        #   in Loop: Header=BB4_12 Depth=1
	l.movhi	r30, 0
	l.lwz	r3, -52(r2)
	l.sw	0(r3), r30
	l.lwz	r3, -56(r2)
	l.lwz	r20, 0(r3)
	l.lwz	r3, -60(r2)
	l.lwz	r24, 0(r3)
.LBB4_15:                               # %for.body11
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_21 Depth 3
	l.slli	r3, r30, 2
	l.muli	r4, r24, 20
	l.add	r3, r4, r3
	l.add	r3, r3, r18
	l.lwz	r3, 0(r3)
	l.sw	0(r26), r3
	l.sfeqi	r3, 9999
	l.bf	.LBB4_24
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then15
                                        #   in Loop: Header=BB4_15 Depth=2
	l.add	r22, r3, r20
	l.slli	r3, r30, 3
	l.add	r4, r3, r28
	l.lwz	r5, 0(r4)
	l.sfeqi	r5, 9999
	l.bf	.LBB4_18
	l.nop	0                       # in delay slot
# BB#17:                                # %if.then15
                                        #   in Loop: Header=BB4_15 Depth=2
	l.sfles	r5, r22
	l.bf	.LBB4_24
	l.nop	0                       # in delay slot
.LBB4_18:                               # %if.then22
                                        #   in Loop: Header=BB4_15 Depth=2
	l.sw	0(r4), r22
	l.lwz	r4, -48(r2)
	l.add	r3, r3, r4
	l.sw	0(r3), r24
	l.addi	r3, r0, 16
	l.jal	malloc
	l.nop	0                       # in delay slot
	l.sfnei	r11, 0
	l.bf	.LBB4_20
	l.nop	0                       # in delay slot
# BB#19:                                # %if.then.i51
	l.addi	r3, r0, 1
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB4_20:                               # %if.end.i57
                                        #   in Loop: Header=BB4_15 Depth=2
	l.movhi	r7, hi(qHead)
	l.ori	r3, r7, lo(qHead)
	l.lwz	r3, 0(r3)
	l.sw	0(r11), r30
	l.sw	4(r11), r22
	l.sw	8(r11), r24
	l.movhi	r4, 0
	l.sw	12(r11), r4
	l.sfeqi	r3, 0
	l.movhi	r6, hi(i)
	l.bf	.LBB4_28
	l.nop	0                       # in delay slot
.LBB4_21:                               # %while.cond.i62
                                        #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.ori	r4, r3, 0
	l.lwz	r3, 12(r4)
	l.sfnei	r3, 0
	l.bf	.LBB4_21
	l.nop	0                       # in delay slot
# BB#22:                                # %while.end.i63
                                        #   in Loop: Header=BB4_15 Depth=2
	l.sw	12(r4), r11
	l.j	.LBB4_23
	l.nop	0                       # in delay slot
.LBB4_28:                               # %if.then5.i58
                                        #   in Loop: Header=BB4_15 Depth=2
	l.ori	r3, r7, lo(qHead)
	l.sw	0(r3), r11
.LBB4_23:                               # %enqueue.exit65
                                        #   in Loop: Header=BB4_15 Depth=2
	l.addi	r14, r14, 1
	l.lwz	r3, -44(r2)
	l.sw	0(r3), r14
.LBB4_24:                               # %for.inc30
                                        #   in Loop: Header=BB4_15 Depth=2
	l.ori	r3, r6, lo(i)
	l.addi	r30, r30, 1
	l.sw	0(r3), r30
	l.sfltsi	r30, 5
	l.bf	.LBB4_15
	l.nop	0                       # in delay slot
	l.j	.LBB4_10
	l.nop	0                       # in delay slot
.LBB4_25:                               # %while.end
	l.movhi	r3, hi(rgnNodes)
	l.ori	r18, r3, lo(rgnNodes)
	l.lwz	r14, -72(r2)
	l.slli	r3, r14, 3
	l.add	r3, r3, r18
	l.lwz	r3, 0(r3)
	l.sw	0(r1), r3
	l.movhi	r3, hi(.L.str.2)
	l.ori	r3, r3, lo(.L.str.2)
	l.jal	printf
	l.nop	0                       # in delay slot
	l.movhi	r3, hi(.L.str.3)
	l.ori	r3, r3, lo(.L.str.3)
	l.jal	printf
	l.nop	0                       # in delay slot
	l.ori	r3, r18, 0
	l.ori	r4, r14, 0
	l.jal	print_path
	l.nop	0                       # in delay slot
	l.addi	r3, r0, 10
	l.jal	putchar
	l.nop	0                       # in delay slot
.LBB4_26:                               # %if.end38
	l.lwz	r14, -40(r2)
	l.lwz	r18, -36(r2)
	l.lwz	r20, -32(r2)
	l.lwz	r22, -28(r2)
	l.lwz	r24, -24(r2)
	l.lwz	r26, -20(r2)
	l.lwz	r28, -16(r2)
	l.lwz	r30, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra

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
	l.addi	r1, r1, -132
	l.sw	-12(r2), r30
	l.sw	-16(r2), r28
	l.sw	-20(r2), r26
	l.sw	-24(r2), r24
	l.sw	-28(r2), r22
	l.sw	-32(r2), r20
	l.sw	-36(r2), r18
	l.sw	-40(r2), r14
	l.addi	r3, r0, 2
	l.movhi	r14, 0
	l.movhi	r4, hi(rgnNodes)
	l.ori	r4, r4, lo(rgnNodes)
	l.sw	-64(r2), r4
	l.movhi	r4, hi(rgnNodes+4)
	l.ori	r4, r4, lo(rgnNodes+4)
	l.sw	-68(r2), r4
	l.movhi	r4, hi(rgnNodes+8)
	l.ori	r4, r4, lo(rgnNodes+8)
	l.sw	-72(r2), r4
	l.movhi	r4, hi(rgnNodes+12)
	l.ori	r4, r4, lo(rgnNodes+12)
	l.sw	-76(r2), r4
	l.movhi	r4, hi(rgnNodes+16)
	l.ori	r4, r4, lo(rgnNodes+16)
	l.sw	-80(r2), r4
	l.movhi	r4, hi(rgnNodes+20)
	l.ori	r4, r4, lo(rgnNodes+20)
	l.sw	-84(r2), r4
	l.movhi	r4, hi(rgnNodes+24)
	l.ori	r4, r4, lo(rgnNodes+24)
	l.sw	-88(r2), r4
	l.movhi	r4, hi(rgnNodes+28)
	l.ori	r4, r4, lo(rgnNodes+28)
	l.sw	-92(r2), r4
	l.movhi	r4, hi(rgnNodes+32)
	l.ori	r4, r4, lo(rgnNodes+32)
	l.sw	-96(r2), r4
	l.movhi	r4, hi(rgnNodes+36)
	l.ori	r4, r4, lo(rgnNodes+36)
	l.sw	-100(r2), r4
	l.movhi	r4, hi(ch)
	l.ori	r4, r4, lo(ch)
	l.sw	-104(r2), r4
	l.movhi	r4, hi(.Lstr)
	l.ori	r4, r4, lo(.Lstr)
	l.sw	-112(r2), r4
	l.movhi	r4, hi(qHead)
	l.ori	r4, r4, lo(qHead)
	l.sw	-116(r2), r4
	l.movhi	r4, hi(g_qCount)
	l.ori	r4, r4, lo(g_qCount)
	l.sw	-120(r2), r4
	l.movhi	r18, hi(i)
	l.ori	r4, r18, lo(i)
	l.sw	-44(r2), r4
	l.movhi	r4, hi(iDist)
	l.ori	r4, r4, lo(iDist)
	l.sw	-48(r2), r4
	l.movhi	r4, hi(iNode)
	l.ori	r4, r4, lo(iNode)
	l.sw	-52(r2), r4
	l.movhi	r4, hi(AdjMatrix)
	l.ori	r22, r4, lo(AdjMatrix)
	l.movhi	r4, hi(iCost)
	l.ori	r24, r4, lo(iCost)
	l.movhi	r4, hi(iPrev)
	l.ori	r4, r4, lo(iPrev)
	l.sw	-56(r2), r4
	l.movhi	r4, hi(.L.str.2)
	l.ori	r4, r4, lo(.L.str.2)
	l.sw	-124(r2), r4
	l.movhi	r4, hi(.L.str.3)
	l.ori	r4, r4, lo(.L.str.3)
	l.sw	-128(r2), r4
	l.movhi	r4, 0
.LBB5_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_13 Depth 2
                                        #       Child Loop BB5_16 Depth 3
                                        #         Child Loop BB5_22 Depth 4
	l.sw	-60(r2), r4
	l.addi	r4, r0, 9999
	l.lwz	r5, -64(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -68(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -72(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -76(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -80(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -84(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -88(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -92(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -96(r2)
	l.sw	0(r5), r4
	l.lwz	r5, -100(r2)
	l.sw	0(r5), r4
	l.addi	r5, r0, 5
	l.lwz	r6, -104(r2)
	l.sw	0(r6), r5
	l.lwz	r6, -60(r2)
	l.div	r5, r3, r5
	l.muli	r5, r5, 5
	l.sub	r3, r3, r5
	l.sfne	r6, r3
	l.bf	.LBB5_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.ori	r20, r3, 0
	l.lwz	r3, -112(r2)
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	puts
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.ori	r3, r20, 0
	l.j	.LBB5_27
	l.nop	0                       # in delay slot
.LBB5_3:                                # %if.else.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.sw	-108(r2), r3
	l.movhi	r3, hi(rgnNodes)
	l.ori	r3, r3, lo(rgnNodes)
	l.slli	r5, r6, 3
	l.add	r3, r5, r3
	l.sw	0(r3), r14
	l.movhi	r3, hi(rgnNodes+4)
	l.ori	r3, r3, lo(rgnNodes+4)
	l.add	r3, r5, r3
	l.sw	0(r3), r4
	l.addi	r3, r0, 16
	l.ori	r20, r6, 0
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	malloc
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.ori	r3, r11, 0
	l.sfnei	r3, 0
	l.bf	.LBB5_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.then.i.i
	l.addi	r3, r0, 1
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB5_5:                                # %if.end.i.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.lwz	r4, -116(r2)
	l.lwz	r4, 0(r4)
	l.sw	0(r3), r20
	l.sw	4(r3), r14
	l.addi	r5, r0, 9999
	l.sw	8(r3), r5
	l.sw	12(r3), r14
	l.sfeqi	r4, 0
	l.bf	.LBB5_29
	l.nop	0                       # in delay slot
# BB#6:                                 # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	l.ori	r5, r4, 0
.LBB5_7:                                # %while.cond.i.i
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r6, r5, 0
	l.lwz	r5, 12(r6)
	l.sfnei	r5, 0
	l.bf	.LBB5_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %while.end.i.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.sw	12(r6), r3
	l.ori	r3, r4, 0
	l.movhi	r6, hi(qHead)
	l.j	.LBB5_9
	l.nop	0                       # in delay slot
.LBB5_29:                               # %if.then5.i.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.movhi	r6, hi(qHead)
	l.ori	r4, r6, lo(qHead)
	l.sw	0(r4), r3
.LBB5_9:                                # %enqueue.exit.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.lwz	r5, -120(r2)
	l.lwz	r4, 0(r5)
	l.addi	r14, r4, 1
	l.sw	0(r5), r14
	l.sfltsi	r4, 0
	l.bf	.LBB5_26
	l.nop	0                       # in delay slot
# BB#10:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	l.j	.LBB5_13
	l.nop	0                       # in delay slot
.LBB5_11:                               # %while.condthread-pre-split.i
                                        #   in Loop: Header=BB5_13 Depth=2
	l.sfltsi	r14, 1
	l.bf	.LBB5_26
	l.nop	0                       # in delay slot
# BB#12:                                # %while.condthread-pre-split.while.body_crit_edge.i
                                        #   in Loop: Header=BB5_13 Depth=2
	l.ori	r3, r6, lo(qHead)
	l.lwz	r3, 0(r3)
.LBB5_13:                               # %while.body.i
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_16 Depth 3
                                        #         Child Loop BB5_22 Depth 4
	l.sfeqi	r3, 0
	l.bf	.LBB5_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.then.i47.i
                                        #   in Loop: Header=BB5_13 Depth=2
	l.movhi	r4, hi(iNode)
	l.ori	r4, r4, lo(iNode)
	l.lwz	r5, 0(r3)
	l.sw	0(r4), r5
	l.movhi	r4, hi(iDist)
	l.ori	r4, r4, lo(iDist)
	l.lwz	r5, 4(r3)
	l.sw	0(r4), r5
	l.lwz	r4, 8(r3)
	l.lwz	r5, -56(r2)
	l.sw	0(r5), r4
	l.ori	r4, r6, lo(qHead)
	l.lwz	r5, 12(r3)
	l.sw	0(r4), r5
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	free
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.movhi	r6, hi(qHead)
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.lwz	r4, 0(r3)
	l.addi	r14, r4, -1
	l.sw	0(r3), r14
.LBB5_15:                               # %for.cond9.preheader.i
                                        #   in Loop: Header=BB5_13 Depth=2
	l.movhi	r26, 0
	l.lwz	r3, -44(r2)
	l.sw	0(r3), r26
	l.lwz	r3, -48(r2)
	l.lwz	r30, 0(r3)
	l.lwz	r3, -52(r2)
	l.lwz	r20, 0(r3)
.LBB5_16:                               # %for.body11.i
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_22 Depth 4
	l.slli	r3, r26, 2
	l.muli	r4, r20, 20
	l.add	r3, r4, r3
	l.add	r3, r3, r22
	l.lwz	r3, 0(r3)
	l.sw	0(r24), r3
	l.sfeqi	r3, 9999
	l.bf	.LBB5_25
	l.nop	0                       # in delay slot
# BB#17:                                # %if.then15.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.add	r28, r3, r30
	l.movhi	r3, hi(rgnNodes)
	l.ori	r4, r3, lo(rgnNodes)
	l.slli	r3, r26, 3
	l.add	r4, r3, r4
	l.lwz	r5, 0(r4)
	l.sfeqi	r5, 9999
	l.bf	.LBB5_19
	l.nop	0                       # in delay slot
# BB#18:                                # %if.then15.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.sfles	r5, r28
	l.bf	.LBB5_25
	l.nop	0                       # in delay slot
.LBB5_19:                               # %if.then22.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.sw	0(r4), r28
	l.movhi	r4, hi(rgnNodes+4)
	l.ori	r4, r4, lo(rgnNodes+4)
	l.add	r3, r3, r4
	l.sw	0(r3), r20
	l.addi	r3, r0, 16
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	malloc
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.sfnei	r11, 0
	l.bf	.LBB5_21
	l.nop	0                       # in delay slot
# BB#20:                                # %if.then.i51.i
	l.addi	r3, r0, 1
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	exit
	l.nop	0                       # in delay slot
.LBB5_21:                               # %if.end.i57.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.movhi	r6, hi(qHead)
	l.ori	r3, r6, lo(qHead)
	l.lwz	r3, 0(r3)
	l.sw	0(r11), r26
	l.sw	4(r11), r28
	l.sw	8(r11), r20
	l.movhi	r4, 0
	l.sw	12(r11), r4
	l.sfeqi	r3, 0
	l.bf	.LBB5_30
	l.nop	0                       # in delay slot
.LBB5_22:                               # %while.cond.i62.i
                                        #   Parent Loop BB5_1 Depth=1
                                        #     Parent Loop BB5_13 Depth=2
                                        #       Parent Loop BB5_16 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.ori	r4, r3, 0
	l.lwz	r3, 12(r4)
	l.sfnei	r3, 0
	l.bf	.LBB5_22
	l.nop	0                       # in delay slot
# BB#23:                                # %while.end.i63.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.sw	12(r4), r11
	l.j	.LBB5_24
	l.nop	0                       # in delay slot
.LBB5_30:                               # %if.then5.i58.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.ori	r3, r6, lo(qHead)
	l.sw	0(r3), r11
.LBB5_24:                               # %enqueue.exit65.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.movhi	r3, hi(g_qCount)
	l.ori	r3, r3, lo(g_qCount)
	l.addi	r14, r14, 1
	l.sw	0(r3), r14
.LBB5_25:                               # %for.inc30.i
                                        #   in Loop: Header=BB5_16 Depth=3
	l.ori	r3, r18, lo(i)
	l.addi	r26, r26, 1
	l.sw	0(r3), r26
	l.sfltsi	r26, 5
	l.bf	.LBB5_16
	l.nop	0                       # in delay slot
	l.j	.LBB5_11
	l.nop	0                       # in delay slot
.LBB5_26:                               # %while.end.i
                                        #   in Loop: Header=BB5_1 Depth=1
	l.movhi	r3, hi(rgnNodes)
	l.ori	r20, r3, lo(rgnNodes)
	l.lwz	r14, -108(r2)
	l.slli	r3, r14, 3
	l.add	r3, r3, r20
	l.lwz	r3, 0(r3)
	l.sw	0(r1), r3
	l.lwz	r3, -124(r2)
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	printf
	l.nop	0                       # in delay slot
	l.lwz	r3, -128(r2)
	l.jal	printf
	l.nop	0                       # in delay slot
l.nop 100                      ### start making possible fault injection candidates
	l.ori	r3, r20, 0
	l.ori	r4, r14, 0
	l.jal	print_path
	l.nop	0                       # in delay slot
l.nop 200                      ### stop making possible fault injection candidates
	l.addi	r3, r0, 10
	l.jal	putchar
	l.nop	0                       # in delay slot

	l.ori	r3, r14, 0
	l.movhi	r14, 0
.LBB5_27:                               # %dijkstra.exit
                                        #   in Loop: Header=BB5_1 Depth=1
	l.lwz	r4, -60(r2)
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.sfltsi	r4, 20
	l.bf	.LBB5_1
	l.nop	0                       # in delay slot
# BB#28:                                # %for.end
	l.movhi	r3, 0
l.nop 200                      ### stop making possible fault injection candidates
	l.jal	exit
	l.nop	0                       # in delay slot
.Lfunc_end5:
	.size	main, .Lfunc_end5-main

	.hidden	qHead                   # @qHead
	.type	qHead,@object
	.section	.bss,"aw",@nobits
	.globl	qHead
	.p2align	2
qHead:
	.long	0
	.size	qHead, 4

	.hidden	AdjMatrix               # @AdjMatrix
	.type	AdjMatrix,@object
	.data
	.globl	AdjMatrix
	.p2align	2
AdjMatrix:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	54                      # 0x36
	.long	12                      # 0xc
	.long	52                      # 0x34
	.long	65                      # 0x41
	.long	30                      # 0x1e
	.long	7                       # 0x7
	.long	20                      # 0x14
	.long	10                      # 0xa
	.long	88                      # 0x58
	.long	89                      # 0x59
	.long	100                     # 0x64
	.long	7                       # 0x7
	.long	40                      # 0x28
	.long	24                      # 0x18
	.long	27                      # 0x1b
	.long	90                      # 0x5a
	.long	77                      # 0x4d
	.long	92                      # 0x5c
	.long	76                      # 0x4c
	.long	54                      # 0x36
	.long	65                      # 0x41
	.long	14                      # 0xe
	.long	89                      # 0x59
	.size	AdjMatrix, 100

	.hidden	g_qCount                # @g_qCount
	.type	g_qCount,@object
	.section	.bss,"aw",@nobits
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                       # 0x0
	.size	g_qCount, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.hidden	ch                      # @ch
	.type	ch,@object
	.comm	ch,4,4
	.hidden	rgnNodes                # @rgnNodes
	.type	rgnNodes,@object
	.comm	rgnNodes,40,4
	.hidden	iNode                   # @iNode
	.type	iNode,@object
	.comm	iNode,4,4
	.hidden	iDist                   # @iDist
	.type	iDist,@object
	.comm	iDist,4,4
	.hidden	iPrev                   # @iPrev
	.type	iPrev,@object
	.comm	iPrev,4,4
	.hidden	i                       # @i
	.type	i,@object
	.comm	i,4,4
	.hidden	iCost                   # @iCost
	.type	iCost,@object
	.comm	iCost,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Shortest path is %d in cost. "
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Path is: "
	.size	.L.str.3, 10

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr:
	.asciz	"Shortest path is 0 in cost. Just stay where you are."
	.size	.Lstr, 53


	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"
	.section	".note.GNU-stack","",@progbits
