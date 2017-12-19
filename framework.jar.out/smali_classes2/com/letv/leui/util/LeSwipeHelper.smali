.class public Lcom/letv/leui/util/LeSwipeHelper;
.super Ljava/lang/Object;
.source "LeSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;
    }
.end annotation


# static fields
.field public static final DIRECTION_X:I = 0x1

.field public static final DIRECTION_Y:I = 0x2

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_RAW_POS:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field protected mActivePointerId:I

.field protected mDirection:I

.field protected mDragging:Z

.field protected mInitialTouchPosRawX:F

.field protected mInitialTouchPosRawY:F

.field protected mLastRawX:F

.field protected mLastRawY:F

.field protected mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field protected mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

.field protected mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/letv/leui/util/LeSwipeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeSwipeHelper;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->DEBUG:Z

    .line 23
    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    .line 24
    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    .line 26
    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    .line 27
    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    .line 44
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getViewConfiguration(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    .line 43
    return-void
.end method

.method private addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 224
    .local v2, "newEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v3

    .line 225
    .local v3, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v0, v4, v5

    .line 226
    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v1, v4, v5

    .line 227
    .local v1, "currRawY":F
    invoke-virtual {v2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 228
    iget-object v4, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 229
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->printMotionEvent(Landroid/view/MotionEvent;)V

    .line 221
    return-void
.end method

.method private determineDrag(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 167
    .local v4, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v5, v6

    .line 168
    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v5, v6

    .line 169
    .local v1, "currRawY":F
    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 170
    .local v2, "deltaX":F
    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 172
    .local v3, "deltaY":F
    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 173
    return v8

    .line 176
    :cond_0
    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 177
    return v8

    .line 180
    :cond_1
    return v7
.end method

.method private endSwipe(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMaximumVelocity:I

    int-to-float v3, v3

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 213
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    .line 214
    .local v0, "xVelocity":I
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v1, v2

    .line 216
    .local v1, "yVelocity":I
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMinimumVelocity:I

    invoke-interface {v2, v0, v1, v3}, Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;->onSwipeEnd(III)V

    .line 211
    :cond_0
    return-void
.end method

.method private getPointerIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 109
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    .line 117
    :cond_0
    return v0
.end method

.method private final getViewConfiguration(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 75
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMinimumVelocity:I

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mMaximumVelocity:I

    .line 73
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 86
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initTouchPosition(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    .line 122
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 124
    .local v0, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    .line 126
    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    .line 127
    iget v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    .line 120
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    if-ne v2, v3, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 140
    .local v1, "pointerIndex":I
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 142
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    .line 147
    iget v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    .line 148
    iget v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    iput v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    .line 150
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    .line 136
    .end local v0    # "newPointerIndex":I
    .end local v1    # "pointerIndex":I
    :cond_0
    return-void

    .line 140
    .restart local v1    # "pointerIndex":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private final printMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 103
    iput-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    :cond_0
    return-void
.end method

.method private resetTouchPositionForActionUp()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 155
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawX:F

    .line 156
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mInitialTouchPosRawY:F

    .line 158
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    .line 159
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mActivePointerId:I

    .line 154
    return-void
.end method

.method private updateViewPosition(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 184
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->getPointerIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 185
    .local v5, "pointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 186
    .local v0, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .line 187
    .local v1, "currRawY":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    sub-float v3, v0, v6

    .line 188
    .local v3, "offsetX":F
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    sub-float v4, v1, v6

    .line 190
    .local v4, "offsetY":F
    const/4 v2, 0x0

    .line 191
    .local v2, "needUpdate":Z
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    cmpl-float v6, v3, v8

    if-eqz v6, :cond_0

    .line 192
    const/4 v2, 0x1

    .line 195
    :cond_0
    iget v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    cmpl-float v6, v4, v8

    if-eqz v6, :cond_1

    .line 196
    const/4 v2, 0x1

    .line 199
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    .line 201
    iget-object v6, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    invoke-interface {v6, v3, v4}, Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;->onUpdateViewPositionBy(FF)V

    .line 203
    :cond_2
    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawX:F

    .line 204
    iput v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mLastRawY:F

    .line 183
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 249
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 304
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 305
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    .line 308
    :cond_1
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    return v1

    .line 254
    :pswitch_1
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    .line 255
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    .line 256
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initVelocityTrackerIfNotExists()V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-nez v1, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->determineDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    goto :goto_0

    .line 284
    :pswitch_3
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_2

    .line 285
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->resetTouchPositionForActionUp()V

    .line 288
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->recycleVelocityTracker()V

    goto :goto_0

    .line 291
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 314
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 385
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 386
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    .line 389
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 319
    :pswitch_1
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    .line 320
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    .line 321
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    goto :goto_0

    .line 329
    :pswitch_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-nez v1, :cond_2

    .line 330
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->determineDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    .line 333
    :cond_2
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_0

    .line 334
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->updateViewPosition(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 349
    :pswitch_3
    iget-boolean v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    if-eqz v1, :cond_3

    .line 350
    iput-boolean v2, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDragging:Z

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    .line 354
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->addMotionEventWithAdjustment(Landroid/view/MotionEvent;)V

    .line 357
    :cond_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->endSwipe(Landroid/view/MotionEvent;)V

    .line 359
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->resetTouchPositionForActionUp()V

    .line 360
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->recycleVelocityTracker()V

    goto :goto_0

    .line 367
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 375
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/letv/leui/util/LeSwipeHelper;->initTouchPosition(Landroid/view/MotionEvent;)V

    .line 376
    invoke-direct {p0}, Lcom/letv/leui/util/LeSwipeHelper;->initOrResetVelocityTracker()V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setDirection(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 53
    and-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/util/LeSwipeHelper;->mDirection:I

    .line 52
    return-void
.end method

.method public setOnSwipeListener(Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mOnSwipeListener:Lcom/letv/leui/util/LeSwipeHelper$OnSwipeListener;

    .line 48
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "touchSlop"    # I

    .prologue
    .line 61
    if-ltz p1, :cond_0

    .line 62
    iput p1, p0, Lcom/letv/leui/util/LeSwipeHelper;->mTouchSlop:I

    .line 60
    :cond_0
    return-void
.end method
