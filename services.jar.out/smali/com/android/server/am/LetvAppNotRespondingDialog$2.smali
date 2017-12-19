.class Lcom/android/server/am/LetvAppNotRespondingDialog$2;
.super Ljava/lang/Object;
.source "LetvAppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/LetvAppNotRespondingDialog;->buildErrorSheet(I[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvAppNotRespondingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/LetvAppNotRespondingDialog;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    const-string/jumbo v0, "LetvAppNotRespondingDialog"

    const-string/jumbo v1, "FORCE_CLOSE button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get3(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$2;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get3(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    return-void
.end method
