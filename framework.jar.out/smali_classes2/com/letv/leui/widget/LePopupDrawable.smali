.class public Lcom/letv/leui/widget/LePopupDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "LePopupDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    }
.end annotation


# static fields
.field public static DEFAULT_ARROW_HEIGHT:I

.field public static DEFAULT_ARROW_WIDTH:I


# instance fields
.field private mArrowOffset:I

.field private mIsArrowOnTop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x18

    sput v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    .line 19
    const/16 v0, 0x30

    sput v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    .line 17
    return-void
.end method

.method public constructor <init>(FIZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "color"    # I
    .param p3, "isArrowOnTop"    # Z

    .prologue
    .line 28
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FLandroid/content/res/ColorStateList;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(FLandroid/content/res/ColorStateList;Z)V
    .locals 2
    .param p1, "radiusSize"    # F
    .param p2, "fillColorList"    # Landroid/content/res/ColorStateList;
    .param p3, "isArrowOnTop"    # Z

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    invoke-direct {v0, p1, p3}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;-><init>(FZ)V

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LePopupDrawable;->setFillColorList(Landroid/content/res/ColorStateList;)V

    .line 33
    iput-boolean p3, p0, Lcom/letv/leui/widget/LePopupDrawable;->mIsArrowOnTop:Z

    .line 34
    if-eqz p3, :cond_0

    .line 35
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    .line 30
    :goto_0
    return-void

    .line 37
    :cond_0
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;)V
    .locals 0
    .param p1, "s"    # Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getFillColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    return-object v0
.end method

.method public isArrowOnTop()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->isArrowOnTop()Z

    move-result v0

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->isShowArrow()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v1

    .line 106
    .local v1, "shape":Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateTextColors([I)Z

    move-result v0

    .line 107
    .local v0, "invalid":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->invalidateSelf()V

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->onStateChange([I)Z

    move-result v2

    return v2
.end method

.method public setArrowOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable;->mArrowOffset:I

    .line 55
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LePopupDrawable;->mArrowOffset:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setArrowOffset(I)V

    .line 53
    return-void
.end method

.method public setArrowOnTop(Z)V
    .locals 2
    .param p1, "isArrowOnTop"    # Z

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setIsArrowOnTop(Z)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    .line 41
    :goto_0
    return-void

    .line 46
    :cond_0
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setArrowVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setArrowVisible(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    .line 62
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->isArrowOnTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0

    .line 70
    :cond_1
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/letv/leui/widget/LePopupDrawable;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setFillColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "mFillColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable;->getShape()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method
