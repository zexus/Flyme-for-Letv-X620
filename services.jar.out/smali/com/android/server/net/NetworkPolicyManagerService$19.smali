.class Lcom/android/server/net/NetworkPolicyManagerService$19;
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
    .line 3621
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, -0x3e8

    .line 3624
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3625
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/TrustedTime;

    move-result-object v3

    invoke-interface {v3}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 3627
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3628
    :try_start_0
    const-string/jumbo v3, "subId"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "subId"

    const/16 v5, -0x3e8

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3629
    .local v2, "subId":I
    :goto_0
    if-ne v2, v6, :cond_2

    monitor-exit v4

    .line 3630
    return-void

    .line 3628
    .end local v2    # "subId":I
    :cond_1
    const/16 v2, -0x3e8

    .restart local v2    # "subId":I
    goto :goto_0

    .line 3634
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3635
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    .line 3637
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v3, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap1(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/net/NetworkTemplate;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3641
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;ILandroid/net/NetworkPolicy;)V

    .line 3642
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 3643
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 3644
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3634
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    monitor-exit v4

    .line 3623
    return-void

    .line 3627
    .end local v0    # "i":I
    .end local v2    # "subId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
