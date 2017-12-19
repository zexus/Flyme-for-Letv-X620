.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final FLING_TICK_DECAY:F = 0.8f

.field private static final LOCAL_DEBUG:Z = false

.field private static final LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private mAccumulatedX:F

.field private mAccumulatedY:F

.field private mActivePointerId:I

.field private mConfigMaxFlingVelocity:F

.field private mConfigMinFlingVelocity:F

.field private mConfigTickDistance:F

.field private mConsumedMovement:Z

.field private mCurrentDeviceId:I

.field private mCurrentDeviceSupported:Z

.field private mCurrentSource:I

.field private final mFlingRunnable:Ljava/lang/Runnable;

.field private mFlingVelocity:F

.field private mFlinging:Z

.field private mLastX:F

.field private mLastY:F

.field private mPendingKeyCode:I

.field private mPendingKeyDownTime:J

.field private mPendingKeyMetaState:I

.field private mPendingKeyRepeatCount:I

.field private mStartX:F

.field private mStartY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -get0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return v0
.end method

.method static synthetic -get1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    return v0
.end method

.method static synthetic -get2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    return v0
.end method

.method static synthetic -set0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)F
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return p1
.end method

.method static synthetic -set1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    const/4 v1, -0x1

    .line 5406
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 5407
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 5356
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 5376
    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 5398
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 5696
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    .line 5406
    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 5690
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    if-eqz v0, :cond_0

    .line 5691
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5692
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 5689
    :cond_0
    return-void
.end method

.method private consumeAccumulatedMovement(JIFII)F
    .locals 1
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    .prologue
    .line 5577
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    .line 5578
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 5579
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    .line 5581
    :cond_0
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    .line 5582
    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 5583
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_1

    .line 5585
    :cond_1
    return p4
.end method

.method private consumeAccumulatedMovement(JI)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5556
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 5557
    .local v0, "absX":F
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 5558
    .local v8, "absY":F
    cmpl-float v1, v0, v8

    if-ltz v1, :cond_1

    .line 5559
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 5560
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 5561
    const/16 v6, 0x15

    const/16 v7, 0x16

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .line 5560
    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 5562
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 5563
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 5555
    :cond_0
    :goto_0
    return-void

    .line 5566
    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v1, v8, v1

    if-ltz v1, :cond_0

    .line 5567
    iget v5, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 5568
    const/16 v6, 0x13

    const/16 v7, 0x14

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .line 5567
    invoke-direct/range {v1 .. v7}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 5569
    iput v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 5570
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0
.end method

