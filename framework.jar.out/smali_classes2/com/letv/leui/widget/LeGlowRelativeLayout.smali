.class public Lcom/letv/leui/widget/LeGlowRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "LeGlowRelativeLayout.java"


# instance fields
.field private mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeGlowRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeGlowRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v1, Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeGlowDelegate;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    .line 30
    sget-object v1, Lcom/android/internal/R$styleable;->LeGlowDelegate:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setEnabledAnimation(Z)V

    .line 33
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressColor(I)V

    .line 34
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v1, v1, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressScaleEnd:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressScaleMultiple(F)V

    .line 35
    iget-object v1, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    iget v1, v1, Lcom/letv/leui/widget/LeGlowDelegate;->backRoundRectPressAlphaEnd:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeGlowRelativeLayout;->setPressScaleAlpha(I)V

    .line 37
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->draw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 44
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeGlowDelegate;->init()V

    .line 41
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeGlowDelegate;->setView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public setEnabledAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setAnimationEnabled(Z)V

    .line 67
    return-void
.end method

.method public setPressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectColor(I)V

    .line 71
    return-void
.end method

.method public setPressScaleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleAlpha(I)V

    .line 79
    return-void
.end method

.method public setPressScaleMultiple(F)V
    .locals 1
    .param p1, "multiple"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setBackRoundRectScaleMultiple(F)V

    .line 75
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/letv/leui/widget/LeGlowRelativeLayout;->mDelegate:Lcom/letv/leui/widget/LeGlowDelegate;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeGlowDelegate;->setPressed(Z)V

    .line 64
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 62
    return-void
.end method
