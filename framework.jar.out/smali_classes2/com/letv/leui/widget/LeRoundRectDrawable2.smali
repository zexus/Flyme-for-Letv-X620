.class public Lcom/letv/leui/widget/LeRoundRectDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "LeRoundRectDrawable2.java"


# instance fields
.field private final mBoundsF:Landroid/graphics/RectF;

.field private final mBoundsI:Landroid/graphics/Rect;

.field private mInsetForPadding:Z

.field private mInsetForRadius:Z

.field private mPadding:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(IF)V
    .locals 2
    .param p1, "backgroundColor"    # I
    .param p2, "radius"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    .line 38
    iput p2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    .line 37
    return-void
.end method

.method private updateBounds(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    iget v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 62
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mBoundsI:Landroid/graphics/Rect;

    iget v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 88
    return-void
.end method

.method getPadding()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    .line 82
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 102
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    .line 120
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 107
    return-void
.end method

.method setPadding(FZZ)V
    .locals 1
    .param p1, "padding"    # F
    .param p2, "insetForPadding"    # Z
    .param p3, "insetForRadius"    # Z

    .prologue
    .line 46
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    if-ne v0, p2, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    if-ne v0, p3, :cond_0

    .line 48
    return-void

    .line 50
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mPadding:F

    .line 51
    iput-boolean p2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForPadding:Z

    .line 52
    iput-boolean p3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mInsetForRadius:Z

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    .line 54
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    .line 45
    return-void
.end method

.method setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 93
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable2;->mRadius:F

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->updateBounds(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable2;->invalidateSelf()V

    .line 92
    return-void
.end method