.method private finishKeys(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 5543
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    .line 5544
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 5542
    return-void
.end method

.method private finishTracking(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 5548
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-ltz v0, :cond_0

    .line 5549
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 5550
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5551
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5547
    :cond_0
    return-void
.end method

.method private postFling(J)Z
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 5676
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 5677
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    iget v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 5678
    .local v0, "delay":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    add-long v4, p1, v0

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 5684
    const/4 v2, 0x1

    return v2

    .line 5686
    .end local v0    # "delay":J
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private sendKeyDownOrRepeat(JII)V
    .locals 15
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .prologue
    .line 5589
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    move/from16 v0, p3

    if-eq v2, v0, :cond_0

    .line 5590
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 5591
    move-wide/from16 v0, p1

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 5592
    move/from16 v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 5593
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    .line 5597
    :goto_0
    move/from16 v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 5606
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 5607
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    .line 5608
    iget v11, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v12, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 5609
    iget v14, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 5607
    const/4 v8, 0x0

    .line 5609
    const/16 v13, 0x400

    move-wide/from16 v6, p1

    .line 5606
    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5588
    return-void

    .line 5595
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    goto :goto_0
.end method

.method private sendKeyUp(J)V
    .locals 15
    .param p1, "time"    # J

    .prologue
    .line 5613
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v0, :cond_0

    .line 5618
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 5619
    iget v7, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 5620
    iget v10, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 5621
    iget v13, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 5619
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 5620
    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide/from16 v4, p1

    .line 5618
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5622
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 5612
    :cond_0
    return-void
.end method

.method private startFling(JFF)Z
    .locals 3
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    const/4 v2, 0x0

    .line 5633
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    packed-switch v0, :pswitch_data_0

    .line 5668
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 5669
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return v0

    .line 5635
    :pswitch_0
    neg-float v0, p3

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 5636
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5637
    neg-float v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 5640
    :cond_0
    return v2

    .line 5643
    :pswitch_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    .line 5644
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 5645
    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 5648
    :cond_1
    return v2

    .line 5651
    :pswitch_2
    neg-float v0, p4

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 5652
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 5653
    neg-float v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 5656
    :cond_2
    return v2

    .line 5659
    :pswitch_3
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_3

    .line 5660
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 5661
    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    goto :goto_0

    .line 5664
    :cond_3
    return v2

    .line 5633
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5534
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5535
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 5536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 5537
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5538
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 5533
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    .line 5413
    .local v12, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    .line 5414
    .local v7, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v11

    .line 5415
    .local v11, "source":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v7, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v11, :cond_3

    .line 5416
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5417
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 5418
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 5419
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 5420
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 5421
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    .line 5422
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_3

    .line 5425
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v17

    .line 5426
    .local v17, "xRange":Landroid/view/InputDevice$MotionRange;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v20

    .line 5427
    .local v20, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v17, :cond_3

    if-eqz v20, :cond_3

    .line 5428
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 5431
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v18

    .line 5432
    .local v18, "xRes":F
    const/16 v22, 0x0

    cmpg-float v22, v18, v22

    if-gtz v22, :cond_1

    .line 5433
    invoke-virtual/range {v17 .. v17}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v22

    const/high16 v23, 0x42400000    # 48.0f

    div-float v18, v22, v23

    .line 5435
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v21

    .line 5436
    .local v21, "yRes":F
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-gtz v22, :cond_2

    .line 5437
    invoke-virtual/range {v20 .. v20}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v22

    const/high16 v23, 0x42400000    # 48.0f

    div-float v21, v22, v23

    .line 5439
    :cond_2
    add-float v22, v18, v21

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v10, v22, v23

    .line 5442
    .local v10, "nominalRes":F
    const/high16 v22, 0x41400000    # 12.0f

    mul-float v22, v22, v10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    .line 5444
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    move/from16 v22, v0

    const/high16 v23, 0x40c00000    # 6.0f

    mul-float v22, v22, v23

    .line 5443
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    .line 5446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    move/from16 v22, v0

    const/high16 v23, 0x41a00000    # 20.0f

    mul-float v22, v22, v23

    .line 5445
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    .line 5458
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v10    # "nominalRes":F
    .end local v17    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v18    # "xRes":F
    .end local v20    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v21    # "yRes":F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 5459
    return-void

    .line 5463
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 5464
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    .line 5410
    :cond_5
    :goto_0
    return-void

    .line 5466
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 5467
    .local v5, "caughtFling":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5468
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 5469
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 5470
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5472
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    .line 5473
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    .line 5474
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 5475
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 5476
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 5477
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 5481
    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0

    .line 5487
    .end local v5    # "caughtFling":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v22, v0

    if-ltz v22, :cond_5

    .line 5490
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 5491
    .local v8, "index":I
    if-gez v8, :cond_6

    .line 5492
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5493
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 5497
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5498
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 5499
    .local v16, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 5500
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    move/from16 v23, v0

    sub-float v23, v16, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 5501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    move/from16 v23, v0

    sub-float v23, v19, v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 5502
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 5503
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 5506
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 5507
    .local v9, "metaState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v9}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    .line 5510
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_5

    .line 5511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 5513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    move/from16 v23, v0

    const/16 v24, 0x3e8

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v14

    .line 5515
    .local v14, "vx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v15

    .line 5516
    .local v15, "vy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    move-result v22

    if-nez v22, :cond_7

    .line 5517
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5520
    .end local v14    # "vx":F
    .end local v15    # "vy":F
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 5526
    .end local v8    # "index":I
    .end local v9    # "metaState":I
    .end local v16    # "x":F
    .end local v19    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 5527
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 5464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
