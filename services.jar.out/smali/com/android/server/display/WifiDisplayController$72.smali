.class Lcom/android/server/display/WifiDisplayController$72;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/media/RemoteDisplay$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->connectRtsp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 4838
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/view/Surface;IIII)V
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 4843
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Opened RTSP connection! w:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",h:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap21(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4847
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v2, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayController;->-wrap23(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4848
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get39(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4851
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    .line 4852
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get47(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    move v5, v4

    .line 4851
    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 4855
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    if-ge p2, p3, :cond_0

    .line 4856
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-wrap43(Lcom/android/server/display/WifiDisplayController;)V

    .line 4860
    :cond_0
    const-string/jumbo v1, "WifiDisplayController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[sink] callback onDisplayConnected(), addr:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get47(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4861
    const-string/jumbo v5, ", name:"

    .line 4860
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4861
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    .line 4860
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap54(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 4864
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get29(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v1

    move-object v2, v0

    move v4, v6

    move v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 4841
    return-void
.end method

.method public onDisplayDisconnected()V
    .locals 3

    .prologue
    .line 4869
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closed RTSP connection! mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get49(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4871
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4872
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4876
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap21(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4877
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get39(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4879
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    .line 4868
    return-void

    .line 4873
    :cond_1
    return-void
.end method

.method public onDisplayError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 4884
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Lost RTSP connection! mSinkState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get49(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_RTSP:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4887
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_RTSP_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4891
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get9(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap21(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)V

    .line 4892
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get39(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4894
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$72;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap19(Lcom/android/server/display/WifiDisplayController;)V

    .line 4883
    return-void

    .line 4888
    :cond_1
    return-void
.end method

.method public onDisplayGenericMsgEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 4903
    return-void
.end method

.method public onDisplayKeyEvent(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 4899
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "onDisplayKeyEvent:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4898
    return-void
.end method
