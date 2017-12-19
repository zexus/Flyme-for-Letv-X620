.class public Lcom/letv/leui/widget/BaseView;
.super Landroid/view/View;
.source "BaseView.java"


# static fields
.field public static final OPACITY:F = 1.0f

.field public static final TRANSPARENCY:F


# instance fields
.field private cancelEndEnable:Z

.field protected height:I

.field private mPaint:Landroid/graphics/Paint;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseView;->init()V

    .line 29
    return-void
.end method


# virtual methods
.method protected drawShape(Landroid/graphics/Canvas;Lcom/letv/leui/widget/ShapeHolder;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "shapeHolder"    # Lcom/letv/leui/widget/ShapeHolder;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 56
    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getWidth()F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 58
    .local v0, "translationX":F
    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 59
    .local v1, "translationY":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    invoke-virtual {p2}, Lcom/letv/leui/widget/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    .end local v0    # "translationX":F
    .end local v1    # "translationY":F
    :cond_0
    return-void
.end method

.method protected getCancelEndIsAble()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/letv/leui/widget/BaseView;->cancelEndEnable:Z

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "duration"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/letv/leui/widget/BaseView;->initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected initAnimator(Landroid/animation/Animator;Landroid/view/animation/Interpolator;II)Landroid/animation/Animator;
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "delay"    # I
    .param p4, "duration"    # I

    .prologue
    .line 70
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    :cond_1
    if-lez p3, :cond_2

    .line 77
    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 79
    :cond_2
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 80
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 41
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 43
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseView;->width:I

    .line 44
    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/BaseView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/BaseView;->height:I

    .line 40
    return-void
.end method

.method protected setCancelAnimSet(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseView;->setCancelEndIsAble(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BaseView;->setCancelEndIsAble(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method protected setCancelEndIsAble(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/letv/leui/widget/BaseView;->cancelEndEnable:Z

    .line 91
    return-void
.end method
