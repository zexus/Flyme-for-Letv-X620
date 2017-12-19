.class public Lcom/letv/leui/app/LeTopWidget;
.super Landroid/widget/RelativeLayout;
.source "LeTopWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/app/LeTopWidget$1;
    }
.end annotation


# static fields
.field private static final LAND_CENTER_TV_WIDTH:I = 0x15e

.field private static final LAND_CENTER_TV_WIDTH_OTNER:I = 0x12c

.field private static final LAND_LEFT_TV_WIDTH_OTNER:I = 0x64

.field private static final LAYOUT_MARGIN_VALUE:I = 0xe

.field private static final LEFT_DEFAULT_MODE:I = 0x1

.field public static final LEFT_ONLY_LOGO:I = 0x1

.field public static final LEFT_ONLY_TITLE:I = 0x0

.field public static final LEFT_TITLE_LOGO:I = 0x2

.field public static final LEFT_TITLE_LOGO_GONE:I = 0x4

.field private static final PORT_CENTER_TV_WIDTH:I = 0xc8

.field private static final RIGHT_DEFAULT_MODE:I = 0x32

.field public static final RIGHT_ONLY_LOGO:I = 0x16

.field public static final RIGHT_ONLY_TITLE:I = 0x8

.field public static final RIGHT_TITLE_LOGO_GONE:I = 0x32

.field private static final TOP_WIDGET_VIEW_HEIGHT:I = 0x30


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private mActionBar:Landroid/view/View;

.field private mBackIV:Landroid/widget/ImageView;

.field private mBackIconId:I

.field private mBackTV:Landroid/widget/TextView;

.field private mCenterTV:Landroid/widget/TextView;

.field private mCenterText:Ljava/lang/CharSequence;

.field private mCenterTvColor:I

.field private mCenterTvSize:I

.field private mContext:Landroid/content/Context;

.field private mLeTopWidgetBgId:I

.field private mLeftLayout:Landroid/widget/LinearLayout;

.field private mLeftMode:I

.field private mLeftText:Ljava/lang/CharSequence;

.field private mLeftTvColor:I

.field private mLeftTvSize:I

.field private mRighTvSize:I

.field private mRightIV:Landroid/widget/ImageView;

.field private mRightIconId:I

.field private mRightLayout:Landroid/widget/LinearLayout;

.field private mRightMode:I

.field private mRightTV:Landroid/widget/TextView;

.field private mRightText:Ljava/lang/CharSequence;

.field private mRightTvColor:I

.field private mTextColor:I

.field private mTextSize:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/app/LeTopWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    new-instance v3, Lcom/letv/leui/app/LeTopWidget$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/app/LeTopWidget$1;-><init>(Lcom/letv/leui/app/LeTopWidget;)V

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->clickListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v3, "layout_inflater"

    .line 72
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 74
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x10900e6

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    iget-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v4, 0x42400000    # 48.0f

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->setMinimumHeight(I)V

    .line 76
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v2, "param":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->setMinimumWidth(I)V

    .line 78
    const v3, 0x1020491

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    .line 79
    const v3, 0x1020492

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    .line 80
    const v3, 0x1020493

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    .line 81
    const v3, 0x1020494

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    .line 82
    const v3, 0x1020495

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    .line 83
    const v3, 0x102048a

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v3, 0x102048c

    invoke-virtual {p0, v3}, Lcom/letv/leui/app/LeTopWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightLayout:Landroid/widget/LinearLayout;

    .line 86
    invoke-direct {p0}, Lcom/letv/leui/app/LeTopWidget;->reMeasureWidth()V

    .line 87
    sget-object v3, Lcom/android/internal/R$styleable;->leTopWidget:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftText:Ljava/lang/CharSequence;

    .line 89
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightText:Ljava/lang/CharSequence;

    .line 90
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterText:Ljava/lang/CharSequence;

    .line 92
    const v3, 0x10804cb

    .line 91
    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIconId:I

    .line 93
    const/4 v3, 0x4

    .line 94
    const v4, 0x10804cc

    .line 93
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIconId:I

    .line 95
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    .line 96
    const/16 v3, 0xd

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    .line 97
    const/4 v3, 0x5

    const v4, 0x106000b

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeTopWidgetBgId:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    .line 99
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvColor:I

    .line 100
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvColor:I

    .line 101
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextColor:I

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTvColor:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    .line 103
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvSize:I

    .line 104
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mRighTvSize:I

    .line 106
    iget v3, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    .line 105
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvSize:I

    .line 107
    invoke-direct {p0}, Lcom/letv/leui/app/LeTopWidget;->initView()V

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 375
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIconId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftLogo(I)V

    .line 116
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIconId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightLogo(I)V

    .line 117
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftMode(I)V

    .line 118
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightMode(I)V

    .line 119
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeTopWidgetBgId:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setTopWidgetBg(I)V

    .line 120
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTvSize(I)V

    .line 121
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTvSize(I)V

    .line 122
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mTextSize:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTvSize(I)V

    .line 123
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setLeftTvColor(I)V

    .line 124
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setCenterTvColor(I)V

    .line 125
    iget v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTvColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/app/LeTopWidget;->setRightTvColor(I)V

    .line 111
    return-void
