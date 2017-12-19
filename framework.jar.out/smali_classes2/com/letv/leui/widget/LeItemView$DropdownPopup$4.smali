.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get0(Lcom/letv/leui/widget/LeItemView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get0(Lcom/letv/leui/widget/LeItemView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get3(Lcom/letv/leui/widget/LeItemView;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get0(Lcom/letv/leui/widget/LeItemView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get11(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeItemView;->-get0(Lcom/letv/leui/widget/LeItemView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 1008
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get11(Lcom/letv/leui/widget/LeItemView;)Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->show()V

    goto :goto_0
.end method
