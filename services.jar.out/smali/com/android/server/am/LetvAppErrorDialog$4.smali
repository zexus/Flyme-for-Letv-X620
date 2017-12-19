.class Lcom/android/server/am/LetvAppErrorDialog$4;
.super Ljava/lang/Object;
.source "LetvAppErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LetvAppErrorDialog;->buildErrorSheet(Landroid/content/res/Resources;I[Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
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
    .line 233
    iput-object p1, p0, Lcom/android/server/am/LetvAppErrorDialog$4;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    const-string/jumbo v0, "LetvAppErrorDialog"

    const-string/jumbo v1, "FORCE_QUIT cancel button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/server/am/LetvAppErrorDialog$4;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppErrorDialog;->-get3(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/LetvAppErrorDialog$4;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v1}, Lcom/android/server/am/LetvAppErrorDialog;->-get3(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method
