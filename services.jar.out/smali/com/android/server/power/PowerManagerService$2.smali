.class Lcom/android/server/power/PowerManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 727
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 728
    :try_start_0
    const-string/jumbo v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "PREBOOT_IPO"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set7(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 731
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 732
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    .line 750
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 726
    return-void

    .line 733
    :cond_1
    :try_start_1
    const-string/jumbo v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "IPO_BOOT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set7(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 736
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 737
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get7(Lcom/android/server/power/PowerManagerService;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set1(Lcom/android/server/power/PowerManagerService;I)I

    .line 738
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get8(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setIPOScreenOnDelay(I)V

    .line 739
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get20(Lcom/android/server/power/PowerManagerService;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 740
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 741
    const-string/jumbo v4, "android.server.power:POWER"

    .line 743
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get4(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 742
    const/16 v5, 0x3e8

    .line 744
    const/16 v7, 0x3e8

    .line 740
    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 746
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    .line 746
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap11(Lcom/android/server/power/PowerManagerService;JIII)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
