.class final Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get8()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 323
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-set3(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 325
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get6()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 321
    :cond_0
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
