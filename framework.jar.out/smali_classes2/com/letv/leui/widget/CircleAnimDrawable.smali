.class public Lcom/letv/leui/widget/CircleAnimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleAnimDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CIRCLE_FILL_PROPERTY:Ljava/lang/String; = "circleScale"

.field private static final PAINT_ALPHA_PROPERTY:Ljava/lang/String; = "paintAlpha"


# instance fields
.field private centerColor:I

.field private circleScale:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private paintAlpha:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "centerColor"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    .line 23
    iput-boolean v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    .line 29
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    .line 25
    return-void
.end method

.method private getDownPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 102
    const-string/jumbo v2, "paintAlpha"

    .line 103
    const/16 v3, 0x2d

    .line 102
    filled-new-array {v4, v3}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 104
    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    .line 105
    aput-object v1, v2, v4

    .line 104
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 105
    const-wide/16 v4, 0x15e

    .line 104
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 107
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 110
    return-object v0
.end method

.method private getDownSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    .line 91
    const-string/jumbo v2, "circleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 93
    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    .line 94
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 93
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 94
    const-wide/16 v4, 0x15e

    .line 93
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 95
    .local v1, "sizeAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 98
    return-object v1

    .line 91
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getUpPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 7
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 132
    const-string/jumbo v2, "paintAlpha"

    .line 133
    const/16 v3, 0x2d

    .line 132
    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 134
    .local v1, "pvAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    .line 135
    aput-object v1, v2, v4

    .line 134
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 135
    const-wide/16 v4, 0x15e

    .line 134
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 136
    .local v0, "alphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 139
    return-object v0
.end method

.method private getUpSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;
    .locals 6
    .param p1, "animDrawable"    # Lcom/letv/leui/widget/CircleAnimDrawable;

    .prologue
    .line 122
    const-string/jumbo v2, "circleScale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 124
    .local v0, "pvSize":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    .line 125
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 124
    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 125
    const-wide/16 v4, 0x15e

    .line 124
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 126
    .local v1, "sizeAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    return-object v1

    .line 122
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isPressed([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "pressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    if-eqz p1, :cond_1

    array-length v1, p1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 178
    aget v3, p1, v0

    const v4, 0x10100a7

    if-ne v3, v4, :cond_2

    .line 179
    const/4 v2, 0x1

    .line 183
    :cond_0
    return v2

    .line 177
    .end local v1    # "j":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "j":I
    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public downAnim()V
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getDownSizeAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 115
    .local v1, "downSizeAnim":Landroid/animation/ObjectAnimator;
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getDownPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 116
    .local v2, "paintAlphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 117
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 113
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 35
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 36
    .local v1, "size":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v2, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    return-void

    .line 35
    .end local v1    # "size":I
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCenterColor()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    return v0
.end method

.method public getCircleScale()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPaintAlpha()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->invalidateSelf()V

    .line 85
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/CircleAnimDrawable;->isPressed([I)Z

    move-result v0

    .line 153
    .local v0, "pressed":Z
    iget-boolean v1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    if-eq v1, v0, :cond_0

    .line 154
    iput-boolean v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    .line 155
    iget-boolean v1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPressed:Z

    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->downAnim()V

    .line 162
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->upAnim()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 43
    return-void
.end method

.method public setCenterColor(I)V
    .locals 0
    .param p1, "centerColor"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->centerColor:I

    .line 72
    return-void
.end method

.method public setCircleScale(F)V
    .locals 0
    .param p1, "circleScale"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->circleScale:F

    .line 64
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 53
    return-void
.end method

.method public setPaintAlpha(I)V
    .locals 0
    .param p1, "paintAlpha"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/letv/leui/widget/CircleAnimDrawable;->paintAlpha:I

    .line 80
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public upAnim()V
    .locals 2

    .prologue
    .line 143
    invoke-direct {p0, p0}, Lcom/letv/leui/widget/CircleAnimDrawable;->getUpPaintAlphaAnim(Lcom/letv/leui/widget/CircleAnimDrawable;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 144
    .local v1, "upPaintAlphaAnim":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 142
    return-void
.end method
