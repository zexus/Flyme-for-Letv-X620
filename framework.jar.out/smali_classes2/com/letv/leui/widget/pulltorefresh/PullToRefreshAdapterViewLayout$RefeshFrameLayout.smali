.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshAdapterViewLayout.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefeshFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .line 317
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 316
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->setEmptyView(Landroid/view/View;)V

    .line 321
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$RefeshFrameLayout;->setEmptyView(Landroid/view/View;)V

    .line 326
    return-void
.end method
