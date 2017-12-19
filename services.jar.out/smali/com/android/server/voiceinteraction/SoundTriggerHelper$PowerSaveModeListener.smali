.class Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;
.super Landroid/content/BroadcastReceiver;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerSaveModeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 556
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->-get1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 560
    .local v0, "active":Z
    const-string/jumbo v1, "SoundTriggerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPowerSaveModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->-get0(Lcom/android/server/voiceinteraction/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerHelper$PowerSaveModeListener;->this$0:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-static {v1, v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->-wrap1(Lcom/android/server/voiceinteraction/SoundTriggerHelper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 555
    return-void

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
