.class public Lcom/letv/leui/widget/LeGlowImageView;
.super Landroid/widget/ImageView;
.source "LeGlowImageView.java"


# instance fields
.field private mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeGlowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeGlowImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    .line 28
    sget-object v1, Lcom/android/internal/R$styleable;->LeGlowDelegate:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setEnabledAnimation(Z)V

    .line 31
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressColor(I)V

    .line 32
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v1, v1, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressScaleMultiple(F)V

    .line 33
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v1, v1, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowImageView;->setPressScaleAlpha(I)V

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 22
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    .line 39
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->draw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method

.method public setEnabledAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    .line 58
    return-void
.end method

.method public setPressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectColor(I)V

    .line 62
    return-void
.end method

.method public setPressScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleAlpha(I)V

    .line 70
    return-void
.end method

.method public setPressScaleMultiple(F)V
    .locals 1
    .param p1, "multiple"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleMultiple(F)V

    .line 66
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowImageView;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setPressed(Z)V

    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 53
    return-void
.end method
