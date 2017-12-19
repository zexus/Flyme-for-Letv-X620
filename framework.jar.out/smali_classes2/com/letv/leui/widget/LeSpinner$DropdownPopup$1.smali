.class Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeSpinner$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

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
    .line 1101
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeSpinner;->setSelection(I)V

    .line 1102
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-static {v1}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->-get0(Lcom/letv/leui/widget/LeSpinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/letv/leui/widget/LeSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeSpinner$DropdownPopup;->dismiss()V

    .line 1100
    return-void
.end method
