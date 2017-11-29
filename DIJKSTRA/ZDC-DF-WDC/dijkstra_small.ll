; ModuleID = 'dijkstra_small.c'
source_filename = "dijkstra_small.c"
target datalayout = "E-m:e-p:32:32-i8:8:8-i16:16:16-i64:32:32-f64:32:32-v64:32:32-v128:32:32-a0:0:32-n32"
target triple = "or1k---elf"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._NODE = type { i32, i32 }

@qHead = hidden local_unnamed_addr global %struct._QITEM* null, align 4
@AdjMatrix = hidden local_unnamed_addr global [6 x [6 x i32]] [[6 x i32] [i32 32, i32 32, i32 54, i32 12, i32 52, i32 25], [6 x i32] [i32 65, i32 30, i32 7, i32 20, i32 10, i32 12], [6 x i32] [i32 88, i32 89, i32 100, i32 7, i32 40, i32 42], [6 x i32] [i32 24, i32 27, i32 90, i32 77, i32 92, i32 8], [6 x i32] [i32 76, i32 54, i32 65, i32 14, i32 89, i32 60], [6 x i32] [i32 15, i32 20, i32 8, i32 71, i32 10, i32 16]], align 4
@g_qCount = hidden local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@ch = common hidden local_unnamed_addr global i32 0, align 4
@rgnNodes = common hidden global [6 x %struct._NODE] zeroinitializer, align 4
@iNode = common hidden global i32 0, align 4
@iDist = common hidden global i32 0, align 4
@iPrev = common hidden global i32 0, align 4
@i = common hidden local_unnamed_addr global i32 0, align 4
@iCost = common hidden local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@str = private unnamed_addr constant [53 x i8] c"Shortest path is 0 in cost. Just stay where you are.\00"

; Function Attrs: alwaysinline nounwind
define hidden void @print_path(%struct._NODE* nocapture readonly %rgnNodes, i32 %chNode) local_unnamed_addr #0 {
entry:
  %iPrev = getelementptr inbounds %struct._NODE, %struct._NODE* %rgnNodes, i32 %chNode, i32 1
  %0 = load i32, i32* %iPrev, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 9999
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @print_path(%struct._NODE* nonnull %rgnNodes, i32 %0)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %chNode)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: alwaysinline nounwind
define hidden void @enqueue(i32 %iNode, i32 %iDist, i32 %iPrev) local_unnamed_addr #0 {
entry:
  %call = tail call i8* @malloc(i32 16)
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @exit(i32 1) #6
  unreachable

if.end:                                           ; preds = %entry
  %iNode1 = bitcast i8* %call to i32*
  store i32 %iNode, i32* %iNode1, align 4, !tbaa !8
  %iDist2 = getelementptr inbounds i8, i8* %call, i32 4
  %1 = bitcast i8* %iDist2 to i32*
  store i32 %iDist, i32* %1, align 4, !tbaa !10
  %iPrev3 = getelementptr inbounds i8, i8* %call, i32 8
  %2 = bitcast i8* %iPrev3 to i32*
  store i32 %iPrev, i32* %2, align 4, !tbaa !11
  %qNext = getelementptr inbounds i8, i8* %call, i32 12
  %3 = bitcast i8* %qNext to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %3, align 4, !tbaa !12
  %tobool4 = icmp eq %struct._QITEM* %0, null
  br i1 %tobool4, label %if.then5, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  br label %while.cond

if.then5:                                         ; preds = %if.end
  store i8* %call, i8** bitcast (%struct._QITEM** @qHead to i8**), align 4, !tbaa !6
  br label %if.end10

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %qLast.0 = phi %struct._QITEM* [ %4, %while.cond ], [ %0, %while.cond.preheader ]
  %qNext6 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0, i32 0, i32 3
  %4 = load %struct._QITEM*, %struct._QITEM** %qNext6, align 4, !tbaa !12
  %tobool7 = icmp eq %struct._QITEM* %4, null
  br i1 %tobool7, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = bitcast %struct._QITEM** %qNext6 to i8**
  store i8* %call, i8** %5, align 4, !tbaa !12
  br label %if.end10

if.end10:                                         ; preds = %while.end, %if.then5
  %6 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @g_qCount, align 4, !tbaa !13
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #2

