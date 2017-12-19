.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1495
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "[ISM_Initial] enter, sendTetherStateChangedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1497
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V

    .line 1498
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap10(Lcom/android/server/connectivity/Tethering;)V

    .line 1494
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1503
    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ISM_Initial] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " processMessage what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v0, 0x1

    .line 1505
    .local v0, "retValue":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1526
    :pswitch_0
    const/4 v0, 0x0

    .line 1529
    :goto_0
    return v0

    .line 1507
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1508
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1509
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1508
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1511
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V

    .line 1513
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1514
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get5(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    .line 1516
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1514
    invoke-virtual {v1, v4, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1520
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1523
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;->this$1:Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->-wrap3(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1505
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
