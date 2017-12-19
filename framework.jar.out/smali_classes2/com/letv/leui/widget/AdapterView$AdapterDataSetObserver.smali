.class Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/letv/leui/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/AdapterView;)V
    .locals 1

    .prologue
    .line 792
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;, "Lcom/letv/leui/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    .local p1, "this$0":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 792
    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 839
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;, "Lcom/letv/leui/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 838
    return-void
.end method

.method public onChanged()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;, "Lcom/letv/leui/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v2, 0x0

    .line 798
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/AdapterView;->mDataChanged:Z

    .line 799
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget-object v1, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget v1, v1, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/letv/leui/widget/AdapterView;->mOldItemCount:I

    .line 800
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget-object v1, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .line 804
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget v0, v0, Lcom/letv/leui/widget/AdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget v0, v0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget-object v1, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/AdapterView;->-wrap2(Lcom/letv/leui/widget/AdapterView;Landroid/os/Parcelable;)V

    .line 807
    iput-object v2, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 811
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->checkFocus()V

    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->requestLayout()V

    .line 797
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;, "Lcom/letv/leui/widget/AdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 817
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/letv/leui/widget/AdapterView;->mDataChanged:Z

    .line 819
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-static {v0}, Lcom/letv/leui/widget/AdapterView;->-wrap0(Lcom/letv/leui/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget-object v1, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget v1, v1, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/letv/leui/widget/AdapterView;->mOldItemCount:I

    .line 827
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput v3, v0, Lcom/letv/leui/widget/AdapterView;->mItemCount:I

    .line 828
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput v2, v0, Lcom/letv/leui/widget/AdapterView;->mSelectedPosition:I

    .line 829
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput-wide v4, v0, Lcom/letv/leui/widget/AdapterView;->mSelectedRowId:J

    .line 830
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput v2, v0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedPosition:I

    .line 831
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput-wide v4, v0, Lcom/letv/leui/widget/AdapterView;->mNextSelectedRowId:J

    .line 832
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    iput-boolean v3, v0, Lcom/letv/leui/widget/AdapterView;->mNeedSync:Z

    .line 834
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->checkFocus()V

    .line 835
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->requestLayout()V

    .line 816
    return-void
.end method
