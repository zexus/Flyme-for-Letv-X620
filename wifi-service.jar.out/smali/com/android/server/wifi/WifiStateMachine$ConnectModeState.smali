.class Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 8489
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 8493
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8494
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->connectScanningService()V

    .line 8492
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 68
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 8506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->getClass()Ljava/lang/Class;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move-object/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 8508
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    sparse-switch v63, :sswitch_data_0

    .line 9749
    const/16 v63, 0x0

    return v63

    .line 8510
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    .line 8511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8512
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 8513
    .local v6, "bssid":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-eqz v63, :cond_1

    .line 8515
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get124(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v6

    .line 8517
    :cond_1
    if-eqz v6, :cond_2

    .line 8519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 8520
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    .line 8521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v66

    const/16 v67, 0x0

    .line 8520
    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v67

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/wifi/WifiConfigStore;->handleBSSIDBlackList(ILjava/lang/String;Z)Z

    move-result v65

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set0(Lcom/android/server/wifi/WifiStateMachine;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    .line 8524
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x2402b

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 9751
    .end local v6    # "bssid":Ljava/lang/String;
    :cond_3
    :goto_0
    const/16 v63, 0x1

    return v63

    .line 8519
    .restart local v6    # "bssid":Ljava/lang/String;
    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    .line 8527
    .end local v6    # "bssid":Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v63

    const/16 v64, 0x2

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiLogger;->captureBugReportData(I)V

    .line 8528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x24007

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 8531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    if-eqz v63, :cond_3

    .line 8532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    const/16 v64, 0x1

    invoke-interface/range {v63 .. v64}, Lcom/mediatek/common/wifi/IWifiFwkExt;->setNotificationVisible(Z)V

    goto :goto_0

    .line 8538
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    .line 8539
    .local v49, "substr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v64, 0x2400d

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_4

    .line 8540
    const-string/jumbo v21, "temp-disabled"

    .line 8541
    .local v21, "en":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "ConnectModeState SSID state="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8542
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8541
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8542
    const-string/jumbo v65, " ["

    .line 8541
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8542
    const-string/jumbo v65, "]"

    .line 8541
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 8544
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v66, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    .line 8545
    const v67, 0x2400e

    .line 8544
    move/from16 v0, v63

    move/from16 v1, v67

    if-ne v0, v1, :cond_5

    const/16 v63, 0x1

    .line 8545
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v67

    .line 8544
    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v63

    move-object/from16 v3, v49

    move-object/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v64

    goto/16 :goto_0

    .line 8540
    .end local v21    # "en":Ljava/lang/String;
    :cond_4
    const-string/jumbo v21, "re-enabled"

    .restart local v21    # "en":Ljava/lang/String;
    goto/16 :goto_1

    .line 8544
    :cond_5
    const/16 v63, 0x0

    goto :goto_2

    .line 8543
    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    .line 8549
    .end local v21    # "en":Ljava/lang/String;
    .end local v49    # "substr":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap0(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v47

    .line 8552
    .local v47, "state":Landroid/net/wifi/SupplicantState;
    invoke-static/range {v47 .. v47}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v63

    if-nez v63, :cond_7

    .line 8553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v63

    sget-object v64, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_6

    .line 8554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8556
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Detected an interface down, restart driver"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get43(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2000d

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 8567
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-nez v63, :cond_9

    sget-object v63, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_9

    .line 8568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v63

    sget-object v64, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_9

    .line 8569
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8570
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 8571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 8577
    :cond_9
    sget-object v63, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    if-ne v0, v1, :cond_3

    .line 8578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v63

    if-eqz v63, :cond_3

    .line 8579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get67(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/IpReachabilityMonitor;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/IpReachabilityMonitor;->probeAll()V

    goto/16 :goto_0

    .line 8584
    .end local v47    # "state":Landroid/net/wifi/SupplicantState;
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_a

    .line 8585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set72(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 8588
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 8589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set72(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 8593
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 8595
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 8596
    const/16 v65, 0x0

    .line 8595
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-nez v63, :cond_b

    .line 8597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8598
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 8597
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8599
    const-string/jumbo v65, " cnid="

    .line 8597
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8599
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 8597
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8600
    const-string/jumbo v65, " uid="

    .line 8597
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8600
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 8597
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8605
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v41

    .line 8606
    .local v41, "res":I
    if-gez v41, :cond_d

    .line 8607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8633
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x20034

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v41

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8609
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 8610
    .local v13, "curConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v13, :cond_e

    if-eqz v10, :cond_e

    .line 8611
    iget v0, v13, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v63, v0

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_e

    .line 8612
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v63, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_e

    .line 8616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 8618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 8621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, -0x3

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    invoke-virtual/range {v63 .. v67}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 8629
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_c

    .line 8630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_3

    .line 8636
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "curConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v41    # "res":I
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8637
    .local v31, "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 8638
    const/16 v65, 0x0

    .line 8637
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v63

    if-nez v63, :cond_f

    .line 8639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to remove network  cnid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8641
    const-string/jumbo v65, " uid="

    .line 8639
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8641
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 8639
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 8642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, -0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8646
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v36

    .line 8647
    .local v36, "ok":Z
    if-nez v36, :cond_10

    .line 8648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8650
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_11

    .line 8651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8652
    if-eqz v36, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_11

    .line 8653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8657
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    if-eqz v36, :cond_12

    const/16 v63, 0x1

    :goto_4
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/16 v63, -0x1

    goto :goto_4

    .line 8660
    .end local v31    # "netId":I
    .end local v36    # "ok":Z
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    if-nez v63, :cond_14

    .line 8661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-nez v63, :cond_13

    .line 8662
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Shouldn\'t auto connect, ignore the enable network operation!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8666
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->getDisconnectNetworks()Ljava/util/List;

    move-result-object v17

    .line 8667
    .local v17, "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v17

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_14

    .line 8668
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Network "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " is disconnected actively, ignore the enable network operation!"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    const/16 v65, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8674
    .end local v17    # "disconnectNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_15

    const/16 v16, 0x1

    .line 8675
    .local v16, "disableOthers":Z
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8676
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 8677
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_16

    .line 8678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "No network with id = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 8674
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    :cond_15
    const/16 v16, 0x0

    .restart local v16    # "disableOthers":Z
    goto :goto_5

    .line 8686
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v31    # "netId":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    .line 8687
    const/16 v64, 0x1

    const/16 v65, 0x0

    .line 8686
    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 8688
    if-eqz v16, :cond_17

    .line 8691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 8699
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "any"

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8701
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v56, v0

    .line 8702
    .local v56, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v16

    move/from16 v3, v56

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v36

    .line 8703
    .restart local v36    # "ok":Z
    if-nez v36, :cond_18

    .line 8704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8706
    :cond_18
    if-eqz v36, :cond_1a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v63, v0

    const/16 v64, 0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1a

    .line 8707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_19

    .line 8708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 8709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8712
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    .line 8715
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    .line 8714
    const v65, 0x25001

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 8718
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    if-eqz v36, :cond_1b

    const/16 v63, 0x1

    :goto_6
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_1b
    const/16 v63, -0x1

    goto :goto_6

    .line 8721
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "disableOthers":Z
    .end local v31    # "netId":I
    .end local v36    # "ok":Z
    .end local v56    # "uid":I
    :sswitch_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v50

    .line 8722
    .local v50, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get74(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v64

    sub-long v64, v50, v64

    const-wide/32 v66, 0x927c0

    cmp-long v63, v64, v66

    if-lez v63, :cond_3

    .line 8723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 8724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set48(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_0

    .line 8728
    .end local v50    # "time":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    .line 8729
    const/16 v65, 0x5

    .line 8728
    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(II)Z

    move-result v63

    if-eqz v63, :cond_1d

    .line 8730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_1c

    .line 8731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->addDisconnectNetwork(I)V

    .line 8732
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1c

    .line 8733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8737
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25013

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 8739
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25012

    .line 8741
    const/16 v65, 0x0

    .line 8740
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 8745
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 8746
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v10, :cond_3

    .line 8747
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    .line 8749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x20049

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 8754
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8757
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    goto/16 :goto_0

    .line 8760
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    move-result v36

    .line 8762
    .restart local v36    # "ok":Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "did save config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8763
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    if-eqz v36, :cond_1f

    const/16 v63, 0x1

    :goto_7
    const v65, 0x2003a

    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 8767
    const-string/jumbo v63, "backup"

    invoke-static/range {v63 .. v63}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v63

    .line 8766
    invoke-static/range {v63 .. v63}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v24

    .line 8768
    .local v24, "ibm":Landroid/app/backup/IBackupManager;
    if-eqz v24, :cond_3

    .line 8770
    :try_start_2
    const-string/jumbo v63, "com.android.providers.settings"

    move-object/from16 v0, v24

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 8771
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 8763
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v24    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_1f
    const/16 v63, -0x1

    goto :goto_7

    .line 8777
    .end local v36    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 8778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v65

    .line 8777
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8781
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Received SUP_REQUEST_IDENTITY"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8782
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    .line 8783
    .local v32, "networkId":I
    const/16 v26, 0x0

    .line 8784
    .local v26, "identitySent":Z
    const/16 v19, -0x1

    .line 8786
    .local v19, "eapMethod":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_20

    .line 8787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    if-eqz v63, :cond_20

    .line 8788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v19

    .line 8792
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_23

    .line 8793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v32

    if-ne v0, v1, :cond_23

    .line 8794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v63, v0

    .line 8795
    const/16 v64, 0x3

    .line 8794
    invoke-virtual/range {v63 .. v64}, Ljava/util/BitSet;->get(I)Z

    move-result v63

    .line 8792
    if-eqz v63, :cond_23

    .line 8796
    const/16 v63, 0x4

    move/from16 v0, v19

    move/from16 v1, v63

    if-eq v0, v1, :cond_21

    .line 8797
    const/16 v63, 0x5

    move/from16 v0, v19

    move/from16 v1, v63

    if-ne v0, v1, :cond_25

    .line 8800
    :cond_21
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "phone"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    .line 8799
    check-cast v52, Landroid/telephony/TelephonyManager;

    .line 8801
    .local v52, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v52, :cond_27

    .line 8802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "TelephonyManager != null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8805
    const-string/jumbo v30, ""

    .line 8806
    .local v30, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v63

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_26

    .line 8807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    move-object/from16 v0, v64

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap19(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)I

    move-result v45

    .line 8808
    .local v45, "slotId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "simSlot: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v65

    move-object/from16 v0, v65

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v45

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap20(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v48

    .line 8810
    .local v48, "subId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "subId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8811
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v27

    .line 8812
    .local v27, "imsi":Ljava/lang/String;
    move-object/from16 v0, v52

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v63

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 8813
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v30

    .line 8821
    .end local v45    # "slotId":I
    .end local v48    # "subId":I
    :cond_22
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "imsi: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "mccMnc: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap21(Lcom/android/server/wifi/WifiStateMachine;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 8827
    .local v25, "identity":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v63

    if-nez v63, :cond_23

    .line 8828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v32

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->simIdentityResponse(ILjava/lang/String;)Z

    .line 8829
    const/16 v26, 0x1

    .line 8835
    .end local v25    # "identity":Ljava/lang/String;
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v30    # "mccMnc":Ljava/lang/String;
    .end local v52    # "tm":Landroid/telephony/TelephonyManager;
    :cond_23
    :goto_a
    if-nez v26, :cond_3

    .line 8837
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 8838
    .local v46, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    if-eqz v63, :cond_24

    if-eqz v46, :cond_24

    .line 8839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v63, v0

    if-eqz v63, :cond_24

    .line 8840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "\""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, "\""

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 8838
    if-eqz v63, :cond_24

    .line 8841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get156(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    move-object/from16 v0, v64

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    .line 8843
    const-string/jumbo v65, "AUTH_FAILED no identity"

    .line 8842
    const/16 v66, 0x0

    .line 8843
    const/16 v67, 0x0

    .line 8841
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v66

    move-object/from16 v3, v65

    move-object/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->handleSSIDStateChange(IZLjava/lang/String;Ljava/lang/String;)V

    .line 8847
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8848
    const/16 v64, -0x1

    .line 8847
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-nez v63, :cond_28

    .line 8850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 8798
    .end local v46    # "ssid":Ljava/lang/String;
    :cond_25
    const/16 v63, 0x6

    move/from16 v0, v19

    move/from16 v1, v63

    if-ne v0, v1, :cond_23

    goto/16 :goto_8

    .line 8816
    .restart local v30    # "mccMnc":Ljava/lang/String;
    .restart local v52    # "tm":Landroid/telephony/TelephonyManager;
    :cond_26
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v27

    .line 8817
    .restart local v27    # "imsi":Ljava/lang/String;
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v63

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 8818
    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_9

    .line 8832
    .end local v27    # "imsi":Ljava/lang/String;
    .end local v30    # "mccMnc":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "TelephonyManager is null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 8852
    .end local v52    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v46    # "ssid":Ljava/lang/String;
    :cond_28
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Skip SUP_REQUEST_IDENTITY disconnect for customization!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8857
    .end local v19    # "eapMethod":I
    .end local v26    # "identitySent":Z
    .end local v32    # "networkId":I
    .end local v46    # "ssid":Ljava/lang/String;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Received SUP_REQUEST_SIM_AUTH"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8858
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;

    .line 8859
    .local v40, "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    if-eqz v40, :cond_2b

    .line 8860
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x4

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_29

    .line 8861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handleGsmAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 8862
    :cond_29
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x5

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_2a

    .line 8863
    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;->protocol:I

    move/from16 v63, v0

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    .line 8864
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->handle3GAuthRequest(Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;)V

    goto/16 :goto_0

    .line 8867
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Invalid sim auth request"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8871
    .end local v40    # "requestData":Lcom/android/server/wifi/WifiStateMachine$SimAuthRequestData;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 8872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/WifiConfigStore;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v65

    .line 8871
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8875
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v65, v0

    .line 8876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v66

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v66

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    .line 8875
    move-object/from16 v0, v64

    move-object/from16 v1, p1

    move/from16 v2, v65

    move-object/from16 v3, v63

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8880
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 8881
    const/16 v64, -0x1

    .line 8880
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 8882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto/16 :goto_0

    .line 8885
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    goto/16 :goto_0

    .line 8888
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reassociate()Z

    goto/16 :goto_0

    .line 8892
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->needsUnlockedKeyStore()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 8893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconnecting to give a chance to un-connected TLS networks"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_2c

    .line 8896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 8898
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 8899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto/16 :goto_0

    .line 8903
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 8904
    const/16 v63, 0x1

    return v63

    .line 8906
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Lcom/mediatek/common/wifi/IWifiFwkExt;->shouldAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_30

    .line 8919
    :cond_2d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 8920
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "LOADED"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_32

    .line 8921
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v59

    .line 8922
    .local v59, "value":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "EAP value:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 8923
    const/16 v63, 0x4

    move/from16 v0, v59

    move/from16 v1, v63

    if-eq v0, v1, :cond_2e

    .line 8924
    const/16 v63, 0x5

    move/from16 v0, v59

    move/from16 v1, v63

    if-ne v0, v1, :cond_31

    .line 8926
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "ABSENT"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_2f

    .line 8927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "LOCKED"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 8926
    if-nez v63, :cond_2f

    .line 8928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "UNKNOWN"

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 8926
    if-eqz v63, :cond_34

    .line 8929
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "AUTO_CONNECT EAP-SIM AP, but card is "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8930
    const-string/jumbo v65, ", set autojoinStatus to "

    .line 8929
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8931
    const-string/jumbo v65, "AUTO_JOIN_DISABLED_EAP_SIM_CARD_ABSENT"

    .line 8929
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8932
    const-string/jumbo v65, ", drop this connect"

    .line 8929
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 8934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v20

    .line 8936
    .local v20, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/16 v63, 0xa2

    .line 8935
    move-object/from16 v0, v20

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto/16 :goto_0

    .line 8907
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v20    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v59    # "value":I
    :cond_30
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Skip CMD_AUTO_CONNECT for customization!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8908
    const/16 v63, 0x1

    return v63

    .line 8925
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v59    # "value":I
    :cond_31
    const/16 v63, 0x6

    move/from16 v0, v59

    move/from16 v1, v63

    if-eq v0, v1, :cond_2e

    .line 8945
    .end local v59    # "value":I
    :cond_32
    const/4 v15, 0x0

    .line 8946
    .local v15, "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-eq v0, v1, :cond_33

    .line 8950
    const/4 v15, 0x1

    .line 8951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 8956
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8957
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    .line 8958
    .local v43, "roam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT sup state "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8960
    const-string/jumbo v65, " my state "

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8961
    const-string/jumbo v65, " nid="

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8961
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8962
    const-string/jumbo v65, " roam="

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8962
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8958
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8963
    if-nez v10, :cond_35

    .line 8964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "AUTO_CONNECT and no config, bail out..."

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8938
    .end local v15    # "didDisconnect":Z
    .end local v31    # "netId":I
    .end local v43    # "roam":I
    .restart local v59    # "value":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "AUTO_CONNECT EAP-SIM AP, but modem is not ready, drop this connect"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8969
    .end local v59    # "value":I
    .restart local v15    # "didDisconnect":Z
    .restart local v31    # "netId":I
    .restart local v43    # "roam":I
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 8972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT will save config -> "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8973
    const-string/jumbo v65, " nid="

    .line 8972
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8973
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8972
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 8975
    .local v42, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 8976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT did save config ->  nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8977
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8976
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 8980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 8981
    if-nez v10, :cond_36

    .line 8982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "CMD_AUTO_CONNECT couldn\'t update the config, got null config"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8985
    :cond_36
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v31

    move/from16 v1, v63

    if-eq v0, v1, :cond_37

    .line 8986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CMD_AUTO_CONNECT couldn\'t update the config, want nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8987
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 8986
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8987
    const-string/jumbo v65, " but got"

    .line 8986
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 8987
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 8986
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8991
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 8993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v63, v0

    .line 8994
    const/16 v64, 0x2

    .line 8993
    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_38

    .line 8995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 8996
    const/16 v65, 0x9

    .line 8995
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9001
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v63

    if-eqz v63, :cond_3b

    .line 9006
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v29, v0

    .line 9008
    .local v29, "lastConnectUid":I
    :goto_b
    const/16 v53, 0x0

    .line 9009
    .local v53, "tmpResult":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_3c

    .line 9010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->enableNetwork(IZI)Z

    move-result v53

    .line 9016
    .local v53, "tmpResult":Z
    :goto_c
    if-eqz v53, :cond_42

    .line 9017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v63

    .line 9016
    if-eqz v63, :cond_42

    .line 9018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set85(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 9021
    if-eqz v10, :cond_39

    .line 9022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v10}, Lcom/android/server/wifi/WifiConfigStore;->isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v63

    if-eqz v63, :cond_3d

    .line 9038
    :cond_39
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->isRoaming()Z

    move-result v63

    if-nez v63, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_3e

    .line 9040
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get103(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9006
    .end local v29    # "lastConnectUid":I
    .end local v53    # "tmpResult":Z
    :cond_3b
    const/16 v29, -0x1

    .restart local v29    # "lastConnectUid":I
    goto/16 :goto_b

    .line 9012
    .local v53, "tmpResult":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9013
    const/16 v64, 0x0

    .line 9012
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v53

    .local v53, "tmpResult":Z
    goto/16 :goto_c

    .line 9035
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9036
    const/16 v64, -0x1

    .line 9035
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto :goto_d

    .line 9041
    :cond_3e
    if-eqz v15, :cond_3f

    .line 9042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9045
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-nez v63, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_41

    .line 9046
    const v14, 0xea60

    .line 9047
    .local v14, "delay":I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    move-result v63

    if-eqz v63, :cond_40

    .line 9048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Starting PNO alarm: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9050
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    .line 9051
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    const-wide/32 v66, 0xea60

    add-long v64, v64, v66

    .line 9052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v66

    .line 9050
    const/16 v67, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v67

    move-wide/from16 v2, v64

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9054
    .end local v14    # "delay":I
    :cond_41
    sget v63, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    add-int/lit8 v63, v63, 0x1

    sput v63, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    goto/16 :goto_0

    .line 9057
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to connect config: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " netId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9059
    const/16 v65, 0x0

    .line 9058
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9064
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v29    # "lastConnectUid":I
    .end local v31    # "netId":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v43    # "roam":I
    .end local v53    # "tmpResult":Z
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z

    goto/16 :goto_0

    .line 9067
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetworksForUser(I)Z

    goto/16 :goto_0

    .line 9076
    :sswitch_1b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9077
    .restart local v31    # "netId":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 9078
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9079
    const/16 v57, 0x0

    .line 9082
    .local v57, "updatedExisting":Z
    if-eqz v10, :cond_45

    .line 9087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9088
    const/16 v65, 0x1

    .line 9087
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-nez v63, :cond_43

    .line 9089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9090
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9089
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9091
    const-string/jumbo v65, " cnid="

    .line 9089
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9091
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9089
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9092
    const-string/jumbo v65, " uid="

    .line 9089
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9092
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9089
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9094
    const/16 v65, 0x9

    .line 9093
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9098
    :cond_43
    const/16 v63, 0x1

    move/from16 v0, v63

    invoke-virtual {v10, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v11

    .line 9100
    .local v11, "configKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v11}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v44

    .line 9101
    .local v44, "savedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v44, :cond_44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v63, v0

    const/16 v64, 0x6

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_44

    .line 9105
    move-object/from16 v10, v44

    .line 9106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK updating existing config with id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9107
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9106
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9107
    const-string/jumbo v65, " configKey="

    .line 9106
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9108
    const/16 v63, 0x0

    move/from16 v0, v63

    iput-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 9109
    const/16 v63, 0x0

    move/from16 v0, v63

    iput v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 9110
    const/16 v57, 0x1

    .line 9113
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 9114
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v31

    .line 9116
    .end local v11    # "configKey":Ljava/lang/String;
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v44    # "savedConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 9118
    if-nez v10, :cond_46

    .line 9119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK no config for id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9119
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9120
    const-string/jumbo v65, " my state "

    .line 9119
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9119
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9123
    const/16 v65, 0x0

    .line 9122
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9126
    :cond_46
    iget-boolean v0, v10, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v63, v0

    if-eqz v63, :cond_49

    const-string/jumbo v60, " skipped"

    .line 9127
    .local v60, "wasSkipped":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "CONNECT_NETWORK id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9128
    const-string/jumbo v65, " config="

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9128
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9129
    const-string/jumbo v65, " cnid="

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9129
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9130
    const-string/jumbo v65, " supstate="

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9131
    const-string/jumbo v65, " my state "

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9132
    const-string/jumbo v65, " uid = "

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9132
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9127
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "any"

    move-object/from16 v0, v63

    move/from16 v1, v31

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->autoRoamSetBSSID(ILjava/lang/String;)V

    .line 9138
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v63, v0

    const/16 v64, 0x3f2

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_47

    .line 9139
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v63, v0

    const/16 v64, 0x3e8

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_48

    .line 9146
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "CONNECT_NETWORK"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 9149
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->deferForUserInput(Landroid/os/Message;IZ)Z

    move-result v63

    if-nez v63, :cond_3

    .line 9151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v63, v0

    .line 9152
    const/16 v64, 0x2

    .line 9151
    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_4a

    .line 9153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9154
    const/16 v65, 0x9

    .line 9153
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9126
    .end local v60    # "wasSkipped":Ljava/lang/String;
    :cond_49
    const-string/jumbo v60, ""

    .restart local v60    # "wasSkipped":Ljava/lang/String;
    goto/16 :goto_e

    .line 9158
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v38

    .line 9163
    .local v38, "persist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    const/16 v64, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9167
    const/4 v15, 0x0

    .line 9168
    .restart local v15    # "didDisconnect":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    const/16 v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4b

    .line 9169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v31

    if-eq v0, v1, :cond_4b

    .line 9173
    const/4 v15, 0x1

    .line 9174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 9178
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v31

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->enableNetworkWithoutBroadcast(IZ)Z

    .line 9180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9181
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9180
    const/16 v65, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z

    move-result v63

    if-eqz v63, :cond_4f

    .line 9181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    move-result v63

    .line 9180
    if-eqz v63, :cond_4f

    .line 9182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    invoke-static/range {v63 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 9183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set85(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    const v64, 0x25001

    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 9187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25003

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_4c

    .line 9193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 9199
    :cond_4c
    if-eqz v15, :cond_4d

    .line 9201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get34(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9202
    :cond_4d
    if-eqz v57, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get21(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_4e

    .line 9203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v31

    if-ne v0, v1, :cond_4e

    .line 9206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap83(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9212
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9216
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to connect config: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, " netId: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25002

    .line 9218
    const/16 v65, 0x0

    .line 9217
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9223
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v15    # "didDisconnect":Z
    .end local v31    # "netId":I
    .end local v38    # "persist":Z
    .end local v57    # "updatedExisting":Z
    .end local v60    # "wasSkipped":Ljava/lang/String;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v63

    move-object/from16 v0, v63

    iget v0, v0, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    move-object/from16 v1, v63

    iput v0, v1, Landroid/net/wifi/WifiConnectionStatistics;->numWifiManagerJoinAttempt:I

    .line 9226
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9227
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 9228
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v10, :cond_50

    .line 9229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "ERROR: SAVE_NETWORK with null configuration"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9229
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9231
    const-string/jumbo v65, " my state "

    .line 9229
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9229
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9234
    const/16 v65, 0x0

    .line 9233
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9237
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v64

    invoke-direct {v0, v10}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set5(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9238
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v35, v0

    .line 9239
    .local v35, "nid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "SAVE_NETWORK id="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9240
    const-string/jumbo v65, " config="

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9240
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9241
    const-string/jumbo v65, " nid="

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9241
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9242
    const-string/jumbo v65, " supstate="

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/android/server/wifi/SupplicantStateTracker;->getSupplicantStateName()Ljava/lang/String;

    move-result-object v65

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9243
    const-string/jumbo v65, " my state "

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v65

    .line 9239
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9246
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v64, 0x25007

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_56

    const/4 v9, 0x1

    .line 9247
    .local v9, "checkUid":Z
    :goto_f
    if-eqz v9, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9248
    const/16 v65, 0x0

    .line 9247
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->recordUidIfAuthorized(Landroid/net/wifi/WifiConfiguration;IZ)Z

    move-result v63

    if-eqz v63, :cond_57

    .line 9258
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v64, -0x1

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    move-result-object v42

    .line 9259
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v63

    const/16 v64, -0x1

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_59

    .line 9260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v63

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_53

    .line 9261
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasIpChanged()Z

    move-result v63

    if-eqz v63, :cond_52

    .line 9265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconfiguring IP on connection"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9270
    :cond_52
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->hasProxyChanged()Z

    move-result v63

    if-eqz v63, :cond_53

    .line 9271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Reconfiguring proxy on connection"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2008c

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap85(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9275
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25009

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v64

    invoke-static {v0, v1, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    .line 9278
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    move-result v63

    if-eqz v63, :cond_54

    .line 9279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Success save network nid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9280
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v65

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v65

    .line 9279
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 9283
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get107(Lcom/android/server/wifi/WifiStateMachine;)Landroid/util/LruCache;

    move-result-object v64

    monitor-enter v64

    .line 9289
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    const v65, 0x25007

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_58

    const/16 v58, 0x1

    .line 9293
    .local v58, "user":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->checkConfigOverridePermission(I)Z

    move-result v39

    .line 9295
    .local v39, "persistConnect":Z
    if-eqz v58, :cond_55

    .line 9296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wifi/WifiConfigStore;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    .line 9297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->writeKnownNetworkHistory(Z)V

    .line 9300
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    move-result v65

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v58

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiAutoJoinController;->updateConfigurationHistory(IZZ)V

    .line 9302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v64

    .line 9304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap26(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9246
    .end local v9    # "checkUid":Z
    .end local v39    # "persistConnect":Z
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    .end local v58    # "user":Z
    :cond_56
    const/4 v9, 0x0

    .restart local v9    # "checkUid":Z
    goto/16 :goto_f

    .line 9249
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to update network  config="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9250
    iget-object v0, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 9249
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9251
    const-string/jumbo v65, " cnid="

    .line 9249
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9251
    iget v0, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9249
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9252
    const-string/jumbo v65, " uid="

    .line 9249
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9252
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9249
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9254
    const/16 v65, 0x9

    .line 9253
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9289
    .restart local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_58
    const/16 v58, 0x0

    .restart local v58    # "user":Z
    goto/16 :goto_10

    .line 9283
    .end local v58    # "user":Z
    :catchall_2
    move-exception v63

    monitor-exit v64

    throw v63

    .line 9308
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Failed to save network"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25008

    .line 9311
    const/16 v65, 0x0

    .line 9310
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9317
    .end local v9    # "checkUid":Z
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v35    # "nid":I
    .end local v42    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v54

    .line 9318
    .local v54, "toRemove":Landroid/net/wifi/WifiConfiguration;
    if-nez v54, :cond_5a

    .line 9319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 9324
    :goto_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 9326
    .restart local v31    # "netId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v64, v0

    .line 9327
    const/16 v65, 0x0

    .line 9326
    move-object/from16 v0, v63

    move/from16 v1, v64

    move/from16 v2, v31

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v63

    if-nez v63, :cond_5b

    .line 9328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to forget network  cnid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9330
    const-string/jumbo v65, " uid="

    .line 9328
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9330
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->sendingUid:I

    move/from16 v65, v0

    .line 9328
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25005

    .line 9332
    const/16 v65, 0x9

    .line 9331
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9321
    .end local v31    # "netId":I
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v64

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set3(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_11

    .line 9336
    .restart local v31    # "netId":I
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->forgetNetwork(I)Z

    move-result v63

    if-eqz v63, :cond_5e

    .line 9337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_5c

    .line 9338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 9339
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5c

    .line 9340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9344
    :cond_5c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_5d

    .line 9345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, -0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set49(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v63

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    const v65, 0x25004

    move-object/from16 v0, v63

    move/from16 v1, v65

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(II)V

    .line 9349
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25006

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 9350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    .line 9351
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/net/wifi/WifiConfiguration;

    .line 9350
    const/16 v65, 0x1

    move-object/from16 v0, v64

    move/from16 v1, v65

    move-object/from16 v2, v63

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap24(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 9353
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Failed to forget network"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25005

    .line 9355
    const/16 v65, 0x0

    .line 9354
    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9359
    .end local v31    # "netId":I
    .end local v54    # "toRemove":Landroid/net/wifi/WifiConfiguration;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_5f

    .line 9360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap30(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9364
    :cond_5f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9366
    .local v61, "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_0

    .line 9388
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9389
    .local v62, "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Invalid setup for WPS"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9392
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    .line 9393
    const/16 v64, -0x1

    .line 9392
    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    .line 9394
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_63

    .line 9395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9368
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_12

    .line 9372
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_1
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-eqz v63, :cond_62

    .line 9373
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_61

    .line 9374
    :cond_60
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9376
    const/16 v63, 0x1

    return v63

    .line 9378
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9382
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 9385
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_12

    .line 9398
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9403
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_20
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "Network connection established"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9404
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_65

    .line 9405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9407
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set50(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set45(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 9412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get76(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 9414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap56(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get87(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9427
    :sswitch_21
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v63

    if-eqz v63, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "ConnectModeState: Network connection lost "

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 9428
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9432
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, [Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->processPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_0

    .line 9435
    :sswitch_23
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "WAPI no certification!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v65, "android.net.wifi.NO_CERTIFICATION"

    invoke-direct/range {v64 .. v65}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v65, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v63 .. v65}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 9439
    :sswitch_24
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "EAP-FAST new pac updated!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    new-instance v64, Landroid/content/Intent;

    const-string/jumbo v65, "android.net.wifi.NEW_PAC_UPDATED"

    invoke-direct/range {v64 .. v65}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v65, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v63 .. v65}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 9443
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_67

    .line 9444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap79(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2501b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9447
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2501c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9452
    :sswitch_26
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_68

    .line 9453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9456
    :cond_68
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9457
    .restart local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "nfc_pw"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 9458
    .local v34, "nfcPw":I
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "START_WPS_REG, nfcPw:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9459
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    const/16 v64, 0x2

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_6f

    .line 9460
    if-nez v34, :cond_69

    .line 9461
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_6a

    .line 9462
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9464
    const/16 v63, 0x1

    return v63

    .line 9467
    :cond_69
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Using pin from NFC."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9468
    const-string/jumbo v63, "nfc-pw"

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 9470
    :cond_6a
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6b

    .line 9471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->getBytes()[B

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v23

    .line 9472
    .local v23, "hexStr":Ljava/lang/String;
    if-eqz v23, :cond_6d

    .line 9473
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    .line 9478
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6b
    :goto_13
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_6c

    .line 9479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->getBytes()[B

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v23

    .line 9480
    .restart local v23    # "hexStr":Ljava/lang/String;
    if-eqz v23, :cond_6e

    .line 9481
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    .line 9486
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6c
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsReg(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9487
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set30(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9492
    :goto_15
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_70

    .line 9493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9475
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    .restart local v23    # "hexStr":Ljava/lang/String;
    :cond_6d
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ssid:Ljava/lang/String;

    goto/16 :goto_13

    .line 9483
    :cond_6e
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v61

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->key:Ljava/lang/String;

    goto :goto_14

    .line 9489
    .end local v23    # "hexStr":Ljava/lang/String;
    :cond_6f
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9490
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid setup for WPS REG"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 9496
    :cond_70
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS REG with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9501
    .end local v34    # "nfcPw":I
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_27
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_71

    .line 9502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9505
    :cond_71
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/wifi/WpsInfo;

    .line 9506
    .restart local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "START_WPS_ER, mEnrolleeUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", mEnrolleeBssid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9507
    move-object/from16 v0, v61

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_1

    .line 9529
    :pswitch_3
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 9530
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid setup for WPS ER!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9533
    :goto_16
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_75

    .line 9534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9540
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9509
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_72

    .line 9510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_16

    .line 9512
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set82(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 9514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v64

    const-wide/32 v66, 0x1d4c0

    add-long v64, v64, v66

    .line 9515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v66

    .line 9514
    const/16 v67, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v67

    move-wide/from16 v2, v64

    move-object/from16 v4, v66

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 9516
    const/16 v63, 0x1

    return v63

    .line 9520
    :pswitch_5
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_74

    .line 9521
    :cond_73
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Invalid pin code."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0xa

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 9523
    const/16 v63, 0x1

    return v63

    .line 9525
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPinAny(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto/16 :goto_16

    .line 9537
    :cond_75
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to start WPS ER with config "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v61 .. v61}, Landroid/net/wifi/WpsInfo;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_17

    .line 9544
    .end local v61    # "wpsInfo":Landroid/net/wifi/WpsInfo;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_28
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_76

    .line 9545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9548
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v65, 0x1

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_78

    const/16 v63, 0x1

    :goto_18
    move-object/from16 v0, v64

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9549
    .local v37, "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item22: GET_WPS_PIN_AND_CONNECT, passwordToken:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9550
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_77

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_79

    .line 9561
    :cond_77
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get password token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9548
    .end local v37    # "passwordToken":Ljava/lang/String;
    :cond_78
    const/16 v63, 0x0

    goto :goto_18

    .line 9551
    .restart local v37    # "passwordToken":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap57(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9553
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_7a

    .line 9554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9557
    :cond_7a
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS NFC!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9566
    .end local v37    # "passwordToken":Ljava/lang/String;
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_29
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_7b

    .line 9567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502d

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9570
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v63, v0

    const/16 v65, 0x1

    move/from16 v0, v63

    move/from16 v1, v65

    if-ne v0, v1, :cond_7d

    const/16 v63, 0x1

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, v64

    move/from16 v1, v63

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->wpsErNfcConfigToken(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9571
    .local v12, "credential":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item26: GET_WPS_CRED_AND_CONNECT, credential:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9572
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_7c

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v63

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_7e

    .line 9576
    :cond_7c
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Failed to get WPS credential, mErApUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502d

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9570
    .end local v12    # "credential":Ljava/lang/String;
    :cond_7d
    const/16 v63, 0x0

    goto :goto_19

    .line 9573
    .restart local v12    # "credential":Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    invoke-static {v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap53(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2502e

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9581
    .end local v12    # "credential":Ljava/lang/String;
    :sswitch_2a
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_7f

    .line 9582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25033

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9585
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9586
    .restart local v37    # "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item28: get requester token, passwordToken: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9587
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_80

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_81

    .line 9593
    :cond_80
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get requester token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25033

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9588
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap62(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "wps_nfc_pubkey"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 9590
    .local v28, "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 9591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25034

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9598
    .end local v28    # "keyType":I
    .end local v37    # "passwordToken":Ljava/lang/String;
    :sswitch_2b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_82

    .line 9599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25030

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9602
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    const/16 v64, 0x0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiNative;->getNfcHandoverToken(Z)Ljava/lang/String;

    move-result-object v37

    .line 9603
    .restart local v37    # "passwordToken":Ljava/lang/String;
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Item29: get selector token, passwordToken: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9604
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_83

    const-string/jumbo v63, "UNKNOWN COMMAND"

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_84

    .line 9612
    :cond_83
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to get selector token!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25030

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9605
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v63

    const v64, 0x200ba

    invoke-virtual/range {v63 .. v64}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 9607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap64(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 9608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "wps_nfc_pubkey"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 9609
    .restart local v28    # "keyType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcCfgKeyType(I)Z

    .line 9610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25031

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9617
    .end local v28    # "keyType":I
    .end local v37    # "passwordToken":Ljava/lang/String;
    :sswitch_2c
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_85

    .line 9618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25039

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9621
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap60(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2503a

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9625
    :sswitch_2d
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_86

    .line 9626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25036

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9629
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-wrap61(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 9630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x25037

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 9633
    :sswitch_2e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9636
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 9637
    .local v22, "event":Ljava/lang/String;
    const-string/jumbo v63, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    .line 9638
    .local v55, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v63, v0

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_89

    .line 9639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x2

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9641
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_ENROLLEE_ADD_EVENT, mEnrolleeUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9642
    const-string/jumbo v65, ", mEnrolleeBssid:"

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get47(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9642
    const-string/jumbo v65, ", mWpsErMethod:"

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v65

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9643
    const-string/jumbo v65, ", mWaitingForEnrollee:"

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get135(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v65

    .line 9641
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get135(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get18(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 9647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get153(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v63

    if-nez v63, :cond_87

    .line 9648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get48(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->startWpsErPbc(Ljava/lang/String;)Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9652
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :goto_1a
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_88

    .line 9653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 9657
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set29(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set28(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 9650
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_87
    new-instance v62, Landroid/net/wifi/WpsResult;

    sget-object v63, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct/range {v62 .. v63}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    goto :goto_1a

    .line 9655
    :cond_88
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS ER!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 9661
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :cond_89
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_ENROLLEE_ADD_EVENT format error, event:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9665
    .end local v22    # "event":Ljava/lang/String;
    .end local v55    # "tokens":[Ljava/lang/String;
    :sswitch_2f
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9668
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    .line 9669
    .restart local v22    # "event":Ljava/lang/String;
    const-string/jumbo v63, " "

    move-object/from16 v0, v22

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    .line 9670
    .restart local v55    # "tokens":[Ljava/lang/String;
    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v63, v0

    const/16 v64, 0x3

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_8a

    .line 9671
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_AP_ADD_EVENT format error, event:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9674
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v63

    const-string/jumbo v64, "nfc_pw"

    const/16 v65, 0x0

    invoke-static/range {v63 .. v65}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    .line 9675
    .restart local v34    # "nfcPw":I
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WPS_ER_AP_ADD_EVENT, erApUuid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const/16 v65, 0x1

    aget-object v65, v55, v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", erApBssid:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    const/16 v65, 0x2

    aget-object v65, v55, v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9676
    const-string/jumbo v65, ", mErApPin:"

    .line 9675
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9675
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9676
    const-string/jumbo v65, ", mLastBssid:"

    .line 9675
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    .line 9675
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9676
    const-string/jumbo v65, ", nfcPw:"

    .line 9675
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9677
    const/16 v63, 0x1

    aget-object v63, v55, v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    const/16 v63, 0x2

    aget-object v63, v55, v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    const/16 v63, 0x2

    aget-object v63, v55, v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get72(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    aget-object v64, v55, v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set31(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 9679
    if-nez v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    invoke-static/range {v63 .. v63}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v63

    if-nez v63, :cond_3

    .line 9680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get50(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v63 .. v65}, Lcom/android/server/wifi/WifiNative;->wpsErLearn(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 9685
    .end local v22    # "event":Ljava/lang/String;
    .end local v34    # "nfcPw":I
    .end local v55    # "tokens":[Ljava/lang/String;
    :sswitch_30
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->wpsNfcTagRead(Ljava/lang/String;)Z

    .line 9689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v63

    if-nez v63, :cond_8b

    .line 9690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    goto/16 :goto_0

    .line 9692
    :cond_8b
    const-string/jumbo v63, "WifiStateMachine"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "M_CMD_START_WPS_NFC_TAG_READ, mErApPin:"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/wifi/WifiStateMachine;->-get49(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 9696
    :sswitch_31
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-nez v63, :cond_8c

    .line 9697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9700
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 9701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->startWpsNfc()Landroid/net/wifi/WpsResult;

    move-result-object v62

    .line 9702
    .restart local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/net/wifi/WpsResult;->status:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v63, v0

    sget-object v64, Landroid/net/wifi/WpsResult$Status;->SUCCESS:Landroid/net/wifi/WpsResult$Status;

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    if-ne v0, v1, :cond_8d

    .line 9703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500b

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move-object/from16 v3, v62

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    .line 9704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get154(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 9706
    :cond_8d
    const-string/jumbo v63, "WifiStateMachine"

    const-string/jumbo v64, "Failed to start WPS NFC!"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const v64, 0x2500c

    const/16 v65, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 9711
    .end local v62    # "wpsResult":Landroid/net/wifi/WpsResult;
    :sswitch_32
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v63

    if-eqz v63, :cond_3

    .line 9714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v64

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Ljava/lang/String;

    const/16 v65, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiNative;->nfcRxHandoverToken(Ljava/lang/String;Z)Z

    .line 9715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 9720
    :sswitch_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    .line 9721
    .restart local v56    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v33

    .line 9722
    .local v33, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v33, :cond_91

    .line 9723
    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "c$iterator":Ljava/util/Iterator;
    :cond_8e
    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_90

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 9724
    .local v7, "c":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    .line 9725
    const/16 v65, 0x0

    .line 9724
    move-object/from16 v0, v63

    move/from16 v1, v56

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->canModifyNetwork(IIZ)Z

    move-result v63

    if-nez v63, :cond_8f

    .line 9726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Not authorized to remove network  cnid="

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9727
    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v65, v0

    .line 9726
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9728
    const-string/jumbo v65, " uid="

    .line 9726
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-wrap46(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_1c

    .line 9731
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(I)Z

    move-result v36

    .line 9732
    .restart local v36    # "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v63

    if-eqz v63, :cond_8e

    .line 9733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiConfigStore;->removeDisconnectNetwork(I)V

    .line 9734
    if-eqz v36, :cond_8e

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_8e

    .line 9735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x1

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set20(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 9736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    invoke-static/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->-set62(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1c

    .line 9740
    .end local v7    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v36    # "ok":Z
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    .line 9741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "M_CMD_FACTORY_RESET, "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 9742
    const-string/jumbo v65, " configured networks are removed"

    .line 9741
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9744
    .end local v8    # "c$iterator":Ljava/util/Iterator;
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v63, v0

    const-string/jumbo v64, "M_CMD_FACTORY_RESET networks is null"

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8508
    :sswitch_data_0
    .sparse-switch
        0x20034 -> :sswitch_5
        0x20035 -> :sswitch_6
        0x20036 -> :sswitch_7
        0x20037 -> :sswitch_8
        0x20038 -> :sswitch_b
        0x20039 -> :sswitch_c
        0x2003a -> :sswitch_d
        0x2003b -> :sswitch_e
        0x2003e -> :sswitch_11
        0x20049 -> :sswitch_13
        0x2004a -> :sswitch_14
        0x2004b -> :sswitch_15
        0x20061 -> :sswitch_19
        0x20062 -> :sswitch_a
        0x20063 -> :sswitch_12
        0x2008e -> :sswitch_16
        0x2008f -> :sswitch_18
        0x20091 -> :sswitch_17
        0x20092 -> :sswitch_1d
        0x20098 -> :sswitch_1a
        0x2009c -> :sswitch_22
        0x200b7 -> :sswitch_30
        0x200b8 -> :sswitch_31
        0x200b9 -> :sswitch_32
        0x200df -> :sswitch_33
        0x2300c -> :sswitch_4
        0x24003 -> :sswitch_20
        0x24004 -> :sswitch_21
        0x24006 -> :sswitch_3
        0x24007 -> :sswitch_1
        0x2400d -> :sswitch_2
        0x2400e -> :sswitch_2
        0x2400f -> :sswitch_f
        0x24010 -> :sswitch_10
        0x2402b -> :sswitch_0
        0x24050 -> :sswitch_23
        0x24051 -> :sswitch_24
        0x24053 -> :sswitch_2e
        0x24054 -> :sswitch_2f
        0x25001 -> :sswitch_1b
        0x25004 -> :sswitch_1e
        0x25007 -> :sswitch_1c
        0x2500a -> :sswitch_1f
        0x25011 -> :sswitch_9
        0x2501a -> :sswitch_25
        0x25029 -> :sswitch_26
        0x2502a -> :sswitch_27
        0x2502b -> :sswitch_28
        0x2502c -> :sswitch_29
        0x2502f -> :sswitch_2b
        0x25032 -> :sswitch_2a
        0x25035 -> :sswitch_2d
        0x25038 -> :sswitch_2c
    .end sparse-switch

    .line 9366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 9507
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
