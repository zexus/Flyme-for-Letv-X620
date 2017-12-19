.class public Lcom/letv/leui/widget/BlurTableLayout;
.super Landroid/widget/TableLayout;
.source "BlurTableLayout.java"


# instance fields
.field private mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/BlurTableLayout;->init(Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BlurTableLayout;->init(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 34
    new-instance v2, Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->LeBlurView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 40
    .local v1, "radius":I
    iget-object v2, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "radius":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->isOffscreenCanvas(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->applyBlur()V

    .line 62
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->drawToCanvas(Landroid/graphics/Canvas;)V

    .line 70
    invoke-super {p0, p1}, Landroid/widget/TableLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBlurEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurRadius()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/TableLayout;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onAttachedToWindow()V

    .line 46
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/TableLayout;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onDetachedFromWindow()V

    .line 54
    :cond_0
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1
    .param p1, "blurEnabled"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->getBlurEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurEnabled(Z)V

    .line 95
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onAttachedToWindow()V

    .line 97
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->invalidate()V

    .line 98
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onDetachedFromWindow()V

    .line 100
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->invalidate()V

    .line 89
    :cond_2
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/letv/leui/widget/BlurTableLayout;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    .line 79
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurTableLayout;->invalidate()V

    .line 77
    return-void
.end method
