.class Lcom/android/server/net/NetworkHttpMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkHttpMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->registerForAlarms()V
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
    .line 218
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$2;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    const-string/jumbo v0, "NetworkHttpMonitor"

    const-string/jumbo v1, "onReceive: registerForAlarms"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/net/NetworkHttpMonitor$2;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-static {v0}, Lcom/android/server/net/NetworkHttpMonitor;->-wrap2(Lcom/android/server/net/NetworkHttpMonitor;)V

    .line 220
    return-void
.end method
