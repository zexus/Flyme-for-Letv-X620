.class Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;->this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x14d

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "GlobalAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "received broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "reason":Ljava/lang/String;
    const-string/jumbo v2, "globalactions"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;->this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->-get0(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;->this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->-get0(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
