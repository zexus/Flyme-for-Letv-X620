.class final Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;
.super Landroid/widget/HorizontalScrollView;
.source "PullToRefreshHorizontalScrollView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InternalHorizontalScrollViewSDK9"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;

    .line 96
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 119
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 122
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 8
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
    .line 103
    invoke-super/range {p0 .. p9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v7

    .line 107
    .local v7, "returnValue":Z
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView;

    .line 108
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getScrollRange()I

    move-result v5

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v6, p9

    .line 107
    invoke-static/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->overScrollBy(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIIIIZ)V

    .line 110
    return v7
.end method
