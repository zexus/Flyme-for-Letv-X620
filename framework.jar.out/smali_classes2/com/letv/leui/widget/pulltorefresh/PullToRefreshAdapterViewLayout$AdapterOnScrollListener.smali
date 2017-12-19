.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;
.super Ljava/lang/Object;
.source "PullToRefreshAdapterViewLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    if-lez p4, :cond_0

    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x1

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-set0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;Z)Z

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 59
    :cond_2
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 85
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout$AdapterOnScrollListener;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;->-get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 80
    :cond_1
    return-void
.end method
