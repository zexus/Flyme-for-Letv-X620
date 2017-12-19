.class Lcom/android/server/display/WifiDisplayController$7;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
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
    .line 3604
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 3607
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get12(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3608
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": ConnectedDevice is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    return-void

    .line 3610
    :cond_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v5

    if-nez v5, :cond_1

    .line 3611
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": RemoteDisplay is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    return-void

    .line 3613
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-eq v5, v9, :cond_2

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 3614
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": mLatencyProfiling:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    return-void

    .line 3619
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-wrap5(Lcom/android/server/display/WifiDisplayController;)I

    move-result v4

    .line 3621
    .local v4, "wifiApNum":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->-get64(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3622
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->-get67(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    .line 3621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3622
    const-string/jumbo v6, ","

    .line 3621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3622
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->-get66(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    .line 3621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3622
    const-string/jumbo v6, ","

    .line 3621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3622
    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->-get32(Lcom/android/server/display/WifiDisplayController;)I

    move-result v6

    .line 3621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3623
    .local v1, "WifiInfo":Ljava/lang/String;
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WifiInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v2

    .line 3627
    .local v2, "avgLatency":I
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get37(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/media/RemoteDisplay;->getWfdParam(I)I

    move-result v3

    .line 3629
    .local v3, "sinkFps":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",0,0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3630
    .local v0, "WFDLatency":Ljava/lang/String;
    const-string/jumbo v5, "WifiDisplayController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WFDLatency:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 3635
    :cond_3
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_wifi_info"

    .line 3634
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3638
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get17(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_display_wfd_latency"

    .line 3637
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3651
    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get23(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v6}, Lcom/android/server/display/WifiDisplayController;->-get26(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3606
    return-void

    .line 3640
    :cond_5
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get27(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 3642
    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v5, v5, Lcom/android/server/display/WifiDisplayController;->mTextView:Landroid/widget/TextView;

    .line 3643
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AP:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3644
    const-string/jumbo v7, "S:"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3644
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->-get67(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3644
    const-string/jumbo v7, "\n"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3645
    const-string/jumbo v7, "R:"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3645
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->-get66(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3645
    const-string/jumbo v7, "\n"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3646
    const-string/jumbo v7, "RS:"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3646
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$7;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->-get32(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3646
    const-string/jumbo v7, "\n"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3647
    const-string/jumbo v7, "AL:"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3647
    const-string/jumbo v7, "\n"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3648
    const-string/jumbo v7, "SF:"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3648
    const-string/jumbo v7, "\n"

    .line 3643
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3642
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
