.class Lcom/android/server/net/NetworkPolicyManagerService$2;
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
    .line 418
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 421
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "realtime_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 422
    .local v0, "newvalue":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 424
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UPDATE_REALTIME_SPEED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "sIntent":Landroid/content/Intent;
    const-string/jumbo v2, "realtime_speed"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
