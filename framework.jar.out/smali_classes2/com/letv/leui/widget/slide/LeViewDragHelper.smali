.class public Lcom/letv/leui/widget/slide/LeViewDragHelper;
.super Ljava/lang/Object;
.source "LeViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;,
        Lcom/letv/leui/widget/slide/LeViewDragHelper$1;,
        Lcom/letv/leui/widget/slide/LeViewDragHelper$2;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LeViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/letv/leui/widget/slide/LeViewDragHelper$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forParent"    # Landroid/view/ViewGroup;
    .param p3, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 313
    new-instance v2, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;-><init>(Lcom/letv/leui/widget/slide/LeViewDragHelper;)V

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    .line 354
    if-nez p2, :cond_0

    .line 355
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    if-nez p3, :cond_1

    .line 358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_1
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 362
    iput-object p3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .line 364
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 365
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 366
    .local v0, "density":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    .line 368
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    .line 369
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    .line 370
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    .line 371
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/letv/leui/widget/slide/LeViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    .line 353
    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1, "delta"    # F
    .param p2, "odelta"    # F
    .param p3, "pointerId"    # I
    .param p4, "edge"    # I

    .prologue
    const/4 v2, 0x0

    .line 1287
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1288
    .local v0, "absDelta":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1290
    .local v1, "absODelta":F
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-nez v3, :cond_1

    .line 1294
    :cond_0
    return v2

    .line 1291
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1292
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1293
    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-lez v3, :cond_0

    .line 1296
    :cond_2
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1297
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    .line 1298
    return v2

    .line 1300
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_4

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1314
    if-nez p1, :cond_0

    .line 1315
    return v3

    .line 1317
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x1

    .line 1318
    .local v0, "checkHorizontal":Z
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v1, 0x1

    .line 1320
    .local v1, "checkVertical":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1321
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    :goto_2
    return v2

    .line 1317
    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "checkHorizontal":Z
    goto :goto_0

    .line 1318
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "checkVertical":Z
    goto :goto_1

    :cond_3
    move v2, v3

    .line 1321
    goto :goto_2

    .line 1322
    :cond_4
    if-eqz v0, :cond_6

    .line 1323
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :goto_3
    return v2

    :cond_5
    move v2, v3

    goto :goto_3

    .line 1324
    :cond_6
    if-eqz v1, :cond_8

    .line 1325
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    :goto_4
    return v2

    :cond_7
    move v2, v3

    goto :goto_4

    .line 1327
    :cond_8
    return v3
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1, "value"    # F
    .param p2, "absMin"    # F
    .param p3, "absMax"    # F

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 695
    .local v0, "absValue":F
    cmpg-float v1, v0, p2

    if-gez v1, :cond_0

    return v2

    .line 696
    :cond_0
    cmpl-float v1, v0, p3

    if-lez v1, :cond_2

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    .end local p3    # "absMax":F
    :goto_0
    return p3

    .restart local p3    # "absMax":F
    :cond_1
    neg-float p3, p3

    goto :goto_0

    .line 697
    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "absMin"    # I
    .param p3, "absMax"    # I

    .prologue
    const/4 v1, 0x0

    .line 677
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 678
    .local v0, "absValue":I
    if-ge v0, p2, :cond_0

    return v1

    .line 679
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    .end local p3    # "absMax":I
    :goto_0
    return p3

    .restart local p3    # "absMax":I
    :cond_1
    neg-int p3, p3

    goto :goto_0

    .line 680
    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 805
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 806
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 809
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 810
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 811
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 813
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 814
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 815
    iput v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    .line 804
    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1, "pointerId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 819
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 823
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 824
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 825
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 826
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    .line 827
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    .line 828
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    .line 829
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    .line 818
    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1, "delta"    # I
    .param p2, "velocity"    # I
    .param p3, "motionRange"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 645
    if-nez p1, :cond_0

    .line 646
    return v6

    .line 649
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    .line 650
    .local v5, "width":I
    div-int/lit8 v3, v5, 0x2

    .line 651
    .local v3, "halfWidth":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 652
    .local v1, "distanceRatio":F
    int-to-float v6, v3

    int-to-float v7, v3

    .line 653
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    .line 652
    mul-float/2addr v7, v8

    add-float v0, v6, v7

    .line 656
    .local v0, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 657
    if-lez p2, :cond_1

    .line 658
    int-to-float v6, p2

    div-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    .line 663
    .local v2, "duration":I
    :goto_0
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    return v6

    .line 660
    .end local v2    # "duration":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    .line 661
    .local v4, "range":F
    add-float v6, v4, v9

    const/high16 v7, 0x43800000    # 256.0f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .restart local v2    # "duration":I
    goto :goto_0
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "xvel"    # I
    .param p5, "yvel"    # I

    .prologue
    .line 624
    iget v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(III)I

    move-result p4

    .line 625
    iget v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(III)I

    move-result p5

    .line 626
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 627
    .local v2, "absDx":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 628
    .local v3, "absDy":I
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 629
    .local v4, "absXVel":I
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 630
    .local v5, "absYVel":I
    add-int v7, v4, v5

    .line 631
    .local v7, "addedVel":I
    add-int v6, v2, v3

    .line 633
    .local v6, "addedDistance":I
    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 635
    .local v9, "xweight":F
    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 638
    .local v11, "yweight":F
    :goto_1
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    .line 639
    .local v8, "xduration":I
    iget-object v12, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    .line 641
    .local v10, "yduration":I
    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    .line 634
    .end local v8    # "xduration":I
    .end local v9    # "xweight":F
    .end local v10    # "yduration":I
    .end local v11    # "yweight":F
    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    .restart local v9    # "xweight":F
    goto :goto_0

    .line 636
    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    .restart local v11    # "yweight":F
    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 3
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "sensitivity"    # F
    .param p2, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    .line 340
    invoke-static {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v0

    .line 341
    .local v0, "helper":Lcom/letv/leui/widget/slide/LeViewDragHelper;
    iget v1, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    .line 342
    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 2
    .param p0, "forParent"    # Landroid/view/ViewGroup;
    .param p1, "cb"    # Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .prologue
    .line 327
    new-instance v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 794
    iput-boolean v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    .line 795
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 796
    iput-boolean v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    .line 798
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    .line 800
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 793
    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 701
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 702
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 703
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 1435
    move v2, p1

    .line 1436
    .local v2, "clampedX":I
    move v3, p2

    .line 1437
    .local v3, "clampedY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1438
    .local v6, "oldLeft":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1439
    .local v7, "oldTop":I
    if-eqz p3, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    .line 1441
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1443
    :cond_0
    if-eqz p4, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    .line 1445
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1448
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    .line 1449
    :cond_2
    sub-int v4, v2, v6

    .line 1450
    .local v4, "clampedDx":I
    sub-int v5, v3, v7

    .line 1451
    .local v5, "clampedDy":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 1434
    .end local v4    # "clampedDx":I
    .end local v5    # "clampedDy":I
    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1, "pointerId"    # I

    .prologue
    const/4 v9, 0x0

    .line 833
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    .line 834
    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    .line 835
    .local v3, "imx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    .line 836
    .local v4, "imy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    .line 837
    .local v5, "lmx":[F
    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    .line 838
    .local v6, "lmy":[F
    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    .line 839
    .local v2, "iit":[I
    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    .line 840
    .local v0, "edip":[I
    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    .line 842
    .local v1, "edl":[I
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    .line 843
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 844
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 845
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 846
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 847
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 848
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 849
    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 852
    :cond_1
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    .line 853
    iput-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    .line 854
    iput-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    .line 855
    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    .line 856
    iput-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    .line 857
    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    .line 858
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsLocked:[I

    .line 832
    .end local v0    # "edip":[I
    .end local v1    # "edl":[I
    .end local v2    # "iit":[I
    .end local v3    # "imx":[F
    .end local v4    # "imy":[F
    .end local v5    # "lmx":[F
    .end local v6    # "lmy":[F
    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I
    .param p3, "xvel"    # I
    .param p4, "yvel"    # I

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 605
    .local v10, "startLeft":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 606
    .local v6, "startTop":I
    sub-int v2, p1, v10

    .line 607
    .local v2, "dx":I
    sub-int v3, p2, v6

    .line 609
    .local v3, "dy":I
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 611
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 612
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 613
    return v1

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    .line 617
    .local v9, "duration":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 619
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1509
    const/4 v0, 0x0

    .line 1511
    .local v0, "result":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1512
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    .line 1513
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    .line 1514
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    .line 1516
    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1426
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 1427
    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    .line 1425
    invoke-direct {p0, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 1429
    .local v0, "xvel":F
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 1430
    iget v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMaxVelocity:F

    .line 1428
    invoke-direct {p0, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 1431
    .local v1, "yvel":F
    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dispatchViewReleased(FF)V

    .line 1423
    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1, "dx"    # F
    .param p2, "dy"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "dragsStarted":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    const/4 v0, 0x1

    .line 1270
    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1271
    or-int/lit8 v0, v0, 0x4

    .line 1273
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1274
    or-int/lit8 v0, v0, 0x2

    .line 1276
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1277
    or-int/lit8 v0, v0, 0x8

    .line 1280
    :cond_3
    if-eqz v0, :cond_4

    .line 1281
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    .line 1282
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeDragStarted(II)V

    .line 1265
    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 863
    invoke-direct {p0, p3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 864
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 865
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 866
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    .line 867
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    .line 862
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 872
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 873
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 874
    .local v2, "pointerId":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 875
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 876
    .local v4, "y":F
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 877
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    .line 493
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 495
    .local v6, "oldX":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 496
    .local v7, "oldY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 497
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 498
    .local v2, "newX":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 499
    .local v3, "newY":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 501
    .end local v2    # "newX":I
    .end local v3    # "newY":I
    .end local v6    # "oldX":I
    .end local v7    # "oldY":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 491
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIIII)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I

    .prologue
    .line 944
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v9, p1

    .line 945
    check-cast v9, Landroid/view/ViewGroup;

    .line 946
    .local v9, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 947
    .local v11, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 948
    .local v12, "scrollY":I
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 950
    .local v8, "count":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_1

    .line 953
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 954
    .local v2, "child":Landroid/view/View;
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 955
    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v1, v3, :cond_0

    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 956
    add-int v1, p5, v11

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v6, v1, v3

    .line 957
    add-int v1, p6, v12

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v7, v1, v3

    .line 956
    const/4 v3, 0x1

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v1

    .line 954
    if-eqz v1, :cond_0

    .line 958
    const/4 v1, 0x1

    return v1

    .line 950
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 963
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "count":I
    .end local v9    # "group":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v0, p3

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 964
    move/from16 v0, p4

    neg-int v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    .line 963
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 479
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory()V

    .line 481
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 483
    iput-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 477
    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    const-string/jumbo v2, ")"

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 446
    iput p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 447
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 439
    return-void
.end method

.method public checkTouchSlop(I)Z
    .locals 3
    .param p1, "directions"    # I

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    array-length v0, v2

    .line 1346
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1347
    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1348
    const/4 v2, 0x1

    return v2

    .line 1346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public checkTouchSlop(II)Z
    .locals 9
    .param p1, "directions"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1370
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1371
    return v5

    .line 1374
    :cond_0
    and-int/lit8 v6, p1, 0x1

    if-ne v6, v4, :cond_1

    const/4 v0, 0x1

    .line 1375
    .local v0, "checkHorizontal":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    .line 1377
    .local v1, "checkVertical":Z
    :goto_1
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, p2

    sub-float v2, v6, v7

    .line 1378
    .local v2, "dx":F
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    aget v6, v6, p2

    iget-object v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, p2

    sub-float v3, v6, v7

    .line 1380
    .local v3, "dy":F
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1381
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    iget v8, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    :goto_2
    return v4

    .line 1374
    .end local v0    # "checkHorizontal":Z
    .end local v1    # "checkVertical":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "checkHorizontal":Z
    goto :goto_0

    .line 1375
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "checkVertical":Z
    goto :goto_1

    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_3
    move v4, v5

    .line 1381
    goto :goto_2

    .line 1382
    :cond_4
    if-eqz v0, :cond_6

    .line 1383
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    :goto_3
    return v4

    :cond_5
    move v4, v5

    goto :goto_3

    .line 1384
    :cond_6
    if-eqz v1, :cond_8

    .line 1385
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    :goto_4
    return v4

    :cond_7
    move v4, v5

    goto :goto_4

    .line 1387
    :cond_8
    return v5
.end method

.method public continueSettling(Z)Z
    .locals 9
    .param p1, "deferCallbacks"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 742
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_7

    .line 743
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 744
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 749
    :goto_0
    return v7

    .line 747
    :cond_0
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    goto :goto_0

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    .line 752
    .local v6, "keepGoing":Z
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 753
    .local v2, "x":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 754
    .local v3, "y":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v4, v2, v0

    .line 755
    .local v4, "dx":I
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    .line 757
    .local v5, "dy":I
    if-eqz v4, :cond_2

    .line 758
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 760
    :cond_2
    if-eqz v5, :cond_3

    .line 761
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 764
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_5

    .line 765
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 768
    :cond_5
    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    if-ne v2, v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    if-ne v3, v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 772
    const/4 v6, 0x0

    .line 775
    .end local v6    # "keepGoing":Z
    :cond_6
    if-nez v6, :cond_7

    .line 776
    if-eqz p1, :cond_8

    .line 777
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 784
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_7
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v8, :cond_9

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 779
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    :cond_8
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    goto :goto_1

    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    :cond_9
    move v0, v7

    .line 784
    goto :goto_2
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1497
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1498
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1499
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1500
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1502
    return-object v0

    .line 1498
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1505
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public flingCapturedView(IIII)V
    .locals 9
    .param p1, "minLeft"    # I
    .param p2, "minTop"    # I
    .param p3, "maxLeft"    # I
    .param p4, "maxTop"    # I

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 723
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v3, v3

    .line 724
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    float-to-int v4, v4

    move v5, p1

    move v6, p3

    move v7, p2

    move v8, p4

    .line 722
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 727
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 716
    return-void
.end method

.method public getActivePointerId()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isEdgeTouched(I)Z
    .locals 3
    .param p1, "edges"    # I

    .prologue
    .line 1400
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    array-length v0, v2

    .line 1401
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1402
    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isEdgeTouched(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    const/4 v2, 0x1

    return v2

    .line 1401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1406
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isEdgeTouched(II)Z
    .locals 2
    .param p1, "edges"    # I
    .param p2, "pointerId"    # I

    .prologue
    const/4 v0, 0x0

    .line 1420
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isPointerDown(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    aget v1, v1, p2

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPointerDown(I)Z
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mPointersDown:I

    shl-int v3, v0, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1479
    if-nez p1, :cond_0

    .line 1480
    return v0

    .line 1482
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1484
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 1485
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_1

    const/4 v0, 0x1

    .line 1482
    :cond_1
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1107
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1108
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 1110
    .local v4, "actionIndex":I
    if-nez v3, :cond_0

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    .line 1116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1117
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1119
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1121
    packed-switch v3, :pswitch_data_0

    .line 1106
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1123
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 1124
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 1125
    .local v18, "y":F
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1126
    .local v15, "pointerId":I
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1128
    .local v16, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1136
    .local v7, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    .line 1143
    .end local v7    # "edgesTouched":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1144
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1145
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1147
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 1153
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1154
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    .line 1157
    .restart local v7    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1160
    .end local v7    # "edgesTouched":I
    .end local v16    # "toCapture":Landroid/view/View;
    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1171
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1172
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1173
    .local v12, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1174
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1175
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 1176
    .local v10, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 1178
    .local v11, "idy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dragTo(IIII)V

    .line 1188
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1191
    .end local v10    # "idx":I
    .end local v11    # "idy":I
    .end local v12    # "index":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1192
    .local v14, "pointerCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_5

    .line 1193
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1194
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1195
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1196
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    .line 1197
    .local v5, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    .line 1199
    .local v6, "dy":F
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1200
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1211
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v15    # "pointerId":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1205
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v15    # "pointerId":I
    .restart local v17    # "x":F
    .restart local v18    # "y":F
    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    .line 1206
    .restart local v16    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1207
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    .line 1206
    if-nez v19, :cond_5

    .line 1192
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1217
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v8    # "i":I
    .end local v14    # "pointerCount":I
    .end local v15    # "pointerId":I
    .end local v16    # "toCapture":Landroid/view/View;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    .line 1218
    .restart local v15    # "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    .line 1220
    const/4 v13, -0x1

    .line 1221
    .local v13, "newActivePointer":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    .line 1222
    .restart local v14    # "pointerCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v14, :cond_a

    .line 1223
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 1224
    .local v9, "id":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    .line 1222
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1229
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1230
    .restart local v17    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 1231
    .restart local v18    # "y":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    .line 1231
    if-eqz v19, :cond_8

    .line 1233
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 1238
    .end local v9    # "id":I
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->releaseViewForPointerUp()V

    .line 1243
    .end local v8    # "i":I
    .end local v13    # "newActivePointer":I
    .end local v14    # "pointerCount":I
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1248
    .end local v15    # "pointerId":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->releaseViewForPointerUp()V

    .line 1251
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1256
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1257
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->dispatchViewReleased(FF)V

    .line 1259
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 899
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 900
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 901
    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    .line 902
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 903
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 898
    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1, "edgeFlags"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    .line 416
    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1, "minVel"    # F

    .prologue
    .line 381
    iput p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mMinVelocity:F

    .line 380
    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1, "finalLeft"    # I
    .param p2, "finalTop"    # I

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 551
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 549
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public settleViewAt(Landroid/view/View;III)Z
    .locals 8
    .param p1, "capturedView"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-ne v0, v7, :cond_0

    .line 555
    return v5

    .line 557
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 559
    .local v1, "startLeft":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 560
    .local v2, "startTop":I
    sub-int v3, p2, v1

    .line 561
    .local v3, "dx":I
    sub-int v4, p3, v2

    .line 562
    .local v4, "dy":I
    invoke-virtual {p1, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 563
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 564
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 566
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 567
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 568
    return v5

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 572
    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 573
    return v6
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 976
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 978
    .local v5, "actionIndex":I
    if-nez v4, :cond_0

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    .line 984
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 985
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 987
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 989
    packed-switch v4, :pswitch_data_0

    .line 1097
    :cond_2
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/16 v24, 0x1

    :goto_1
    return v24

    .line 991
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    .line 992
    .local v22, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    .line 993
    .local v23, "y":F
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 994
    .local v17, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    .line 996
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 999
    .local v20, "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 1003
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .line 1004
    .local v8, "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1011
    .end local v8    # "edgesTouched":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1012
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    .line 1013
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .line 1015
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveInitialMotion(FFI)V

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v24, v0

    aget v8, v24, v17

    .line 1020
    .restart local v8    # "edgesTouched":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v24, v0

    and-int v24, v24, v8

    if-eqz v24, :cond_2

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mTrackingEdges:I

    move/from16 v25, v0

    and-int v25, v25, v8

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    .line 1023
    .end local v8    # "edgesTouched":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1025
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 1026
    .restart local v20    # "toCapture":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1027
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 1034
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 1037
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 1038
    .local v16, "pointerCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 1039
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1040
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v22

    .line 1041
    .restart local v22    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    .line 1042
    .restart local v23    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v6, v22, v24

    .line 1043
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v24, v0

    aget v24, v24, v17

    sub-float v7, v23, v24

    .line 1045
    .local v7, "dy":F
    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v20

    .line 1046
    .restart local v20    # "toCapture":Landroid/view/View;
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v15

    .line 1047
    :goto_3
    if-eqz v15, :cond_8

    .line 1053
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 1054
    .local v13, "oldLeft":I
    float-to-int v0, v6

    move/from16 v24, v0

    add-int v18, v13, v24

    .line 1055
    .local v18, "targetLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    .line 1056
    float-to-int v0, v6

    move/from16 v25, v0

    .line 1055
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v11

    .line 1057
    .local v11, "newLeft":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1058
    .local v14, "oldTop":I
    float-to-int v0, v7

    move/from16 v24, v0

    add-int v19, v14, v24

    .line 1059
    .local v19, "targetTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    .line 1060
    float-to-int v0, v7

    move/from16 v25, v0

    .line 1059
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v12

    .line 1061
    .local v12, "newTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v9

    .line 1063
    .local v9, "horizontalDragRange":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v21

    .line 1064
    .local v21, "verticalDragRange":I
    if-eqz v9, :cond_5

    if-lez v9, :cond_8

    .line 1065
    if-ne v11, v13, :cond_8

    :cond_5
    if-eqz v21, :cond_6

    .line 1066
    if-lez v21, :cond_8

    if-ne v12, v14, :cond_8

    .line 1080
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v9    # "horizontalDragRange":I
    .end local v11    # "newLeft":I
    .end local v12    # "newTop":I
    .end local v13    # "oldLeft":I
    .end local v14    # "oldTop":I
    .end local v17    # "pointerId":I
    .end local v18    # "targetLeft":I
    .end local v19    # "targetTop":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v21    # "verticalDragRange":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1046
    .restart local v6    # "dx":F
    .restart local v7    # "dy":F
    .restart local v17    # "pointerId":I
    .restart local v20    # "toCapture":Landroid/view/View;
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_7
    const/4 v15, 0x0

    .local v15, "pastSlop":Z
    goto :goto_3

    .line 1070
    .end local v15    # "pastSlop":Z
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v7, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 1076
    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v24

    if-nez v24, :cond_6

    .line 1038
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1085
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v10    # "i":I
    .end local v16    # "pointerCount":I
    .end local v17    # "pointerId":I
    .end local v20    # "toCapture":Landroid/view/View;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :pswitch_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1086
    .restart local v17    # "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    .line 1092
    .end local v17    # "pointerId":I
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->cancel()V

    goto/16 :goto_0

    .line 1097
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 989
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public slideView(Landroid/view/View;III)Z
    .locals 6
    .param p1, "capturedView"    # Landroid/view/View;
    .param p2, "startLeft"    # I
    .param p3, "finalLeft"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 577
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 579
    .local v2, "startTop":I
    sub-int v3, p3, p2

    .line 580
    .local v3, "dx":I
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 582
    if-nez v3, :cond_0

    .line 584
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 585
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 586
    return v4

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v1, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 590
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "finalLeft"    # I
    .param p3, "finalTop"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 519
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 520
    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 522
    invoke-direct {p0, p2, p3, v2, v2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    .line 523
    .local v0, "continueSliding":Z
    if-nez v0, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mDragState:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 526
    iput-object v3, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 529
    :cond_0
    return v0
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1, "toCapture"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    .line 919
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 921
    return v1

    .line 923
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    iput p2, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper;->mActivePointerId:I

    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 926
    return v1

    .line 928
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
