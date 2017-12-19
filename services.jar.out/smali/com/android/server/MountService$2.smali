.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    .prologue
    .line 4175
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4179
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4180
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "mDMReceiver USB enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    new-instance v1, Lcom/android/server/MountService$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2$1;-><init>(Lcom/android/server/MountService$2;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$2$1;->start()V

    .line 4177
    :cond_0
    :goto_0
    return-void

    .line 4188
    :cond_1
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4189
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "mDMReceiver USB disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    new-instance v1, Lcom/android/server/MountService$2$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2$2;-><init>(Lcom/android/server/MountService$2;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$2$2;->start()V

    goto :goto_0

    .line 4197
    :cond_2
    const-string/jumbo v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4198
    const-string/jumbo v1, "MountService"

    const-string/jumbo v2, "mDMReceiver format SD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4199
    new-instance v1, Lcom/android/server/MountService$2$3;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$2$3;-><init>(Lcom/android/server/MountService$2;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$2$3;->start()V

    goto :goto_0
.end method
