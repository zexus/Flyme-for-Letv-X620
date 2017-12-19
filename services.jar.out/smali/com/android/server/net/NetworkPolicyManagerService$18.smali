.class Lcom/android/server/net/NetworkPolicyManagerService$18;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 2940
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2943
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3055
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 2945
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 2946
    .local v22, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    .line 2947
    .local v23, "uidRules":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    .line 2948
    .local v13, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v13, :cond_1

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    .line 2950
    .local v14, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v14, :cond_0

    .line 2952
    :try_start_0
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2948
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2953
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 2957
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2958
    const/4 v2, 0x1

    return v2

    .line 2961
    .end local v11    # "i":I
    .end local v13    # "length":I
    .end local v22    # "uid":I
    .end local v23    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [Ljava/lang/String;

    .line 2962
    .local v15, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    .line 2963
    .restart local v13    # "length":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v13, :cond_3

    .line 2964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    .line 2965
    .restart local v14    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v14, :cond_2

    .line 2967
    :try_start_1
    invoke-interface {v14, v15}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2963
    :cond_2
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2968
    :catch_1
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_4

    .line 2972
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2973
    const/4 v2, 0x1

    return v2

    .line 2976
    .end local v11    # "i":I
    .end local v13    # "length":I
    .end local v15    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 2978
    .local v12, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2980
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 2984
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2989
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v3

    .line 2993
    const/4 v2, 0x1

    return v2

    .line 2979
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2996
    .end local v12    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6

    const/16 v19, 0x1

    .line 2997
    .local v19, "restrictBackground":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v13

    .line 2998
    .restart local v13    # "length":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_7
    if-ge v11, v13, :cond_7

    .line 2999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/net/INetworkPolicyListener;

    .line 3000
    .restart local v14    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v14, :cond_5

    .line 3002
    :try_start_5
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2998
    :cond_5
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 2996
    .end local v11    # "i":I
    .end local v13    # "length":I
    .end local v14    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v19    # "restrictBackground":Z
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "restrictBackground":Z
    goto :goto_6

    .line 3003
    .restart local v11    # "i":I
    .restart local v13    # "length":I
    .restart local v14    # "listener":Landroid/net/INetworkPolicyListener;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 3007
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3008
    const/4 v2, 0x1

    return v2

    .line 3011
    .end local v11    # "i":I
    .end local v13    # "length":I
    .end local v19    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3015
    .local v16, "lowestRule":J
    const-wide/16 v2, 0x3e8

    :try_start_6
    div-long v20, v16, v2

    .line 3016
    .local v20, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3020
    .end local v20    # "persistThreshold":J
    :goto_9
    const/4 v2, 0x1

    return v2

    .line 3023
    .end local v16    # "lowestRule":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 3024
    const/4 v2, 0x1

    return v2

    .line 3028
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 3029
    .restart local v12    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 3030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3031
    :try_start_7
    const-string/jumbo v2, "NetworkPolicy"

    const-string/jumbo v4, " MSG_INTERFACE_DOWN call updateNetworkRulesLocked"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v3

    .line 3034
    const/4 v2, 0x1

    return v2

    .line 3030
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 3038
    .end local v12    # "iface":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get12(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v3, 0xdac

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    move-result-object v10

    .line 3039
    .local v10, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-virtual {v10}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getmWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 3040
    .local v18, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v10}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$18$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$18$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$18;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3052
    invoke-virtual {v10}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->show()V

    goto/16 :goto_0

    .line 3017
    .end local v10    # "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .end local v18    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v16    # "lowestRule":J
    :catch_3
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 2985
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v16    # "lowestRule":J
    .restart local v12    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_5

    .line 2943
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
