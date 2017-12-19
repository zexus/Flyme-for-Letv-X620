.class public Lcom/letv/leui/widget/LeTopTabWidget;
.super Landroid/widget/LinearLayout;
.source "LeTopTabWidget.java"


# instance fields
.field private btnColor:Landroid/content/res/ColorStateList;

.field private btnPressColor:Landroid/content/res/ColorStateList;

.field private isAdd:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDivideWidth:I

.field private mTabCounts:I

.field private mTabHeight:I

.field private mTabLeftBgId:I

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
    const/4 v1, 0x2

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    .line 27
    const/16 v0, 0x1f8

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    .line 28
    const/16 v0, 0x54

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    .line 29
    const/16 v0, 0x2a

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    .line 38
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    .line 27
    const/16 v1, 0x1f8

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    .line 28
    const/16 v1, 0x54

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    .line 29
    const/16 v1, 0x2a

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    .line 30
    iput-boolean v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    .line 31
    const/4 v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    .line 35
    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    .line 52
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    .line 53
    sget-object v1, Lcom/android/internal/R$styleable;->leTopTabWidget:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    .line 55
    const v2, 0x1080630

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    .line 57
    const v1, 0x1080631

    .line 56
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    .line 58
    const/4 v1, 0x1

    .line 59
    const v2, 0x1080633

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    .line 61
    const v1, 0x1080632

    .line 60
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    .line 62
    const/4 v1, 0x4

    .line 63
    const v2, 0x1080635

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    .line 64
    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 65
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->initView()V

    .line 50
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "tabCounts must  more than two"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    if-nez v3, :cond_1

    .line 103
    const v3, 0x1080630

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    .line 105
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTopTabWidget;->setBackgroundResource(I)V

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    if-ge v1, v3, :cond_8

    .line 107
    new-instance v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 108
    .local v2, "tabBtn":Landroid/widget/Button;
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    if-nez v3, :cond_2

    .line 109
    const v3, 0x1080635

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 112
    .local v0, "btnColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 114
    iget-object v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    if-nez v1, :cond_4

    .line 116
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    if-nez v3, :cond_3

    .line 117
    const v3, 0x1080631

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    .line 119
    :cond_3
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 106
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_6

    .line 121
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    if-nez v3, :cond_5

    .line 122
    const v3, 0x1080633

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    .line 124
    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 126
    :cond_6
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    if-nez v3, :cond_7

    .line 127
    const v3, 0x1080632

    iput v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    .line 129
    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 98
    .end local v0    # "btnColor":Landroid/content/res/ColorStateList;
    .end local v2    # "tabBtn":Landroid/widget/Button;
    :cond_8
    return-void
.end method


# virtual methods
.method public addTab(III)V
    .locals 0
    .param p1, "tabCounts"    # I
    .param p2, "TabWidgetwidth"    # I
    .param p3, "TabWidgetheight"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    .line 44
    iput p2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    .line 45
    iput p3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    .line 46
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->initView()V

    .line 47
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->requestLayout()V

    .line 42
    return-void
.end method

.method public getCurrentTab()I
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-ltz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    return v0

    .line 240
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
    .line 135
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "index must  less than tabCount-1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    if-gez p1, :cond_1

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "index must more than 0 "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "getTabView is null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x6

    .line 73
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 74
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    .line 80
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidth:I

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    iget v4, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 81
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    .line 80
    div-int/2addr v2, v3

    .line 81
    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabHeight:I

    .line 80
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    if-nez v2, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->removeAllViews()V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    if-ge v0, v2, :cond_3

    .line 86
    if-lez v0, :cond_2

    .line 87
    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/LeTopTabWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_3
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeTopTabWidget;->isAdd:Z

    .line 92
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/letv/leui/widget/LeTopTabWidget;->setPadding(IIII)V

    .line 93
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTopTabWidget;->setVerticalGravity(I)V

    .line 94
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeTopTabWidget;->setHorizontalGravity(I)V

    .line 72
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    .line 205
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 207
    if-nez v0, :cond_3

    .line 208
    if-ne v0, p1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 213
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 216
    :cond_3
    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabCounts:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 217
    if-ne v0, p1, :cond_4

    .line 218
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 222
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 225
    :cond_5
    if-ne v0, p1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 230
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 198
    :cond_7
    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 255
    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-eq v0, v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public setSelectTextColor(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mCurrentIndex:I

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->btnPressColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 245
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method public setTabListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeTopTabWidget;->getTabView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public setTabText(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "textId"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method

.method public setTabTextSize(I)V
    .locals 4
    .param p1, "textSzie"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    int-to-float v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public setTabWidgetBg(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    .line 163
    iget v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTopTabWidget;->setBackgroundResource(I)V

    .line 161
    return-void
.end method

.method public setTabWidgetLeftBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    .line 168
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 166
    return-void
.end method

.method public setTabWidgetRecBg(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    .line 187
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRecBgId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method public setTabWidgetRightBg(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabRightBgId:I

    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabLeftBgId:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 171
    return-void
.end method

.method public setTabWidgetTextColor(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    .line 178
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabTextColorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 179
    .local v0, "btnColor":Landroid/content/res/ColorStateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mTabWidgetBtns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public setmDivideWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/letv/leui/widget/LeTopTabWidget;->mDivideWidth:I

    .line 149
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopTabWidget;->requestLayout()V

    .line 147
    return-void
.end method
