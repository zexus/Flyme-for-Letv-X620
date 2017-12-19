.class public final Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I = null

.field static final DEFAULT_OVERSCROLL_SCALE:F = 1.0f

.field static final LOG_TAG:Ljava/lang/String; = "OverscrollHelper"


# direct methods
.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

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
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRange"    # I
    .param p6, "fuzzyThreshold"    # I
    .param p7, "scaleFactor"    # F
    .param p8, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIIIFZ)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 115
    move v1, p3

    .line 116
    .local v1, "deltaValue":I
    move v4, p4

    .line 117
    .local v4, "scrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v0

    .line 123
    .local v0, "currentScrollValue":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    :cond_0
    :goto_1
    return-void

    .line 109
    .end local v0    # "currentScrollValue":I
    .end local v1    # "deltaValue":I
    .end local v4    # "scrollValue":I
    :pswitch_0
    move v1, p1

    .line 110
    .restart local v1    # "deltaValue":I
    move v4, p2

    .line 111
    .restart local v4    # "scrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v0

    .restart local v0    # "currentScrollValue":I
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    .line 128
    .local v2, "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p8, :cond_3

    .line 166
    :cond_2
    if-eqz p8, :cond_0

    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 170
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    .line 128
    :cond_3
    if-eqz v1, :cond_2

    .line 129
    add-int v3, v1, v4

    .line 137
    .local v3, "newScrollValue":I
    rsub-int/lit8 v5, p6, 0x0

    if-ge v3, v5, :cond_5

    .line 140
    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    if-nez v0, :cond_4

    .line 144
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 147
    :cond_4
    add-int v5, v0, v3

    int-to-float v5, v5

    mul-float/2addr v5, p7

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    .line 149
    :cond_5
    add-int v5, p5, p6

    if-le v3, v5, :cond_7

    .line 152
    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    if-nez v0, :cond_6

    .line 156
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 159
    :cond_6
    add-int v5, v0, v3

    sub-int/2addr v5, p5

    int-to-float v5, v5

    mul-float/2addr v5, p7

    float-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_1

    .line 161
    :cond_7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, p6, :cond_8

    .line 162
    sub-int v5, v3, p5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, p6, :cond_0

    .line 164
    :cond_8
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v6, 0x0

    new-array v6, v6, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRange"    # I
    .param p6, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIIFZ)V

    .line 76
    return-void
.end method

.method public static overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "scrollX"    # I
    .param p3, "deltaY"    # I
    .param p4, "scrollY"    # I
    .param p5, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<*>;IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "view":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    .line 52
    return-void
.end method
