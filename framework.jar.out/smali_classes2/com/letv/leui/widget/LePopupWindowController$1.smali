.class Lcom/letv/leui/widget/LePopupWindowController$1;
.super Ljava/lang/Object;
.source "LePopupWindowController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LePopupWindowController;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LePopupWindowController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LePopupWindowController;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get5(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get6(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get6(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .end local v0    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get8(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v2}, Lcom/letv/leui/widget/LePopupWindowController;->-get7(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/content/DialogInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void

    .line 138
    .restart local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get1(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get2(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get2(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 140
    .local v0, "m":Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get3(Lcom/letv/leui/widget/LePopupWindowController;)Lcom/letv/leui/widget/LeButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get4(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/letv/leui/widget/LePopupWindowController$1;->this$0:Lcom/letv/leui/widget/LePopupWindowController;

    invoke-static {v1}, Lcom/letv/leui/widget/LePopupWindowController;->-get4(Lcom/letv/leui/widget/LePopupWindowController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0
.end method
