.class Lcom/android/server/wifi/WifiStateMachine$UntetheringState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UntetheringState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 12117
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 12120
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12122
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 12123
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get127(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->-set73(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v2

    .line 12122
    const v3, 0x2001e

    .line 12123
    const/4 v4, 0x0

    .line 12122
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 12123
    const-wide/16 v2, 0x2710

    .line 12122
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 12119
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 12128
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap45(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 12130
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 12159
    const/4 v1, 0x0

    return v1

    .line 12132
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;

    .line 12135
    .local v0, "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, v0, Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap8(Lcom/android/server/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12161
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 12137
    .restart local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 12140
    .end local v0    # "stateChange":Lcom/android/server/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get127(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 12141
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string/jumbo v2, "Failed to get tether update, force stop access point"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 12142
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->-get111(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->-wrap81(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 12156
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntetheringState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->-wrap28(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 12130
    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_2
        0x2000c -> :sswitch_2
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20015 -> :sswitch_2
        0x20018 -> :sswitch_2
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_1
        0x20048 -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
    .end sparse-switch
.end method
