.class public Lcom/letv/leui/widget/BlurListView;
.super Landroid/widget/ListView;
.source "BlurListView.java"


# instance fields
.field private mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

.field private mPath:Landroid/graphics/Path;

.field private mRadii:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BlurListView;->init(Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/BlurListView;->init(Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v2, Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/GaussianBlurRenderer;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    .line 44
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurListView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->LeBlurView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 48
    .local v1, "radius":I
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "radius":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 79
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->isOffscreenCanvas(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2}, Lcom/letv/leui/widget/GaussianBlurRenderer;->applyBlur()V

    .line 77
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurListView;->getMeasuredHeight()I

    move-result v0

    .line 86
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurListView;->getMeasuredWidth()I

    move-result v1

    .line 87
    .local v1, "width":I
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/letv/leui/widget/BlurListView;->mRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 89
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 91
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->drawToCanvas(Landroid/graphics/Canvas;)V

    .line 92
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onAttachedToWindow()V

    .line 65
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->onDetachedFromWindow()V

    .line 71
    return-void
.end method

.method public setBlurAfterView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurAfterView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/BlurListView;->mBlurRenderer:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/GaussianBlurRenderer;->setBlurRadius(I)V

    .line 101
    invoke-virtual {p0}, Lcom/letv/leui/widget/BlurListView;->invalidate()V

    .line 99
    return-void
.end method

.method public setRadius([F)V
    .locals 2
    .param p1, "radii"    # [F

    .prologue
    .line 58
    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 59
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/BlurListView;->mPath:Landroid/graphics/Path;

    .line 60
    iput-object p1, p0, Lcom/letv/leui/widget/BlurListView;->mRadii:[F

    .line 57
    :cond_0
    return-void
.end method
