.class Lcom/android/server/wifi/WifiStateMachine$10;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;

.field final synthetic val$isHotspotAlwaysOnWhilePlugged:Z


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "val$isHotspotAlwaysOnWhilePlugged"    # Z

    .prologue
    .line 12761
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iput-boolean p2, p0, Lcom/android/server/wifi/WifiStateMachine$10;->val$isHotspotAlwaysOnWhilePlugged:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12764
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 12765
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive, action:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12766
    const-string/jumbo v13, "com.mtk.stopscan.activated"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 12767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200ad

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 12763
    :cond_0
    :goto_0
    return-void

    .line 12769
    :cond_1
    const-string/jumbo v13, "com.mtk.stopscan.deactivated"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 12770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get115(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200ad

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 12772
    :cond_2
    const-string/jumbo v13, "com.android.server.WifiManager.action.STOP_HOTSPOT"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 12773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 12774
    const/4 v12, 0x0

    .line 12776
    .local v12, "wifiSavedState":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 12777
    const-string/jumbo v14, "wifi_saved_state"

    .line 12776
    invoke-static {v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 12781
    :goto_1
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Received stop hotspot intent, wifiSavedState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12782
    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 12783
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get147(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 12784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "wifi_saved_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 12778
    :catch_0
    move-exception v3

    .line 12779
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "SettingNotFoundException:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12786
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v12    # "wifiSavedState":I
    :cond_3
    const-string/jumbo v13, "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 12787
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200a0

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 12788
    :cond_4
    const-string/jumbo v13, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 12790
    const-string/jumbo v13, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 12789
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/hardware/display/WifiDisplayStatus;

    .line 12791
    .local v10, "status":Landroid/hardware/display/WifiDisplayStatus;
    const-string/jumbo v13, "WifiStateMachine"

    const-string/jumbo v14, "Received ACTION_WIFI_DISPLAY_STATUS_CHANGED."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13, v10}, Lcom/android/server/wifi/WifiStateMachine;->-wrap73(Lcom/android/server/wifi/WifiStateMachine;Landroid/hardware/display/WifiDisplayStatus;)V

    goto/16 :goto_0

    .line 12795
    .end local v10    # "status":Landroid/hardware/display/WifiDisplayStatus;
    :cond_5
    const-string/jumbo v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 12796
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->val$isHotspotAlwaysOnWhilePlugged:Z

    if-eqz v13, :cond_0

    .line 12797
    const-string/jumbo v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 12798
    .local v8, "pluggedType":I
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ACTION_BATTERY_CHANGED pluggedType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", mPluggedType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12799
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    if-eq v13, v8, :cond_0

    .line 12800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13, v8}, Lcom/android/server/wifi/WifiStateMachine;->-set57(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 12801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get93(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    if-nez v13, :cond_6

    .line 12802
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get19(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-wrap17(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get128(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v14

    if-ne v13, v14, :cond_0

    .line 12803
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 12804
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Set alarm for ACTION_BATTERY_CHANGED changed, mDuration:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v13

    .line 12806
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 12807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get45(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x493e0

    mul-long v16, v16, v18

    .line 12806
    add-long v14, v14, v16

    .line 12807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v16

    .line 12805
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 12810
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get64(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 12814
    .end local v8    # "pluggedType":I
    :cond_7
    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 12815
    const-string/jumbo v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12816
    .local v4, "iccState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "iccState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 12818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set35(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 12819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "ABSENT"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "LOCKED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get61(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UNKNOWN"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12822
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200e9

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 12825
    .end local v4    # "iccState":Ljava/lang/String;
    :cond_8
    const-string/jumbo v13, "com.android.server.WifiManager.action.STOP_SCAN"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 12826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x200af

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 12827
    :cond_9
    const-string/jumbo v13, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 12828
    const-string/jumbo v13, "WifiStateMachine"

    const-string/jumbo v14, "mReceiver: ACTION_SERVICE_STATE_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12829
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v9

    .line 12830
    .local v9, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 12831
    .local v6, "newOpNum":Ljava/lang/String;
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ServiceState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "phone"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 12832
    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 12835
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v13

    if-nez v13, :cond_0

    .line 12836
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set55(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 12838
    if-eqz v11, :cond_0

    .line 12839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 12840
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v15

    const v16, 0x200a2

    .line 12839
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 12843
    .end local v6    # "newOpNum":Ljava/lang/String;
    .end local v9    # "ss":Landroid/telephony/ServiceState;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_a
    const-string/jumbo v13, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 12844
    const-string/jumbo v13, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 12845
    .local v7, "plmn":Ljava/lang/String;
    const-string/jumbo v13, "iso"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12846
    .local v5, "iso":Ljava/lang/String;
    const-string/jumbo v13, "WifiStateMachine"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ACTION_LOCATED_PLMN_CHANGED: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " iso ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12847
    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->-get89(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 12848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$10;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 12849
    const v15, 0x200a2

    .line 12848
    invoke-virtual {v14, v15, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method
