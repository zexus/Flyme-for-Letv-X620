.class public Lcom/letv/leui/widget/BallShapeHolder;
.super Ljava/lang/Object;
.source "BallShapeHolder.java"


# instance fields
.field private arc:F

.field private color:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 75
    return-void
.end method


# virtual methods
.method public getArc()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->arc:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->color:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->radius:F

    return v0
.end method

.method public getShapeDrawable()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->y:F

    return v0
.end method

.method public setArc(F)V
    .locals 0
    .param p1, "arc"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->arc:F

    .line 71
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->color:I

    .line 62
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->paint:Landroid/graphics/Paint;

    .line 54
    return-void
.end method

.method public setRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    mul-float v1, p1, v2

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 47
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->radius:F

    .line 45
    return-void
.end method

.method public setShapeDrawable(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->shapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 21
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 30
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->x:F

    .line 29
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/letv/leui/widget/BallShapeHolder;->y:F

    .line 37
    return-void
.end method
