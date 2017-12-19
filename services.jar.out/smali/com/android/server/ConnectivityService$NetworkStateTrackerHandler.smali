.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 1986
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1985
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1992
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1994
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap4(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 1998
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1999
    .local v11, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v11, :cond_0

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 2003
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 2007
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2008
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_1

    .line 2009
    const-string/jumbo v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto :goto_0

    .line 2012
    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/NetworkCapabilities;

    .line 2013
    .local v12, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/16 v1, 0x11

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2014
    const/16 v1, 0x10

    invoke-virtual {v12, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 2013
    if-eqz v1, :cond_3

    .line 2015
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BUG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has stateful capability."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    .line 2017
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v12}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto/16 :goto_0

    .line 2022
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v12    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2023
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_4

    .line 2024
    const-string/jumbo v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2027
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update of LinkProperties for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2028
    const-string/jumbo v2, "; created="

    .line 2027
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2028
    iget-boolean v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 2027
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    .line 2030
    iget-object v13, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2031
    .local v13, "oldLp":Landroid/net/LinkProperties;
    monitor-enter v11

    .line 2032
    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 2034
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v13}, Lcom/android/server/ConnectivityService;->-wrap28(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    goto/16 :goto_0

    .line 2031
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 2039
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v13    # "oldLp":Landroid/net/LinkProperties;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2040
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_5

    .line 2041
    const-string/jumbo v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2044
    :cond_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkInfo;

    .line 2045
    .local v10, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11, v10}, Lcom/android/server/ConnectivityService;->-wrap29(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 2049
    .end local v10    # "info":Landroid/net/NetworkInfo;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2050
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_6

    .line 2051
    const-string/jumbo v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2054
    :cond_6
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    .line 2055
    .local v15, "score":Ljava/lang/Integer;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap30(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    .line 2059
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v15    # "score":Ljava/lang/Integer;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2060
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_7

    .line 2061
    const-string/jumbo v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2065
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2066
    :catch_0
    move-exception v9

    .line 2068
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2073
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2074
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_8

    .line 2075
    const-string/jumbo v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2079
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get6(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v4, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2080
    :catch_1
    move-exception v9

    .line 2082
    .restart local v9    # "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2087
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get7(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2088
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v11, :cond_9

    .line 2089
    const-string/jumbo v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2092
    :cond_9
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_a

    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_b

    .line 2095
    :cond_a
    :goto_1
    iget-object v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2096
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto/16 :goto_0

    .line 2093
    :cond_b
    const-string/jumbo v1, "ERROR: created network explicitly selected."

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto :goto_1

    .line 2100
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2101
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string/jumbo v2, "EVENT_NETWORK_TESTED"

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2103
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_d

    const/16 v16, 0x1

    .line 2104
    .local v16, "valid":Z
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " validation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v16, :cond_e

    const-string/jumbo v1, " passed"

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    .line 2105
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    move/from16 v0, v16

    if-eq v0, v1, :cond_c

    .line 2106
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v14

    .line 2107
    .local v14, "oldScore":I
    move/from16 v0, v16

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2108
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int v1, v1, v16

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2111
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    if-eq v14, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap24(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2113
    .end local v14    # "oldScore":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap27(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2115
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2117
    if-eqz v16, :cond_f

    const/4 v1, 0x1

    .line 2116
    :goto_4
    const v4, 0x81007

    .line 2118
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2115
    invoke-virtual {v2, v4, v1, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2103
    .end local v16    # "valid":Z
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "valid":Z
    goto :goto_2

    .line 2104
    :cond_e
    const-string/jumbo v1, "failed"

    goto :goto_3

    .line 2117
    :cond_f
    const/4 v1, 0x2

    goto :goto_4

    .line 2123
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v16    # "valid":Z
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2124
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string/jumbo v2, "EVENT_NETWORK_LINGER_COMPLETE"

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap1(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v11}, Lcom/android/server/ConnectivityService;->-wrap6(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    .line 2130
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :sswitch_c
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 2131
    .local v3, "netId":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/16 v17, 0x1

    .line 2133
    .local v17, "visible":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 2134
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get8(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/connectivity/NetworkAgentInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    monitor-exit v2

    .line 2137
    if-eqz v11, :cond_10

    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    move/from16 v0, v17

    if-eq v0, v1, :cond_10

    .line 2138
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2139
    iget-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int v1, v1, v17

    iput-boolean v1, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v11, v2}, Lcom/android/server/ConnectivityService;->-wrap26(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2142
    :cond_10
    if-nez v17, :cond_12

    .line 2143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 2131
    .end local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v17    # "visible":Z
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "visible":Z
    goto :goto_5

    .line 2133
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2145
    .restart local v11    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_12
    if-nez v11, :cond_13

    .line 2146
    const-string/jumbo v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-wrap18(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2149
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v4, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    .line 2150
    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 2151
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/PendingIntent;

    iget-object v2, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v8, v2, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2149
    const/4 v2, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/server/ConnectivityService;->-wrap25(Lcom/android/server/ConnectivityService;ZILcom/android/server/ConnectivityService$NotificationType;ILjava/lang/String;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 1992
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x81001 -> :sswitch_5
        0x81002 -> :sswitch_3
        0x81003 -> :sswitch_4
        0x81004 -> :sswitch_6
        0x81005 -> :sswitch_7
        0x81006 -> :sswitch_8
        0x81008 -> :sswitch_9
        0x82002 -> :sswitch_a
        0x82005 -> :sswitch_b
        0x8200a -> :sswitch_c
    .end sparse-switch
.end method
