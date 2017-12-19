.class Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->createListView(Lcom/letv/leui/widget/LePopupWindowController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

.field final synthetic val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

.field final synthetic val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LePopupWindowController$SheetParams;
    .param p2, "val$listView"    # Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;
    .param p3, "val$dialog"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    .line 946
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    iput-object p3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 949
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v0, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v0, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->-get0(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 953
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v0, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 954
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$5;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 953
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 948
    return-void
.end method
