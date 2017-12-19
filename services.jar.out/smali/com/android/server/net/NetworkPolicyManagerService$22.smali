.class Lcom/android/server/net/NetworkPolicyManagerService$22;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 691
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 690
    :goto_0
    return-void

    .line 694
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 695
    const-string/jumbo v4, "connectivity"

    .line 694
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 696
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-get10(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-set0(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 697
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-set3(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 698
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-get11(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-set1(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 699
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-set4(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    .line 700
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    invoke-static {v3, v4, v5, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "formatespeed":Ljava/lang/String;
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "real time onreceive...cur_kb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.UPDATE_REALTIME_SPEED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v2, "sIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 705
    :cond_0
    const-string/jumbo v3, "realtime_speed"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->realtimeSpeedHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 711
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v8, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService$22;->sendEmptyMessageDelayed(IJ)Z

    .line 712
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->-set2(Lcom/android/server/net/NetworkPolicyManagerService;J)J

    goto/16 :goto_0

    .line 707
    :cond_2
    const-string/jumbo v3, "realtime_speed"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
