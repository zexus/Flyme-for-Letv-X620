.class Lcom/letv/leui/widget/DragSortGridView$2;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFirstVisibleItem:I

.field private mCurrentScrollState:I

.field private mCurrentVisibleItemCount:I

.field private mPreviousFirstVisibleItem:I

.field private mPreviousVisibleItemCount:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortGridView;

    .prologue
    const/4 v0, -0x1

    .line 1017
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    .line 1020
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    .line 1017
    return-void
.end method

.method private isScrollCompleted()V
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentVisibleItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentScrollState:I

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get0(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get1(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-wrap2(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get2(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-wrap4(Lcom/letv/leui/widget/DragSortGridView;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndHandleFirstVisibleCellChange()V
    .locals 4

    .prologue
    .line 1099
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentFirstVisibleItem:I

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    if-eq v0, v1, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get0(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get3(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView;->-get3(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->-wrap6(Lcom/letv/leui/widget/DragSortGridView;J)V

    .line 1102
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-wrap1(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 1098
    :cond_0
    return-void
.end method

.method public checkAndHandleLastVisibleCellChange()V
    .locals 6

    .prologue
    .line 1112
    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentFirstVisibleItem:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentVisibleItemCount:I

    add-int v0, v2, v3

    .line 1113
    .local v0, "currentLastVisibleItem":I
    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    iget v3, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    add-int v1, v2, v3

    .line 1114
    .local v1, "previousLastVisibleItem":I
    if-eq v0, v1, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get0(Lcom/letv/leui/widget/DragSortGridView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-get3(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1116
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v3, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v3}, Lcom/letv/leui/widget/DragSortGridView;->-get3(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/letv/leui/widget/DragSortGridView;->-wrap6(Lcom/letv/leui/widget/DragSortGridView;J)V

    .line 1117
    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->-wrap1(Lcom/letv/leui/widget/DragSortGridView;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, -0x1

    .line 1027
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentFirstVisibleItem:I

    .line 1028
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentVisibleItemCount:I

    .line 1030
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentFirstVisibleItem:I

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    .line 1032
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentVisibleItemCount:I

    :goto_1
    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    .line 1035
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView$2;->checkAndHandleFirstVisibleCellChange()V

    .line 1036
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortGridView$2;->checkAndHandleLastVisibleCellChange()V

    .line 1038
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentFirstVisibleItem:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    .line 1039
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentVisibleItemCount:I

    iput v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    .line 1043
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get8(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->-get8(Lcom/letv/leui/widget/DragSortGridView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1026
    :cond_0
    return-void

    .line 1031
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 1033
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mPreviousVisibleItemCount:I

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1071
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$2;->mCurrentScrollState:I

    .line 1072
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$2;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-static {v0, p2}, Lcom/letv/leui/widget/DragSortGridView;->-set3(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 1073
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortGridView$2;->isScrollCompleted()V

    .line 1070
    return-void
.end method
