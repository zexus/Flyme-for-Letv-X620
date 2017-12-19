.class Lcom/letv/leui/widget/LeListView$1;
.super Landroid/database/DataSetObserver;
.source "LeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListView;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$1;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 240
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$1;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->onListChanged()V

    .line 241
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$1;->this$0:Lcom/letv/leui/widget/LeListView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListView;->-get2(Lcom/letv/leui/widget/LeListView;)Lcom/letv/leui/widget/SwipeListViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/SwipeListViewHelper;->resetItems()V

    .line 238
    return-void
.end method
