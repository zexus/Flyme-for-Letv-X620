.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecord$ChangeItem;
    }
.end annotation


# instance fields
.field curProcState:I

.field public isShadow:Z

.field numProcs:I

.field pendingChange:Lcom/android/server/am/UidRecord$ChangeItem;

.field setProcState:I

.field final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "_uid"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->isShadow:Z

    .line 46
    iput p1, p0, Lcom/android/server/am/UidRecord;->uid:I

    .line 47
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 45
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget v1, p0, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/android/server/am/UidRecord;->curProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v1, p0, Lcom/android/server/am/UidRecord;->numProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, " procs}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
