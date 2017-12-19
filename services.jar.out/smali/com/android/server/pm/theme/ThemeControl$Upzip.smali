.class Lcom/android/server/pm/theme/ThemeControl$Upzip;
.super Ljava/lang/Object;
.source "ThemeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/theme/ThemeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Upzip"
.end annotation


# instance fields
.field mHasResult:Z

.field final synthetic this$0:Lcom/android/server/pm/theme/ThemeControl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/theme/ThemeControl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/theme/ThemeControl;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/server/pm/theme/ThemeControl$Upzip;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/theme/ThemeControl$Upzip;->mHasResult:Z

    .line 193
    return-void
.end method


# virtual methods
.method public upzipComplete()V
    .locals 2

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/theme/ThemeControl$Upzip;->mHasResult:Z

    .line 200
    const-string/jumbo v0, "ThemeControl"

    const-string/jumbo v1, "ControlTheme : notify"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/theme/ThemeControl$Upzip;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public upzipSetup()V
    .locals 4

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/theme/ThemeControl$Upzip;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 209
    :try_start_1
    const-string/jumbo v1, "ThemeControl"

    const-string/jumbo v2, "ControlTheme start wait"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/server/pm/theme/ThemeControl$Upzip;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v1, "ThemeControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ControlTheme wait : InterruptedException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    .line 205
    return-void
.end method
