.class public Lcom/letv/leui/widget/LeLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LeLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

.field private mLeDivider:Landroid/graphics/drawable/Drawable;

.field private mLeDividerHeight:I

.field private mLeDividerPadding:I

.field private mLeDividerWidth:I

.field private mLeShowDividers:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerPadding()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    .line 39
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    .line 36
    return-void
.end method


# virtual methods
.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    .line 174
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    add-int/2addr v3, p2

    .line 173
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I
    .param p3, "index"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v0, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->dividerEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v2, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->startDividerMargin(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 253
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v3, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->endDividerMargin(I)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    add-int/2addr v3, p2

    .line 252
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    :cond_1
    return-void
.end method

.method drawLeDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 121
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->isLayoutRtl()Z

    move-result v3

    .line 122
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 123
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .line 135
    .local v5, "position":I
    :goto_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_2

    .line 136
    invoke-virtual {p0, p1, v5, v2}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;II)V

    .line 122
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_2

    .line 145
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "position":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 146
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_6

    .line 149
    if-eqz v3, :cond_5

    .line 150
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingLeft()I

    move-result v5

    .line 163
    .restart local v5    # "position":I
    :goto_3
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_8

    .line 164
    invoke-virtual {p0, p1, v5, v1}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;II)V

    .line 119
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_4
    :goto_4
    return-void

    .line 152
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .line 155
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_7

    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .line 159
    .end local v5    # "position":I
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_3

    .line 167
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_4
.end method

.method drawLeDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 82
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 83
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 86
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    sub-int v5, v6, v7

    .line 90
    .local v5, "top":I
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_1

    .line 91
    invoke-virtual {p0, p1, v5, v3}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;II)V

    .line 82
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "top":I
    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_1

    .line 100
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "top":I
    :cond_2
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeLinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .restart local v1    # "child":Landroid/view/View;
    const/4 v0, 0x0

    .line 103
    .local v0, "bottom":I
    if-nez v1, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    sub-int v0, v6, v7

    .line 110
    :goto_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v6, :cond_5

    .line 111
    invoke-virtual {p0, p1, v0, v2}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;II)V

    .line 80
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    return-void

    .line 106
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_2

    .line 114
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeLinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    goto :goto_3
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    .line 180
    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v3, v4

    .line 179
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "index"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v0, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->dividerEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v2, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->startDividerMargin(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 264
    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    invoke-interface {v4, p3}, Lcom/letv/leui/widget/LinearLayoutDividerFilter;->endDividerMargin(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 263
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    :cond_1
    return-void
.end method

.method public getDividerFilter()Lcom/letv/leui/widget/LinearLayoutDividerFilter;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    return-object v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .param p1, "childIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 222
    iget v4, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 223
    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_4

    .line 226
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 227
    const/4 v0, 0x1

    .line 231
    :cond_4
    return v0

    .line 225
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 233
    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_6
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->drawLeDividersVertical(Landroid/graphics/Canvas;)V

    .line 68
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeLinearLayout;->drawLeDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    .line 43
    :goto_0
    return-void

    .line 50
    :cond_0
    iput v1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerWidth:I

    .line 51
    iput v1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerHeight:I

    goto :goto_0
.end method

.method public setDividerFilter(Lcom/letv/leui/widget/LinearLayoutDividerFilter;)V
    .locals 0
    .param p1, "dividerFilter"    # Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/letv/leui/widget/LeLinearLayout;->mDividerFilter:Lcom/letv/leui/widget/LinearLayoutDividerFilter;

    .line 243
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .line 58
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getDividerPadding()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeDividerPadding:I

    .line 56
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 64
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLinearLayout;->getShowDividers()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeLinearLayout;->mLeShowDividers:I

    .line 62
    return-void
.end method