; Function Attrs: alwaysinline nounwind
define hidden void @dequeue(i32* nocapture %piNode, i32* nocapture %piDist, i32* nocapture %piPrev) local_unnamed_addr #0 {
entry:
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool = icmp eq %struct._QITEM* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %iNode = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i32 0, i32 0
  %1 = load i32, i32* %iNode, align 4, !tbaa !8
  store i32 %1, i32* %piNode, align 4, !tbaa !13
  %iDist = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i32 0, i32 1
  %2 = load i32, i32* %iDist, align 4, !tbaa !10
  store i32 %2, i32* %piDist, align 4, !tbaa !13
  %iPrev = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i32 0, i32 2
  %3 = load i32, i32* %iPrev, align 4, !tbaa !11
  store i32 %3, i32* %piPrev, align 4, !tbaa !13
  %qNext = getelementptr inbounds %struct._QITEM, %struct._QITEM* %0, i32 0, i32 3
  %4 = bitcast %struct._QITEM** %qNext to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !12
  store i32 %5, i32* bitcast (%struct._QITEM** @qHead to i32*), align 4, !tbaa !6
  %6 = bitcast %struct._QITEM* %0 to i8*
  tail call void @free(i8* %6)
  %7 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* @g_qCount, align 4, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readonly
define hidden i32 @qcount() local_unnamed_addr #3 {
entry:
  %0 = load i32, i32* @g_qCount, align 4, !tbaa !13
  ret i32 %0
}

; Function Attrs: alwaysinline nounwind
define hidden i32 @dijkstra(i32 %chStart, i32 %chEnd) local_unnamed_addr #0 {
entry:
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 1, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 1, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 2, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 2, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 3, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 3, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 4, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 4, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 5, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 5, i32 1), align 4, !tbaa !1
  store i32 6, i32* @ch, align 4, !tbaa !13
  %cmp2 = icmp eq i32 %chStart, %chEnd
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str, i32 0, i32 0))
  br label %if.end38

if.else:                                          ; preds = %entry
  %iDist4 = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %chStart, i32 0
  store i32 0, i32* %iDist4, align 4, !tbaa !14
  %iPrev6 = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %chStart, i32 1
  store i32 9999, i32* %iPrev6, align 4, !tbaa !1
  %call.i = tail call i8* @malloc(i32 16) #5
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool.i = icmp eq i8* %call.i, null
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  tail call void @exit(i32 1) #6
  unreachable

if.end.i:                                         ; preds = %if.else
  %iNode1.i = bitcast i8* %call.i to i32*
  store i32 %chStart, i32* %iNode1.i, align 4, !tbaa !8
  %iDist2.i = getelementptr inbounds i8, i8* %call.i, i32 4
  %1 = bitcast i8* %iDist2.i to i32*
  store i32 0, i32* %1, align 4, !tbaa !10
  %iPrev3.i = getelementptr inbounds i8, i8* %call.i, i32 8
  %2 = bitcast i8* %iPrev3.i to i32*
  store i32 9999, i32* %2, align 4, !tbaa !11
  %qNext.i = getelementptr inbounds i8, i8* %call.i, i32 12
  %3 = bitcast i8* %qNext.i to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %3, align 4, !tbaa !12
  %tobool4.i = icmp eq %struct._QITEM* %0, null
  br i1 %tobool4.i, label %if.then5.i, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.end.i
  br label %while.cond.i

if.then5.i:                                       ; preds = %if.end.i
  store i8* %call.i, i8** bitcast (%struct._QITEM** @qHead to i8**), align 4, !tbaa !6
  %4 = bitcast i8* %call.i to %struct._QITEM*
  br label %enqueue.exit

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %qLast.0.i = phi %struct._QITEM* [ %5, %while.cond.i ], [ %0, %while.cond.i.preheader ]
  %qNext6.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i, i32 0, i32 3
  %5 = load %struct._QITEM*, %struct._QITEM** %qNext6.i, align 4, !tbaa !12
  %tobool7.i = icmp eq %struct._QITEM* %5, null
  br i1 %tobool7.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %6 = bitcast %struct._QITEM** %qNext6.i to i8**
  store i8* %call.i, i8** %6, align 4, !tbaa !12
  br label %enqueue.exit

