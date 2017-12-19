.class Lcom/letv/leui/widget/LeTitleEditText$4;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 799
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 785
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 784
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
    .line 792
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/LeTitleEditText;->-wrap2(Lcom/letv/leui/widget/LeTitleEditText;Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$4;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get4(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 791
    :cond_0
    return-void
.end method
