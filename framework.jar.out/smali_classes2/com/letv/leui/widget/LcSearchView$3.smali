.class Lcom/letv/leui/widget/LcSearchView$3;
.super Ljava/lang/Object;
.source "LcSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LcSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LcSearchView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get0(Lcom/letv/leui/widget/LcSearchView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->-wrap1(Lcom/letv/leui/widget/LcSearchView;Z)V

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v1}, Lcom/letv/leui/widget/LcSearchView;->-get1(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    .line 813
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 798
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 806
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/LcSearchView;->-wrap0(Lcom/letv/leui/widget/LcSearchView;Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$3;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 805
    :cond_0
    return-void
.end method
