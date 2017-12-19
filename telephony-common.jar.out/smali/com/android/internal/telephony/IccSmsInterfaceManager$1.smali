.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 158
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 159
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 160
    :try_start_0
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 162
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 164
    :try_start_1
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    const/4 v12, 0x0

    aget v5, v10, v12

    .line 165
    .local v5, "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get6(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 166
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[insertRaw save one pdu in index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v5    # "index":I
    :goto_2
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 181
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_0

    .line 182
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 183
    .local v2, "e":Lcom/android/internal/telephony/CommandException;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Cannot update SMS "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/CommandException$Error;->SIM_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v10, v11, :cond_0

    .line 186
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v10}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 160
    .end local v2    # "e":Lcom/android/internal/telephony/CommandException;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 169
    :catch_0
    move-exception v4

    .line 170
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 159
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 167
    :catch_1
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/ClassCastException;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_2

    .line 173
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "[insertRaw fail to insert raw into ICC"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 174
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get6(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "-1,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 192
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 194
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    monitor-enter v11

    .line 196
    :try_start_5
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_4

    .line 197
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set2(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;

    .line 199
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    .line 208
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLoadLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_4
    monitor-exit v11

    goto/16 :goto_0

    .line 201
    :cond_4
    :try_start_6
    const-string/jumbo v10, "SMS"

    const/4 v12, 0x3

    invoke-static {v10, v12}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 202
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "Cannot load Sms records"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 204
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get3(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 205
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get3(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 194
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 217
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 219
    :try_start_7
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 220
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 218
    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10

    .line 219
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 225
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 227
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 228
    :try_start_8
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_8

    .line 229
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 231
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v10

    if-nez v10, :cond_7

    .line 232
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    invoke-direct {v12}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;-><init>()V

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set1(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/mediatek/internal/telephony/IccSmsStorageStatus;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    .line 235
    :cond_7
    iget-object v9, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    .line 237
    .local v9, "tmpStatus":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v10

    iget v12, v9, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    iput v12, v10, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    .line 238
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get2(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    move-result-object v10

    iget v12, v9, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    iput v12, v10, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    .line 243
    .end local v9    # "tmpStatus":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_4

    .line 227
    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 241
    :cond_8
    :try_start_9
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "Cannot Get Sms SIM Memory Status from SIM"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    .line 247
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 248
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get1(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 249
    :try_start_a
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_9

    const/4 v10, 0x1

    :goto_7
    invoke-static {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set0(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 250
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get0(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v10

    if-eqz v10, :cond_a

    .line 252
    :try_start_b
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    const/4 v12, 0x0

    aget v5, v10, v12

    .line 253
    .restart local v5    # "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get5(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    .line 254
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "insertText save one pdu in index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 265
    .end local v5    # "index":I
    :goto_8
    :try_start_c
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get1(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_4

    .line 248
    :catchall_4
    move-exception v10

    monitor-exit v11

    throw v10

    .line 249
    :cond_9
    const/4 v10, 0x0

    goto :goto_7

    .line 257
    :catch_2
    move-exception v4

    .line 258
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 255
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 256
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_8

    .line 261
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_a
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "insertText fail to insert sms into ICC"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 262
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get5(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "-1,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_8

    .line 269
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 270
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 271
    :try_start_e
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-nez v10, :cond_b

    .line 273
    :try_start_f
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, Landroid/telephony/SmsParameters;

    invoke-static {v12, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set4(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 286
    :goto_9
    :try_start_10
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_4

    .line 270
    :catchall_5
    move-exception v10

    monitor-exit v11

    throw v10

    .line 277
    :catch_4
    move-exception v4

    .line 278
    .restart local v4    # "ex":Ljava/lang/Exception;
    :try_start_11
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "[EFsmsp fail to get sms params Exception"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 274
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 275
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "[EFsmsp fail to get sms params ClassCastException"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_b
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "[EFsmsp fail to get sms params"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 283
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set4(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/telephony/SmsParameters;)Landroid/telephony/SmsParameters;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_9

    .line 290
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 292
    :try_start_12
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_c

    .line 293
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set5(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    .line 299
    :goto_a
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto/16 :goto_4

    .line 291
    :catchall_6
    move-exception v10

    monitor-exit v11

    throw v10

    .line 295
    :cond_c
    :try_start_13
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "[EFsmsp fail to set sms params"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 296
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set5(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_a

    .line 303
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 304
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 305
    :try_start_14
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-nez v10, :cond_e

    .line 308
    :try_start_15
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    .line 309
    .local v8, "rawData":[B
    const/4 v10, 0x0

    aget-byte v10, v8, v10

    if-nez v10, :cond_d

    .line 310
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "sms raw data status is FREE"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 311
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 324
    .end local v8    # "rawData":[B
    :goto_b
    :try_start_16
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto/16 :goto_4

    .line 304
    :catchall_7
    move-exception v10

    monitor-exit v11

    throw v10

    .line 313
    .restart local v8    # "rawData":[B
    :cond_d
    :try_start_17
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v12, v8}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_b

    .line 315
    .end local v8    # "rawData":[B
    :catch_6
    move-exception v3

    .line 316
    .restart local v3    # "e":Ljava/lang/ClassCastException;
    :try_start_18
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "fail to get sms raw data ClassCastException"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 318
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;

    goto :goto_b

    .line 321
    .end local v3    # "e":Ljava/lang/ClassCastException;
    :cond_e
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "fail to get sms raw data rild"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 322
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set6(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/SmsRawData;)Lcom/android/internal/telephony/SmsRawData;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_b

    .line 328
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 329
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 330
    :try_start_19
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_f

    .line 332
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 334
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_10

    .line 335
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 353
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_f
    :goto_c
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "queryCbActivation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-boolean v13, v13, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 354
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto/16 :goto_4

    .line 329
    :catchall_8
    move-exception v10

    monitor-exit v11

    throw v10

    .line 337
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_10
    const/4 v10, 0x0

    :try_start_1a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 338
    .local v1, "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "cbConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_11

    .line 341
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_11

    .line 342
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_11

    .line 343
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_11

    .line 344
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v10

    if-nez v10, :cond_11

    .line 346
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_c

    .line 348
    :cond_11
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    goto :goto_c

    .line 358
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cbConfig":Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 359
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 360
    :try_start_1b
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_12

    .line 362
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    .line 364
    .local v7, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_13

    .line 365
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-static {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-set3(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 366
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 368
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 369
    const/4 v5, 0x0

    .line 370
    .restart local v5    # "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "config size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 372
    const/4 v5, 0x0

    :goto_d
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    array-length v10, v10

    if-ge v5, v10, :cond_13

    .line 373
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mSmsCBConfig["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 374
    const-string/jumbo v13, "Channel id: "

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 375
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v13

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 375
    const-string/jumbo v13, "-"

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 376
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v13

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 376
    const-string/jumbo v13, ", "

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 377
    const-string/jumbo v13, "Language: "

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 378
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v13

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 378
    const-string/jumbo v13, "-"

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 379
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v13

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 379
    const-string/jumbo v13, ", "

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 380
    const-string/jumbo v13, "Selected: "

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 380
    iget-object v13, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-get4(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v13

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v13

    .line 373
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 372
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_d

    .line 385
    .end local v5    # "index":I
    .end local v7    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    :cond_12
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string/jumbo v12, "Cannot Get CB configs"

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 387
    :cond_13
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto/16 :goto_4

    .line 359
    :catchall_9
    move-exception v10

    monitor-exit v11

    throw v10

    .line 391
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 392
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v11, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 393
    :try_start_1c
    iget-object v12, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_14

    const/4 v10, 0x1

    :goto_e
    iput-boolean v10, v12, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 394
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v10, v10, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    goto/16 :goto_4

    .line 392
    :catchall_a
    move-exception v10

    monitor-exit v11

    throw v10

    .line 393
    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_a
    .end sparse-switch
.end method
