.class Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;
.super Lcom/letv/leui/widget/LePopupWindowAdapter;
.source "LePopupWindowController.java"


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

.field final synthetic val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Landroid/content/Context;Ljava/util/List;ILcom/letv/leui/widget/LePopupWindowController$RecycleListView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LePopupWindowController$SheetParams;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p4, "$anonymous2"    # I
    .param p5, "val$listView"    # Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    .prologue
    .line 846
    .local p3, "$anonymous1":Ljava/util/List;, "Ljava/util/List<Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p5, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    invoke-direct {p0, p2, p3, p4}, Lcom/letv/leui/widget/LePopupWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 850
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/LePopupWindowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 851
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v2, v2, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 852
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v2, v2, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mComplexItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->getStutes()Z

    move-result v0

    .line 853
    .local v0, "isItemChecked":Z
    if-eqz v0, :cond_0

    .line 854
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$1;->val$listView:Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/widget/LePopupWindowController$RecycleListView;->setItemChecked(IZ)V

    .line 857
    .end local v0    # "isItemChecked":Z
    :cond_0
    return-object v1
.end method
