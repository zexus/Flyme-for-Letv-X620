.class Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpHaveAddressState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 818
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 821
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 822
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Configured IP address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 820
    :goto_0
    return-void

    .line 825
    :cond_0
    const-string/jumbo v0, "DhcpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to configure IP address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v2

    iget-object v2, v2, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    .line 829
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get14(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 835
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v1, "Clearing IP address"

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/LinkAddress;

    const-string/jumbo v2, "0.0.0.0/0"

    invoke-direct {v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap5(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z

    .line 834
    return-void
.end method
