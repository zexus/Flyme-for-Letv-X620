.class public Lcom/letv/leui/widget/BaseSwipeHelper;
.super Ljava/lang/Object;
.source "BaseSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/BaseSwipeHelper$BaseCallback;,
        Lcom/letv/leui/widget/BaseSwipeHelper$Callback;,
        Lcom/letv/leui/widget/BaseSwipeHelper$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIM_TIME:I = 0x118

.field public static final EVENT_SWIPING_FIXED:I = 0x0

.field public static final EVENT_SWIPING_LEFT:I = 0x1

.field public static final EVENT_SWIPING_RIGHT:I = 0x2

.field public static final SWIPE_ACTION_DISMISS:I = 0x1

.field public static final SWIPE_ACTION_NONE:I = 0x3

.field public static final SWIPE_ACTION_REVEAL:I = 0x0

.field public static final SWIPE_ACTION_SWITCH:I = 0x2

.field public static final SWIPE_MODE_BOTH:I = 0x1

.field public static final SWIPE_MODE_DEFAULT:I = -0x1

.field public static final SWIPE_MODE_LEFT:I = 0x3

.field public static final SWIPE_MODE_NONE:I = 0x0

.field public static final SWIPE_MODE_RIGHT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "SWPIE_HELPER"

.field private static final VELOCITY_FACTOR:F = 1.5f

.field public static final VIEW_SWIPED_FIXED:I = 0x0

.field public static final VIEW_SWIPED_LEFT:I = 0x1

.field public static final VIEW_SWIPED_RIGHT:I = 0x2

.field protected static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationTime:J

.field protected mBackView:Landroid/view/View;

.field private mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

.field private mEventDownX:F

.field private mEventPreEventX:F

.field private mEventStartX:F

.field private mEventSwipingDirection:I

.field protected mFrontView:Landroid/view/View;

.field private mIsAnimating:Z

.field private mIsOverOffsetEnabled:Z

.field private mIsSwipeEnable:Z

.field protected mIsSwitch:Z

.field protected mLeftOffset:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field protected mOpened:Z

.field protected mOpenedRight:Z

.field private mPagingSlop:I

.field protected mPaused:Z

.field protected mRightOffset:F

.field private mStartBackViewX:F

.field private mStartFrontViewX:F

.field private mStartToLeftLock:Z

.field private mStartToRightLock:Z

.field protected mSwipeActionLeft:I

.field protected mSwipeActionRight:I

.field protected mSwipeCurrentAction:I

.field protected mSwipeLeftSwitchLine:F

.field private mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

.field protected mSwipeMode:I

.field protected mSwipeRightSwitchLine:F

.field protected mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwipedDirection:I

