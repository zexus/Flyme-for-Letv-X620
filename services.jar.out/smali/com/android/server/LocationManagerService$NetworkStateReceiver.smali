.class final Lcom/android/server/LocationManagerService$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$NetworkStateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$NetworkStateReceiver;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetworkStateReceiver intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 586
    const-string/jumbo v3, "choose_network_provider_mode"

    .line 585
    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "network_provider_mode":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 588
    const-string/jumbo v1, "LocationManagerService"

    const-string/jumbo v3, "not auto mode just return from Receiver"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 589
    return-void

    .line 591
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.intent.action.CAMPED_NETWORK_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p2}, Lcom/android/server/LocationManagerService;->-wrap4(Lcom/android/server/LocationManagerService;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 582
    return-void

    .line 593
    :cond_2
    :try_start_2
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetworkStateReceiver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p2}, Lcom/android/server/LocationManagerService;->-wrap6(Lcom/android/server/LocationManagerService;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 584
    .end local v0    # "network_provider_mode":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
