.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
.super Landroid/view/animation/Animation;
.source "StoreHouseBarItem.java"


# instance fields
.field public index:I

.field private mCEndPoint:Landroid/graphics/PointF;

.field private mCStartPoint:Landroid/graphics/PointF;

.field private mFromAlpha:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mToAlpha:F

.field public midPoint:Landroid/graphics/PointF;

.field public translationX:F


# direct methods
.method public constructor <init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "start"    # Landroid/graphics/PointF;
    .param p3, "end"    # Landroid/graphics/PointF;
    .param p4, "color"    # I
    .param p5, "lineWidth"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 26
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mFromAlpha:F

    .line 22
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mToAlpha:F

    .line 27
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->index:I

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCStartPoint:Landroid/graphics/PointF;

    .line 32
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCEndPoint:Landroid/graphics/PointF;

    .line 34
    invoke-virtual {p0, p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setColor(I)V

    .line 35
    invoke-virtual {p0, p5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setLineWidth(I)V

    .line 36
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 56
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mFromAlpha:F

    .line 57
    .local v0, "alpha":F
    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 58
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setAlpha(F)V

    .line 55
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCStartPoint:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCStartPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCEndPoint:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mCEndPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public resetPosition(I)V
    .locals 3
    .param p1, "horizontalRandomness"    # I

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    .local v0, "random":Ljava/util/Random;
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    neg-int v2, v2

    add-int v1, v2, p1

    .line 51
    .local v1, "randomNumber":I
    int-to-float v2, v1

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->translationX:F

    .line 48
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    return-void
.end method

.method public setLineWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    return-void
.end method

.method public start(FF)V
    .locals 0
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F

    .prologue
    .line 62
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mFromAlpha:F

    .line 63
    iput p2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->mToAlpha:F

    .line 64
    invoke-super {p0}, Landroid/view/animation/Animation;->start()V

    .line 61
    return-void
.end method
