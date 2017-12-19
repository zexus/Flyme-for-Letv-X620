.class public Lcom/letv/leui/widget/LeTabWidget;
.super Landroid/widget/TabWidget;
.source "LeTabWidget.java"


# instance fields
.field private mTopStrip:Landroid/graphics/drawable/Drawable;

.field private mTopStripHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeTabWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeTabWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 83
    if-nez p2, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    sget-object v3, Lcom/android/internal/R$styleable;->LeTabWidget:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 89
    .local v2, "topStripRes":I
    if-eq v2, v4, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v1, v3

    .line 96
    .local v1, "topStripHeight":I
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 97
    iput v1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    .line 102
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 70
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getLeft()I

    move-result v1

    .line 71
    .local v1, "left":I
    const/4 v3, 0x0

    .line 72
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getRight()I

    move-result v2

    .line 73
    .local v2, "right":I
    iget v0, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    .line 75
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 76
    .local v4, "topStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    iget v5, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :cond_0
    return-void
.end method

.method public getTabIcon(I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "tab":Landroid/view/View;
    if-nez v1, :cond_0

    .line 123
    return-object v2

    .line 125
    :cond_0
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .local v0, "img":Landroid/widget/ImageView;
    return-object v0
.end method

.method public getTabTitle(I)Landroid/widget/TextView;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "tab":Landroid/view/View;
    if-nez v0, :cond_0

    .line 132
    return-object v2

    .line 134
    :cond_0
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 135
    .local v1, "tv":Landroid/widget/TextView;
    return-object v1
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 164
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setTitleTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTabWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v1

    .line 141
    .local v1, "tv":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setTitleTextColor(II)V
    .locals 10
    .param p1, "unselected_color"    # I
    .param p2, "selected_color"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    new-array v3, v9, [[I

    .line 148
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    aput-object v5, v3, v7

    .line 149
    new-array v5, v7, [I

    aput-object v5, v3, v8

    .line 151
    .local v3, "states":[[I
    new-array v0, v9, [I

    .line 152
    aput p2, v0, v7

    aput p1, v0, v8

    .line 154
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 155
    .local v2, "list":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 156
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeTabWidget;->getTabTitle(I)Landroid/widget/TextView;

    move-result-object v4

    .line 157
    .local v4, "tv":Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setTopStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTabWidget;->setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public setTopStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStrip:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->invalidate()V

    .line 109
    return-void
.end method

.method public setTopStripHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/letv/leui/widget/LeTabWidget;->mTopStripHeight:I

    .line 117
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTabWidget;->invalidate()V

    .line 115
    return-void
.end method
