.class public Lcom/letv/leui/widget/LeTopWidgetArc;
.super Landroid/widget/LinearLayout;
.source "LeTopWidgetArc.java"


# static fields
.field private static final mDefaultHight:I = 0x54

.field private static final mDefaultWidth:I = 0x1f8


# instance fields
.field private btnColor:I

.field private btnPressColor:I

.field private isAdd:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDivideWidth:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabCounts:I

.field private mTabHeight:I

.field private mTabLeftBgId:I

.field private mTabNormalBgColor:I

.field private mTabPressBgColor:I

.field private mTabRecBgId:I

.field private mTabRightBgId:I

.field private mTabTextColorId:I

.field private mTabTextSize:I

.field private mTabWidgetBgId:I

.field private mTabWidgetBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/16 v0, 0x1f8

    const/16 v1, 0x54

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/LeTopWidgetArc;-><init>(Landroid/content/Context;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TabWidgetwidth"    # I
    .param p3, "TabWidgetheight"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTopWidgetArc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    .line 51
    iput p3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    .line 28
    const/16 v1, 0x1f8

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    .line 29
    const/16 v1, 0x54

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    .line 32
    const/16 v1, 0x2a

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextSize:I

    .line 33
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    .line 34
    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    .line 38
    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    .line 41
    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    .line 57
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    .line 58
    sget-object v1, Lcom/android/internal/R$styleable;->leTopTabWidget:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "ta":Landroid/content/res/TypedArray;
    const v1, 0x1080630

    .line 59
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    .line 62
    const v1, 0x1080631

    .line 61
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    .line 63
    const/4 v1, 0x1

    .line 64
    const v2, 0x1080633

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    .line 66
    const v1, 0x1080632

    .line 65
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    .line 67
    const/4 v1, 0x4

    .line 68
    const v2, 0x1080635

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextColorId:I

    .line 69
    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabCounts:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 70
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextSize:I

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->initView()V

    .line 55
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const v5, 0x1080630

    const/4 v7, -0x1

    .line 144
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    if-nez v4, :cond_0

    .line 145
    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 149
    .local v2, "drawableBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopWidgetArc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 151
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v4, v7, :cond_1

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 155
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v4, v7, :cond_2

    if-eqz v0, :cond_2

    .line 156
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 159
    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    if-nez v4, :cond_3

    .line 160
    const v4, 0x1080631

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    .line 162
    :cond_3
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    if-nez v4, :cond_4

    .line 163
    const v4, 0x1080633

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    .line 165
    :cond_4
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    if-nez v4, :cond_5

    .line 166
    const v4, 0x1080632

    iput v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    .line 168
    :cond_5
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v4, v7, :cond_7

    .line 169
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 174
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 175
    iget-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 176
    .local v1, "drawable":Landroid/graphics/drawable/GradientDrawable;
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v4, v7, :cond_6

    if-eqz v1, :cond_6

    .line 177
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 174
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060130

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 180
    .restart local v3    # "i":I
    :cond_8
    iget v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeTopWidgetArc;->setCurrentTab(I)V

    .line 143
    .end local v3    # "i":I
    :cond_9
    return-void
.end method


# virtual methods
.method public addTab(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "tabBtn":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    .line 79
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 81
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 84
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->requestLayout()V

    .line 76
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int v3, v6, v7

    .line 105
    .local v3, "left":I
    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v6, 0x0

    .line 106
    .local v5, "top":I
    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    add-int v4, v3, v6

    .line 107
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 108
    .local v0, "bottom":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    .local v1, "dividerStrip":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 110
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    div-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 115
    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    add-int v4, v3, v6

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method public getCurrentTab()I
    .locals 2

    .prologue
    .line 329
    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-ltz v0, :cond_0

    .line 330
    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    return v0

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "return currentIndex is error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabView(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "index must  less than tabCount-1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    if-gez p1, :cond_1

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "index must more than 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 194
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getTabView is null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x1

    .line 121
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 122
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    .line 131
    :cond_2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidth:I

    iget-object v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 132
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    if-nez v2, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->removeAllViews()V

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeTopWidgetArc;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_3
    iput-boolean v4, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->isAdd:Z

    .line 138
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopWidgetArc;->setVerticalGravity(I)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeTopWidgetArc;->setHorizontalGravity(I)V

    .line 120
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 248
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080631

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 249
    .local v2, "drawableLeftBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080633

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 250
    .local v3, "drawableRightBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080632

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    .local v1, "drawableCenterBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060130

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    .line 252
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106012f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    .line 253
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    .line 254
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 255
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "you haven\'t add tab"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 258
    if-nez v4, :cond_6

    .line 259
    if-ne v4, p1, :cond_4

    .line 260
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 262
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 265
    :cond_2
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_3

    .line 266
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 257
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_3
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 271
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_5

    .line 273
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 275
    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 280
    :cond_6
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_b

    .line 281
    if-ne v4, p1, :cond_9

    .line 282
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 284
    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_7

    .line 286
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 289
    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_8

    .line 290
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 292
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 295
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_a

    .line 297
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 299
    :cond_a
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 303
    :cond_b
    if-ne v4, p1, :cond_e

    .line 304
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 306
    .restart local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_c

    .line 308
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 311
    :cond_c
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    if-eq v5, v8, :cond_d

    .line 312
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 314
    :cond_d
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 317
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    :cond_e
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    if-eq v5, v8, :cond_f

    .line 319
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 321
    :cond_f
    iget-object v5, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget v6, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    .line 247
    :cond_10
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 345
    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-eq v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_1
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 337
    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mCurrentIndex:I

    if-ne v0, v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method public setTabBgColor(II)V
    .locals 0
    .param p1, "pressColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabPressBgColor:I

    .line 90
    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabNormalBgColor:I

    .line 91
    iput p2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnPressColor:I

    .line 92
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    .line 93
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->initView()V

    .line 94
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->invalidate()V

    .line 88
    return-void
.end method

.method public setTabListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTopWidgetArc;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void
.end method

.method public setTabText(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "textId"    # I

    .prologue
    .line 203
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 4
    .param p1, "textSzie"    # I

    .prologue
    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method public setTabWidgetBg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    .line 213
    iget v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTopWidgetArc;->setBackgroundResource(I)V

    .line 211
    return-void
.end method

.method public setTabWidgetLeftBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    .line 218
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 216
    return-void
.end method

.method public setTabWidgetRecBg(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    .line 236
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRecBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public setTabWidgetRightBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabRightBgId:I

    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 221
    return-void
.end method

.method public setTabWidgetTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabTextColorId:I

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->btnColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public setmDivideWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/letv/leui/widget/LeTopWidgetArc;->mDivideWidth:I

    .line 199
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopWidgetArc;->requestLayout()V

    .line 197
    return-void
.end method