.field protected mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/letv/leui/widget/BaseSwipeHelper$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 72
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 73
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 77
    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 79
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 80
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 81
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 82
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 95
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 104
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 109
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 118
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 120
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "callback"    # Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 71
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 72
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 73
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 77
    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 79
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 80
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 81
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 82
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 95
    const-wide/16 v0, 0x118

    iput-wide v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 104
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 109
    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 118
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 120
    iput v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V

    .line 132
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/content/res/TypedArray;Lcom/letv/leui/widget/BaseSwipeHelper$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typedArray"    # Landroid/content/res/TypedArray;
    .param p3, "callback"    # Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 137
    if-eqz p2, :cond_0

    .line 138
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 139
    invoke-virtual {p2, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 140
    const/4 v5, 0x2

    invoke-virtual {p2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 145
    invoke-virtual {p2, v7, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 146
    .local v2, "tempLeftOffset":F
    const/4 v5, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 148
    .local v3, "tempRightOffset":F
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 149
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 150
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 151
    .local v4, "width":I
    int-to-float v5, v4

    sub-float/2addr v5, v2

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 152
    int-to-float v5, v4

    sub-float/2addr v5, v3

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 155
    const/4 v5, 0x5

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 156
    const/4 v5, 0x6

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 157
    const/16 v5, 0x8

    const/16 v6, 0x118

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 158
    const/16 v5, 0xe

    invoke-virtual {p2, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 161
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "tempLeftOffset":F
    .end local v3    # "tempRightOffset":F
    .end local v4    # "width":I
    :cond_0
    iput-object p3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    .line 163
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 164
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMinFlingVelocity:I

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMaxFlingVelocity:I

    .line 136
    return-void
.end method

.method private move(F)V
    .locals 10
    .param p1, "deltaX"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 713
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onMove(F)V

    .line 716
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v5, :cond_0

    .line 717
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 718
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v9, v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 722
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v2, :cond_1

    .line 723
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v2, :pswitch_data_0

    .line 771
    :cond_1
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v8, :cond_2

    .line 772
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    packed-switch v2, :pswitch_data_1

    .line 712
    :cond_2
    :goto_1
    return-void

    .line 725
    :pswitch_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 728
    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v2, v3, :cond_5

    .line 729
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v2, v5, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v2, v5, :cond_7

    .line 730
    :cond_4
    cmpl-float v2, p1, v6

    if-lez v2, :cond_6

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_6

    .line 731
    const/4 p1, 0x0

    .line 743
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 732
    :cond_6
    cmpg-float v2, p1, v6

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_5

    .line 733
    const/4 p1, 0x0

    goto :goto_2

    .line 736
    :cond_7
    cmpg-float v2, p1, v6

    if-gez v2, :cond_8

    .line 737
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    .line 739
    :cond_8
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_2

    .line 746
    :pswitch_1
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float v0, v2, v3

    .line 747
    .local v0, "leftThreshold":F
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_a

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_a

    .line 753
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 750
    :cond_a
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v8, :cond_9

    cmpl-float v2, p1, v6

    if-lez v2, :cond_9

    .line 751
    const/4 p1, 0x0

    goto :goto_3

    .line 756
    .end local v0    # "leftThreshold":F
    :pswitch_2
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float v1, v2, v3

    .line 757
    .local v1, "rightThreshold":F
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v8, :cond_c

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_c

    .line 763
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_0

    .line 760
    :cond_c
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_b

    cmpg-float v2, p1, v6

    if-gez v2, :cond_b

    .line 761
    const/4 p1, 0x0

    goto :goto_4

    .line 774
    .end local v1    # "rightThreshold":F
    :pswitch_3
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_d

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_d

    .line 777
    :cond_d
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-eq v2, v3, :cond_f

    .line 778
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    if-eq v2, v5, :cond_e

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    if-ne v2, v5, :cond_13

    .line 779
    :cond_e
    cmpl-float v2, p1, v6

    if-lez v2, :cond_12

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_12

    .line 780
    const/4 p1, 0x0

    .line 793
    :cond_f
    :goto_5
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-ne v2, v8, :cond_11

    .line 794
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_15

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_15

    .line 795
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_10

    .line 796
    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 797
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 806
    :cond_10
    :goto_6
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_16

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_16

    .line 807
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_11

    .line 808
    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 809
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 819
    :cond_11
    :goto_7
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    .line 781
    :cond_12
    cmpg-float v2, p1, v6

    if-gez v2, :cond_f

    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_f

    .line 782
    const/4 p1, 0x0

    goto :goto_5

    .line 785
    :cond_13
    cmpg-float v2, p1, v6

    if-gez v2, :cond_14

    .line 786
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_5

    .line 788
    :cond_14
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_5

    .line 799
    :cond_15
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_10

    .line 800
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_10

    .line 801
    iput-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 802
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_6

    .line 811
    :cond_16
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_11

    .line 812
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_11

    .line 813
    iput-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 814
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_7

    .line 822
    :pswitch_4
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_19

    .line 823
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_17

    .line 824
    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 825
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 834
    :cond_17
    :goto_8
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v8, :cond_18

    cmpl-float v2, p1, v6

    if-lez v2, :cond_18

    .line 835
    const/4 p1, 0x0

    .line 837
    :cond_18
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    .line 827
    :cond_19
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_17

    .line 828
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_17

    .line 829
    iput-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 830
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_8

    .line 840
    :pswitch_5
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1c

    .line 841
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-nez v2, :cond_1a

    .line 842
    iput-boolean v5, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 843
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    .line 852
    :cond_1a
    :goto_9
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    if-ne v2, v5, :cond_1b

    cmpg-float v2, p1, v6

    if-gez v2, :cond_1b

    .line 853
    const/4 p1, 0x0

    .line 855
    :cond_1b
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_1

    .line 845
    :cond_1c
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1a

    .line 846
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    if-eqz v2, :cond_1a

    .line 847
    iput-boolean v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 848
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeSwitching(Z)V

    goto :goto_9

    .line 723
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 772
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private resetEventValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 695
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    .line 696
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 697
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 698
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 699
    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 700
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    .line 701
    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 702
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    .line 703
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 704
    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwitch:Z

    .line 694
    return-void
.end method


# virtual methods
.method public closeAnimate()V
    .locals 3

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 183
    :cond_0
    return-void
.end method

.method public closeNoAnimate()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onSwipeRevealed(ZZ)V

    .line 194
    :cond_0
    return-void
.end method

.method protected closeOpenedItem(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x1

    .line 1223
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v1, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1226
    .local v0, "absTX":F
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v1, :cond_0

    int-to-float v1, p1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 1228
    return v3

    .line 1230
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-nez v1, :cond_1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1231
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 1232
    return v3

    .line 1235
    .end local v0    # "absTX":F
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected generateAnimate(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 1008
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    if-nez v0, :cond_0

    .line 1009
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 1011
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateDismissAnimate(Landroid/view/View;ZZ)V

    .line 1006
    :cond_1
    return-void
.end method

.method protected generateDismissAnimate(Landroid/view/View;ZZ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 1024
    if-nez p1, :cond_0

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1029
    iget-object v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v2}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1032
    :cond_1
    const/4 v1, 0x0

    .line 1033
    .local v1, "moveTo":I
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v2, :cond_5

    .line 1034
    if-nez p2, :cond_2

    .line 1035
    iget-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 1043
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1044
    .local v0, "alpha":I
    if-eqz p2, :cond_3

    .line 1045
    const/4 v0, 0x0

    .line 1048
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1049
    int-to-float v3, v1

    .line 1048
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1050
    int-to-float v3, v0

    .line 1048
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1051
    sget-object v3, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 1048
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1052
    iget-wide v4, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 1048
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1053
    new-instance v3, Lcom/letv/leui/widget/BaseSwipeHelper$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$2;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZLandroid/view/View;)V

    .line 1048
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1059
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 1023
    return-void

    .line 1035
    .end local v0    # "alpha":I
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0

    .line 1038
    :cond_5
    if-eqz p2, :cond_2

    .line 1039
    if-eqz p3, :cond_6

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v2, v3

    float-to-int v1, v2

    goto :goto_0
.end method

.method protected generateRevealAnimate(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "swap"    # Z
    .param p3, "swapRight"    # Z

    .prologue
    .line 1070
    if-nez p1, :cond_0

    .line 1071
    return-void

    .line 1074
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v1}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1078
    :cond_1
    const/4 v0, 0x0

    .line 1079
    .local v0, "moveTo":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v1, :cond_4

    .line 1080
    if-nez p2, :cond_2

    .line 1081
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 1089
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1090
    int-to-float v2, v0

    .line 1089
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1091
    iget-wide v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 1089
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1092
    sget-object v2, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 1089
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1093
    new-instance v2, Lcom/letv/leui/widget/BaseSwipeHelper$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/letv/leui/widget/BaseSwipeHelper$3;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;ZZ)V

    .line 1089
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1099
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 1069
    return-void

    .line 1081
    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 1084
    :cond_4
    if-eqz p2, :cond_2

    .line 1085
    if-eqz p3, :cond_5

    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method protected generateSwitchAnimate(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isSwitched"    # Z

    .prologue
    .line 1110
    if-nez p1, :cond_0

    .line 1111
    return-void

    .line 1114
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 1118
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1119
    const/4 v1, 0x0

    .line 1118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1120
    iget-wide v2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mAnimationTime:J

    .line 1118
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1121
    sget-object v1, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 1118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1122
    new-instance v1, Lcom/letv/leui/widget/BaseSwipeHelper$4;

    invoke-direct {v1, p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper$4;-><init>(Lcom/letv/leui/widget/BaseSwipeHelper;Z)V

    .line 1118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 1109
    return-void
.end method

.method protected getBackView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getBackView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1249
    :cond_0
    return-object v1
.end method

.method protected getFrontView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1239
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getFrontView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_0
    return-object v1
.end method

.method public getSwipeActionLeft()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    return v0
.end method

.method public getSwipeActionRight()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    return v0
.end method

.method public getSwipeListener()Lcom/letv/leui/widget/SwipeListener;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    return-object v0
.end method

.method public getSwipeSwitchListener()Lcom/letv/leui/widget/SwipeSwitchListener;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    return v0
.end method

.method protected isSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    return v0
.end method

.method protected isSwipeTouchEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1162
    iget v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onChangeSwipeMode()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/SwipeListener;->onChangeSwipeMode()I

    move-result v0

    return v0

    .line 947
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected onClosed(Z)V
    .locals 1
    .param p1, "fromRight"    # Z

    .prologue
    .line 921
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onClosed(Z)V

    .line 920
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 341
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 342
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 343
    .local v5, "y":F
    const/4 v3, 0x0

    .line 345
    .local v3, "intercept":Z
    if-nez v0, :cond_0

    .line 347
    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {p0, v8, v6, v7}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewClickable(ZII)Z

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    packed-switch v0, :pswitch_data_0

    .line 409
    :cond_1
    :goto_0
    return v3

    .line 353
    :pswitch_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 354
    :cond_2
    return v9

    .line 357
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getFrontView()Landroid/view/View;

    move-result-object v2

    .line 358
    .local v2, "fView":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 359
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->setFrontView(Landroid/view/View;)V

    .line 362
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "bView":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 364
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackView(Landroid/view/View;)V

    .line 367
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    .line 369
    iget v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 370
    iget v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventDownX:F

    iput v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 371
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 378
    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {p0, v6, v7, v8}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    .line 379
    iget-object v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 380
    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v6, :cond_6

    .line 381
    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {p0, v6, v7, v9}, Lcom/letv/leui/widget/BaseSwipeHelper;->setBackViewChildFocusable(IIZ)V

    .line 382
    iget-object v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 385
    :cond_6
    const/4 v3, 0x0

    .line 386
    goto :goto_0

    .line 390
    .end local v1    # "bView":Landroid/view/View;
    .end local v2    # "fView":Landroid/view/View;
    :pswitch_1
    iget v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    .line 391
    const/4 v3, 0x1

    goto :goto_0

    .line 393
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-direct {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    .line 400
    iget-boolean v6, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v6, :cond_8

    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 401
    return v8

    .line 403
    :cond_8
    const/4 v3, 0x0

    .line 404
    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMove(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 932
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onMove(F)V

    .line 931
    :cond_0
    return-void
.end method

.method protected onOpened(Z)V
    .locals 1
    .param p1, "toRight"    # Z

    .prologue
    .line 910
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onOpened(Z)V

    .line 909
    :cond_0
    return-void
.end method

.method protected onStartClose(Z)V
    .locals 1
    .param p1, "right"    # Z

    .prologue
    .line 881
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeListener;->onStartClose(Z)V

    .line 880
    :cond_0
    return-void
.end method

.method protected onStartOpen(IZ)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "right"    # Z

    .prologue
    .line 870
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    invoke-interface {v0, p1, p2}, Lcom/letv/leui/widget/SwipeListener;->onStartOpen(IZ)V

    .line 869
    :cond_0
    return-void
.end method

.method protected onSwipeDismissed(ZLandroid/view/View;)V
    .locals 1
    .param p1, "swap"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell()V

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 953
    return-void
.end method

.method protected onSwipeRevealed(ZZ)V
    .locals 2
    .param p1, "swap"    # Z
    .param p2, "swapRight"    # Z

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    .line 963
    .local v0, "aux":Z
    if-eqz p1, :cond_0

    .line 964
    iget-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 965
    .local v0, "aux":Z
    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    .line 968
    .end local v0    # "aux":Z
    :cond_0
    if-eqz v0, :cond_2

    .line 969
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onOpened(Z)V

    .line 970
    iput-boolean p2, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    .line 974
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell()V

    .line 975
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 961
    return-void

    .line 964
    .local v0, "aux":Z
    :cond_1
    const/4 v0, 0x1

    .local v0, "aux":Z
    goto :goto_0

    .line 972
    .end local v0    # "aux":Z
    :cond_2
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onClosed(Z)V

    goto :goto_1
.end method

.method protected onSwipeSwitched(Z)V
    .locals 1
    .param p1, "isSwitched"    # Z

    .prologue
    .line 991
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitched(Z)V

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetCell()V

    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsAnimating:Z

    .line 990
    return-void
.end method

.method protected onSwipeSwitching(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/SwipeSwitchListener;->onSwitching(Z)V

    .line 981
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Recycle"
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 415
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 416
    .local v20, "x":I
    const/4 v8, 0x0

    .line 420
    .local v8, "deltaX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isSwipeTouchEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    .line 421
    const/16 v21, 0x0

    return v21

    .line 424
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->getSwipeViewWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    .line 428
    :cond_1
    const/4 v9, 0x0

    .line 429
    .local v9, "eventFrontViewX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v9

    .line 432
    :cond_2
    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_4

    .line 433
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    .line 440
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 687
    :cond_3
    :goto_1
    const/16 v21, 0x0

    return v21

    .line 434
    :cond_4
    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gez v21, :cond_5

    .line 435
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_0

    .line 437
    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    goto :goto_0

    .line 442
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 443
    :cond_6
    const/16 v21, 0x1

    return v21

    .line 446
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeOpenedItem(I)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 447
    const/16 v21, 0x1

    return v21

    .line 450
    :cond_8
    const/16 v21, 0x1

    return v21

    .line 453
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 458
    const/4 v12, 0x0

    .line 460
    .local v12, "isToCloseOpenedItem":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_a

    .line 461
    const/4 v12, 0x1

    .line 466
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    if-eqz v12, :cond_b

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->closeAnimate()V

    .line 468
    const/16 v21, 0x0

    return v21

    .line 462
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9

    .line 463
    const/4 v12, 0x1

    goto :goto_2

    .line 471
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 480
    .local v18, "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 482
    .local v19, "velocityY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_c

    .line 484
    const/16 v18, 0x0

    .line 486
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_d

    .line 487
    const/16 v18, 0x0

    .line 491
    :cond_d
    const/4 v14, 0x0

    .line 492
    .local v14, "swap":Z
    const/4 v15, 0x0

    .line 493
    .local v15, "swapRight":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMinFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v21, v18

    if-gtz v21, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mMaxFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v18, v21

    if-gtz v21, :cond_11

    const/high16 v21, 0x3fc00000    # 1.5f

    mul-float v21, v21, v19

    cmpg-float v21, v21, v18

    if-gez v21, :cond_11

    const/16 v17, 0x1

    .line 495
    .local v17, "velocityEnable":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 563
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14, v15}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateAnimate(Landroid/view/View;ZZ)V

    .line 569
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_10

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 573
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 574
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->resetEventValue()V

    goto/16 :goto_1

    .line 493
    .end local v17    # "velocityEnable":Z
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "velocityEnable":Z
    goto :goto_3

    .line 497
    :pswitch_2
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 506
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_e

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const/4 v15, 0x1

    .line 509
    :goto_5
    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 510
    const/4 v14, 0x1

    .line 509
    goto/16 :goto_4

    .line 498
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_14

    const/4 v15, 0x1

    .line 499
    :goto_6
    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 500
    const/4 v14, 0x1

    .line 499
    goto/16 :goto_4

    .line 498
    :cond_14
    const/4 v15, 0x0

    goto :goto_6

    .line 501
    :cond_15
    if-nez v15, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 502
    const/4 v14, 0x1

    .line 501
    goto/16 :goto_4

    .line 504
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 507
    :cond_17
    const/4 v15, 0x0

    goto :goto_5

    .line 511
    :cond_18
    if-nez v15, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 512
    const/4 v14, 0x1

    .line 511
    goto/16 :goto_4

    .line 514
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 519
    :pswitch_3
    if-eqz v17, :cond_22

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1a

    const/4 v15, 0x1

    .line 522
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    if-eqz v15, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_1b

    .line 523
    const/4 v14, 0x1

    .line 522
    goto/16 :goto_4

    .line 520
    :cond_1a
    const/4 v15, 0x0

    goto :goto_7

    .line 524
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    if-eqz v15, :cond_1f

    .line 526
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    if-eqz v15, :cond_20

    .line 528
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_21

    .line 531
    :cond_1e
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 524
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_1c

    .line 525
    const/4 v14, 0x1

    .line 524
    goto/16 :goto_4

    .line 527
    :cond_20
    const/4 v14, 0x1

    .line 526
    goto/16 :goto_4

    .line 528
    :cond_21
    if-eqz v15, :cond_1e

    .line 529
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 534
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_23

    const/4 v15, 0x1

    .line 536
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_25

    if-eqz v15, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    if-nez v21, :cond_25

    .line 537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpl-float v21, v9, v21

    if-lez v21, :cond_24

    const/4 v14, 0x1

    goto/16 :goto_4

    .line 534
    :cond_23
    const/4 v15, 0x0

    goto :goto_8

    .line 537
    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 538
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-nez v21, :cond_26

    if-eqz v15, :cond_27

    .line 540
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpl-float v21, v9, v21

    if-lez v21, :cond_29

    const/4 v14, 0x0

    goto/16 :goto_4

    .line 538
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    if-nez v21, :cond_26

    .line 539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpg-float v21, v9, v21

    if-gez v21, :cond_28

    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_28
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 541
    :cond_29
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 542
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    cmpg-float v21, v9, v21

    if-gez v21, :cond_2b

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_2b
    const/4 v14, 0x1

    goto/16 :goto_4

    .line 548
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c

    const/4 v15, 0x1

    .line 549
    :goto_9
    const/4 v11, 0x0

    .line 550
    .local v11, "isSwitched":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-ltz v21, :cond_2d

    .line 551
    const/4 v11, 0x1

    .line 557
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateSwitchAnimate(Landroid/view/View;Z)V

    goto/16 :goto_4

    .line 548
    .end local v11    # "isSwitched":Z
    :cond_2c
    const/4 v15, 0x0

    goto :goto_9

    .line 552
    .restart local v11    # "isSwitched":Z
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_2e

    .line 553
    const/4 v11, 0x1

    .line 552
    goto :goto_a

    .line 555
    :cond_2e
    const/4 v11, 0x0

    goto :goto_a

    .line 578
    .end local v11    # "isSwitched":Z
    .end local v12    # "isToCloseOpenedItem":Z
    .end local v14    # "swap":Z
    .end local v15    # "swapRight":Z
    .end local v17    # "velocityEnable":Z
    .end local v18    # "velocityX":F
    .end local v19    # "velocityY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v22}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 585
    .restart local v18    # "velocityX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 587
    .restart local v19    # "velocityY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v13

    .line 589
    .local v13, "moveRawX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpl-float v21, v21, v13

    if-lez v21, :cond_34

    .line 590
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2f

    .line 591
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 592
    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2f

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 597
    :cond_2f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 598
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    .line 613
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    move/from16 v21, v0

    sub-float v8, v13, v21

    .line 614
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 616
    .local v7, "deltaMode":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    move/from16 v16, v0

    .line 617
    .local v16, "swipeMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->onChangeSwipeMode()I

    move-result v6

    .line 618
    .local v6, "changeSwipeMode":I
    if-ltz v6, :cond_30

    .line 619
    move/from16 v16, v6

    .line 623
    :cond_30
    if-nez v16, :cond_37

    .line 624
    const/4 v7, 0x0

    .line 642
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    if-nez v21, :cond_32

    .line 643
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v21, v8, v21

    if-gez v21, :cond_3b

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v8, v21, v22

    .line 652
    :cond_32
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPagingSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v7, v21

    if-lez v21, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_33

    const/high16 v21, 0x3fc00000    # 1.5f

    mul-float v21, v21, v19

    cmpg-float v21, v21, v18

    if-gez v21, :cond_33

    .line 653
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    .line 654
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 655
    const/4 v8, 0x0

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_40

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3d

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BaseSwipeHelper;->onStartClose(Z)V

    .line 659
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3e

    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpenedRight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3f

    const/16 v21, 0x1

    :goto_10
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    .line 674
    :goto_11
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 676
    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    shl-int/lit8 v21, v21, 0x8

    .line 675
    or-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/BaseSwipeHelper;->superOnTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    .end local v5    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwiping:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    move/from16 v21, v0

    :goto_12
    add-float v8, v8, v21

    .line 682
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/letv/leui/widget/BaseSwipeHelper;->move(F)V

    .line 683
    const/16 v21, 0x1

    return v21

    .line 599
    .end local v6    # "changeSwipeMode":I
    .end local v7    # "deltaMode":F
    .end local v16    # "swipeMode":I
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    move/from16 v21, v0

    cmpg-float v21, v21, v13

    if-gez v21, :cond_36

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_35

    .line 601
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventStartX:F

    .line 602
    move-object/from16 v0, p0

    iput v9, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_35

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTranslationX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartBackViewX:F

    .line 607
    :cond_35
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    .line 608
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_b

    .line 610
    :cond_36
    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventPreEventX:F

    goto/16 :goto_b

    .line 625
    .restart local v6    # "changeSwipeMode":I
    .restart local v7    # "deltaMode":F
    .restart local v16    # "swipeMode":I
    :cond_37
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_31

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    move/from16 v21, v0

    if-eqz v21, :cond_39

    .line 627
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_38

    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-ltz v21, :cond_31

    .line 629
    :cond_38
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_31

    goto/16 :goto_c

    .line 633
    :cond_39
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3a

    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_3a

    .line 634
    const/4 v7, 0x0

    .line 633
    goto/16 :goto_c

    .line 635
    :cond_3a
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-gez v21, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewSwipedDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_31

    .line 636
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 645
    :cond_3b
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3c

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 645
    goto/16 :goto_d

    .line 647
    :cond_3c
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    move/from16 v22, v0

    add-float v21, v21, v22

    cmpg-float v21, v8, v21

    if-ltz v21, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mViewWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    cmpl-float v21, v8, v21

    if-lez v21, :cond_32

    goto/16 :goto_d

    .line 658
    :cond_3d
    const/16 v21, 0x0

    goto/16 :goto_e

    .line 660
    :cond_3e
    const/16 v21, 0x1

    goto/16 :goto_f

    .line 661
    :cond_3f
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 663
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_42

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    .line 668
    :cond_41
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_43

    const/16 v21, 0x1

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->onStartOpen(IZ)V

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_44

    const/4 v10, 0x1

    .line 670
    .local v10, "isOpenRight":Z
    :goto_15
    if-eqz v10, :cond_45

    const/16 v21, 0x0

    :goto_16
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToLeftLock:Z

    .line 671
    if-eqz v10, :cond_46

    const/16 v21, 0x1

    :goto_17
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartToRightLock:Z

    goto/16 :goto_11

    .line 665
    .end local v10    # "isOpenRight":Z
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mEventSwipingDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_41

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeCurrentAction:I

    goto :goto_13

    .line 668
    :cond_43
    const/16 v21, 0x0

    goto :goto_14

    .line 669
    :cond_44
    const/4 v10, 0x0

    .restart local v10    # "isOpenRight":Z
    goto :goto_15

    .line 670
    :cond_45
    const/16 v21, 0x1

    goto :goto_16

    .line 671
    :cond_46
    const/16 v21, 0x0

    goto :goto_17

    .line 681
    .end local v10    # "isOpenRight":Z
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/BaseSwipeHelper;->mStartFrontViewX:F

    move/from16 v21, v0

    goto/16 :goto_12

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_1
    .end packed-switch

    .line 495
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public openAnimate()V
    .locals 3

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/letv/leui/widget/BaseSwipeHelper;->generateRevealAnimate(Landroid/view/View;ZZ)V

    .line 172
    :cond_0
    return-void
.end method

.method protected resetCell()V
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    :cond_0
    return-void
.end method

.method protected setBackView(Landroid/view/View;)V
    .locals 0
    .param p1, "backView"    # Landroid/view/View;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mBackView:Landroid/view/View;

    .line 1152
    return-void
.end method

.method protected setBackViewChildFocusable(IIZ)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "focus"    # Z

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1203
    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1204
    return-void

    .line 1207
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1208
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1209
    .local v0, "backChildView":Landroid/view/View;
    invoke-virtual {v0, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 1207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "backChildView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setBackViewClickable(ZII)Z
    .locals 5
    .param p1, "forceUnClickable"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 1185
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseSwipeHelper;->getBackView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1187
    .local v1, "backView":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 1188
    return v4

    .line 1191
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1192
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1193
    .local v0, "backChildView":Landroid/view/View;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1194
    if-eqz p1, :cond_2

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1193
    :cond_1
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_1

    .line 1194
    :cond_2
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    goto :goto_2

    .line 1197
    .end local v0    # "backChildView":Landroid/view/View;
    :cond_3
    iget-boolean v3, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mOpened:Z

    return v3
.end method

.method protected setFrontView(Landroid/view/View;)V
    .locals 0
    .param p1, "frontView"    # Landroid/view/View;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mFrontView:Landroid/view/View;

    .line 1143
    return-void
.end method

.method public setOffsetLeft(F)V
    .locals 0
    .param p1, "offsetLeft"    # F

    .prologue
    .line 301
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mLeftOffset:F

    .line 300
    return-void
.end method

.method public setOffsetRight(F)V
    .locals 0
    .param p1, "offsetRight"    # F

    .prologue
    .line 292
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mRightOffset:F

    .line 291
    return-void
.end method

.method public setOverOffsetEnabled(Z)V
    .locals 0
    .param p1, "overOffsetEnabled"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsOverOffsetEnabled:Z

    .line 322
    return-void
.end method

.method public setPaused(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mPaused:Z

    .line 282
    return-void
.end method

.method public setSwipeActionLeft(I)V
    .locals 0
    .param p1, "swipeActionLeft"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionLeft:I

    .line 255
    return-void
.end method

.method public setSwipeActionRight(I)V
    .locals 0
    .param p1, "swipeActionRight"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeActionRight:I

    .line 273
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mIsSwipeEnable:Z

    .line 331
    return-void
.end method

.method public setSwipeLeftSwitchLine(F)V
    .locals 0
    .param p1, "swipeLeftSwitchLine"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeLeftSwitchLine:F

    .line 318
    return-void
.end method

.method public setSwipeListener(Lcom/letv/leui/widget/SwipeListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeListener;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeListener:Lcom/letv/leui/widget/SwipeListener;

    .line 205
    return-void
.end method

.method public setSwipeMode(I)V
    .locals 0
    .param p1, "swipeMode"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeMode:I

    .line 237
    return-void
.end method

.method public setSwipeRightSwitchLine(F)V
    .locals 0
    .param p1, "swipeRightSwitchLine"    # F

    .prologue
    .line 310
    iput p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeRightSwitchLine:F

    .line 309
    return-void
.end method

.method public setSwipeSwitchListener(Lcom/letv/leui/widget/SwipeSwitchListener;)V
    .locals 0
    .param p1, "swipeListener"    # Lcom/letv/leui/widget/SwipeSwitchListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mSwipeSwitchListener:Lcom/letv/leui/widget/SwipeSwitchListener;

    .line 221
    return-void
.end method

.method protected superOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/letv/leui/widget/BaseSwipeHelper;->mCallback:Lcom/letv/leui/widget/BaseSwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/BaseSwipeHelper$Callback;->superOnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
