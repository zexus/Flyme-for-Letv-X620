.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollChecker"
.end annotation


# instance fields
.field private mIsRunning:Z

.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field private mStart:I

.field private mTo:I

.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    return v0
.end method

.method public constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    .line 1005
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    .line 1004
    return-void
.end method

.method private finish()V
    .locals 5

    .prologue
    .line 1036
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "finish, mCurrentPos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-static {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->reset()V

    .line 1040
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onPtrScrollFinish()V

    .line 1035
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1044
    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    .line 1045
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1046
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method


# virtual methods
.method public abortIfWorking()V
    .locals 2

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "abortIfWorking"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->onPtrScrollAbort()V

    .line 1056
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->reset()V

    .line 1049
    :cond_1
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1009
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    .line 1011
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v6, v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "run --- !mScroller.computeScrollOffset()="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "--- mScroller.isFinished()="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1014
    .local v0, "curY":I
    iget v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    sub-int v1, v0, v3

    .line 1015
    .local v1, "deltaY":I
    sget-boolean v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1016
    if-eqz v1, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v3, v3, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    .line 1018
    const-string/jumbo v6, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s"

    .line 1017
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    .line 1019
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mTo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v7, v5

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v7, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v7, v5

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v7, v5

    .line 1017
    invoke-static {v3, v6, v7}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    :cond_0
    if-nez v2, :cond_4

    .line 1024
    if-eqz v1, :cond_1

    .line 1025
    const-string/jumbo v3, "tryToScrollTo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run -- deltaY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_1
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1028
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-wrap0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;F)V

    .line 1029
    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v3, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1008
    :goto_2
    return-void

    .line 1009
    .end local v0    # "curY":I
    .end local v1    # "deltaY":I
    :cond_2
    const/4 v2, 0x1

    .local v2, "finish":Z
    goto/16 :goto_0

    .end local v2    # "finish":Z
    :cond_3
    move v3, v5

    .line 1011
    goto/16 :goto_1

    .line 1031
    .restart local v0    # "curY":I
    .restart local v1    # "deltaY":I
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->finish()V

    goto :goto_2
.end method

.method public tryToScrollTo(II)V
    .locals 8
    .param p1, "to"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1061
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "tryToScrollTo -- 1"

    invoke-static {v0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->isAlreadyHere(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryToScrollTo -- 2"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPosY()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    .line 1067
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mTo:I

    .line 1068
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    sub-int v4, p1, v0

    .line 1069
    .local v4, "distance":I
    sget-boolean v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "tryToScrollTo: start: %s, distance:%s, to:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mStart:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    invoke-static {v0, v2, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1072
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1074
    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mLastFlingY:I

    .line 1077
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "tryToScrollTo -- 3"

    invoke-static {v0, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v7}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1084
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToScrollTo --- distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--- duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p2, 0x64

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1086
    iput-boolean v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout$ScrollChecker;->mIsRunning:Z

    .line 1060
    return-void
.end method