enqueue.exit:                                     ; preds = %if.then5.i, %while.end.i
  %7 = phi %struct._QITEM* [ %4, %if.then5.i ], [ %0, %while.end.i ]
  %8 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc.i = add nsw i32 %8, 1
  store i32 %inc.i, i32* @g_qCount, align 4, !tbaa !13
  %cmp867 = icmp sgt i32 %8, -1
  br i1 %cmp867, label %while.body.preheader, label %while.end

while.body.preheader:                             ; preds = %enqueue.exit
  br label %while.body

while.condthread-pre-split:                       ; preds = %for.inc30
  %cmp8 = icmp sgt i32 %.pr, 0
  br i1 %cmp8, label %while.condthread-pre-split.while.body_crit_edge, label %while.end.loopexit

while.condthread-pre-split.while.body_crit_edge:  ; preds = %while.condthread-pre-split
  %.pre = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.condthread-pre-split.while.body_crit_edge
  %9 = phi i32 [ %.pr, %while.condthread-pre-split.while.body_crit_edge ], [ %inc.i, %while.body.preheader ]
  %10 = phi %struct._QITEM* [ %.pre, %while.condthread-pre-split.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %tobool.i45 = icmp eq %struct._QITEM* %10, null
  br i1 %tobool.i45, label %for.cond9.preheader, label %if.then.i47

if.then.i47:                                      ; preds = %while.body
  %iNode.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 0
  %11 = load i32, i32* %iNode.i, align 4, !tbaa !8
  store i32 %11, i32* @iNode, align 4, !tbaa !13
  %iDist.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 1
  %12 = load i32, i32* %iDist.i, align 4, !tbaa !10
  store i32 %12, i32* @iDist, align 4, !tbaa !13
  %iPrev.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 2
  %13 = load i32, i32* %iPrev.i, align 4, !tbaa !11
  store i32 %13, i32* @iPrev, align 4, !tbaa !13
  %qNext.i46 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 3
  %14 = bitcast %struct._QITEM** %qNext.i46 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !12
  store i32 %15, i32* bitcast (%struct._QITEM** @qHead to i32*), align 4, !tbaa !6
  %16 = bitcast %struct._QITEM* %10 to i8*
  tail call void @free(i8* %16) #5
  %17 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec.i = add nsw i32 %17, -1
  store i32 %dec.i, i32* @g_qCount, align 4, !tbaa !13
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %while.body, %if.then.i47
  %18 = phi i32 [ %9, %while.body ], [ %dec.i, %if.then.i47 ]
  store i32 0, i32* @i, align 4, !tbaa !13
  %19 = load i32, i32* @iNode, align 4
  %20 = load i32, i32* @iDist, align 4
  br label %for.body11

for.body11:                                       ; preds = %for.cond9.preheader, %for.inc30
  %21 = phi i32 [ %18, %for.cond9.preheader ], [ %.pr, %for.inc30 ]
  %22 = phi i32 [ 0, %for.cond9.preheader ], [ %inc31, %for.inc30 ]
  %arrayidx13 = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @AdjMatrix, i32 0, i32 %19, i32 %22
  %23 = load i32, i32* %arrayidx13, align 4, !tbaa !13
  store i32 %23, i32* @iCost, align 4, !tbaa !13
  %cmp14 = icmp eq i32 %23, 9999
  br i1 %cmp14, label %for.inc30, label %if.then15

if.then15:                                        ; preds = %for.body11
  %iDist17 = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %22, i32 0
  %24 = load i32, i32* %iDist17, align 4, !tbaa !14
  %cmp18 = icmp eq i32 %24, 9999
  %add = add nsw i32 %20, %23
  %cmp21 = icmp sgt i32 %24, %add
  %or.cond = or i1 %cmp18, %cmp21
  br i1 %or.cond, label %if.then22, label %for.inc30

if.then22:                                        ; preds = %if.then15
  store i32 %add, i32* %iDist17, align 4, !tbaa !14
  %iPrev27 = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %22, i32 1
  store i32 %19, i32* %iPrev27, align 4, !tbaa !1
  %call.i49 = tail call i8* @malloc(i32 16) #5
  %25 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool.i50 = icmp eq i8* %call.i49, null
  br i1 %tobool.i50, label %if.then.i51, label %if.end.i57

if.then.i51:                                      ; preds = %if.then22
  tail call void @exit(i32 1) #6
  unreachable

if.end.i57:                                       ; preds = %if.then22
  %iNode1.i52 = bitcast i8* %call.i49 to i32*
  store i32 %22, i32* %iNode1.i52, align 4, !tbaa !8
  %iDist2.i53 = getelementptr inbounds i8, i8* %call.i49, i32 4
  %26 = bitcast i8* %iDist2.i53 to i32*
  store i32 %add, i32* %26, align 4, !tbaa !10
  %iPrev3.i54 = getelementptr inbounds i8, i8* %call.i49, i32 8
  %27 = bitcast i8* %iPrev3.i54 to i32*
  store i32 %19, i32* %27, align 4, !tbaa !11
  %qNext.i55 = getelementptr inbounds i8, i8* %call.i49, i32 12
  %28 = bitcast i8* %qNext.i55 to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %28, align 4, !tbaa !12
  %tobool4.i56 = icmp eq %struct._QITEM* %25, null
  br i1 %tobool4.i56, label %if.then5.i58, label %while.cond.i62.preheader

while.cond.i62.preheader:                         ; preds = %if.end.i57
  br label %while.cond.i62

if.then5.i58:                                     ; preds = %if.end.i57
  store i8* %call.i49, i8** bitcast (%struct._QITEM** @qHead to i8**), align 4, !tbaa !6
  br label %enqueue.exit65

while.cond.i62:                                   ; preds = %while.cond.i62.preheader, %while.cond.i62
  %qLast.0.i59 = phi %struct._QITEM* [ %29, %while.cond.i62 ], [ %25, %while.cond.i62.preheader ]
  %qNext6.i60 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i59, i32 0, i32 3
  %29 = load %struct._QITEM*, %struct._QITEM** %qNext6.i60, align 4, !tbaa !12
  %tobool7.i61 = icmp eq %struct._QITEM* %29, null
  br i1 %tobool7.i61, label %while.end.i63, label %while.cond.i62

while.end.i63:                                    ; preds = %while.cond.i62
  %30 = bitcast %struct._QITEM** %qNext6.i60 to i8**
  store i8* %call.i49, i8** %30, align 4, !tbaa !12
  br label %enqueue.exit65

enqueue.exit65:                                   ; preds = %if.then5.i58, %while.end.i63
  %inc.i64 = add nsw i32 %21, 1
  store i32 %inc.i64, i32* @g_qCount, align 4, !tbaa !13
  br label %for.inc30

for.inc30:                                        ; preds = %if.then15, %for.body11, %enqueue.exit65
  %.pr = phi i32 [ %21, %if.then15 ], [ %21, %for.body11 ], [ %inc.i64, %enqueue.exit65 ]
  %inc31 = add nsw i32 %22, 1
  store i32 %inc31, i32* @i, align 4, !tbaa !13
  %cmp10 = icmp slt i32 %inc31, 6
  br i1 %cmp10, label %for.body11, label %while.condthread-pre-split

while.end.loopexit:                               ; preds = %while.condthread-pre-split
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %enqueue.exit
  %iDist34 = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %chEnd, i32 0
  %31 = load i32, i32* %iDist34, align 4, !tbaa !14
  %call35 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %31)
  %call36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  tail call void @print_path(%struct._NODE* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0), i32 %chEnd)
  %putchar = tail call i32 @putchar(i32 10) #5
  br label %if.end38

