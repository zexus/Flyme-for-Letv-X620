.class Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;
.super Ljava/lang/Object;
.source "LeItemView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeItemView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeItemView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 766
    iput-object p1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->dismiss()V

    .line 773
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get2(Lcom/letv/leui/widget/LeItemView;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 774
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeItemView;->-set0(Lcom/letv/leui/widget/LeItemView;I)I

    .line 776
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v0}, Lcom/letv/leui/widget/LeItemView;->-get5(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeItemView;->getValueIndex()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeItemView;->-get5(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView;->mValueTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v1, v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-static {v1}, Lcom/letv/leui/widget/LeItemView;->-get5(Lcom/letv/leui/widget/LeItemView;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v2, v2, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeItemView;->getValueIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;->this$1:Lcom/letv/leui/widget/LeItemView$DropdownPopup;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView$DropdownPopup;->this$0:Lcom/letv/leui/widget/LeItemView;

    iget-object v0, v0, Lcom/letv/leui/widget/LeItemView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeItemView$DropdownPopup$1$1;-><init>(Lcom/letv/leui/widget/LeItemView$DropdownPopup$1;)V

    .line 791
    const-wide/16 v2, 0x96

    .line 782
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    :cond_1
    return-void
.end method
