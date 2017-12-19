.class public Lcom/android/server/pm/AdbCmdResult;
.super Ljava/lang/Object;
.source "AdbCmdResult.java"


# instance fields
.field mHasResult:Z

.field mResult:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    .line 11
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 2

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/AdbCmdResult;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 33
    iget-boolean v1, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    return v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(Z)V
    .locals 2
    .param p1, "res"    # Z

    .prologue
    const/4 v0, 0x1

    .line 17
    monitor-enter p0

    .line 18
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/AdbCmdResult;->mHasResult:Z

    .line 19
    if-eqz p1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/pm/AdbCmdResult;->mResult:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/AdbCmdResult;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 16
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