if.end38:                                         ; preds = %while.end, %if.then
  ret i32 undef
}

; Function Attrs: noreturn nounwind
define hidden i32 @main() local_unnamed_addr #4 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %dijkstra.exit
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %dijkstra.exit ]
  %j.06 = phi i32 [ 3, %entry ], [ %inc1, %dijkstra.exit ]
  %rem = srem i32 %j.06, 6
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 1, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 1, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 2, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 2, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 3, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 3, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 4, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 4, i32 1), align 4, !tbaa !1
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 5, i32 0), align 4, !tbaa !14
  store i32 9999, i32* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 5, i32 1), align 4, !tbaa !1
  store i32 6, i32* @ch, align 4, !tbaa !13
  %cmp2.i = icmp eq i32 %i.07, %rem
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %puts.i = tail call i32 @puts(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @str, i32 0, i32 0)) #5
  br label %dijkstra.exit

if.else.i:                                        ; preds = %for.body
  %iDist4.i = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %i.07, i32 0
  store i32 0, i32* %iDist4.i, align 4, !tbaa !14
  %iPrev6.i = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %i.07, i32 1
  store i32 9999, i32* %iPrev6.i, align 4, !tbaa !1
  %call.i.i = tail call i8* @malloc(i32 16) #5
  %0 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool.i.i = icmp eq i8* %call.i.i, null
  br i1 %tobool.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else.i
  tail call void @exit(i32 1) #6
  unreachable

