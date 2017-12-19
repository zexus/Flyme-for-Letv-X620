.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;
.super Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;
.source "PullToRefreshListView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalListViewSDK9"
.end annotation


# instance fields
.field private mClampedX:Z

.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    return-void
.end method


# virtual methods
.method protected onOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->onOverScrolled(IIZZ)V

    .line 293
    iput-boolean p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;->mClampedX:Z

    .line 291
    return-void
.end method

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
    .line 280
    invoke-super/range {p0 .. p9}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 283
    .local v6, "returnValue":Z
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;->mClampedX:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView$InternalListViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshListView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIZ)V

    .line 287
    :cond_0
    return v6
.end method
