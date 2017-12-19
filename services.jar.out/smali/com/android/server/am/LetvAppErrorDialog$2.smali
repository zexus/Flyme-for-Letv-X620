.class Lcom/android/server/am/LetvAppErrorDialog$2;
.super Ljava/lang/Object;
.source "LetvAppErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvAppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvAppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvAppErrorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/LetvAppErrorDialog;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get7(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get4(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get4(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    if-ne v0, v2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get4(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 360
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get5(Lcom/android/server/am/LetvAppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/LetvAppErrorDialog$2;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/LetvAppErrorDialog;->-get6(Lcom/android/server/am/LetvAppErrorDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 353
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
