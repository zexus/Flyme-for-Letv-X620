.class public Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
        "<",
        "Landroid/widget/HorizontalScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "style"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x1020366

    const/4 v5, 0x2

    .line 55
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->mRefreshableViewLayout:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 57
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 58
    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;

    invoke-direct {v1, p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    .local v1, "scrollView":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setId(I)V

    .line 64
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 65
    return-object v1

    .line 61
    .end local v1    # "scrollView":Landroid/widget/HorizontalScrollView;
    :cond_0
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .restart local v1    # "scrollView":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v6}, Landroid/widget/HorizontalScrollView;->setId(I)V

    goto :goto_0

    .line 67
    .end local v1    # "scrollView":Landroid/widget/HorizontalScrollView;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->mRefreshableViewLayout:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 69
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {v2, v5}, Landroid/view/View;->setOverScrollMode(I)V

    .line 71
    check-cast v2, Landroid/widget/HorizontalScrollView;

    .end local v2    # "view":Landroid/view/View;
    return-object v2

    .line 73
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Refreshable View is not a HorizontalScrollView"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected isReadyForPullEnd()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "scrollViewChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 87
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 89
    :cond_1
    return v2
.end method

.method protected isReadyForPullStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
