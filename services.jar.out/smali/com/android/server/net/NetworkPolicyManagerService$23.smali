.class Lcom/android/server/net/NetworkPolicyManagerService$23;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 726
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "realtime_speed"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 727
    .local v0, "newvalue":I
    const-string/jumbo v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "real time speed control change..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    if-nez v0, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 725
    return-void

    .line 731
    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
