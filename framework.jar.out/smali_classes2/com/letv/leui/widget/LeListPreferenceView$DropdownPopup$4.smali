.class Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    .prologue
    .line 873
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get7(Lcom/letv/leui/widget/LeListPreferenceView;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->getAnchorView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 882
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get14(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeListPreferenceView;->-get5(Lcom/letv/leui/widget/LeListPreferenceView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 883
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$4;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeListPreferenceView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeListPreferenceView;->-get14(Lcom/letv/leui/widget/LeListPreferenceView;)Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->show()V

    goto :goto_0
.end method
