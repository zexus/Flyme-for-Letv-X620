.class public Lcom/letv/leui/widget/LeRoundRectDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "LeRoundRectDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
    }
.end annotation


# direct methods
.method public constructor <init>(FLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "inset"    # F
    .param p2, "borderColorList"    # Landroid/content/res/ColorStateList;
    .param p3, "fillColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 33
    new-instance v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    invoke-direct {v0, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;-><init>(F)V

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeRoundRectDrawable;-><init>(Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LeRoundRectDrawable;->setBorderColorList(Landroid/content/res/ColorStateList;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeRoundRectDrawable;->setFillColorList(Landroid/content/res/ColorStateList;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FII)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inset"    # F
    .param p3, "borderColorListResId"    # I
    .param p4, "fillColorListResId"    # I

    .prologue
    .line 24
    new-instance v1, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    invoke-direct {v1, p2}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;-><init>(F)V

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeRoundRectDrawable;-><init>(Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeRoundRectDrawable;->setBorderColorList(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeRoundRectDrawable;->setFillColorList(Landroid/content/res/ColorStateList;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;)V
    .locals 0
    .param p1, "s"    # Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getBorderColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->getBorderColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getFillColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v1

    .line 68
    .local v1, "shape":Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->updateTextColors([I)Z

    move-result v0

    .line 69
    .local v0, "invalid":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->invalidateSelf()V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->onStateChange([I)Z

    move-result v2

    return v2
.end method

.method public setBorderColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "mBorderColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 42
    return-void
.end method

.method public setFillColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "mFillColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable;->getShape()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 50
    return-void
.end method
