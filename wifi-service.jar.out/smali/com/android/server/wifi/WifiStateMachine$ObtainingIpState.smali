.class Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 10462
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x20010

    .line 10465
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10466
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10467
    const-string/jumbo v5, ""

    .line 10468
    .local v5, "key":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 10469
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    .line 10470
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v5

    .line 10471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 10473
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "enter ObtainingIpState netId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10474
    const-string/jumbo v11, " "

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10474
    const-string/jumbo v11, " "

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10475
    const-string/jumbo v11, " roam="

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10475
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get14(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10476
    const-string/jumbo v11, " static="

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10476
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v11

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10477
    const-string/jumbo v11, " watchdog= "

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 10477
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, v11, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 10473
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10482
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set6(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 10485
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 10490
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v10, "ObtainingIpAddress"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 10493
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->enableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10499
    :goto_0
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 10500
    const-string/jumbo v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Supplicant state is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " before start DHCP."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10501
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 10502
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->renewDhcp()V

    .line 10510
    :goto_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v10, v9, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 10511
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Start Dhcp Watchdog "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, v11, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10513
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    .line 10514
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 10515
    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v11, v11, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 10514
    const v12, 0x2005d

    invoke-virtual {v10, v12, v11, v14}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 10515
    const-wide/32 v12, 0x9c40

    .line 10514
    invoke-virtual {v9, v10, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 10464
    :goto_2
    return-void

    .line 10496
    :catch_0
    move-exception v3

    .line 10497
    .local v3, "e":Ljava/lang/IllegalStateException;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to enable IPv6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10494
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 10495
    .local v6, "re":Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to enable IPv6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10507
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_3
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap4(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 10508
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->startDhcp()V

    goto/16 :goto_1

    .line 10518
    :cond_4
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9}, Lcom/android/server/wifi/WifiStateMachine;->stopDhcp()V

    .line 10519
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v9

    .line 10520
    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v10

    .line 10519
    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiConfigStore;->getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 10521
    .local v0, "config":Landroid/net/StaticIpConfiguration;
    iget-object v9, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-nez v9, :cond_5

    .line 10522
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v10, "Static IP lacks address"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10523
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_2

    .line 10525
    :cond_5
    new-instance v4, Landroid/net/InterfaceConfiguration;

    invoke-direct {v4}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 10526
    .local v4, "ifcg":Landroid/net/InterfaceConfiguration;
    iget-object v9, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4, v9}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 10527
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 10529
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 10530
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v10, "Static IP configuration succeeded"

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10532
    :cond_6
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "rt$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 10533
    .local v7, "rt":Landroid/net/RouteInfo;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/net/LinkProperties;->removeRoute(Landroid/net/RouteInfo;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 10539
    .end local v7    # "rt":Landroid/net/RouteInfo;
    .end local v8    # "rt$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v6

    .line 10540
    .restart local v6    # "re":Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Static IP configuration failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10541
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2

    .line 10535
    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v8    # "rt$iterator":Ljava/util/Iterator;
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Force update mLinkProperties:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 10536
    :cond_8
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v9}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v10}, Lcom/android/server/wifi/WifiStateMachine;->-get78(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 10537
    :cond_9
    new-instance v2, Landroid/net/DhcpResults;

    invoke-direct {v2, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 10538
    .local v2, "dhcpResults":Landroid/net/DhcpResults;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v10, 0x2000f

    invoke-virtual {v9, v10, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 10542
    .end local v2    # "dhcpResults":Landroid/net/DhcpResults;
    .end local v8    # "rt$iterator":Ljava/util/Iterator;
    :catch_3
    move-exception v3

    .line 10543
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Static IP configuration failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 10544
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v9, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 10551
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 10553
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 10590
    const/4 v0, 0x0

    return v0

    .line 10555
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DhcpResults;

    const v2, 0x2000f

    invoke-static {v1, v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap35(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    .line 10592
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 10558
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20010

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap34(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_0

    .line 10562
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto :goto_0

    .line 10566
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10567
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 10571
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10572
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 10576
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get1()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 10577
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 10580
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v1, v1, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    if-ne v0, v1, :cond_0

    .line 10581
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ObtainingIpAddress: Watchdog Triggered, count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10582
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget v2, v2, Lcom/android/server/wifi/WifiStateMachine;->obtainingIpWatchdogCount:I

    .line 10581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 10583
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap36(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 10584
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 10587
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ObtainingIpState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 10553
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000f -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20047 -> :sswitch_5
        0x2004d -> :sswitch_4
        0x2005d -> :sswitch_6
        0x2008f -> :sswitch_2
        0x20091 -> :sswitch_2
        0x20092 -> :sswitch_3
        0x25007 -> :sswitch_3
    .end sparse-switch
.end method
