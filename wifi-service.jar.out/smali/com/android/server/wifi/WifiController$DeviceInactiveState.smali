.class Lcom/android/server/wifi/WifiController$DeviceInactiveState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceInactiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 814
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 822
    const-string/jumbo v0, "WifiController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 833
    return v3

    .line 825
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    .line 826
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap10(Lcom/android/server/wifi/WifiController;)V

    .line 827
    const/4 v0, 0x1

    return v0

    .line 829
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiController$DeviceInactiveState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 831
    return v3

    .line 823
    nop

    :sswitch_data_0
    .sparse-switch
        0x26002 -> :sswitch_1
        0x26006 -> :sswitch_0
    .end sparse-switch
.end method
