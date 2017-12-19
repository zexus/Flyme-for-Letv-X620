.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;
.source "PullToRefreshListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I


# instance fields
.field private mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mListViewExtrasEnabled:Z

.field private mLvFooterLoadingFrame:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mLvFooterLoadingFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

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
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 209
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 213
    .local v0, "lv":Landroid/widget/ListView;
    :goto_0
    return-object v0

    .line 211
    .end local v0    # "lv":Landroid/widget/ListView;
    :cond_0
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "lv":Landroid/widget/ListView;
    goto :goto_0
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 3
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v1

    .line 192
    .local v1, "proxy":Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 195
    .local v0, "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 203
    .end local v0    # "mode":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v5, 0x102000a

    .line 218
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->createListView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object v1

    .line 221
    .local v1, "lv":Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setId(I)V

    .line 222
    return-object v1

    .line 224
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 226
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 228
    check-cast v2, Landroid/widget/ListView;

    .end local v2    # "view":Landroid/view/View;
    return-object v2

    .line 230
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Refreshable View is not a ListView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 236
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 9
    .param p1, "doScroll"    # Z

    .prologue
    const/4 v8, 0x0

    .line 72
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 73
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getShowViewWhileRefreshing()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 75
    return-void

    .line 73
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    invoke-super {p0, v8}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onRefreshing(Z)V

    .line 83
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 94
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 95
    .local v3, "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 96
    .local v1, "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 97
    .local v2, "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v5, 0x0

    .line 98
    .local v5, "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v7

    add-int v4, v6, v7

    .line 103
    .local v4, "scrollToY":I
    :goto_0
    invoke-virtual {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 104
    invoke-virtual {v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->hideAllViews()V

    .line 107
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 110
    invoke-virtual {v1, v8}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 111
    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    .line 113
    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->disableLoadingLayoutVisibilityChanges()V

    .line 119
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 123
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 126
    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->smoothScrollTo(I)V

    .line 67
    :cond_2
    return-void

    .line 86
    .end local v1    # "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v3    # "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v4    # "scrollToY":I
    .end local v5    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    .line 87
    .restart local v3    # "origLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 88
    .restart local v1    # "listViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 89
    .restart local v2    # "oppositeListViewLoadingView":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 90
    .restart local v5    # "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v7

    sub-int v4, v6, v7

    .line 91
    .restart local v4    # "scrollToY":I
    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onReset()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 135
    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mListViewExtrasEnabled:Z

    if-nez v5, :cond_0

    .line 136
    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    .line 137
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 156
    .local v1, "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mHeaderLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 157
    .local v0, "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getHeaderSize()I

    move-result v5

    neg-int v3, v5

    .line 158
    .local v3, "scrollToHeight":I
    const/4 v4, 0x0

    .line 159
    .local v4, "selection":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v7, :cond_3

    const/4 v2, 0x1

    .line 165
    .local v2, "scrollLvToEdge":Z
    :goto_0
    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->showInvisibleViews()V

    .line 171
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 178
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v5

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_1

    .line 179
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 180
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->setHeaderScroll(I)V

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewBase;->onReset()V

    .line 131
    return-void

    .line 147
    .end local v0    # "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v1    # "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .end local v2    # "scrollLvToEdge":Z
    .end local v3    # "scrollToHeight":I
    .end local v4    # "selection":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v1

    .line 148
    .restart local v1    # "originalLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mFooterLoadingView:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 149
    .restart local v0    # "listViewLoadingLayout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .line 150
    .restart local v4    # "selection":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->getFooterSize()I

    move-result v3

    .line 151
    .restart local v3    # "scrollToHeight":I
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;->mRefreshableView:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v7, :cond_2

    const/4 v2, 0x1

    .restart local v2    # "scrollLvToEdge":Z
    goto :goto_0

    .end local v2    # "scrollLvToEdge":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "scrollLvToEdge":Z
    goto :goto_0

    .line 159
    .end local v2    # "scrollLvToEdge":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "scrollLvToEdge":Z
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
