.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private cleanupUpstream()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1669
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1676
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get10(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1688
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] cleanupUpstream disableNat("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1690
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    .line 1689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1690
    const-string/jumbo v3, ", "

    .line 1689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1690
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 1689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1690
    const-string/jumbo v3, ")"

    .line 1689
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2, v3, v4}, Landroid/os/INetworkManagementService;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1699
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v6, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 1700
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1702
    :cond_1
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] Exception in forceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1679
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1678
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1683
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1685
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in removeInterfaceForward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1696
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1697
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] Exception in disableNat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private cleanupUpstreamIpv6()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1707
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1709
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->clearRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] cleanupUpstream clearRouteIpv6("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1711
    const-string/jumbo v3, ", "

    .line 1710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1711
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 1710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1711
    const-string/jumbo v3, ")"

    .line 1710
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1714
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 1725
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iput-object v4, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 1726
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1728
    :cond_1
    return-void

    .line 1716
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    .line 1717
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 1716
    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->clearSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] clearSourceRouteIpv6("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1719
    const-string/jumbo v3, ", "

    .line 1718
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1719
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 1718
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1719
    const-string/jumbo v3, ")"

    .line 1718
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Tethered] Exception in clearRouteIpv6: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1630
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "[ISM_Tethered] enter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1640
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1642
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/os/INetworkManagementService;->setDhcpv6Enabled(ZLjava/lang/String;)V

    .line 1643
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1659
    :cond_0
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ISM_Tethered] Tethered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2, v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1661
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1663
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2, v5}, Lcom/android/server/connectivity/Tethering;->-set2(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1664
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "[ISM_Tethered] sendTetherStateChangedBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 1629
    return-void

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ISM_Tethered] Error Tethering: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1636
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1637
    return-void

    .line 1644
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1645
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ISM_Tethered] Error setDhcpv6Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1648
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)Z

    .line 1649
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Landroid/os/INetworkManagementService;->setDhcpv6Enabled(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1654
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1655
    return-void

    .line 1651
    :catch_2
    move-exception v1

    .line 1652
    .local v1, "ee":Ljava/lang/Exception;
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ISM_Tethered] untetherInterface failed, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 27
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1734
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1735
    const-string/jumbo v26, " processMessage what="

    .line 1734
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1735
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    .line 1734
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/16 v19, 0x1

    .line 1737
    .local v19, "retValue":Z
    const/4 v11, 0x0

    .line 1738
    .local v11, "error":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2127
    :pswitch_0
    const/16 v19, 0x0

    .line 2130
    :cond_0
    :goto_0
    return v19

    .line 1741
    :pswitch_1
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] mMyUpstreamIfaceName: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1745
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstreamIpv6()V

    .line 1748
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1751
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)Z

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setDhcpv6Enabled(ZLjava/lang/String;)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface/range {v24 .. v26}, Landroid/os/INetworkManagementService;->disableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v24

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    .line 1765
    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v24

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    .line 1769
    const/16 v26, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1773
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v24

    if-nez v24, :cond_5

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    .line 1777
    const/16 v25, 0xa

    .line 1776
    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1784
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1788
    :cond_6
    :goto_1
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] Untethered "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1756
    :catch_0
    move-exception v5

    .line 1757
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    .line 1758
    const/16 v25, 0x7

    .line 1757
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    goto/16 :goto_0

    .line 1785
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 1792
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 1793
    .local v21, "s":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1794
    .local v16, "newUpstreamIfaceName":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v17, "newUpstreamLP":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/16 v22, 0x0

    .line 1796
    .local v22, "smName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1797
    if-eqz v21, :cond_8

    .line 1798
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED s:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const-string/jumbo v24, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1800
    .local v4, "IfaceNameSmNames":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 1801
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] IfaceNameSmNames[0]:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1802
    const/16 v26, 0x0

    aget-object v26, v4, v26

    .line 1801
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1802
    const-string/jumbo v26, " IfaceNameSmNames[1]:"

    .line 1801
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1803
    const/16 v26, 0x1

    aget-object v26, v4, v26

    .line 1801
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/16 v24, 0x0

    aget-object v16, v4, v24

    .line 1805
    .local v16, "newUpstreamIfaceName":Ljava/lang/String;
    const/16 v24, 0x1

    aget-object v22, v4, v24

    .line 1806
    .local v22, "smName":Ljava/lang/String;
    const-string/jumbo v24, "empty"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1807
    const/16 v16, 0x0

    .line 1813
    .end local v4    # "IfaceNameSmNames":[Ljava/lang/String;
    .end local v16    # "newUpstreamIfaceName":Ljava/lang/String;
    .end local v22    # "smName":Ljava/lang/String;
    :cond_8
    :goto_2
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1814
    const-string/jumbo v26, "] CMD_TETHER_CONNECTION_CHANGED mMyUpstreamIfaceName: "

    .line 1813
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1813
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1816
    const-string/jumbo v26, ", mMyUpstreamIfaceNameIpv6:"

    .line 1813
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1813
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1817
    const-string/jumbo v26, ", newUpstreamIfaceName: "

    .line 1813
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    if-nez v16, :cond_9

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    .line 1819
    if-eqz v24, :cond_9

    .line 1821
    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1819
    if-eqz v24, :cond_9

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1825
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1826
    const/16 v18, 0x0

    .line 1828
    .local v18, "ni":Ljava/net/NetworkInterface;
    if-eqz v16, :cond_a

    .line 1830
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 1837
    .end local v18    # "ni":Ljava/net/NetworkInterface;
    :cond_a
    :goto_3
    if-eqz v18, :cond_b

    .line 1839
    invoke-virtual/range {v18 .. v18}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v13

    .line 1840
    .local v13, "inet_enum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v13}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1841
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "getInetAddresses newUpstreamLP list: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v17, v15

    .line 1843
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "] mMyUpstreamLP: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "] mMyUpstreamLPIpv6: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "] newUpstreamLP: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    .end local v13    # "inet_enum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_b
    const/4 v14, 0x1

    .line 1850
    .local v14, "isSameLinkproperty":Z
    if-eqz v22, :cond_c

    const-string/jumbo v24, "TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1851
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    .line 1855
    .end local v14    # "isSameLinkproperty":Z
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_11

    if-nez v16, :cond_11

    .line 1859
    :cond_e
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "[ISM_Tethered] Connection changed noop - dropping"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1811
    .local v16, "newUpstreamIfaceName":Ljava/lang/String;
    .local v22, "smName":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v21

    .local v16, "newUpstreamIfaceName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1834
    .end local v16    # "newUpstreamIfaceName":Ljava/lang/String;
    .end local v22    # "smName":Ljava/lang/String;
    .restart local v18    # "ni":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v6

    .line 1835
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "Error NetworkInterface.getByName:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1832
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v7

    .line 1833
    .local v7, "e":Ljava/net/SocketException;
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "Error NetworkInterface.getByName:"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1852
    .end local v7    # "e":Ljava/net/SocketException;
    .end local v18    # "ni":Ljava/net/NetworkInterface;
    .restart local v14    # "isSameLinkproperty":Z
    :cond_10
    const/4 v14, 0x0

    goto :goto_4

    .line 1856
    .end local v14    # "isSameLinkproperty":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1856
    if-eqz v24, :cond_12

    .line 1855
    if-nez v14, :cond_e

    .line 1876
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_22

    .line 1879
    if-eqz v22, :cond_13

    const-string/jumbo v24, "TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 1880
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1889
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1891
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v12

    .line 1892
    .local v12, "ifcg":Landroid/net/InterfaceConfiguration;
    if-eqz v12, :cond_23

    invoke-virtual {v12}, Landroid/net/InterfaceConfiguration;->isActive()Z

    move-result v24

    if-nez v24, :cond_15

    const-string/jumbo v24, "up"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap5(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 1893
    :cond_15
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is up!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1907
    .end local v12    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_16
    :goto_6
    if-eqz v16, :cond_2b

    .line 1910
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_2a

    .line 1911
    if-eqz v22, :cond_17

    const-string/jumbo v24, "TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    .line 1912
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V

    .line 1918
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED enableNat for:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const-string/jumbo v24, "net.nsiot_pending"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;ZLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 2000
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_31

    .line 2001
    if-eqz v22, :cond_19

    const-string/jumbo v24, "TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2f

    .line 2002
    :cond_19
    if-nez v16, :cond_2e

    .line 2003
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED mMyUpstreamIfaceName = null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    .line 2024
    :cond_1a
    :goto_8
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED finished!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v24

    .line 2029
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.net.conn.TETHER_CHANGED_DONE"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2030
    sget-object v26, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2028
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2032
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_1c

    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_32

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x20

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2041
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 2046
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 2048
    const-string/jumbo v25, "interface_throttle_enable"

    const/16 v26, 0x0

    .line 2047
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 2048
    const/16 v25, 0x1

    .line 2047
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_33

    const/4 v10, 0x1

    .line 2049
    .local v10, "enable":Z
    :goto_a
    if-eqz v10, :cond_0

    .line 2051
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 2052
    const-string/jumbo v25, "interface_throttle_rx_value"

    const/16 v26, 0x0

    .line 2051
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 2053
    .local v20, "rx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 2054
    const-string/jumbo v25, "interface_throttle_tx_value"

    const/16 v26, 0x0

    .line 2053
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 2055
    .local v23, "tx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 2056
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] wifi hotspot bandwidth is enable:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2057
    const-string/jumbo v26, "/"

    .line 2056
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 2058
    .end local v20    # "rx":I
    .end local v23    # "tx":I
    :catch_3
    move-exception v5

    .line 2059
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setInterfaceThrottle failed:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1862
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "enable":Z
    .restart local v14    # "isSameLinkproperty":Z
    :cond_1d
    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    .line 1866
    .end local v14    # "isSameLinkproperty":Z
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_20

    if-nez v16, :cond_20

    .line 1870
    :goto_c
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "[ISM_Tethered] Connection changed noop - dropping ipv6"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1864
    .restart local v14    # "isSameLinkproperty":Z
    :cond_1f
    const/4 v14, 0x0

    goto :goto_b

    .line 1867
    .end local v14    # "isSameLinkproperty":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 1867
    if-eqz v24, :cond_12

    .line 1866
    if-eqz v14, :cond_12

    goto :goto_c

    .line 1881
    :cond_21
    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstreamIpv6()V

    goto/16 :goto_5

    .line 1884
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    goto/16 :goto_5

    .line 1895
    .restart local v12    # "ifcg":Landroid/net/InterfaceConfiguration;
    :cond_23
    :try_start_5
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is down!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const/16 v16, 0x0

    .line 1897
    .local v16, "newUpstreamIfaceName":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_6

    .line 1899
    .end local v12    # "ifcg":Landroid/net/InterfaceConfiguration;
    .end local v16    # "newUpstreamIfaceName":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 1900
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] Exception getInterfaceConfig: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const/16 v16, 0x0

    .line 1902
    .restart local v16    # "newUpstreamIfaceName":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    goto/16 :goto_6

    .line 1922
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v16    # "newUpstreamIfaceName":Ljava/lang/String;
    :cond_24
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_18

    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->enableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_25

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V

    .line 1932
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED enableNat for:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const-string/jumbo v24, "net.nsiot_pending"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-wrap9(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;ZLjava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_7

    .line 1947
    :catch_5
    move-exception v5

    .line 1948
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] Exception enabling Nat: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 1953
    :goto_d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-nez v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 1956
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)Z

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setDhcpv6Enabled(ZLjava/lang/String;)V

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface/range {v24 .. v26}, Landroid/os/INetworkManagementService;->disableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1965
    :cond_27
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_28

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1969
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 1970
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstreamIpv6()V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_29

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get0(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v24

    .line 1977
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.net.conn.TETHER_CHANGED_DONE"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1978
    sget-object v26, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1976
    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1980
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1981
    const/16 v24, 0x1

    return v24

    .line 1938
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V

    .line 1944
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED enableNat("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1944
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1945
    const-string/jumbo v26, ", "

    .line 1944
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 1945
    const-string/jumbo v26, ")"

    .line 1944
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_7

    .line 1961
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v8

    .line 1962
    .local v8, "ee":Ljava/lang/Exception;
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] untetherInterface failed, exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1986
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "ee":Ljava/lang/Exception;
    :cond_2b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_2d

    .line 1987
    const-string/jumbo v24, "TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2c

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V

    .line 1989
    :cond_2c
    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_7

    .line 1995
    :catch_7
    move-exception v9

    .line 1996
    .local v9, "eee":Ljava/lang/Exception;
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] untetherInterface failed, exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1993
    .end local v9    # "eee":Ljava/lang/Exception;
    :cond_2d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_7

    .line 2007
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    goto/16 :goto_8

    .line 2010
    :cond_2f
    const-string/jumbo v24, "Ipv6TetherMaster"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 2011
    if-nez v16, :cond_30

    .line 2012
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "[ISM_Tethered] CMD_TETHER_CONNECTION_CHANGED mMyUpstreamIfaceNameIpv6 = null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    goto/16 :goto_8

    .line 2016
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLPIpv6:Ljava/util/List;

    goto/16 :goto_8

    .line 2021
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamLP:Ljava/util/List;

    goto/16 :goto_8

    .line 2039
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    goto/16 :goto_9

    .line 2047
    :cond_33
    const/4 v10, 0x0

    .restart local v10    # "enable":Z
    goto/16 :goto_a

    .line 2071
    .end local v10    # "enable":Z
    .end local v17    # "newUpstreamLP":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v21    # "s":Ljava/lang/String;
    :pswitch_3
    const/4 v11, 0x1

    .line 2074
    :pswitch_4
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_MODE_DEAD, mMyUpstreamIfaceName: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2074
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] CMD_TETHER_MODE_DEAD, mMyUpstreamIfaceNameIpv6: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2076
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstream()V

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_34

    .line 2081
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->cleanupUpstreamIpv6()V

    .line 2084
    :cond_34
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-nez v24, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Z

    move-result v24

    if-eqz v24, :cond_36

    .line 2087
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)Z

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setDhcpv6Enabled(ZLjava/lang/String;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceNameIpv6:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface/range {v24 .. v26}, Landroid/os/INetworkManagementService;->disableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 2101
    :cond_36
    if-eqz v11, :cond_39

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_37

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2106
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    .line 2107
    const/16 v25, 0x5

    .line 2106
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 2092
    :catch_8
    move-exception v5

    .line 2094
    .restart local v5    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_38

    .line 2095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2097
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    .line 2098
    const/16 v25, 0x7

    .line 2097
    invoke-virtual/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastErrorAndTransitionToInitialState(I)V

    goto/16 :goto_0

    .line 2110
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_39
    const-string/jumbo v24, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[ISM_Tethered] Tether lost upstream connection "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2110
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const-string/jumbo v24, "Tethering"

    const-string/jumbo v25, "[ISM_Tethered] sendTetherStateChangedBroadcast in CMD_TETHER_MODE_DEAD of TetheredState"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3a

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;Z)Z

    move-result v24

    if-nez v24, :cond_3a

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v24

    if-eqz v24, :cond_3a

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    const/16 v25, 0x30

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 2124
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 1951
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v17    # "newUpstreamLP":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v21    # "s":Ljava/lang/String;
    :catch_9
    move-exception v8

    .restart local v8    # "ee":Ljava/lang/Exception;
    goto/16 :goto_d

    .line 1738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
