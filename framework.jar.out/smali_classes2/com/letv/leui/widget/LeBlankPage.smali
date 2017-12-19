.class public Lcom/letv/leui/widget/LeBlankPage;
.super Landroid/widget/FrameLayout;
.source "LeBlankPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBlankPage$Mode;,
        Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_LeBlankPage$ModeSwitchesValues:[I

.field private static SCREEN_HEIGHT:I

.field private static SCREEN_WIDTH:I


# instance fields
.field private buttonBg:Landroid/graphics/drawable/Drawable;

.field private buttonTextColor:I

.field private buttonTextColorList:Landroid/content/res/ColorStateList;

.field private desView:Landroid/widget/TextView;

.field private description:Ljava/lang/CharSequence;

.field private disableColorAttr:[I

.field private hasLayout:Z

.field private hasTint:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mIsFullScreen:Z

.field private mIsShowInputMethed:Z

.field private mOrientation:I

.field private message:Ljava/lang/CharSequence;

.field private mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field private msgView:Landroid/widget/TextView;

.field private pressedColorAttr:[I

.field private primaryBg:Landroid/graphics/drawable/Drawable;

.field private primaryBtn:Landroid/widget/Button;

.field private primaryText:Ljava/lang/CharSequence;

.field private primaryTextColor:I

.field private primaryTextColorList:Landroid/content/res/ColorStateList;

.field private secondBg:Landroid/graphics/drawable/Drawable;

.field private secondBtn:Landroid/widget/Button;

.field private secondText:Ljava/lang/CharSequence;

.field private secondTextColor:I

.field private secondTextColorList:Landroid/content/res/ColorStateList;

.field private textPressedColor:I

.field private thirdBg:Landroid/graphics/drawable/Drawable;

.field private thirdBtn:Landroid/widget/Button;

.field private thirdText:Ljava/lang/CharSequence;

.field private thirdTextColor:I

.field private thirdTextColorList:Landroid/content/res/ColorStateList;

.field private tintColor:I


# direct methods
.method private static synthetic -getcom_letv_leui_widget_LeBlankPage$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage;->-com_letv_leui_widget_LeBlankPage$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage;->-com_letv_leui_widget_LeBlankPage$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/LeBlankPage$Mode;->values()[Lcom/letv/leui/widget/LeBlankPage$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/letv/leui/widget/LeBlankPage$Mode;->THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/letv/leui/widget/LeBlankPage;->-com_letv_leui_widget_LeBlankPage$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBlankPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeBlankPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v6, -0x1

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    .line 63
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    .line 257
    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->pressedColorAttr:[I

    .line 258
    new-array v6, v9, [I

    const v7, 0x101009e

    aput v7, v6, v8

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->disableColorAttr:[I

    .line 598
    iput-boolean v8, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    .line 76
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mContext:Landroid/content/Context;

    .line 78
    sget-object v6, Lcom/android/internal/R$styleable;->LeBlankPage:[I

    invoke-virtual {p1, p2, v6, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 81
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 83
    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    .line 81
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    goto :goto_1

    .line 88
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 91
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    goto :goto_1

    .line 94
    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 97
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 100
    :pswitch_6
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 103
    :pswitch_7
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 106
    :pswitch_8
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 109
    :pswitch_9
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 112
    :pswitch_a
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 115
    :pswitch_b
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 118
    :pswitch_c
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 121
    :pswitch_d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 124
    :pswitch_e
    iget v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    goto :goto_1

    .line 127
    :pswitch_f
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    .line 128
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    goto :goto_1

    .line 131
    :pswitch_10
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    goto :goto_1

    .line 134
    :pswitch_11
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    goto :goto_1

    .line 139
    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    iget-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    .line 143
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 144
    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 145
    .local v4, "mDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sput v6, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_WIDTH:I

    .line 146
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_HEIGHT:I

    .line 150
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->loadLayout()V

    .line 73
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isEmptyText(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private layoutUI()V
    .locals 12

    .prologue
    const-wide v10, 0x3fe0a3d70a3d70a4L    # 0.52

    const/4 v8, 0x1

    .line 609
    const v7, 0x10203cd

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 610
    .local v0, "blankLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 612
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 613
    .local v1, "halfBlankLayout":I
    const/4 v7, 0x2

    new-array v4, v7, [I

    .line 614
    .local v4, "position":[I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 615
    aget v2, v4, v8

    .line 618
    .local v2, "marginScreenTop":I
    if-ltz v2, :cond_1

    .line 619
    iput-boolean v8, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    .line 624
    const/4 v6, 0x0

    .line 626
    .local v6, "topMargin":I
    iget v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    if-ne v7, v8, :cond_3

    .line 627
    sget v5, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_HEIGHT:I

    .line 628
    .local v5, "screenPortraitHeight":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    if-nez v7, :cond_2

    .line 629
    invoke-static {}, Lcom/letv/leui/widget/LeBlankPage;->-getcom_letv_leui_widget_LeBlankPage$ModeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 665
    :goto_0
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    if-eqz v7, :cond_0

    .line 666
    sub-int v7, v6, v1

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 667
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    :cond_0
    return-void

    .line 621
    .end local v5    # "screenPortraitHeight":I
    .end local v6    # "topMargin":I
    :cond_1
    return-void

    .line 632
    .restart local v5    # "screenPortraitHeight":I
    .restart local v6    # "topMargin":I
    :pswitch_0
    int-to-double v8, v5

    const-wide v10, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 633
    goto :goto_0

    .line 636
    :pswitch_1
    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 637
    goto :goto_0

    .line 639
    :pswitch_2
    int-to-double v8, v5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 640
    goto :goto_0

    .line 643
    :cond_2
    int-to-double v8, v5

    const-wide v10, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    .line 646
    .end local v5    # "screenPortraitHeight":I
    :cond_3
    sget v5, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_WIDTH:I

    .line 647
    .restart local v5    # "screenPortraitHeight":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    if-nez v7, :cond_4

    .line 648
    invoke-static {}, Lcom/letv/leui/widget/LeBlankPage;->-getcom_letv_leui_widget_LeBlankPage$ModeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 650
    :pswitch_3
    int-to-double v8, v5

    const-wide v10, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 651
    goto :goto_0

    .line 653
    :pswitch_4
    int-to-double v8, v5

    const-wide v10, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 654
    goto :goto_0

    .line 658
    :pswitch_5
    int-to-double v8, v5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    .line 659
    goto :goto_0

    .line 662
    :cond_4
    int-to-double v8, v5

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 648
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private loadLayout()V
    .locals 2

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->removeAllViews()V

    .line 335
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_6

    .line 336
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109007d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 340
    :goto_0
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    .line 341
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    .line 342
    const v0, 0x1020373

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    .line 343
    const v0, 0x10203cf

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    .line 344
    const v0, 0x10203d0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    .line 345
    const v0, 0x10203d1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    .line 347
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    .line 367
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    .line 371
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 333
    return-void

    .line 338
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109007e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private matchColorAttr([I[I)Z
    .locals 4
    .param p1, "src"    # [I
    .param p2, "des"    # [I

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 283
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 284
    aget v2, p1, v1

    aget v3, p2, v0

    if-eq v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v0

    neg-int v3, v3

    if-ne v2, v3, :cond_1

    .line 281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 287
    const/4 v2, 0x0

    return v2

    .line 283
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private tintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 251
    :cond_0
    return-void
.end method

.method private tintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 261
    const-string/jumbo v3, "mColors"

    invoke-static {p1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 262
    .local v0, "colors":[I
    const-string/jumbo v3, "mStateSpecs"

    invoke-static {p1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 264
    .local v2, "stateSpecs":[[I
    if-eqz v0, :cond_4

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 266
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    array-length v3, v3

    if-nez v3, :cond_2

    .line 267
    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v3, :cond_1

    .line 268
    iget v3, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    aput v3, v0, v1

    .line 265
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_2
    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/letv/leui/widget/LeBlankPage;->pressedColorAttr:[I

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/widget/LeBlankPage;->matchColorAttr([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    iget v3, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    aput v3, v0, v1

    goto :goto_1

    .line 271
    :cond_3
    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/letv/leui/widget/LeBlankPage;->disableColorAttr:[I

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/widget/LeBlankPage;->matchColorAttr([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v3, :cond_1

    .line 273
    iget v3, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    const/16 v6, 0x7d

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v3, "mColors"

    invoke-static {p1, v3, v0}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method private updateBtnBg()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_3
    :goto_2
    return-void

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private updateBtnText()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    .line 299
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 310
    :cond_1
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    if-eqz v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 321
    :cond_2
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    if-eqz v0, :cond_a

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 294
    :cond_3
    :goto_2
    return-void

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    .line 303
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 304
    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_6

    .line 305
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 315
    :cond_8
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_9

    .line 316
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    .line 317
    :cond_9
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b

    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    .line 325
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 326
    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_c

    .line 327
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 328
    :cond_c
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method


# virtual methods
.method public clearTint()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    .line 567
    return-void
.end method

.method public forceInvalidateUI()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    .line 175
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->requestLayout()V

    .line 173
    return-void
.end method

.method public getButtonBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    return v0
.end method

.method public getButtonTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDesView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMsgView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPrimaryBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    return v0
.end method

.method public getPrimaryTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSecondBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSecondBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getSecondText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondTextColor()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    return v0
.end method

.method public getSecondTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThirdBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThirdBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getThirdText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThirdTextColor()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    return v0
.end method

.method public getThirdTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    return v0
.end method

.method public invalidateUI()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 179
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    :goto_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :goto_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 217
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 178
    return-void

    :cond_0
    move v0, v2

    .line 182
    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_1

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_2

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_3

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_4
.end method

.method public isFullScreen(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    .line 688
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    .line 686
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 590
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 591
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    .line 592
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->loadLayout()V

    .line 593
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    .line 589
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 602
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 603
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    if-nez v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->layoutUI()V

    .line 601
    :cond_0
    return-void
.end method

.method public setButtonBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 407
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    .line 408
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    .line 409
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    .line 410
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    .line 411
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 406
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 517
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    .line 518
    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    .line 519
    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    .line 520
    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    .line 521
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    .line 522
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    .line 523
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    .line 524
    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    .line 525
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 516
    return-void
.end method

.method public setButtonTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "buttonTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 477
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    .line 478
    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    .line 479
    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    .line 480
    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    .line 481
    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    .line 482
    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    .line 483
    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    .line 484
    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    .line 485
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 476
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    .line 448
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 446
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    .line 379
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 377
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    .line 441
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 439
    return-void
.end method

.method public setPrimaryBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "primaryBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    .line 418
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 416
    return-void
.end method

.method public setPrimaryOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 575
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "primaryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    .line 455
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 453
    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 1
    .param p1, "primaryTextColor"    # I

    .prologue
    .line 531
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    .line 533
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 530
    return-void
.end method

.method public setPrimaryTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "primaryTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    .line 493
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 490
    return-void
.end method

.method public setSecondBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "secondBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    .line 425
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 423
    return-void
.end method

.method public setSecondOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 579
    return-void
.end method

.method public setSecondText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "secondText"    # Ljava/lang/CharSequence;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    .line 462
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 460
    return-void
.end method

.method public setSecondTextColor(I)V
    .locals 1
    .param p1, "secondTextColor"    # I

    .prologue
    .line 539
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    .line 541
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 538
    return-void
.end method

.method public setSecondTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "secondTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    .line 501
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 498
    return-void
.end method

.method public setShowInputMethed(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    .line 677
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    .line 675
    return-void
.end method

.method public setThirdBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thirdBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    .line 432
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 430
    return-void
.end method

.method public setThirdOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 583
    return-void
.end method

.method public setThirdText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "thirdText"    # Ljava/lang/CharSequence;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    .line 469
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    .line 467
    return-void
.end method

.method public setThirdTextColor(I)V
    .locals 1
    .param p1, "thirdTextColor"    # I

    .prologue
    .line 547
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    .line 549
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 546
    return-void
.end method

.method public setThirdTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thirdTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    .line 509
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 506
    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 562
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    .line 564
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    .line 565
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    .line 561
    return-void
.end method
