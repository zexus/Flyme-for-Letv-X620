.class Lcom/android/server/net/NetworkHttpMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerForRougingUpdate()V
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
    .line 241
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$4;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    const-string/jumbo v2, "NetworkHttpMonitor"

    const-string/jumbo v3, "onReceive: registerForRougingUpdate"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 248
    const-string/jumbo v2, "eventType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, "event_type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$4;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->-get0(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkHttpMonitor$4;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v3}, Lcom/android/server/net/NetworkHttpMonitor;->-get2(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 252
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$4;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->-wrap2(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 243
    .end local v1    # "event_type":I
    :cond_1
    return-void
.end method
