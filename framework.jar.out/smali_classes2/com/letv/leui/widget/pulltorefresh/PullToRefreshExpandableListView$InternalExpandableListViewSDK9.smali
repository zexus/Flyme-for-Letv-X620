.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalExpandableListViewSDK9"
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
    .line 96
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 7
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 104
    invoke-super/range {p0 .. p9}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 108
    .local v6, "returnValue":Z
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView$InternalExpandableListViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshExpandableListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V

    .line 111
    return v6
.end method