if.end.i.i:                                       ; preds = %if.else.i
  %iNode1.i.i = bitcast i8* %call.i.i to i32*
  store i32 %i.07, i32* %iNode1.i.i, align 4, !tbaa !8
  %iDist2.i.i = getelementptr inbounds i8, i8* %call.i.i, i32 4
  %1 = bitcast i8* %iDist2.i.i to i32*
  store i32 0, i32* %1, align 4, !tbaa !10
  %iPrev3.i.i = getelementptr inbounds i8, i8* %call.i.i, i32 8
  %2 = bitcast i8* %iPrev3.i.i to i32*
  store i32 9999, i32* %2, align 4, !tbaa !11
  %qNext.i.i = getelementptr inbounds i8, i8* %call.i.i, i32 12
  %3 = bitcast i8* %qNext.i.i to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %3, align 4, !tbaa !12
  %tobool4.i.i = icmp eq %struct._QITEM* %0, null
  br i1 %tobool4.i.i, label %if.then5.i.i, label %while.cond.i.i.preheader

while.cond.i.i.preheader:                         ; preds = %if.end.i.i
  br label %while.cond.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  store i8* %call.i.i, i8** bitcast (%struct._QITEM** @qHead to i8**), align 4, !tbaa !6
  %4 = bitcast i8* %call.i.i to %struct._QITEM*
  br label %enqueue.exit.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %while.cond.i.i
  %qLast.0.i.i = phi %struct._QITEM* [ %5, %while.cond.i.i ], [ %0, %while.cond.i.i.preheader ]
  %qNext6.i.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i.i, i32 0, i32 3
  %5 = load %struct._QITEM*, %struct._QITEM** %qNext6.i.i, align 4, !tbaa !12
  %tobool7.i.i = icmp eq %struct._QITEM* %5, null
  br i1 %tobool7.i.i, label %while.end.i.i, label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %6 = bitcast %struct._QITEM** %qNext6.i.i to i8**
  store i8* %call.i.i, i8** %6, align 4, !tbaa !12
  br label %enqueue.exit.i

enqueue.exit.i:                                   ; preds = %while.end.i.i, %if.then5.i.i
  %7 = phi %struct._QITEM* [ %4, %if.then5.i.i ], [ %0, %while.end.i.i ]
  %8 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %inc.i.i = add nsw i32 %8, 1
  store i32 %inc.i.i, i32* @g_qCount, align 4, !tbaa !13
  %cmp867.i = icmp sgt i32 %8, -1
  br i1 %cmp867.i, label %while.body.i.preheader, label %while.end.i

while.body.i.preheader:                           ; preds = %enqueue.exit.i
  br label %while.body.i

while.condthread-pre-split.i:                     ; preds = %for.inc30.i
  %cmp8.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp8.i, label %while.condthread-pre-split.while.body_crit_edge.i, label %while.end.i.loopexit

while.condthread-pre-split.while.body_crit_edge.i: ; preds = %while.condthread-pre-split.i
  %.pre.i = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %while.condthread-pre-split.while.body_crit_edge.i
  %9 = phi i32 [ %.pr.i, %while.condthread-pre-split.while.body_crit_edge.i ], [ %inc.i.i, %while.body.i.preheader ]
  %10 = phi %struct._QITEM* [ %.pre.i, %while.condthread-pre-split.while.body_crit_edge.i ], [ %7, %while.body.i.preheader ]
  %tobool.i45.i = icmp eq %struct._QITEM* %10, null
  br i1 %tobool.i45.i, label %for.cond9.preheader.i, label %if.then.i47.i

