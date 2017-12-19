.class Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetachingState"
.end annotation


# instance fields
.field private mCurrentDisallowedSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 515
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v2, "DetachingState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 525
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 526
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 525
    const v4, 0x43003

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 527
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    const-string/jumbo v2, "detaching"

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get12(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->notifyDcSwitchStateChange(Ljava/lang/String;ILjava/lang/String;)V

    .line 519
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 534
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 610
    const/4 v3, 0x0

    .line 613
    .local v3, "retVal":Z
    :goto_0
    return v3

    .line 536
    .end local v3    # "retVal":Z
    :sswitch_0
    const/4 v0, 0x0

    .line 538
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 539
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;

    .line 540
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    const-string/jumbo v4, "DcSwitchStateMachine.DetachingState: REQ_CONNECT"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;->log(Ljava/lang/String;)V

    .line 543
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel$RequestInfo;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DetachingState: REQ_CONNECT, apnRequest="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 546
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap4(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/Message;)V

    .line 547
    const/4 v3, 0x1

    .line 548
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 561
    .end local v3    # "retVal":Z
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 562
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_1

    .line 563
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_DATA_DISALLOWED ignored arg1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 564
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 563
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 586
    :goto_1
    const/4 v3, 0x1

    .line 587
    .restart local v3    # "retVal":Z
    goto :goto_0

    .line 565
    .end local v3    # "retVal":Z
    :cond_1
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    .line 569
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_DATA_DISALLOWED failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap5(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Ljava/lang/String;)V

    .line 571
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Landroid/os/AsyncResult;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSwitching()Z

    move-result v4

    .line 571
    if-eqz v4, :cond_2

    .line 574
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const v6, 0x43064

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 576
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 583
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v5, "DetachingState: PS detached"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 584
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$IdleState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-wrap6(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 591
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v5, "DetachingState: CMD_RETRY_DETACH"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 593
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->-get9(Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .line 594
    .local v2, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    .line 595
    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->mCurrentDisallowedSequence:I

    .line 594
    const v7, 0x43003

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 596
    const/4 v3, 0x1

    .line 597
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 600
    .end local v2    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "retVal":Z
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine$DetachingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    const-string/jumbo v5, "DetachingState: REQ_DISCONNECT_ALL, already detaching"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;->log(Ljava/lang/String;)V

    .line 602
    const/4 v3, 0x1

    .line 603
    .restart local v3    # "retVal":Z
    goto/16 :goto_0

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x43003 -> :sswitch_1
        0x43064 -> :sswitch_2
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_3
    .end sparse-switch
.end method
