.class Lcom/android/server/net/NetworkHttpMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerWifiEvent()V
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
    .line 261
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 265
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "NetworkHttpMonitor"

    const-string/jumbo v3, "onReceive: CONNECTIVITY_ACTION"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    check-cast v1, Landroid/net/NetworkInfo;

    .line 271
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->-get0(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v3}, Lcom/android/server/net/NetworkHttpMonitor;->-get2(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 274
    const-string/jumbo v2, "NetworkHttpMonitor"

    const-string/jumbo v3, "onReceive: resetFirewallStatus"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v2, p0, Lcom/android/server/net/NetworkHttpMonitor$5;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v2}, Lcom/android/server/net/NetworkHttpMonitor;->-wrap2(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 263
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
