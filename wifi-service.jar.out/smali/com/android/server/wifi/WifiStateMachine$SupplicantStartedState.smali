.class Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6862
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6865
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6867
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 6868
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 6870
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6871
    const v2, 0x10e0026

    .line 6870
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6873
    .local v0, "defaultInterval":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6874
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6875
    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    .line 6876
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v0    # "defaultInterval":I
    :goto_0
    int-to-long v4, v0

    .line 6874
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set69(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 6883
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get24(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap84(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 6885
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get117(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    .line 6886
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->setExternalSim(Z)Z

    .line 6889
    invoke-static {v6}, Lcom/android/server/wifi/WifiNative;->setDfsFlag(Z)Z

    .line 6892
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap67(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6894
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap10(Lcom/android/server/wifi/WifiStateMachine;)Z

    .line 6897
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigStore;->enableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6898
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    .line 6904
    :goto_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get143(Lcom/android/server/wifi/WifiStateMachine;)Lcom/mediatek/common/wifi/IWifiFwkExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/common/wifi/IWifiFwkExt;->hasNetworkSelection()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6906
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 6864
    :cond_2
    return-void

    .line 6876
    .restart local v0    # "defaultInterval":I
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 6877
    const v5, 0x10e0029

    .line 6876
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto/16 :goto_0

    .line 6879
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6880
    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    .line 6881
    int-to-long v4, v0

    .line 6879
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set69(Lcom/android/server/wifi/WifiStateMachine;J)J

    goto/16 :goto_1

    .line 6900
    .end local v0    # "defaultInterval":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/wifi/WifiNative;->enableAutoConnect(Z)V

    goto :goto_2
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7082
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 7084
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get81()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7085
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7088
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get84(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 7081
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6913
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6915
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 7075
    const/4 v11, 0x0

    return v11

    .line 6917
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6918
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get134(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7077
    :cond_0
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 6920
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get121(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 6924
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v12, "Connection lost, restart supplicant"

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6925
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap44(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 6926
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap38(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v11

    const v12, 0x2006f

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 6928
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get91(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 6929
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get134(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 6933
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v12, 0x1388

    const v14, 0x2000b

    invoke-virtual {v11, v14, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 6931
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get63(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 6937
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    .line 6938
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->closeRadioScanStats()V

    .line 6939
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap47(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6940
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap70(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6941
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 6942
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set66(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6943
    const-string/jumbo v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SCAN_RESULTS_EVENT, mScanForWeakSignal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6944
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get105(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 6945
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap76(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 6947
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set19(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6949
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mIsFullScanOngoing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 6950
    const-string/jumbo v13, ", mSendScanResultsBroadcast: "

    .line 6949
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 6950
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v13

    .line 6949
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6952
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get68(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get110(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_6

    .line 6953
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mWifiOnScanCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6955
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    const v12, 0x24005

    if-ne v11, v12, :cond_7

    const/4 v8, 0x1

    .line 6956
    .local v8, "scanSucceeded":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11, v8}, Lcom/android/server/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast(Z)V

    .line 6958
    .end local v8    # "scanSucceeded":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get150(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set80(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6960
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set64(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6961
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set43(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6962
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set39(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6963
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 6964
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get17(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Message;

    invoke-virtual {v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6955
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "scanSucceeded":Z
    goto :goto_2

    .line 6967
    .end local v8    # "scanSucceeded":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiNative;->ping()Z

    move-result v6

    .line 6968
    .local v6, "ok":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_8

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_8
    const/4 v11, -0x1

    goto :goto_3

    .line 6971
    .end local v6    # "ok":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiNative;->getFreqCapability()Ljava/lang/String;

    move-result-object v4

    .line 6972
    .local v4, "freqs":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12, v4}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6976
    .end local v4    # "freqs":Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v12, "Failed to start soft AP with a running supplicant"

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6977
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v12, 0xe

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap74(Lcom/android/server/wifi/WifiStateMachine;II)V

    goto/16 :goto_0

    .line 6980
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6981
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v11

    .line 6982
    const/4 v12, -0x1

    .line 6981
    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 6986
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v11, :cond_0

    .line 6987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set71(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 6991
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v10

    .line 6992
    .local v10, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-nez v10, :cond_9

    .line 6994
    new-instance v10, Landroid/net/wifi/WifiLinkLayerStats;

    .end local v10    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    invoke-direct {v10}, Landroid/net/wifi/WifiLinkLayerStats;-><init>()V

    .line 6996
    .restart local v10    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6999
    .end local v10    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 7001
    .local v2, "country":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v7, 0x1

    .line 7002
    .local v7, "persist":Z
    :goto_4
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 7004
    .local v9, "sequence":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get25(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-eq v9, v11, :cond_b

    .line 7005
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v12, "set country code ignored due to sequnce num"

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7001
    .end local v7    # "persist":Z
    .end local v9    # "sequence":I
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "persist":Z
    goto :goto_4

    .line 7008
    .restart local v9    # "sequence":I
    :cond_b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set country code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7009
    :cond_c
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 7011
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get37(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 7019
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v11

    const v12, 0x23010

    invoke-virtual {v11, v12, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7012
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/server/wifi/WifiNative;->setCountryCode(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 7013
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set23(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 7015
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to set country code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 7022
    .end local v2    # "country":Ljava/lang/String;
    .end local v7    # "persist":Z
    .end local v9    # "sequence":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap82(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_0

    .line 7025
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 7026
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 7027
    const-string/jumbo v14, "wifi_supplicant_scan_interval_ms"

    .line 7028
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v11

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 7029
    const v15, 0x10e0026

    .line 7028
    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    :goto_6
    int-to-long v0, v11

    move-wide/from16 v16, v0

    .line 7025
    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set69(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7032
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->-get117(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    long-to-int v12, v12

    div-int/lit16 v12, v12, 0x3e8

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    goto/16 :goto_0

    .line 7030
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 7031
    const v15, 0x10e0029

    .line 7030
    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    goto :goto_6

    .line 7035
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/android/server/wifi/WifiNative;->doCtiaTestOn(Ljava/lang/String;)Z

    move-result v6

    .line 7036
    .restart local v6    # "ok":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_10

    const/4 v11, 0x1

    :goto_7
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_10
    const/4 v11, -0x1

    goto :goto_7

    .line 7039
    .end local v6    # "ok":Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/android/server/wifi/WifiNative;->doCtiaTestOff(Ljava/lang/String;)Z

    move-result v6

    .line 7040
    .restart local v6    # "ok":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_11

    const/4 v11, 0x1

    :goto_8
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/4 v11, -0x1

    goto :goto_8

    .line 7043
    .end local v6    # "ok":Z
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiNative;->doCtiaTestRate(I)Z

    move-result v6

    .line 7044
    .restart local v6    # "ok":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_12

    const/4 v11, 0x1

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_12
    const/4 v11, -0x1

    goto :goto_9

    .line 7047
    .end local v6    # "ok":Z
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap18(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v5

    .line 7048
    .local v5, "networkId":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 7051
    .end local v5    # "networkId":I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap33(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7052
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 7055
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->-wrap84(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7056
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/android/server/wifi/WifiStateMachine;->-set65(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 7060
    :sswitch_12
    const-string/jumbo v11, "WifiStateMachine"

    const-string/jumbo v12, "Receive whole chip reset fail, disable wifi!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7061
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7062
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 7067
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    goto/16 :goto_0

    .line 7070
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v11}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Lcom/android/server/wifi/WifiNative;->getTestEnv(I)Ljava/lang/String;

    move-result-object v3

    .line 7071
    .local v3, "env":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v11, v0, v12, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6915
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_5
        0x20033 -> :sswitch_3
        0x2003c -> :sswitch_4
        0x2003f -> :sswitch_8
        0x20048 -> :sswitch_6
        0x20050 -> :sswitch_9
        0x2008d -> :sswitch_7
        0x200a0 -> :sswitch_a
        0x200a1 -> :sswitch_b
        0x200a2 -> :sswitch_11
        0x200a3 -> :sswitch_c
        0x200a4 -> :sswitch_d
        0x200a5 -> :sswitch_e
        0x200a6 -> :sswitch_f
        0x200a7 -> :sswitch_10
        0x200c0 -> :sswitch_13
        0x200de -> :sswitch_14
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
        0x24011 -> :sswitch_2
        0x24052 -> :sswitch_12
    .end sparse-switch
.end method
