.class Lcom/android/server/wifi/WifiStateMachine$ScanModeState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanModeState"
.end annotation


# instance fields
.field private mLastOperationMode:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 7638
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 7642
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7643
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get88(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    .line 7646
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set2(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7649
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setAlwaysScanState(I)Z

    .line 7641
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 7653
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7655
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiNative;->setAlwaysScanState(I)Z

    .line 7652
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 7659
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7661
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7719
    return v4

    .line 7663
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 7665
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v0, v3, :cond_1

    .line 7669
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->loadAndEnableAllNetworks()V

    .line 7670
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get151(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x20083

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 7675
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-wrap7(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7676
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v1, "stay disconnect because hotknot is on .."

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7677
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get149(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7692
    :goto_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set54(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7694
    iget v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    if-ne v0, v3, :cond_0

    .line 7695
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7700
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v4}, Lcom/android/server/wifi/WifiStateMachine;->-set80(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7702
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get33(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7721
    :goto_2
    return v2

    .line 7672
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->enableAllNetworks()V

    goto :goto_0

    .line 7683
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get140(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiAutoJoinController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiAutoJoinController;->attemptAutoJoin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7684
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v1, -0x5

    invoke-virtual {v0, v1, v4, v5, v5}, Lcom/android/server/wifi/WifiStateMachine;->startScan(IILandroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 7688
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get141(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v0

    .line 7689
    const/4 v1, -0x1

    .line 7688
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->setLastSelectedConfiguration(I)V

    goto :goto_1

    .line 7705
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_5

    .line 7706
    iput v3, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->mLastOperationMode:I

    .line 7707
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap75(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 7710
    :cond_5
    return v2

    .line 7716
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ScanModeState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0, v2, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap39(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto :goto_2

    .line 7661
    nop

    :pswitch_data_0
    .packed-switch 0x20047
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
