.class public Lcom/android/server/PermissionDialogReqQueue;
.super Ljava/lang/Object;
.source "PermissionDialogReqQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/server/PermissionDialog;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public getDialog()Lcom/android/server/PermissionDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    return-object v0
.end method

.method public notifyAll(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .line 84
    .local v0, "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v0, p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v0    # "res":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    .line 80
    return-void
.end method

.method public register(Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V
    .locals 4
    .param p1, "res"    # Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    const-string/jumbo v1, "gaozhipeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "register...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string/jumbo v1, "gaozhipeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/PermissionDialogReqQueue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/server/PermissionDialogReqQueue;->resultList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    .local v0, "temp":Z
    const-string/jumbo v1, "gaozhipeng"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 71
    return-void

    .line 72
    .end local v0    # "temp":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDialog(Lcom/android/server/PermissionDialog;)V
    .locals 0
    .param p1, "mDialog"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/PermissionDialogReqQueue;->mDialog:Lcom/android/server/PermissionDialog;

    .line 33
    return-void
.end method
