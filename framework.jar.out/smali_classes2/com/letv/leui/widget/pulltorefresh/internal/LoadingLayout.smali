.class public abstract Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I = null

.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I = null

.field static final ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh-LoadingLayout"


# instance fields
.field protected final mHeaderImage:Landroid/widget/ImageView;

.field protected final mHeaderProgress:Landroid/widget/ProgressBar;

.field private final mHeaderText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/view/ViewGroup;

.field protected final mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mPullLabel:Ljava/lang/CharSequence;

.field private mRefreshingLabel:Ljava/lang/CharSequence;

.field private mReleaseLabel:Ljava/lang/CharSequence;

.field protected final mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

.field private final mSubHeaderText:Landroid/widget/TextView;

.field private mUseIntrinsicAnimation:Z


# direct methods
.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

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

.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v6, 0x3

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 70
    iput-object p3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    .line 72
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x10900cd

    invoke-virtual {v5, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    :goto_0
    const v5, 0x1020471

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    .line 83
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x1020474

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    .line 84
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x1020473

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    .line 86
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x1020475

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    .line 87
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    const v7, 0x1020472

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    .line 89
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_1

    .line 103
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_9

    const/16 v5, 0x50

    :goto_1
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 106
    const v5, 0x10405b4

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 107
    const v5, 0x10405b6

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 108
    const v5, 0x10405b5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 112
    :goto_2
    invoke-virtual {p4, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-virtual {p4, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v5, 0xb

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 121
    .local v4, "styleID":Landroid/util/TypedValue;
    const/16 v5, 0xb

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 122
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setTextAppearance(I)V

    .line 124
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_1
    const/16 v5, 0xc

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .restart local v4    # "styleID":Landroid/util/TypedValue;
    const/16 v5, 0xc

    invoke-virtual {p4, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 127
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubTextAppearance(I)V

    .line 131
    .end local v4    # "styleID":Landroid/util/TypedValue;
    :cond_2
    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 132
    invoke-virtual {p4, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 133
    .local v1, "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 137
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_3
    invoke-virtual {p4, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 138
    invoke-virtual {p4, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 139
    .restart local v1    # "colors":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    .line 140
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    .end local v1    # "colors":Landroid/content/res/ColorStateList;
    :cond_4
    const/4 v2, 0x0

    .line 146
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    const/4 v5, 0x7

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 152
    .end local v2    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 155
    invoke-virtual {p4, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    invoke-virtual {p4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 168
    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getDefaultDrawableResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    :cond_7
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 67
    return-void

    .line 74
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x10900cc

    invoke-virtual {v5, v7, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 93
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne p3, v5, :cond_8

    const/16 v5, 0x30

    :goto_4
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    const v5, 0x10405b7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 97
    const v5, 0x10405b9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 98
    const v5, 0x10405b8

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_8
    move v5, v6

    .line 93
    goto :goto_4

    .line 103
    :cond_9
    const/4 v5, 0x5

    goto/16 :goto_1

    .line 161
    :pswitch_2
    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 162
    const/16 v5, 0x9

    invoke-virtual {p4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 152
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private setSubHeaderText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 343
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSubTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 358
    :cond_0
    return-void
.end method

.method private setSubTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 364
    :cond_0
    return-void
.end method

.method private setTextAppearance(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 370
    :cond_1
    return-void
.end method

.method private setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public final getContentSize()I
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mInnerLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getDefaultDrawableResId()I
.end method

.method public final hideAllViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_3
    return-void
.end method

.method protected abstract onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final onPull(F)V
    .locals 1
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPullImpl(F)V

    .line 215
    :cond_0
    return-void
.end method

.method protected abstract onPullImpl(F)V
.end method

.method public final pullToRefresh()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefreshImpl()V

    .line 221
    return-void
.end method

.method protected abstract pullToRefreshImpl()V
.end method

.method public final refreshing()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :cond_1
    return-void

    .line 239
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshingImpl()V

    goto :goto_0
.end method

.method protected abstract refreshingImpl()V
.end method

.method public final releaseToRefresh()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefreshImpl()V

    .line 247
    return-void
.end method

.method protected abstract releaseToRefreshImpl()V
.end method

.method public final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :cond_1
    :goto_1
    return-void

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->resetImpl()V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected abstract resetImpl()V
.end method

.method public final setHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 178
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setSubHeaderText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public final setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mUseIntrinsicAnimation:Z

    .line 289
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V

    .line 283
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mPullLabel:Ljava/lang/CharSequence;

    .line 292
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mRefreshingLabel:Ljava/lang/CharSequence;

    .line 296
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mReleaseLabel:Ljava/lang/CharSequence;

    .line 300
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 305
    return-void
.end method

.method public final setWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->requestLayout()V

    .line 184
    return-void
.end method

.method public final showInvisibleViews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    :cond_3
    return-void
.end method
