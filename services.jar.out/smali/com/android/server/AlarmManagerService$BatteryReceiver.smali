.class final Lcom/android/server/AlarmManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 3999
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$BatteryReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$BatteryReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4002
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    .line 4003
    .local v0, "wasPowered":Z
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4004
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-get4(Lcom/android/server/AlarmManagerService;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 4006
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1, v0}, Lcom/android/server/AlarmManagerService;->-set3(Lcom/android/server/AlarmManagerService;Z)Z

    .line 4007
    if-eqz v0, :cond_0

    .line 4008
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/AlarmManagerService;->-set4(Lcom/android/server/AlarmManagerService;J)J

    .line 4010
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$BatteryReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->-wrap10(Lcom/android/server/AlarmManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 4001
    return-void

    .line 4003
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
