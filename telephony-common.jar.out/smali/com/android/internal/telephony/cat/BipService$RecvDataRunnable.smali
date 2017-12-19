.class Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;
.super Ljava/lang/Object;
.source "BipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvDataRunnable"
.end annotation


# instance fields
.field cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field requestDataSize:I

.field response:Landroid/os/Message;

.field result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipService;ILcom/android/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;
    .param p2, "size"    # I
    .param p3, "result"    # Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .param p4, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    iput p2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->requestDataSize:I

    .line 1724
    iput-object p3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .line 1725
    iput-object p4, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1726
    iput-object p5, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    .line 1722
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1730
    const/4 v1, 0x0

    .line 1731
    .local v1, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    const/4 v0, 0x0

    .line 1733
    .local v0, "errCode":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "BM-receiveData: start to receive data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget v3, v3, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v1

    .line 1735
    .local v1, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v1, :cond_0

    .line 1736
    const/4 v0, 0x5

    .line 1744
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 1745
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    iget v3, v3, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    iput v3, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 1746
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 1747
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->cmdMsg:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1748
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->response:Landroid/os/Message;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    if-eqz v1, :cond_1

    .line 1750
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1751
    :try_start_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, "BM-receiveData: notify waiting channel."

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    .line 1753
    iget-object v2, v1, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    .line 1758
    :goto_1
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BM-receiveData: end to receive data. Result code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    return-void

    .line 1738
    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1739
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v1, Lcom/android/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1741
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->requestDataSize:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;->result:Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/Channel;->receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I

    move-result v0

    goto :goto_0

    .line 1738
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1750
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1756
    :cond_1
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "BM-receiveData: null channel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