if.then.i47.i:                                    ; preds = %while.body.i
  %iNode.i.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 0
  %11 = load i32, i32* %iNode.i.i, align 4, !tbaa !8
  store i32 %11, i32* @iNode, align 4, !tbaa !13
  %iDist.i.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 1
  %12 = load i32, i32* %iDist.i.i, align 4, !tbaa !10
  store i32 %12, i32* @iDist, align 4, !tbaa !13
  %iPrev.i.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 2
  %13 = load i32, i32* %iPrev.i.i, align 4, !tbaa !11
  store i32 %13, i32* @iPrev, align 4, !tbaa !13
  %qNext.i46.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %10, i32 0, i32 3
  %14 = bitcast %struct._QITEM** %qNext.i46.i to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !12
  store i32 %15, i32* bitcast (%struct._QITEM** @qHead to i32*), align 4, !tbaa !6
  %16 = bitcast %struct._QITEM* %10 to i8*
  tail call void @free(i8* %16) #5
  %17 = load i32, i32* @g_qCount, align 4, !tbaa !13
  %dec.i.i = add nsw i32 %17, -1
  store i32 %dec.i.i, i32* @g_qCount, align 4, !tbaa !13
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %if.then.i47.i, %while.body.i
  %18 = phi i32 [ %9, %while.body.i ], [ %dec.i.i, %if.then.i47.i ]
  store i32 0, i32* @i, align 4, !tbaa !13
  %19 = load i32, i32* @iNode, align 4
  %20 = load i32, i32* @iDist, align 4
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc30.i, %for.cond9.preheader.i
  %21 = phi i32 [ %18, %for.cond9.preheader.i ], [ %.pr.i, %for.inc30.i ]
  %22 = phi i32 [ 0, %for.cond9.preheader.i ], [ %inc31.i, %for.inc30.i ]
  %arrayidx13.i = getelementptr inbounds [6 x [6 x i32]], [6 x [6 x i32]]* @AdjMatrix, i32 0, i32 %19, i32 %22
  %23 = load i32, i32* %arrayidx13.i, align 4, !tbaa !13
  store i32 %23, i32* @iCost, align 4, !tbaa !13
  %cmp14.i = icmp eq i32 %23, 9999
  br i1 %cmp14.i, label %for.inc30.i, label %if.then15.i

if.then15.i:                                      ; preds = %for.body11.i
  %iDist17.i = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %22, i32 0
  %24 = load i32, i32* %iDist17.i, align 4, !tbaa !14
  %cmp18.i = icmp eq i32 %24, 9999
  %add.i = add nsw i32 %23, %20
  %cmp21.i = icmp sgt i32 %24, %add.i
  %or.cond.i = or i1 %cmp18.i, %cmp21.i
  br i1 %or.cond.i, label %if.then22.i, label %for.inc30.i

if.then22.i:                                      ; preds = %if.then15.i
  store i32 %add.i, i32* %iDist17.i, align 4, !tbaa !14
  %iPrev27.i = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %22, i32 1
  store i32 %19, i32* %iPrev27.i, align 4, !tbaa !1
  %call.i49.i = tail call i8* @malloc(i32 16) #5
  %25 = load %struct._QITEM*, %struct._QITEM** @qHead, align 4, !tbaa !6
  %tobool.i50.i = icmp eq i8* %call.i49.i, null
  br i1 %tobool.i50.i, label %if.then.i51.i, label %if.end.i57.i

if.then.i51.i:                                    ; preds = %if.then22.i
  tail call void @exit(i32 1) #6
  unreachable

if.end.i57.i:                                     ; preds = %if.then22.i
  %iNode1.i52.i = bitcast i8* %call.i49.i to i32*
  store i32 %22, i32* %iNode1.i52.i, align 4, !tbaa !8
  %iDist2.i53.i = getelementptr inbounds i8, i8* %call.i49.i, i32 4
  %26 = bitcast i8* %iDist2.i53.i to i32*
  store i32 %add.i, i32* %26, align 4, !tbaa !10
  %iPrev3.i54.i = getelementptr inbounds i8, i8* %call.i49.i, i32 8
  %27 = bitcast i8* %iPrev3.i54.i to i32*
  store i32 %19, i32* %27, align 4, !tbaa !11
  %qNext.i55.i = getelementptr inbounds i8, i8* %call.i49.i, i32 12
  %28 = bitcast i8* %qNext.i55.i to %struct._QITEM**
  store %struct._QITEM* null, %struct._QITEM** %28, align 4, !tbaa !12
  %tobool4.i56.i = icmp eq %struct._QITEM* %25, null
  br i1 %tobool4.i56.i, label %if.then5.i58.i, label %while.cond.i62.i.preheader