.end method

.method private reMeasureWidth()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x42c80000    # 100.0f

    const/16 v6, 0x32

    .line 129
    const/16 v3, 0x438

    .line 130
    .local v3, "screenWidth":I
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 132
    .local v1, "dis":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 134
    .end local v1    # "dis":Landroid/view/Display;
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 135
    .local v0, "cf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 136
    .local v2, "ori":I
    if-ne v2, v9, :cond_7

    .line 137
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_2

    .line 138
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v8, :cond_3

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-nez v4, :cond_4

    .line 141
    :cond_3
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_5

    .line 142
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 140
    :cond_4
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v9, :cond_3

    .line 144
    :cond_5
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_6

    .line 145
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43af0000    # 350.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 147
    :cond_6
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43960000    # 300.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 148
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 149
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 151
    :cond_7
    if-ne v2, v8, :cond_1

    .line 152
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_8

    .line 153
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    .line 154
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 155
    :cond_8
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v8, :cond_9

    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-nez v4, :cond_a

    .line 156
    :cond_9
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_b

    .line 157
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_b

    .line 158
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 155
    :cond_a
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    if-eq v4, v9, :cond_9

    .line 159
    :cond_b
    iget v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    if-ne v4, v6, :cond_c

    .line 160
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43480000    # 200.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 162
    :cond_c
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x43200000    # 160.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 163
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v7}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 164
    iget-object v4, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42a00000    # 80.0f

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0
.end method

.method private setBg(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    return-void
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    const v3, 0x3c23d70a    # 0.01f

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "alpha":F
    if-eqz p2, :cond_1

    .line 400
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v1, v3

    .line 404
    :goto_0
    if-eqz p1, :cond_0

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 397
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v1, v3

    goto :goto_0
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_0
    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "color"    # I

    .prologue
    .line 214
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    return-void
.end method

.method private setTextSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "size"    # I

    .prologue
    .line 295
    int-to-float v0, p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    return-void
.end method


# virtual methods
.method public getCenterTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftEnable()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getLeftLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLeftLogo()Landroid/view/View;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightEnable()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getRightTextView()Landroid/view/View;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightView()Landroid/view/View;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setCenterTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public setCenterTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public setCenterTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    .line 205
    return-void
.end method

.method public setCenterTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mCenterTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    .line 286
    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    .line 330
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 331
    const/4 v2, -0x1

    .line 330
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 333
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 335
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    return-void
.end method

.method public setCenterView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    .line 339
    if-nez p2, :cond_0

    .line 340
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, -0x2

    .line 341
    const/4 v1, -0x1

    .line 340
    invoke-direct {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 342
    .restart local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 343
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    const/16 v0, 0xe

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 346
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    return-void
.end method

.method public setLeftLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBg(Landroid/view/View;I)V

    .line 217
    return-void
.end method

.method public setLeftMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 239
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftMode:I

    .line 233
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 245
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v1, v2}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 251
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 252
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method public setLeftTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    return-void
.end method

.method public setLeftTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method public setLeftTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    .line 201
    return-void
.end method

.method public setLeftTvEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    .line 378
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setLeftTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mBackTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    .line 282
    return-void
.end method

.method public setLeftView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    .line 320
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 321
    const/4 v2, -0x1

    .line 320
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 323
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 325
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    return-void
.end method

.method public setRightLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBg(Landroid/view/View;I)V

    .line 221
    return-void
.end method

.method public setRightMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 269
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    :cond_0
    :goto_0
    iput p1, p0, Lcom/letv/leui/app/LeTopWidget;->mRightMode:I

    .line 268
    return-void

    .line 272
    :cond_1
    if-ne p1, v1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :cond_2
    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    return-void
.end method

.method public setRightTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    return-void
.end method

.method public setRightTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public setRightTvColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextColor(Landroid/widget/TextView;I)V

    .line 209
    return-void
.end method

.method public setRightTvEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    .line 387
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/LeTopWidget;->setEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public setRightTvSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/letv/leui/app/LeTopWidget;->mRightTV:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/app/LeTopWidget;->setTextSize(Landroid/widget/TextView;I)V

    .line 290
    return-void
.end method

.method public setRightView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    .line 310
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 311
    const/4 v2, -0x1

    .line 310
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/app/LeTopWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/app/LeTopWidget;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 313
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/app/LeTopWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void
.end method

.method public setTopWidgetBg(I)V
    .locals 0
    .param p1, "ResourceId"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/letv/leui/app/LeTopWidget;->setBackgroundResource(I)V

    .line 229
    return-void
.end method
