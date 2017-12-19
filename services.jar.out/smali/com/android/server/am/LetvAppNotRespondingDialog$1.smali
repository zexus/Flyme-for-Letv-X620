.class Lcom/android/server/am/LetvAppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "LetvAppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvAppNotRespondingDialog;
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
    .line 212
    iput-object p1, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    const-string/jumbo v5, "LetvAppNotRespondingDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage what="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 245
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get0(Lcom/android/server/am/LetvAppNotRespondingDialog;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 248
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.letv.bug.reporter"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v6}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get1(Lcom/android/server/am/LetvAppNotRespondingDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get2(Lcom/android/server/am/LetvAppNotRespondingDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-virtual {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->disappear()V

    .line 261
    if-eqz v1, :cond_1

    .line 263
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-virtual {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :cond_1
    :goto_2
    return-void

    .line 220
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get5(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v6}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get4(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 221
    iget-object v7, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    .line 220
    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    .line 226
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get5(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    monitor-enter v6

    .line 227
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get4(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 229
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 230
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get5(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    .line 230
    invoke-virtual {v5, v0, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 234
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 235
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 236
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    if-ne v5, v7, :cond_3

    .line 237
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 239
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/LetvAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/LetvAppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/LetvAppNotRespondingDialog;->-get5(Lcom/android/server/am/LetvAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    goto/16 :goto_0

    .line 226
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 253
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LetvAppNotRespondingDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "start bugreport exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 264
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 265
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "LetvAppNotRespondingDialog"

    const-string/jumbo v6, "bug report receiver dissappeared"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
