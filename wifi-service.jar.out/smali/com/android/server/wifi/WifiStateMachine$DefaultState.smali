.class Lcom/android/server/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 6057
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 19
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 6060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 6062
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 6485
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error! unhandled message"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6488
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v14, 0x1

    return v14

    .line 6064
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 6065
    .local v2, "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v14

    if-ne v2, v14, :cond_2

    .line 6066
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-nez v14, :cond_1

    .line 6067
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v14

    const v15, 0x11001

    invoke-virtual {v14, v15}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 6069
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WifiP2pService connection failure, error="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 6072
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "got HALF_CONNECTED for unknown channel"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 6077
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/util/AsyncChannel;

    .line 6078
    .restart local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v14

    if-ne v2, v14, :cond_0

    .line 6079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6087
    .end local v2    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set8(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 6096
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6099
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6102
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/4 v14, 0x0

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6105
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/4 v14, 0x0

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6108
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    const/4 v14, 0x1

    :goto_2
    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set27(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 6111
    :sswitch_9
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 6112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-wrap72(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6114
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-wrap72(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6118
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiStateMachine;->maybeRegisterNetworkFactory()V

    goto/16 :goto_0

    .line 6121
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    if-eqz v14, :cond_6

    const/4 v14, 0x1

    :goto_3
    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap40(Lcom/android/server/wifi/WifiStateMachine;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 6125
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6190
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6194
    :sswitch_e
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get80()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 6195
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_7

    .line 6196
    const-string/jumbo v14, "WifiStateMachine"

    const-string/jumbo v15, "Set mDhcpV6StateMachine to null!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set17(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;

    goto/16 :goto_0

    .line 6199
    :cond_7
    const-string/jumbo v14, "WifiStateMachine"

    const-string/jumbo v15, "Set mDhcpStateMachine to null!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    .line 6203
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set15(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/BaseDhcpStateMachine;)Landroid/net/BaseDhcpStateMachine;

    goto/16 :goto_0

    .line 6207
    :sswitch_f
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 6208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get123(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-wrap72(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6211
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-wrap72(Lcom/android/server/wifi/WifiStateMachine;IZ)V

    goto/16 :goto_0

    .line 6215
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 6216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto/16 :goto_0

    .line 6219
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25002

    .line 6220
    const/16 v16, 0x2

    .line 6219
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6223
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25005

    .line 6224
    const/16 v16, 0x2

    .line 6223
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6227
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get3()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 6228
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25008

    .line 6229
    const/16 v16, 0x2

    .line 6228
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6232
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2500c

    .line 6233
    const/16 v16, 0x2

    .line 6232
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6236
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2500f

    .line 6237
    const/16 v16, 0x2

    .line 6236
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6240
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25012

    .line 6241
    const/16 v16, 0x2

    .line 6240
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6244
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25016

    .line 6245
    const/16 v16, 0x2

    .line 6244
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6248
    :sswitch_18
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSet()I

    move-result v5

    .line 6249
    .local v5, "featureSet":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15, v5}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6252
    .end local v5    # "featureSet":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 6253
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 6254
    .local v3, "buffer":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get146(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiLogger;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15, v3}, Lcom/android/server/wifi/WifiLogger;->captureAlertData(I[B)V

    goto/16 :goto_0

    .line 6259
    .end local v3    # "buffer":[B
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6262
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/NetworkInfo;

    .line 6263
    .local v6, "info":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get90(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 6266
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    const/4 v14, 0x1

    :goto_4
    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set72(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2300d

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 6266
    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    .line 6271
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2008c

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap85(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_0

    .line 6274
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    invoke-static {v14, v0, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap49(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 6279
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get2()I

    move-result v15

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set83(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_0

    .line 6282
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get142(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6285
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6288
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6297
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6300
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6303
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    const/4 v14, 0x1

    :goto_5
    invoke-static {v14}, Lcom/android/server/wifi/WifiNative;->setTxPowerEnabled(Z)Z

    move-result v10

    .line 6304
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    if-eqz v10, :cond_c

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6303
    .end local v10    # "ok":Z
    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    .line 6304
    .restart local v10    # "ok":Z
    :cond_c
    const/4 v14, -0x1

    goto :goto_6

    .line 6307
    .end local v10    # "ok":Z
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-static {v14}, Lcom/android/server/wifi/WifiNative;->setTxPower(I)Z

    move-result v10

    .line 6308
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    if-eqz v10, :cond_d

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_d
    const/4 v14, -0x1

    goto :goto_7

    .line 6321
    .end local v10    # "ok":Z
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set12(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 6322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v15, v14}, Lcom/android/server/wifi/WifiStateMachine;->-set65(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 6325
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wifi/WifiNative;->getDisconnectFlag()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6328
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set10(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 6329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x200ad

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6333
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap51(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 6336
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 6337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25019

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6339
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25019

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6343
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get79(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 6344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2501c

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6346
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2501c

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6351
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2502d

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6354
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25030

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6357
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25033

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6360
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25039

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6363
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x25036

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6366
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-set76(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 6373
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2500c

    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6378
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiNative;->setWoWlanNormalModeCommand()Z

    move-result v10

    .line 6379
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    if-eqz v10, :cond_10

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_10
    const/4 v14, -0x1

    goto :goto_8

    .line 6382
    .end local v10    # "ok":Z
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiNative;->setWoWlanMagicModeCommand()Z

    move-result v10

    .line 6383
    .restart local v10    # "ok":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    if-eqz v10, :cond_11

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_11
    const/4 v14, -0x1

    goto :goto_9

    .line 6388
    .end local v10    # "ok":Z
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SET_WIFI_NOT_RECONNECT_AND_SCAN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6389
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_15

    .line 6390
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "set dont_reconnect_scan flag"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2503c

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6392
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    if-lez v14, :cond_13

    .line 6393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 6394
    const v16, 0x2503c

    .line 6395
    const/16 v17, 0x0

    const/16 v18, -0x1

    .line 6393
    invoke-virtual/range {v15 .. v18}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    .line 6395
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 6393
    invoke-virtual/range {v14 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 6397
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "message.arg1: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6398
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_14

    .line 6399
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "isAllowReconnect is false"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6400
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6402
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 6406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6407
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x200ad

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6409
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "reset dont_reconnect_scan flag"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x2503c

    invoke-static {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->-wrap48(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 6411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 6415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get35(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get36(Lcom/android/server/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v15, 0x200ad

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 6422
    :sswitch_37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "poor link is unconditionally disabled"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v14, v0, v15, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap50(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 6426
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiAutoJoinController;->enableDebugProgiling(I)V

    .line 6427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "enableDebugProgiling = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6431
    :sswitch_39
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 6436
    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    .line 6437
    .local v9, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v9, :cond_1a

    .line 6438
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 6439
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v14, v7, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v13

    .line 6440
    .local v13, "value":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "EAP value:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6441
    const/4 v14, 0x4

    if-eq v13, v14, :cond_17

    .line 6442
    const/4 v14, 0x5

    if-ne v13, v14, :cond_19

    .line 6444
    :cond_17
    :goto_b
    iget v14, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 6445
    const/16 v15, 0xa2

    .line 6444
    if-eq v14, v15, :cond_18

    .line 6446
    iget v14, v7, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 6447
    const/16 v15, 0xa3

    .line 6446
    if-ne v14, v15, :cond_16

    .line 6450
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v15, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiConfigStore;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 6451
    .local v4, "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/net/wifi/WifiConfiguration;->setAutoJoinStatus(I)V

    goto :goto_a

    .line 6443
    .end local v4    # "eapSimConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    const/4 v14, 0x6

    if-ne v13, v14, :cond_16

    goto :goto_b

    .line 6455
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v8    # "network$iterator":Ljava/util/Iterator;
    .end local v13    # "value":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "Check for EAP_SIM_AKA, networks is null!"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6466
    .end local v9    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_3b
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 6467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v15, "handle SUPPLICANT_STATE_CHANGE_EVENT in default state"

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6469
    :cond_1b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/wifi/StateChangeResult;

    .line 6470
    .local v12, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 6471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SUPPLICANT_STATE_CHANGE_EVENT state="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 6472
    const-string/jumbo v16, " -> state= "

    .line 6471
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 6472
    iget-object v0, v12, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v16

    .line 6471
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 6473
    const-string/jumbo v16, " debouncing="

    .line 6471
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 6473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->-get12(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v16

    .line 6471
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6476
    :cond_1c
    iget-object v11, v12, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 6477
    .local v11, "state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 6478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 6479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$DefaultState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->-get144(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wifi/StateChangeResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    goto/16 :goto_0

    .line 6062
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x2000b -> :sswitch_d
        0x2000c -> :sswitch_d
        0x2000d -> :sswitch_d
        0x2000e -> :sswitch_d
        0x20011 -> :sswitch_d
        0x20012 -> :sswitch_d
        0x20013 -> :sswitch_d
        0x20015 -> :sswitch_d
        0x20016 -> :sswitch_d
        0x20017 -> :sswitch_d
        0x20018 -> :sswitch_d
        0x20019 -> :sswitch_d
        0x2001a -> :sswitch_d
        0x2001b -> :sswitch_d
        0x2001c -> :sswitch_d
        0x2001d -> :sswitch_d
        0x2001e -> :sswitch_d
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_d
        0x20038 -> :sswitch_d
        0x20039 -> :sswitch_d
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_6
        0x2003c -> :sswitch_5
        0x2003d -> :sswitch_18
        0x2003e -> :sswitch_7
        0x2003f -> :sswitch_1a
        0x20047 -> :sswitch_c
        0x20048 -> :sswitch_d
        0x20049 -> :sswitch_d
        0x2004a -> :sswitch_d
        0x2004b -> :sswitch_d
        0x2004c -> :sswitch_20
        0x2004d -> :sswitch_9
        0x20050 -> :sswitch_d
        0x20052 -> :sswitch_8
        0x20053 -> :sswitch_d
        0x20056 -> :sswitch_f
        0x20058 -> :sswitch_d
        0x20059 -> :sswitch_d
        0x2005a -> :sswitch_d
        0x2005d -> :sswitch_d
        0x2005e -> :sswitch_d
        0x2005f -> :sswitch_b
        0x20060 -> :sswitch_d
        0x20061 -> :sswitch_21
        0x20062 -> :sswitch_d
        0x20063 -> :sswitch_1e
        0x20064 -> :sswitch_19
        0x20085 -> :sswitch_d
        0x20086 -> :sswitch_a
        0x2008a -> :sswitch_1f
        0x2008b -> :sswitch_1f
        0x2008c -> :sswitch_1d
        0x2008d -> :sswitch_d
        0x2008e -> :sswitch_d
        0x2008f -> :sswitch_d
        0x20090 -> :sswitch_d
        0x20091 -> :sswitch_d
        0x20092 -> :sswitch_d
        0x20093 -> :sswitch_d
        0x20095 -> :sswitch_1f
        0x20098 -> :sswitch_22
        0x2009a -> :sswitch_d
        0x2009b -> :sswitch_d
        0x2009e -> :sswitch_d
        0x2009f -> :sswitch_d
        0x200a0 -> :sswitch_0
        0x200a2 -> :sswitch_27
        0x200a3 -> :sswitch_23
        0x200a4 -> :sswitch_23
        0x200a5 -> :sswitch_23
        0x200a6 -> :sswitch_24
        0x200a7 -> :sswitch_23
        0x200a8 -> :sswitch_25
        0x200a9 -> :sswitch_26
        0x200aa -> :sswitch_23
        0x200ab -> :sswitch_23
        0x200ac -> :sswitch_0
        0x200ae -> :sswitch_23
        0x200af -> :sswitch_0
        0x200b0 -> :sswitch_0
        0x200b1 -> :sswitch_0
        0x200b2 -> :sswitch_28
        0x200b4 -> :sswitch_29
        0x200b5 -> :sswitch_2a
        0x200b6 -> :sswitch_0
        0x200b7 -> :sswitch_33
        0x200b8 -> :sswitch_33
        0x200ba -> :sswitch_32
        0x200bb -> :sswitch_34
        0x200bc -> :sswitch_35
        0x200c0 -> :sswitch_0
        0x200da -> :sswitch_37
        0x200db -> :sswitch_37
        0x200dd -> :sswitch_38
        0x200de -> :sswitch_2a
        0x200df -> :sswitch_39
        0x200e9 -> :sswitch_3a
        0x200ea -> :sswitch_0
        0x21015 -> :sswitch_d
        0x21016 -> :sswitch_d
        0x2300b -> :sswitch_1b
        0x2300c -> :sswitch_1c
        0x24001 -> :sswitch_d
        0x24002 -> :sswitch_d
        0x24003 -> :sswitch_d
        0x24004 -> :sswitch_d
        0x24005 -> :sswitch_d
        0x24006 -> :sswitch_3b
        0x24007 -> :sswitch_d
        0x2400a -> :sswitch_d
        0x2400c -> :sswitch_10
        0x2400f -> :sswitch_d
        0x24010 -> :sswitch_d
        0x24011 -> :sswitch_d
        0x2402b -> :sswitch_d
        0x25001 -> :sswitch_11
        0x25004 -> :sswitch_12
        0x25007 -> :sswitch_13
        0x2500a -> :sswitch_14
        0x2500e -> :sswitch_15
        0x25011 -> :sswitch_16
        0x25014 -> :sswitch_17
        0x25017 -> :sswitch_2b
        0x2501a -> :sswitch_2c
        0x25029 -> :sswitch_33
        0x2502a -> :sswitch_33
        0x2502b -> :sswitch_33
        0x2502c -> :sswitch_2d
        0x2502f -> :sswitch_2e
        0x25032 -> :sswitch_2f
        0x25035 -> :sswitch_31
        0x25038 -> :sswitch_30
        0x2503c -> :sswitch_36
        0x30004 -> :sswitch_d
        0x30005 -> :sswitch_d
        0x30006 -> :sswitch_e
    .end sparse-switch
.end method
