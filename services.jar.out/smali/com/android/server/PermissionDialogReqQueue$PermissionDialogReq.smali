.class public final Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialogReqQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionDialogReq"
.end annotation


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 37
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 51
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    .line 56
    iget v1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    return v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public set(I)V
    .locals 3
    .param p1, "res"    # I

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mHasResult:Z

    .line 41
    iput p1, p0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->mResult:I

    .line 42
    const-string/jumbo v0, "gaozhipeng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
