.class Landroid/net/dhcp/DhcpClient$DhcpBoundState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpBoundState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 840
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 843
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 844
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;)V

    .line 845
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;)V

    .line 848
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap13(Landroid/net/dhcp/DhcpClient;)V

    .line 842
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 853
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 854
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 863
    const/4 v0, 0x0

    return v0

    .line 856
    :pswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get16(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 861
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 859
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpBoundState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x30003
        :pswitch_0
    .end packed-switch
.end method
