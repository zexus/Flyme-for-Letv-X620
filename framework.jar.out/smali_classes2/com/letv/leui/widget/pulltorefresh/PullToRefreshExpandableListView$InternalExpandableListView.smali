.class Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "PullToRefreshExpandableListView.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/internal/EmptyViewMethodAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalExpandableListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;

    .line 79
    invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method


# virtual methods
.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    return-void
.end method
