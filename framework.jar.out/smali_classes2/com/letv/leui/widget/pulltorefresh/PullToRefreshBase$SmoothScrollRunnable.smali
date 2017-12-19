.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J
    .param p6, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1613
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    .local p1, "this$0":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1611
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1614
    iput p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1615
    iput p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1616
    invoke-static {p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1617
    iput-wide p4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1618
    iput-object p6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1613
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v8, 0x3e8

    .line 1628
    iget-wide v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 1629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1647
    :goto_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v1, v4, :cond_3

    .line 1648
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1656
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-nez v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    move-result-object v1

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-static {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 1622
    :cond_1
    return-void

    .line 1637
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v2, v4, v6

    .line 1638
    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1640
    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 1641
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1640
    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1642
    .local v0, "deltaY":I
    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1643
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v1, v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 1650
    .end local v0    # "deltaY":I
    .end local v2    # "normalizedTime":J
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v1, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1662
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1663
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1661
    return-void
.end method
