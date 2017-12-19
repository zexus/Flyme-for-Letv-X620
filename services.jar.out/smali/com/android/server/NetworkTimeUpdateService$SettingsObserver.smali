.class Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I

    .prologue
    .line 439
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 440
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    .line 441
    iput p2, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    .line 438
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 447
    const/4 v2, 0x0

    .line 446
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 444
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 452
    const-string/jumbo v0, "NetworkTimeUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange ... selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->mMsg:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void
.end method