while.cond.i62.i.preheader:                       ; preds = %if.end.i57.i
  br label %while.cond.i62.i

if.then5.i58.i:                                   ; preds = %if.end.i57.i
  store i8* %call.i49.i, i8** bitcast (%struct._QITEM** @qHead to i8**), align 4, !tbaa !6
  br label %enqueue.exit65.i

while.cond.i62.i:                                 ; preds = %while.cond.i62.i.preheader, %while.cond.i62.i
  %qLast.0.i59.i = phi %struct._QITEM* [ %29, %while.cond.i62.i ], [ %25, %while.cond.i62.i.preheader ]
  %qNext6.i60.i = getelementptr inbounds %struct._QITEM, %struct._QITEM* %qLast.0.i59.i, i32 0, i32 3
  %29 = load %struct._QITEM*, %struct._QITEM** %qNext6.i60.i, align 4, !tbaa !12
  %tobool7.i61.i = icmp eq %struct._QITEM* %29, null
  br i1 %tobool7.i61.i, label %while.end.i63.i, label %while.cond.i62.i

while.end.i63.i:                                  ; preds = %while.cond.i62.i
  %30 = bitcast %struct._QITEM** %qNext6.i60.i to i8**
  store i8* %call.i49.i, i8** %30, align 4, !tbaa !12
  br label %enqueue.exit65.i

enqueue.exit65.i:                                 ; preds = %while.end.i63.i, %if.then5.i58.i
  %inc.i64.i = add nsw i32 %21, 1
  store i32 %inc.i64.i, i32* @g_qCount, align 4, !tbaa !13
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %enqueue.exit65.i, %if.then15.i, %for.body11.i
  %.pr.i = phi i32 [ %21, %if.then15.i ], [ %21, %for.body11.i ], [ %inc.i64.i, %enqueue.exit65.i ]
  %inc31.i = add nuw nsw i32 %22, 1
  store i32 %inc31.i, i32* @i, align 4, !tbaa !13
  %cmp10.i = icmp slt i32 %inc31.i, 6
  br i1 %cmp10.i, label %for.body11.i, label %while.condthread-pre-split.i

while.end.i.loopexit:                             ; preds = %while.condthread-pre-split.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %enqueue.exit.i
  %iDist34.i = getelementptr inbounds [6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 %rem, i32 0
  %31 = load i32, i32* %iDist34.i, align 4, !tbaa !14
  %call35.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %31) #5
  %call36.i = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #5
  tail call void @print_path(%struct._NODE* getelementptr inbounds ([6 x %struct._NODE], [6 x %struct._NODE]* @rgnNodes, i32 0, i32 0), i32 %rem) #5
  %putchar.i = tail call i32 @putchar(i32 10) #5
  br label %dijkstra.exit

dijkstra.exit:                                    ; preds = %if.then.i, %while.end.i
  %inc = add nuw nsw i32 %i.07, 1
  %inc1 = add nsw i32 %rem, 1
  %cmp = icmp slt i32 %inc, 6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %dijkstra.exit
  tail call void @exit(i32 0) #6
  unreachable
}

declare i32 @putchar(i32)

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #5

attributes #0 = { alwaysinline nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #3 = { norecurse nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git 50cd32d7a5a029bf6c68c1b86c1c3cf6e0f3ee46)"}
!1 = !{!2, !3, i64 4}
!2 = !{!"_NODE", !3, i64 0, !3, i64 4}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"_QITEM", !3, i64 0, !3, i64 4, !3, i64 8, !7, i64 12}
!10 = !{!9, !3, i64 4}
!11 = !{!9, !3, i64 8}
!12 = !{!9, !7, i64 12}
!13 = !{!3, !3, i64 0}
!14 = !{!2, !3, i64 0}
