.class Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "LeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListView$AdapterWrapper;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView$AdapterWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->notifyDataSetChanged()V

    .line 1164
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->notifyDataSetInvalidated()V

    .line 1168
    return-void
.end method
