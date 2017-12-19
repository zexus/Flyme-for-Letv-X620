.class public Lcom/letv/leui/widget/DialFloatButtonView;
.super Landroid/widget/ImageView;
.source "DialFloatButtonView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CIRCLE_COLOR:Ljava/lang/String; = "circleColor"

.field private static final ROTATION:Ljava/lang/String; = "rotation"


# instance fields
.field private ANIM_DURATION:I

.field private END_COLOR:I

.field private END_RORATION:F

.field private START_COLOR:I

.field private START_RORATION:F

.field private mCircle:Landroid/graphics/drawable/shapes/OvalShape;

.field private mCircleColor:I

.field private mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDialAnim:Landroid/animation/AnimatorSet;

.field private mRotateInterpolator:Landroid/animation/TimeInterpolator;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    .line 33
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    .line 50
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DialFloatButtonView;->initView(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private createAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    .line 128
    const-string/jumbo v2, "circleColor"

    new-array v3, v8, [I

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    aput v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_COLOR:I

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 129
    .local v0, "backColorAnim":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 130
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    const-string/jumbo v2, "rotation"

    new-array v3, v8, [F

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    aput v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_RORATION:F

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 135
    .local v1, "rotateAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    .line 138
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->ANIM_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 139
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 125
    .end local v0    # "backColorAnim":Landroid/animation/ObjectAnimator;
    .end local v1    # "rotateAnim":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public static createDefaultFloatingView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "floatIconId"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/letv/leui/widget/DialFloatButtonView;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/DialFloatButtonView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "dialFloatButtonView":Lcom/letv/leui/widget/DialFloatButtonView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/DialFloatButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 54
    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x10e00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->ANIM_DURATION:I

    .line 59
    const v2, 0x1060156

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    .line 60
    const v2, 0x1060157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_COLOR:I

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v0, "out":Landroid/util/TypedValue;
    const v2, 0x10501ea

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 64
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    .line 65
    const v2, 0x10501eb

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 66
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->END_RORATION:F

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    .line 76
    iget-object v2, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    iget v3, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 77
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/DialFloatButtonView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    return-void
.end method

.method private measure(I)I
    .locals 2
    .param p1, "measureSpec"    # I

    .prologue
    .line 149
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 119
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_RORATION:F

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->setRotation(F)V

    .line 120
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->START_COLOR:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->setCircleColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->invalidate()V

    .line 114
    return-void
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->invalidate()V

    .line 172
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 155
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircle:Landroid/graphics/drawable/shapes/OvalShape;

    iget-object v1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/DialFloatButtonView;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/DialFloatButtonView;->measure(I)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 144
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "circleColor"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    return-void
.end method

.method public setCircleColorInterpolator(Landroid/animation/TimeInterpolator;)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mCircleColorInterpolator:Landroid/animation/TimeInterpolator;

    .line 98
    return-object p0
.end method

.method public setRotateInterpolator(Landroid/animation/TimeInterpolator;)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mRotateInterpolator:Landroid/animation/TimeInterpolator;

    .line 93
    return-object p0
.end method

.method public setSize(I)Lcom/letv/leui/widget/DialFloatButtonView;
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mContext:Landroid/content/Context;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/DialFloatButtonView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mSize:I

    .line 88
    return-object p0
.end method

.method public startAnim(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "animListener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->cancelAnimation()V

    .line 107
    invoke-direct {p0}, Lcom/letv/leui/widget/DialFloatButtonView;->createAnimation()V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DialFloatButtonView;->mDialAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 105
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DialFloatButtonView;->startAnim(Landroid/animation/AnimatorListenerAdapter;)V

    .line 101
    return-void
.end method
