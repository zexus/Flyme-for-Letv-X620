.class final Landroid/widget/TextView$Marquee;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$Marquee$1;,
        Landroid/widget/TextView$Marquee$2;,
        Landroid/widget/TextView$Marquee$3;
    }
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field private mLastAnimationMs:J

.field private mMaxFadeScroll:F

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$Marquee;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$Marquee;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/TextView$Marquee;)B
    .locals 1

    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return v0
.end method

.method static synthetic -set0(Landroid/widget/TextView$Marquee;J)J
    .locals 1

    iput-wide p1, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/widget/TextView$Marquee;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    return p1
.end method

.method static synthetic -set2(Landroid/widget/TextView$Marquee;B)B
    .locals 0

    iput-byte p1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    return p1
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 10567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10555
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10574
    new-instance v1, Landroid/widget/TextView$Marquee$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$1;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10581
    new-instance v1, Landroid/widget/TextView$Marquee$2;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$2;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10590
    new-instance v1, Landroid/widget/TextView$Marquee$3;

    invoke-direct {v1, p0}, Landroid/widget/TextView$Marquee$3;-><init>(Landroid/widget/TextView$Marquee;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 10568
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 10569
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    .line 10570
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 10571
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 10567
    return-void
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 10635
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10636
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10637
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 10634
    :cond_0
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .locals 1

    .prologue
    .line 10671
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method getMaxFadeScroll()F
    .locals 1

    .prologue
    .line 10679
    iget v0, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    return v0
.end method

.method getScroll()F
    .locals 1

    .prologue
    .line 10675
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    return v0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 10691
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStopped()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10695
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method shouldDrawGhost()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10687
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method shouldDrawLeftFade()Z
    .locals 2

    .prologue
    .line 10683
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method start(I)V
    .locals 7
    .param p1, "repeatLimit"    # I

    .prologue
    const/4 v6, 0x0

    .line 10641
    if-nez p1, :cond_0

    .line 10642
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 10643
    return-void

    .line 10645
    :cond_0
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 10646
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10647
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10648
    const/4 v4, 0x1

    iput-byte v4, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10649
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10650
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10651
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    .line 10650
    sub-int v3, v4, v5

    .line 10652
    .local v3, "textWidth":I
    invoke-static {v2}, Landroid/widget/TextView;->-get2(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 10653
    .local v1, "lineWidth":F
    int-to-float v4, v3

    const/high16 v5, 0x40400000    # 3.0f

    div-float v0, v4, v5

    .line 10654
    .local v0, "gap":F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 10655
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 10656
    add-float v4, v1, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 10657
    int-to-float v4, v3

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 10658
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 10661
    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 10662
    iput v0, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 10665
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 10666
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10640
    .end local v0    # "gap":F
    .end local v1    # "lineWidth":F
    .end local v3    # "textWidth":I
    :cond_2
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 10627
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 10628
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10629
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10630
    iget-object v0, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10631
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 10626
    return-void
.end method

.method tick()V
    .locals 10

    .prologue
    .line 10603
    iget-byte v6, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 10604
    return-void

    .line 10607
    :cond_0
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 10609
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 10610
    .local v5, "textView":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10611
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 10612
    .local v0, "currentMs":J
    iget-wide v6, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    sub-long v2, v0, v6

    .line 10613
    .local v2, "deltaMs":J
    iput-wide v0, p0, Landroid/widget/TextView$Marquee;->mLastAnimationMs:J

    .line 10614
    long-to-float v6, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$Marquee;->mPixelsPerSecond:F

    mul-float v4, v6, v7

    .line 10615
    .local v4, "deltaPx":F
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    add-float/2addr v6, v4

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10616
    iget v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v7, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 10617
    iget v6, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v6, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 10618
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v8, 0x4b0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 10622
    :goto_0
    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 10602
    .end local v0    # "currentMs":J
    .end local v2    # "deltaMs":J
    .end local v4    # "deltaPx":F
    :cond_2
    return-void

    .line 10620
    .restart local v0    # "currentMs":J
    .restart local v2    # "deltaMs":J
    .restart local v4    # "deltaPx":F
    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Landroid/widget/TextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
