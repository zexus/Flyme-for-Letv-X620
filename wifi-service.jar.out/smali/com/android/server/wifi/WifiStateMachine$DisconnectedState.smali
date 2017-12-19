.class Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field private mFrameworkScanStopDelayMs:J

.field private mFrameworkScanStopSupport:Z

.field private mStopScanAlarmEnabled:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v0, 0x0

    .line 11236
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 11240
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 11241
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    .line 11236
    return-void
.end method

.method private setStopScanAlarm(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x0

    .line 11244
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 11245
    :cond_0
    if-eqz p1, :cond_2

    .line 11246
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 11247
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStopScanAlarm, mFrameworkScanStopDelayMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11248
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    add-long/2addr v2, v4

    .line 11249
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 11248
    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 11250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    .line 11243
    :cond_1
    :goto_0
    return-void

    .line 11253
    :cond_2
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "Cancel setStopScanAlarm!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11254
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get114(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11255
    iput-boolean v6, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mStopScanAlarmEnabled:Z

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11262
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 11265
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11266
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x2300d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 11267
    return-void

    .line 11270
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11271
    return-void

    .line 11275
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get7()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11276
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Enter DisconnectedState scan interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11277
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11278
    const-string/jumbo v2, " mLegacyPnoEnabled= "

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11278
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get77(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11279
    const-string/jumbo v2, " screenOn="

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11279
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11280
    const-string/jumbo v2, " useGscan="

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11280
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get53(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11280
    const-string/jumbo v2, "/"

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11281
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->enableHalBasedPno:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 11276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11285
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set7(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11287
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 11288
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "disconnectedEnter"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    .line 11322
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11328
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set22(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 11329
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11332
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11333
    const v1, 0x80c0002

    .line 11332
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 11334
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11335
    const v1, 0x80b0002

    .line 11334
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    .line 11336
    const-string/jumbo v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFrameworkScanStopSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11337
    const-string/jumbo v2, ", mFrameworkScanStopDelayMs:"

    .line 11336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11337
    iget-wide v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    .line 11336
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11338
    iget-wide v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 11339
    iput-boolean v4, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    .line 11341
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11345
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11346
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get66(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11347
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "IpConfigLost, reconnect!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11348
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set37(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11349
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->reconnectCommand()V

    .line 11261
    :cond_8
    return-void

    .line 11291
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v4, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 11292
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11296
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x1f4

    invoke-static {v0, v1, v3, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap77(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 11301
    :cond_a
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11308
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11309
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto/16 :goto_0

    .line 11312
    :cond_b
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap69(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    .line 11323
    :cond_c
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 11324
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11325
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v2

    .line 11324
    const v3, 0x20058

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 11325
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    int-to-long v2, v2

    .line 11324
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 11342
    :cond_d
    const-string/jumbo v0, "WifiStateMachine"

    const-string/jumbo v1, "Start timer setStopScanAlarm!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11343
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    goto/16 :goto_2
.end method

.method public exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11656
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11658
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 11659
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap69(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11660
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 11661
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11662
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 11655
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 11355
    const/4 v11, 0x1

    .line 11357
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 11359
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 11649
    const/4 v11, 0x0

    .line 11651
    :cond_0
    :goto_0
    :sswitch_0
    return v11

    .line 11361
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 11362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 11366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 11369
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11373
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 11374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v4

    .line 11374
    const v6, 0x20058

    .line 11375
    const/4 v7, 0x0

    .line 11374
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 11375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v6, v4

    .line 11374
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 11370
    :cond_2
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "No periodic scan because stop scan timeout."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    goto/16 :goto_0

    .line 11386
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v4

    .line 11386
    const v6, 0x20058

    .line 11387
    const/4 v7, 0x0

    .line 11386
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 11387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v6, v4

    .line 11386
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 11388
    const/4 v11, 0x0

    .line 11389
    goto/16 :goto_0

    .line 11391
    :sswitch_3
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 11392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks()V

    .line 11396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 11399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 11400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get134(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11406
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    .line 11407
    const/4 v3, -0x1

    .line 11406
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto/16 :goto_0

    .line 11402
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get106(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 11413
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/wifi/StateChangeResult;

    .line 11414
    .local v16, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SUPPLICANT_STATE_CHANGE_EVENT state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11416
    const-string/jumbo v4, " -> state= "

    .line 11415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11416
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 11415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11417
    const-string/jumbo v4, " debouncing="

    .line 11415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    .line 11415
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11419
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap9(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 11421
    const/4 v11, 0x0

    .line 11422
    goto/16 :goto_0

    .line 11424
    .end local v16    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap3(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get6()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11427
    const/4 v2, 0x1

    return v2

    .line 11429
    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_9

    .line 11432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    .line 11433
    .local v5, "period":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 11434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 11435
    const-string/jumbo v3, "wifi_scan_interval_p2p_connected_ms"

    .line 11436
    int-to-long v6, v5

    .line 11434
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v5, v2

    .line 11438
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 11439
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 11438
    invoke-static/range {v2 .. v7}, Lcom/android/server/wifi/WifiStateMachine;->-wrap2(Lcom/android/server/wifi/WifiStateMachine;IZILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 11440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disconnected CMD_START_SCAN source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11442
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11443
    const-string/jumbo v4, " "

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11443
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11443
    const-string/jumbo v4, ", "

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get26(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11444
    const-string/jumbo v4, " -> obsolete"

    .line 11441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11445
    const/4 v2, 0x1

    return v2

    .line 11448
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 11449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    .line 11450
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 11464
    .end local v5    # "period":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 11465
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 11469
    :sswitch_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    sget v3, Lcom/android/server/wifi/WifiStateMachine;->mRestartAutoJoinOffloadCounter:I

    if-ge v2, v3, :cond_a

    .line 11470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get5()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11471
    const/4 v2, 0x1

    return v2

    .line 11477
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 11478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    .line 11480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "disconnectedRestart"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 11484
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 11485
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    .line 11486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanStartTimeMilli:J

    sub-long v2, v12, v2

    .line 11487
    const-wide/32 v6, 0x1d4c0

    .line 11486
    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 11488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-wide v2, v2, Lcom/android/server/wifi/WifiStateMachine;->mGScanPeriodMilli:J

    .line 11489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedLongScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    int-to-long v6, v4

    .line 11488
    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 11491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "disconnected restart gscan"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 11502
    .end local v12    # "now":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 11506
    :cond_d
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 11502
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 11503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    .line 11504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto :goto_2

    .line 11512
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 11513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 11512
    if-eqz v2, :cond_f

    .line 11514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 11516
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 11517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get71(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 11538
    :cond_10
    :goto_3
    const/4 v11, 0x0

    .line 11539
    goto/16 :goto_0

    .line 11515
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->enableBackgroundScan(Z)V

    goto :goto_3

    .line 11518
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get15(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    .line 11516
    if-eqz v2, :cond_10

    .line 11519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v2

    if-nez v2, :cond_10

    .line 11522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_14

    .line 11523
    const/16 v9, 0x7530

    .line 11529
    .local v9, "delay":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set21(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 11530
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get8()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 11531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting PNO alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V

    .line 11533
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v2

    .line 11534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v0, v9

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 11535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 11533
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3

    .line 11524
    .end local v9    # "delay":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get32(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_15

    .line 11525
    const v9, 0xea60

    .restart local v9    # "delay":I
    goto :goto_4

    .line 11527
    .end local v9    # "delay":I
    :cond_15
    const v9, 0x57e40

    .restart local v9    # "delay":I
    goto :goto_4

    .line 11541
    .end local v9    # "delay":I
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    .line 11542
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 11544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 11545
    const v3, 0x10e0028

    .line 11544
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 11546
    .local v8, "defaultInterval":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get23(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 11547
    const-string/jumbo v3, "wifi_scan_interval_p2p_connected_ms"

    .line 11548
    int-to-long v6, v8

    .line 11546
    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 11549
    .local v14, "scanIntervalMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    long-to-int v3, v14

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiNative;->setScanInterval(I)V

    goto/16 :goto_0

    .line 11550
    .end local v8    # "defaultInterval":I
    .end local v14    # "scanIntervalMs":J
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_18

    .line 11551
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "Turn on scanning after p2p disconnected"

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 11552
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get92(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-set56(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v4

    .line 11552
    const v6, 0x20058

    .line 11553
    const/4 v7, 0x0

    .line 11552
    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 11553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get85(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v4

    int-to-long v6, v4

    .line 11552
    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 11559
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->useHalBasedAutoJoinOffload()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 11560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v3, "p2pRestart"

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap14(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 11564
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get56(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0x20047

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 11566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wifi/WifiConfigStore;->wifiDisconnectedShortScanIntervalMilli:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 11568
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 11565
    invoke-static {v2, v3, v4, v6}, Lcom/android/server/wifi/WifiStateMachine;->-wrap77(Lcom/android/server/wifi/WifiStateMachine;ILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 11575
    .end local v10    # "info":Landroid/net/NetworkInfo;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11581
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 11585
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_5
    invoke-static {v3, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    :cond_1a
    const/4 v2, 0x0

    goto :goto_5

    .line 11589
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 11590
    const-string/jumbo v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNetworksDisabledDuringConnect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v4

    .line 11590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11592
    const-string/jumbo v4, ", mConnectNetwork:"

    .line 11590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 11592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v4

    .line 11590
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get20(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 11594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11608
    :cond_1b
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 11596
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get119(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/SupplicantStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->isNetworksDisabledDuringConnect()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 11597
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Disable supplicant auto scan!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    goto :goto_6

    .line 11601
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get126(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 11603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 11604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    goto :goto_6

    .line 11612
    :sswitch_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v2, :cond_0

    .line 11613
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    .line 11614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get70(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 11617
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Screen on, transition to mDisconnectedState!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 11621
    :sswitch_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v2, :cond_0

    .line 11622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11623
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "Start stop scan alarm!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11624
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->setStopScanAlarm(Z)V

    goto/16 :goto_0

    .line 11627
    :sswitch_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->mFrameworkScanStopSupport:Z

    if-eqz v2, :cond_0

    .line 11628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set41(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11629
    const-string/jumbo v2, "WifiStateMachine"

    const-string/jumbo v3, "mIsPeriodicScanTimeout get!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get109(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->disconnectCommand()V

    .line 11632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap69(Lcom/android/server/wifi/WifiStateMachine;Z)V

    .line 11633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v3, 0x20058

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 11639
    :sswitch_f
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 11640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 11641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set72(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 11642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2300d

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto/16 :goto_0

    .line 11644
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative;->reconnect()Z

    .line 11645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$DisconnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set72(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 11359
    :sswitch_data_0
    .sparse-switch
        0x20035 -> :sswitch_2
        0x20047 -> :sswitch_5
        0x20048 -> :sswitch_3
        0x2004a -> :sswitch_9
        0x2004b -> :sswitch_9
        0x20058 -> :sswitch_1
        0x2005f -> :sswitch_a
        0x20061 -> :sswitch_2
        0x20098 -> :sswitch_2
        0x2009a -> :sswitch_6
        0x200ad -> :sswitch_b
        0x200af -> :sswitch_e
        0x200b0 -> :sswitch_d
        0x200b1 -> :sswitch_c
        0x2300b -> :sswitch_8
        0x2300c -> :sswitch_f
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_7
        0x24006 -> :sswitch_4
        0x24011 -> :sswitch_7
        0x25004 -> :sswitch_2
    .end sparse-switch
.end method
