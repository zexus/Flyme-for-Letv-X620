.class public Lcom/letv/leui/widget/BallsLoadingShapeHolder;
.super Ljava/lang/Object;
.source "BallsLoadingShapeHolder.java"


# instance fields
.field private alpha:F

.field private color:I

.field private gradient:Landroid/graphics/RadialGradient;

.field private paint:Landroid/graphics/Paint;

.field private shape:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->x:F

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->y:F

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->alpha:F

    .line 97
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    .line 96
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->color:I

    return v0
.end method

.method public getGradient()Landroid/graphics/RadialGradient;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 76
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->alpha:F

    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 75
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->color:I

    .line 64
    return-void
.end method

.method public setGradient(Landroid/graphics/RadialGradient;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/RadialGradient;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    .line 68
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 92
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 93
    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 91
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Paint;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->paint:Landroid/graphics/Paint;

    .line 36
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    .line 55
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 84
    iget-object v1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 85
    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 83
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->x:F

    .line 43
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/letv/leui/widget/BallsLoadingShapeHolder;->y:F

    .line 49
    return-void
.end method
