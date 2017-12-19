.class final Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SDHotPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3476
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3481
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<<<< SD Hot Plug >>>>> Receiving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3484
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SD_INSERTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3485
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    .line 3486
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3487
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get20(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 3488
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3489
    const-string/jumbo v4, "android.server.power:POWER"

    .line 3491
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3490
    const/16 v5, 0x3e8

    .line 3492
    const/16 v7, 0x3e8

    .line 3488
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z

    .line 3497
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v8

    .line 3478
    return-void

    .line 3494
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SDHotPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3495
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    .line 3494
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap11(Lcom/android/server/power/PowerManagerService;JIII)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3479
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method
