.class Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;
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
    .line 959
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    iput-object p3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 962
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_5

    .line 965
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 966
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->ifHasCheckBox()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->setStutes(Z)V

    .line 965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->ifHasCheckBox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->setStutes(Z)V

    .line 977
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get0(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 980
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexOnClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v2}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    invoke-virtual {v3, p3}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->isItemChecked(I)Z

    move-result v3

    invoke-interface {v1, v2, p3, v3}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 981
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->isClickDismiss:Z

    if-eqz v1, :cond_4

    .line 982
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 961
    :cond_4
    return-void

    .line 971
    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_2

    .line 972
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->ifHasCheckBox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 973
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v1, v1, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$6;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    invoke-virtual {v2, p3}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->setStutes(Z)V

    goto :goto_1
.end method
