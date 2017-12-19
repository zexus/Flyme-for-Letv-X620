.class public Lcom/android/server/policy/global/CancelButton;
.super Lcom/android/server/policy/global/CircleButton;
.source "CancelButton.java"


# static fields
.field private static final DEFAULT_CROSS_DEGREES:I = 0x2d

.field private static final DELAY_TIME_CROSS_IN:J = 0xafL

.field private static final DELAY_TIME_CROSS_SCALE_OUT:J = 0x12cL

.field private static final TIME_CROSS_IN:J = 0x2bcL

.field private static final TIME_CROSS_ROTATE_OUT:J = 0x28aL

.field private static final TIME_CROSS_SCALE_OUT:J = 0x1f4L


# instance fields
.field private DEFAULT_CROSS_RADIUS:I

.field private mCrossColor:I

.field private mCrossDegrees:I

.field private mCrossIn:Landroid/animation/ObjectAnimator;

.field private mCrossPaint:Landroid/graphics/Paint;

.field private mCrossRadius:I

.field private mCrossRotateOut:Landroid/animation/ObjectAnimator;

.field private mCrossScaleOut:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/global/CircleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private drawCross(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 117
    .local v6, "centerX":I
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mScaleRingWH:I

    div-int/lit8 v7, v0, 0x2

    .line 119
    .local v7, "centerY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 121
    .local v8, "seq":I
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    int-to-float v0, v0

    int-to-float v1, v6

    int-to-float v2, v7

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 123
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    sub-int v0, v6, v0

    int-to-float v1, v0

    int-to-float v2, v7

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    add-int/2addr v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    int-to-float v1, v6

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    add-int/2addr v0, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 115
    return-void
.end method

.method private initCrossParams()V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_ICON_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    .line 60
    iget v0, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    .line 61
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 69
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_PAINT_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    return-void
.end method

.method private loadCrossAnimator()V
    .locals 13

    .prologue
    const/16 v12, 0x2d

    const/high16 v11, 0x3fc00000    # 1.5f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    const-string/jumbo v4, "crossScale"

    new-array v5, v10, [I

    aput v8, v5, v8

    iget v6, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 88
    .local v2, "crossScaleIn":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "crossRotate"

    const/16 v5, -0x2d

    filled-new-array {v5, v12}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 89
    .local v1, "crossRotateIn":Landroid/animation/PropertyValuesHolder;
    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    .line 90
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x2bc

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0xaf

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 92
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    const-string/jumbo v4, "crossScale"

    new-array v5, v10, [I

    iget v6, p0, Lcom/android/server/policy/global/CancelButton;->DEFAULT_CROSS_RADIUS:I

    aput v6, v5, v8

    aput v8, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 95
    .local v3, "crossScaleOut":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "crossAlpha"

    const/16 v5, 0xff

    filled-new-array {v5, v8}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 96
    .local v0, "crossAlphaOut":Landroid/animation/PropertyValuesHolder;
    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v4, v8

    aput-object v0, v4, v9

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    .line 97
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 98
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 99
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const-string/jumbo v4, "crossRotate"

    const/16 v5, 0xe1

    filled-new-array {v12, v5}, [I

    move-result-object v5

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    .line 102
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x28a

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    iget-object v4, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5, v11}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 85
    return-void
.end method

.method private setCrossAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    .line 154
    return-void
.end method

.method private setCrossRotate(I)V
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossDegrees:I

    .line 146
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    .line 144
    return-void
.end method

.method private setCrossScale(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    .line 136
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->invalidate()V

    .line 134
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 190
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRotateOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 191
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutSecond:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOutFirst:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 192
    new-instance v1, Lcom/android/server/policy/global/CancelButton$2;

    invoke-direct {v1, p0, p0}, Lcom/android/server/policy/global/CancelButton$2;-><init>(Lcom/android/server/policy/global/CancelButton;Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/CancelButton;->drawCross(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/global/CancelButton;->isCancel:Z

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    .line 175
    return-void
.end method

.method public bridge synthetic hintRingArea(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->hintRingArea(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected initParams()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/policy/global/CancelButton;->initCrossParams()V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/CancelButton;->resetParams(Z)V

    .line 51
    invoke-direct {p0}, Lcom/android/server/policy/global/CancelButton;->loadCrossAnimator()V

    .line 48
    return-void
.end method

.method public bridge synthetic onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reBoot()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 216
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mTipOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossScaleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCircleOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 217
    new-instance v1, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/CircleButton$ClickableControlListener;-><init>(Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 211
    return-void
.end method

.method protected resetParams(Z)V
    .locals 1
    .param p1, "isReset"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->resetParams(Z)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/CancelButton;->mCrossRadius:I

    .line 74
    return-void
.end method

.method public bridge synthetic setAlaphaWhenDrag(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    invoke-super {p0, p1}, Lcom/android/server/policy/global/CircleButton;->setAlaphaWhenDrag(F)V

    return-void
.end method

.method public show(Z)V
    .locals 3
    .param p1, "animation"    # Z

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/server/policy/global/CancelButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 164
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/server/policy/global/CancelButton;->mCircleIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mCrossIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/CancelButton;->mTipIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 165
    new-instance v1, Lcom/android/server/policy/global/CancelButton$1;

    invoke-direct {v1, p0, p0}, Lcom/android/server/policy/global/CancelButton$1;-><init>(Lcom/android/server/policy/global/CancelButton;Lcom/android/server/policy/global/CircleButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    return-void
.end method
