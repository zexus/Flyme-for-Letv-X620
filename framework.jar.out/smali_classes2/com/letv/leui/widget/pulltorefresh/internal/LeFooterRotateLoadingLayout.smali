.class public Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;
.super Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;
.source "LeFooterRotateLoadingLayout.java"


# instance fields
.field public cancelAnimator:Z

.field public refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .line 17
    return-void
.end method


# virtual methods
.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout$1;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    return-void
.end method

.method public setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .line 14
    return-void
.end method
