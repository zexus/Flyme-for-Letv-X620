.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2538
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2539
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2538
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2544
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2543
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2547
    :pswitch_1
    const/4 v0, 0x0

    .line 2548
    .local v0, "causedBy":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v5

    .line 2549
    :try_start_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->-get5(Lcom/android/server/ConnectivityService;)I

    move-result v6

    if-ne v4, v6, :cond_1

    .line 2550
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    .line 2549
    if-eqz v4, :cond_1

    .line 2551
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get3(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2552
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get4(Lcom/android/server/ConnectivityService;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "causedBy":Ljava/lang/String;
    monitor-exit v5

    .line 2557
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x18

    if-ne v4, v5, :cond_2

    .line 2558
    const-string/jumbo v4, "Failed to find a new network - expiring NetTransition Wakelock"

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    goto :goto_0

    .local v0, "causedBy":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 2548
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2560
    .local v0, "causedBy":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetTransition Wakelock ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    const-string/jumbo v0, "unknown"

    .end local v0    # "causedBy":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2561
    const-string/jumbo v5, " cleared because we found a replacement network"

    .line 2560
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    goto :goto_0

    .line 2566
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap5(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    .line 2570
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 2571
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, v1}, Lcom/android/server/ConnectivityService;->-wrap23(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_0

    .line 2575
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/ProxyInfo;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap2(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 2579
    :pswitch_5
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap10(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    .line 2583
    :pswitch_6
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Messenger;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap16(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 2587
    :pswitch_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap9(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2592
    :pswitch_8
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap12(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto/16 :goto_0

    .line 2597
    :pswitch_9
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4, p1}, Lcom/android/server/ConnectivityService;->-wrap11(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2601
    :pswitch_a
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/PendingIntent;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v4, v6}, Lcom/android/server/ConnectivityService;->-wrap13(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    goto/16 :goto_0

    .line 2605
    :pswitch_b
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/NetworkRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v4, v6}, Lcom/android/server/ConnectivityService;->-wrap14(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    .line 2609
    :pswitch_c
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Network;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    if-eqz v9, :cond_5

    :goto_2
    invoke-static {v8, v4, v5, v6}, Lcom/android/server/ConnectivityService;->-wrap15(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    goto/16 :goto_0

    :cond_4
    move v5, v7

    goto :goto_1

    :cond_5
    move v6, v7

    goto :goto_2

    .line 2613
    :pswitch_d
    iget-object v5, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Network;

    invoke-static {v5, v4}, Lcom/android/server/ConnectivityService;->-wrap8(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 2617
    :pswitch_e
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-wrap7(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    .line 2621
    :pswitch_f
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "nai$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2622
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v6, v4, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_3

    .line 2544
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method
