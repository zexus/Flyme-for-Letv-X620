.class Lcom/android/server/net/NetworkPolicyManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1491
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "simState":Ljava/lang/String;
    const-string/jumbo v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1493
    const-string/jumbo v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1492
    if-nez v2, :cond_0

    .line 1494
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1492
    if-eqz v2, :cond_1

    .line 1495
    :cond_0
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v3, "receive ACTION_SIM_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 1498
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1499
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1500
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap4(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1501
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1502
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1503
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1488
    .end local v1    # "simState":Ljava/lang/String;
    :cond_1
    return-void

    .line 1498
    .restart local v1    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
