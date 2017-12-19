.class final Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivePlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/activation/ActivePlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/ActivePlugInImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/ActivePlugInImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 877
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v1}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap2(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->-set0(Lcom/android/server/activation/ActivePlugInImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-get0(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Activation] sim status changed, get imei ok, ss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap9(Lcom/android/server/activation/ActivePlugInImpl;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap8(Lcom/android/server/activation/ActivePlugInImpl;)V

    .line 886
    return-void

    .line 876
    :cond_0
    return-void
.end method
