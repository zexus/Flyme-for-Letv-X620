.class final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBatteryLevelLow()Z
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInvalidCharger()I
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1084
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPlugType()I
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get15(Lcom/android/server/BatteryService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isPowered(I)Z
    .locals 2
    .param p1, "plugTypeSet"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->-wrap0(Lcom/android/server/BatteryService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1055
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
