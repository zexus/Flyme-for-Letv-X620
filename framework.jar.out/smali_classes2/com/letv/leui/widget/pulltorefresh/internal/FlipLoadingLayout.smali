.class public Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;
.super Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
.source "FlipLoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I = null

.field static final FLIP_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 42
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p2, v0, :cond_0

    const/16 v7, -0xb4

    .line 44
    .local v7, "rotateAngle":I
    :goto_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 45
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 44
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 47
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 50
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 51
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 50
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 52
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 39
    return-void

    .line 42
    .end local v7    # "rotateAngle":I
    :cond_0
    const/16 v7, 0xb4

    .restart local v7    # "rotateAngle":I
    goto :goto_0
.end method

.method private getDrawableRotationAngle()F
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "angle":F
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 125
    :pswitch_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_1

    .line 126
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 128
    :cond_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mScrollDirection:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v1, v2, :cond_0

    .line 134
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 118
    const v0, 0x10805cf

    return v0
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 61
    .local v0, "dHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 68
    .local v1, "dWidth":I
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 69
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 76
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v5, v0

    int-to-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 79
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->getDrawableRotationAngle()F

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 80
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 58
    .end local v0    # "dHeight":I
    .end local v1    # "dWidth":I
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 0
    .param p1, "scaleOfLayout"    # F

    .prologue
    .line 85
    return-void
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 100
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    return-void
.end method

.method protected resetImpl()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/FlipLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void
.end method
