.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshAdapterViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;
    }
.end annotation


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mEmptyView:Landroid/view/View;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mLastItemVisible:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    .line 117
    return-void
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p0, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p0, :cond_0

    .line 44
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .local v0, "newLp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 47
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .end local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .end local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .line 49
    .restart local v0    # "newLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local p0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private isFirstItemVisible()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v4, :cond_0

    .line 228
    return v3

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 233
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    :cond_1
    return v2

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    if-gt v4, v2, :cond_4

    .line 249
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "firstVisibleChild":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 251
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, v5, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 256
    .end local v1    # "firstVisibleChild":Landroid/view/View;
    :cond_4
    return v3
.end method

.method private isLastItemVisible()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 260
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v7, :cond_0

    .line 261
    return v6

    .line 264
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 266
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    :cond_1
    return v5

    .line 272
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 273
    .local v2, "lastItemPosition":I
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 287
    .local v4, "lastVisiblePosition":I
    add-int/lit8 v7, v2, -0x1

    if-lt v4, v7, :cond_4

    .line 288
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v1, v4, v7

    .line 289
    .local v1, "childIndex":I
    iget-object v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v7, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 290
    .local v3, "lastVisibleChild":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 291
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gt v7, v8, :cond_3

    :goto_0
    return v5

    :cond_3
    move v5, v6

    goto :goto_0

    .line 296
    .end local v1    # "childIndex":I
    .end local v3    # "lastVisibleChild":Landroid/view/View;
    :cond_4
    return v6
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected final createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/FrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 310
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    invoke-direct {v0, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    .local v0, "fl":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;
    return-object v0
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method public getRefreshableAbsListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 333
    invoke-super {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onFinishInflate()V

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "view":Landroid/view/View;
    const/4 v1, 0x0

    .end local v2    # "view":Landroid/view/View;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 336
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    if-eqz v3, :cond_1

    .line 335
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .restart local v0    # "childView":Landroid/view/View;
    :cond_1
    instance-of v3, v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    if-eqz v3, :cond_0

    .line 342
    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;

    .end local v0    # "childView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    goto :goto_1

    .line 346
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/widget/AbsListView;

    if-eqz v3, :cond_3

    .line 347
    check-cast v2, Landroid/widget/AbsListView;

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    .line 349
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setId(I)V

    .line 350
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    new-instance v4, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;

    invoke-direct {v4, p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 332
    return-void

    .line 352
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Refreshable View is not a AbsListView\'s subclass, or the number of Refreshable View more than one"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onScrollChanged(IIII)V

    .line 220
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 4
    .param p1, "newEmptyView"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-nez v3, :cond_0

    .line 150
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 155
    .local v2, "refreshableViewWrapper":Landroid/widget/FrameLayout;
    if-eqz p1, :cond_2

    .line 158
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 161
    .local v1, "newEmptyViewParent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 162
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "newEmptyViewParent":Landroid/view/ViewParent;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 168
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v3, v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;

    invoke-interface {v3, p1}, Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    .line 180
    :goto_1
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mEmptyView:Landroid/view/View;

    .line 148
    return-void

    .line 171
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 178
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    :cond_0
    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnLastItemVisibleListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    .line 197
    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 201
    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0
    .param p1, "doScroll"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->mScrollEmptyView:Z

    .line 205
    return-void
.end method
