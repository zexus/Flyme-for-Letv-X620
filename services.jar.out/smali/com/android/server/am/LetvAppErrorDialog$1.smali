.class Lcom/android/server/am/LetvAppErrorDialog$1;
.super Landroid/os/Handler;
.source "LetvAppErrorDialog.java"


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
    .line 305
    iput-object p1, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x0

    .line 307
    const-string/jumbo v3, "LetvAppErrorDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 310
    new-instance v2, Landroid/content/Intent;

    .line 311
    const-string/jumbo v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 310
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v3}, Lcom/android/server/am/LetvAppErrorDialog;->-get2(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 323
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/android/server/am/LetvAppErrorDialog;->-set0(Lcom/android/server/am/LetvAppErrorDialog;I)I

    .line 326
    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v3}, Lcom/android/server/am/LetvAppErrorDialog;->-get0(Lcom/android/server/am/LetvAppErrorDialog;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_1

    .line 329
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.letv.bug.reporter"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v4}, Lcom/android/server/am/LetvAppErrorDialog;->-get1(Lcom/android/server/am/LetvAppErrorDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-static {v3}, Lcom/android/server/am/LetvAppErrorDialog;->-get2(Lcom/android/server/am/LetvAppErrorDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/LetvAppErrorDialog$1;->removeMessages(I)V

    .line 343
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/server/am/LetvAppErrorDialog$1;->removeMessages(I)V

    .line 347
    iget-object v3, p0, Lcom/android/server/am/LetvAppErrorDialog$1;->this$0:Lcom/android/server/am/LetvAppErrorDialog;

    invoke-virtual {v3}, Lcom/android/server/am/LetvAppErrorDialog;->disappear()V

    .line 306
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LetvAppErrorDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start bugreport exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
