.class Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;
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


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController$SheetParams;Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LePopupWindowController$SheetParams;
    .param p2, "val$dialog"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iput-object p2, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 939
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-object v0, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 940
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->this$1:Lcom/letv/leui/widget/LePopupWindowController$SheetParams;

    iget-boolean v0, v0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowController$SheetParams$4;->val$dialog:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v0}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 938
    :cond_0
    return-void
.end method
