.class public Lcom/android/server/policy/global/GlobalActionSwipeHelper;
.super Ljava/lang/Object;
.source "GlobalActionSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;,
        Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field public static DISMISS_IF_SWIPED_FAR_ENOUGH_SCALE:F = 0.0f

.field private static final FADE_OUT_DURING_SWIPE:Z = false

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field private mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mDensityScale:F

.field private volatile mDragging:Z

.field private mInitialTouchPos:F

.field private mLastTouchPos:F

.field private mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 43
    const v0, 0x3eb33333    # 0.35f

    sput v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DISMISS_IF_SWIPED_FAR_ENOUGH_SCALE:F

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    .line 18
    return-void
.end method

.method public constructor <init>(ILcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;FF)V
    .locals 1
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 37
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 38
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 39
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    .line 73
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    .line 74
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    .line 75
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 76
    iput p3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    .line 72
    return-void
.end method

.method private createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .param p2, "newPos"    # F

    .prologue
    const/4 v3, 0x0

    .line 123
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "translationX"

    .line 122
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 123
    aput p2, v2, v3

    .line 122
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 123
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string/jumbo v1, "translationY"

    goto :goto_0
.end method

.method private getAlphaForOffset(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 6
    .param p1, "view"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v3

    .line 173
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 174
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 175
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v1

    .line 176
    .local v1, "pos":F
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 177
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 181
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 178
    :cond_1
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 179
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 155
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getRawPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0
.end method

.method private getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private setTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)V
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .param p2, "translate"    # F

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->setTranslationX(F)V

    .line 141
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public final isDragging()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 200
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 236
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    return v3

    .line 202
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-nez v3, :cond_1

    .line 203
    return v4

    .line 205
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    .line 206
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .line 208
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 209
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 213
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mInitialTouchPos:F

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 218
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 219
    .local v2, "rawY":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3, v1, v2}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->hintSwipeRect(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    goto :goto_0

    .line 232
    .end local v1    # "rawX":F
    .end local v2    # "rawY":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    .line 233
    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-boolean v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    if-nez v11, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-nez v11, :cond_0

    .line 243
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    invoke-interface {v11, v12, v13}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->hintCancelRect(FF)Z

    .line 244
    const/4 v11, 0x1

    return v11

    .line 246
    :cond_0
    const/4 v11, 0x0

    return v11

    .line 249
    :cond_1
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 251
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 320
    :cond_2
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 255
    :pswitch_0
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v11, :cond_2

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v11

    iget v12, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    sub-float v3, v11, v12

    .line 260
    .local v3, "delta":F
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 271
    :goto_1
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v11, v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->setTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v11

    iput v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    goto :goto_0

    .line 261
    :cond_3
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v7

    .local v7, "size":F
    goto :goto_1

    .line 282
    .end local v3    # "delta":F
    .end local v7    # "size":F
    :pswitch_1
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v11, :cond_2

    .line 283
    iget v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    mul-float v5, v11, v12

    .line 284
    .local v5, "maxVelocity":F
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 286
    iget v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v12, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    mul-float v4, v11, v12

    .line 288
    .local v4, "escapeVelocity":F
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v10

    .line 289
    .local v10, "velocity":F
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 293
    .local v6, "perpendicularVelocity":F
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x44bb8000    # 1500.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    const/4 v1, 0x1

    .line 297
    .local v1, "childSwipedFarEnough":Z
    :goto_2
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v11, v11, v4

    if-lez v11, :cond_9

    .line 298
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    .line 299
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    iget-object v12, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v12}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7

    const/4 v12, 0x1

    :goto_4
    if-ne v11, v12, :cond_8

    const/4 v2, 0x1

    .line 302
    .local v2, "childSwipedFastEnough":Z
    :goto_5
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-interface {v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getInitTranslationY()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v12}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_a

    const/4 v8, 0x1

    .line 305
    .local v8, "swipBelow":Z
    :goto_6
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 306
    if-nez v2, :cond_4

    .line 305
    if-eqz v1, :cond_b

    .line 307
    :cond_4
    move v9, v8

    .line 309
    :goto_7
    if-eqz v9, :cond_d

    .line 311
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v11}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->onActionStart()V

    .line 312
    if-eqz v2, :cond_c

    .end local v10    # "velocity":F
    :goto_8
    invoke-virtual {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->swipeToBottom(F)V

    goto/16 :goto_0

    .line 293
    .end local v1    # "childSwipedFarEnough":Z
    .end local v2    # "childSwipedFastEnough":Z
    .end local v8    # "swipBelow":Z
    .restart local v10    # "velocity":F
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "childSwipedFarEnough":Z
    goto :goto_2

    .line 299
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "childSwipedFastEnough":Z
    goto :goto_5

    .line 297
    .end local v2    # "childSwipedFastEnough":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "childSwipedFastEnough":Z
    goto :goto_5

    .line 302
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "swipBelow":Z
    goto :goto_6

    .line 305
    :cond_b
    const/4 v9, 0x0

    .local v9, "swipeToBottom":Z
    goto :goto_7

    .line 312
    .end local v9    # "swipeToBottom":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_8

    .line 315
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->snapChild(F)V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    .line 80
    return-void
.end method

.method public setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 0
    .param p1, "viewMediatorCallback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 445
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    .line 162
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 1
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 85
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mPagingTouchSlop:F

    .line 84
    return-void
.end method

.method public snapChild(F)V
    .locals 6
    .param p1, "velocity"    # F

    .prologue
    .line 375
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-nez v3, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v1

    .line 377
    .local v1, "animView":Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    if-nez v1, :cond_1

    return-void

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v2

    .line 379
    .local v2, "canAnimViewBeDismissed":Z
    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getInitTranslationY()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 380
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    new-instance v3, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 392
    new-instance v3, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;ZLcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 399
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 374
    return-void
.end method

.method public swipeToBottom(F)V
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 330
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-nez v5, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v5}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v1

    .line 332
    .local v1, "animView":Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    if-nez v1, :cond_1

    return-void

    .line 333
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v5}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v2

    .line 334
    .local v2, "canAnimViewBeDismissed":Z
    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getEndTranslationY()I

    move-result v5

    int-to-float v4, v5

    .line 336
    .local v4, "newPos":F
    iget v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 337
    .local v3, "duration":I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_2

    .line 339
    invoke-direct {p0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 338
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 346
    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 347
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 351
    new-instance v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;

    invoke-direct {v5, p0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 360
    new-instance v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$2;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;ZLcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 367
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 329
    return-void

    .line 341
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method
