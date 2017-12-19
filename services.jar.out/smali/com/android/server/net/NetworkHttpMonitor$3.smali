.class Lcom/android/server/net/NetworkHttpMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerForRoutingUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkHttpMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkHttpMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkHttpMonitor;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 232
    const-string/jumbo v0, "NetworkHttpMonitor"

    const-string/jumbo v1, "onReceive: registerForRoutingUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->-get0(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v1}, Lcom/android/server/net/NetworkHttpMonitor;->-get2(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$3;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->-wrap2(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 231
    return-void
.end method
