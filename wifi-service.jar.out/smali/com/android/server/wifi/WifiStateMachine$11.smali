.class Lcom/android/server/wifi/WifiStateMachine$11;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine;->initializeExtra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 12877
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x200b9

    const v6, 0x200b7

    .line 12880
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12881
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12882
    const-string/jumbo v3, "com.android.server.WifiManager.action.CLEAR_WAIT_FLAG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12883
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set75(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 12879
    :cond_0
    :goto_0
    return-void

    .line 12884
    :cond_1
    const-string/jumbo v3, "mtk.wps.nfc.testbed.configuration.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12885
    const-string/jumbo v3, "mtk.wps.nfc.testbed.extra.configuration"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 12886
    .local v1, "configurationToken":[B
    if-eqz v1, :cond_2

    .line 12887
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 12889
    :cond_2
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "No configuration token!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12891
    .end local v1    # "configurationToken":[B
    :cond_3
    const-string/jumbo v3, "mtk.wps.nfc.testbed.hs.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12892
    const-string/jumbo v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 12893
    .local v2, "passwordToken":[B
    if-eqz v2, :cond_4

    .line 12894
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    const v6, 0x200b8

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 12896
    :cond_4
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "No password token!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12898
    .end local v2    # "passwordToken":[B
    :cond_5
    const-string/jumbo v3, "mtk.wps.nfc.testbed.hr.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 12899
    const-string/jumbo v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received HR action, mWaitingForHrToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->-get136(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12900
    const-string/jumbo v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 12901
    .restart local v2    # "passwordToken":[B
    if-eqz v2, :cond_7

    .line 12902
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get136(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 12903
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 12905
    :cond_6
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 12908
    :cond_7
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "No password token!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12910
    .end local v2    # "passwordToken":[B
    :cond_8
    const-string/jumbo v3, "mtk.wps.nfc.testbed.password.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 12911
    const-string/jumbo v3, "mtk.wps.nfc.testbed.externalRegistrar.password.received"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 12910
    if-eqz v3, :cond_0

    .line 12912
    :cond_9
    const-string/jumbo v3, "mtk.wps.nfc.testbed.extra.password"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 12913
    .restart local v2    # "passwordToken":[B
    if-eqz v2, :cond_a

    .line 12914
    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$11;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v5, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap22(Lcom/android/server/wifi/WifiStateMachine;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 12916
    :cond_a
    const-string/jumbo v3, "WifiStateMachine"

    const-string/jumbo v4, "No password token!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
