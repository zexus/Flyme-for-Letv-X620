.class Lcom/android/server/wifi/WifiStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6492
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 6495
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6497
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->clearGBKMapping()V

    .line 6499
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHal()V

    .line 6500
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->unloadDriver()Z

    .line 6502
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6503
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 6504
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 6505
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get152(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 6504
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 6508
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get138(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6509
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set78(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 6510
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6511
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 6510
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set79(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/server/wifi/WifiApConfigStore;

    .line 6512
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 6513
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get138(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 6514
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get139(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiApConfigStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 6513
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 6517
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6519
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set33(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6522
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6494
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 6526
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$InitialState;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6527
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 6673
    return v11

    .line 6529
    :sswitch_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "CMD_START_SUPPLICANT"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6530
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 6532
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "STA"

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6569
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V

    .line 6570
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 6573
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/os/INetworkManagementService;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 6579
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get86(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get65(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6590
    :goto_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiMonitor;->killSupplicant(Z)V

    .line 6592
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHal()Z

    move-result v6

    if-nez v6, :cond_0

    .line 6594
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Failed to start HAL"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6597
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->startSupplicant(Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6598
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6599
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Supplicant start successful"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6600
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get148(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiMonitor;->startMonitoring()V

    .line 6601
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get118(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6675
    :cond_2
    :goto_1
    return v10

    .line 6533
    :catch_0
    move-exception v0

    .line 6534
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to reload STA firmware "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6536
    const-string/jumbo v6, "WifiStateMachine"

    const-string/jumbo v7, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6537
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "WIFI_ENABLE_FAILED"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to reload STA firmware "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap66(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 6538
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 6539
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 6540
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6542
    const/4 v2, 0x0

    .line 6544
    .local v2, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_2
    const-string/jumbo v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6545
    new-instance v3, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v3}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .local v3, "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v2, v3

    .line 6547
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v3    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_3
    if-eqz v2, :cond_4

    .line 6550
    const-string/jumbo v6, "CRDISPATCH_KEY:WifiStateMachine"

    .line 6551
    const-string/jumbo v7, "fwreload fails"

    .line 6552
    const-string/jumbo v8, "/data/cursorleak/traces.txt"

    .line 6549
    const/4 v9, 0x1

    .line 6548
    invoke-virtual {v2, v9, v6, v7, v8}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 6558
    :cond_4
    :goto_2
    return v10

    .line 6582
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 6583
    .local v4, "ie":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to change interface settings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6580
    .end local v4    # "ie":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v5

    .line 6581
    .local v5, "re":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to change interface settings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6603
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_5
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Failed to start supplicant!"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6605
    const-string/jumbo v6, "WifiStateMachine"

    const-string/jumbo v7, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6606
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "WIFI_ENABLE_FAILED"

    const-string/jumbo v8, "Failed to start supplicant!"

    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap66(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 6607
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 6608
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 6609
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6611
    const/4 v2, 0x0

    .line 6613
    .restart local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_3
    const-string/jumbo v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6614
    new-instance v3, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v3}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .restart local v3    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v2, v3

    .line 6616
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v3    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_6
    if-eqz v2, :cond_7

    .line 6619
    const-string/jumbo v6, "CRDISPATCH_KEY:WifiStateMachine"

    .line 6620
    const-string/jumbo v7, "Failed to start supplicant!"

    .line 6621
    const-string/jumbo v8, "/data/cursorleak/traces.txt"

    .line 6618
    const/4 v9, 0x1

    .line 6617
    invoke-virtual {v2, v9, v6, v7, v8}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 6627
    :cond_7
    :goto_3
    return v10

    .line 6631
    :cond_8
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Failed to load driver"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6633
    const-string/jumbo v6, "WifiStateMachine"

    const-string/jumbo v7, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6634
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "WIFI_ENABLE_FAILED"

    const-string/jumbo v8, "Failed to load driver"

    invoke-static {v6, v7, v8}, Lcom/android/server/wifi/WifiStateMachine;->-wrap66(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    .line 6635
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 6636
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 6637
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6639
    const/4 v2, 0x0

    .line 6641
    .restart local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :try_start_4
    const-string/jumbo v6, "ro.have_aee_feature"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 6642
    new-instance v3, Lcom/mediatek/aee/ExceptionLog;

    invoke-direct {v3}, Lcom/mediatek/aee/ExceptionLog;-><init>()V

    .restart local v3    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    move-object v2, v3

    .line 6644
    .end local v2    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    .end local v3    # "exceptionLog":Lcom/mediatek/aee/ExceptionLog;
    :cond_9
    if-eqz v2, :cond_2

    .line 6647
    const-string/jumbo v6, "CRDISPATCH_KEY:WifiStateMachine"

    .line 6648
    const-string/jumbo v7, "loadDriver fails"

    .line 6649
    const-string/jumbo v8, "/data/cursorleak/traces.txt"

    .line 6646
    const/4 v9, 0x1

    .line 6645
    invoke-virtual {v2, v9, v6, v7, v8}, Lcom/mediatek/aee/ExceptionLog;->systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 6651
    :catch_3
    move-exception v1

    .local v1, "ee":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 6659
    .end local v1    # "ee":Ljava/lang/Exception;
    :sswitch_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->loadDriver()Z

    move-result v6

    if-nez v6, :cond_a

    .line 6660
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v7, "Failed to load driver for softap"

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6662
    :cond_a
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap5(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 6663
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v7, 0xc

    invoke-static {v6, v7, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 6664
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get112(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6666
    :cond_b
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v7, 0xe

    invoke-static {v6, v7, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;II)V

    .line 6668
    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$InitialState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 6623
    :catch_4
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 6554
    .end local v1    # "ee":Ljava/lang/Exception;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1    # "ee":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 6527
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_1
    .end sparse-switch
.end method
