.class Lcom/android/internal/telephony/cat/UdpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final UDP_SOCKET_TIMEOUT:I = 0xbb8


# instance fields
.field mSocket:Ljava/net/DatagramSocket;

.field rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    const/4 v0, 0x0

    .line 1364
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V

    .line 1358
    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1360
    iput-object v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1363
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1405
    const/4 v0, 0x0

    .line 1407
    .local v0, "ret":I
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "[UDP]closeChannel."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->requestStop()V

    .line 1412
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1414
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 1416
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "[UDP]closeSocket."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 1419
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1421
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1422
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1423
    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1426
    :cond_1
    return v0
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 1550
    .local v0, "txRemaining":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[UDP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    .line 1368
    const/4 v2, 0x0

    .line 1369
    .local v2, "ret":I
    iput-object p2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    .line 1372
    :try_start_0
    const-string/jumbo v3, "persist.service.bip.iot.test"

    sget v4, Lcom/android/internal/telephony/cat/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mIOTTest:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1377
    :goto_0
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[UDP]link mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLinkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIOTTest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mIOTTest:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLinkMode:I

    if-nez v3, :cond_1

    .line 1381
    :try_start_1
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    .line 1382
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mNetwork:Landroid/net/Network;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v4}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 1383
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    .line 1384
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/16 v4, 0x80

    iput v4, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1385
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    .line 1386
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1387
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[UDP]: sock status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1392
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/UdpChannel;->checkBufferSize()I

    move-result v2

    .line 1393
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1394
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "[UDP]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1397
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    .line 1398
    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .line 1401
    :cond_1
    return v2

    .line 1373
    :catch_0
    move-exception v1

    .line 1374
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "[UDP]key is illegal"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    sget v3, Lcom/android/internal/telephony/cat/UdpChannel;->DEFAULT_IOTTEST_VALUE:I

    iput v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mIOTTest:I

    goto/16 :goto_0

    .line 1388
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .prologue
    const/4 v8, 0x5

    .line 1555
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]new receiveData method"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    const/4 v1, 0x0

    .line 1558
    .local v1, "ret":I
    if-nez p2, :cond_0

    .line 1559
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]rdr is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    return v8

    .line 1563
    :cond_0
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UDP]receiveData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1564
    const-string/jumbo v4, "/"

    .line 1563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1564
    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1563
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1567
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-lt v2, p1, :cond_3

    .line 1568
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]rx buffer has enough data - begin"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1573
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1574
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1575
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-nez v2, :cond_1

    .line 1576
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1578
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1579
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-gtz v2, :cond_2

    .line 1580
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, ">= [UDP]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1588
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :goto_0
    return v1

    .line 1570
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]fail copy rx buffer out 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    return v8

    .line 1590
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]rx buffer is insufficient - being"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1594
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1595
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1596
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1598
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mBufferSize:I

    if-ge v2, v4, :cond_4

    .line 1599
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, "< [UDP]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    monitor-exit v3

    .line 1603
    const/4 v2, 0x0

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1604
    const/16 v1, 0x9

    .line 1611
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1607
    :catch_1
    move-exception v0

    .line 1608
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]fail copy rx buffer out 2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    return v8
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 12
    .param p1, "requestCount"    # I

    .prologue
    .line 1430
    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1431
    .local v7, "ret":Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v8, p1, [B

    iput-object v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1433
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[UDP]receiveData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1434
    const-string/jumbo v10, "/"

    .line 1433
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1434
    iget v10, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1433
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    if-lt v8, p1, :cond_1

    .line 1438
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1439
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1440
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1441
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    iput v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1489
    :cond_0
    :goto_0
    return-object v7

    .line 1445
    :cond_1
    move v5, p1

    .line 1446
    .local v5, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    .line 1447
    .local v0, "canCopy":I
    const/4 v2, 0x0

    .line 1448
    .local v2, "countCopied":I
    const/4 v1, 0x0

    .line 1450
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 1451
    if-le v5, v0, :cond_2

    .line 1453
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1455
    add-int/2addr v2, v0

    .line 1456
    sub-int/2addr v5, v0

    .line 1457
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1458
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1473
    :goto_2
    if-nez v5, :cond_3

    .line 1474
    const/4 v1, 0x1

    goto :goto_1

    .line 1463
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1465
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1466
    iget v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I

    sub-int/2addr v8, v5

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1467
    add-int/2addr v2, v5

    .line 1468
    const/4 v5, 0x0

    goto :goto_2

    .line 1477
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    const/16 v9, 0xbb8

    invoke-virtual {v8, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 1478
    new-instance v6, Ljava/net/DatagramPacket;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    iget-object v9, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBuffer:[B

    array-length v9, v9

    invoke-direct {v6, v8, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 1479
    .local v6, "packet":Ljava/net/DatagramPacket;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v8, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 1480
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferOffset:I

    .line 1481
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mRxBufferCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1482
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v3

    .line 1483
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1469
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 1459
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 1442
    .end local v0    # "canCopy":I
    .end local v1    # "canExitLoop":Z
    .end local v2    # "countCopied":I
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v5    # "needCopy":I
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 13
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 1493
    const/4 v9, 0x0

    .line 1494
    .local v9, "ret":I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    sub-int v10, v2, v3

    .line 1495
    .local v10, "txRemaining":I
    const/4 v1, 0x0

    .line 1497
    .local v1, "tmpBuffer":[B
    if-nez p1, :cond_0

    .line 1498
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]sendData - data null:"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    return v12

    .line 1501
    :cond_0
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UDP]sendData: size of data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UDP]sendData: size of buffer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1503
    const-string/jumbo v4, " count:"

    .line 1502
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1503
    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    .line 1502
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    if-nez v2, :cond_2

    if-ne v11, p2, :cond_2

    .line 1506
    move-object v1, p1

    .line 1507
    .local v1, "tmpBuffer":[B
    array-length v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    .line 1522
    :goto_0
    if-ne p2, v11, :cond_1

    .line 1523
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UDP]Send data("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1524
    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    array-length v4, v4

    .line 1523
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1524
    const-string/jumbo v4, " count:"

    .line 1523
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1524
    iget v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    .line 1523
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    new-instance v0, Ljava/net/DatagramPacket;

    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mAddress:Ljava/net/InetAddress;

    .line 1527
    iget v5, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mPort:I

    .line 1526
    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 1528
    .local v0, "packet":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    .line 1530
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 1531
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1545
    .end local v0    # "packet":Ljava/net/DatagramPacket;
    .end local v1    # "tmpBuffer":[B
    :cond_1
    :goto_1
    return v9

    .line 1509
    .local v1, "tmpBuffer":[B
    :cond_2
    :try_start_2
    array-length v2, p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    if-lt v10, v2, :cond_3

    .line 1511
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    iget v3, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v4, p1

    const/4 v5, 0x0

    invoke-static {p1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1512
    iget v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBufferCount:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1519
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mTxBuffer:[B

    .local v1, "tmpBuffer":[B
    goto :goto_0

    .line 1513
    .local v1, "tmpBuffer":[B
    :catch_0
    move-exception v7

    .line 1514
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]sendData - IndexOutOfBoundsException"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1540
    .end local v1    # "tmpBuffer":[B
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v8

    .line 1541
    .local v8, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]sendData NE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1543
    const/4 v9, 0x5

    goto :goto_1

    .line 1517
    .end local v8    # "ne":Ljava/lang/NullPointerException;
    .restart local v1    # "tmpBuffer":[B
    :cond_3
    :try_start_5
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UDP]sendData - tx buffer is not enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1532
    .restart local v0    # "packet":Ljava/net/DatagramPacket;
    .local v1, "tmpBuffer":[B
    :catch_2
    move-exception v6

    .line 1533
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UDP]sendData - Exception"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v2, p0, Lcom/android/internal/telephony/cat/UdpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1535
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1536
    return v12
.end method
