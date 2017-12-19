.class public final Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;
.super Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;
.source "SmsIccFileFetcher.java"


# static fields
.field private static final SMSP:Ljava/lang/String; = "ef_smsp"

.field private static final SMSS:Ljava/lang/String; = "ef_smss"

.field private static final TAG:Ljava/lang/String; = "SmsIccFileFetcher"


# instance fields
.field mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/uicc/IccFileFetcherBase;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_smss"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    const-string/jumbo v1, "ef_smsp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized getNextMessageId()I
    .locals 15

    .prologue
    const/4 v3, 0x4

    monitor-enter p0

    .line 136
    :try_start_0
    const-string/jumbo v1, "SmsIccFileFetcher"

    const-string/jumbo v2, "getNextMessageId"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v2, "ef_smss"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 138
    .local v5, "bytes":[B
    const/4 v13, -0x1

    .line 139
    .local v13, "nextMsgId":I
    if-eqz v5, :cond_0

    array-length v1, v5

    if-le v1, v3, :cond_0

    .line 140
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 141
    .local v8, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .local v10, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    .line 145
    .local v12, "msgId":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 146
    const v1, 0xffff

    rem-int v1, v12, v1

    add-int/lit8 v13, v1, 0x1

    .line 147
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, "str":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.cdma.msgid"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v12    # "msgId":I
    .end local v14    # "str":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string/jumbo v1, "SmsIccFileFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getmWapMsgId nextMsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 154
    .local v9, "bs":[B
    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v2, 0x0

    aput-byte v1, v5, v2

    .line 155
    const/4 v1, 0x3

    aget-byte v1, v9, v1

    const/4 v2, 0x1

    aput-byte v1, v5, v2

    .line 156
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 157
    const-string/jumbo v4, "3F007F25"

    .line 156
    const/16 v1, 0x6f3e

    const/4 v2, 0x1

    .line 157
    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 156
    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    .line 158
    .local v0, "simInfo":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    invoke-virtual {p0, v0}, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->updateSimInfo(Lcom/mediatek/internal/telephony/uicc/IccFileRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "simInfo":Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v9    # "bs":[B
    .end local v10    # "dis":Ljava/io/DataInputStream;
    :cond_0
    monitor-exit p0

    .line 160
    return v13

    .line 149
    .restart local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v11

    .line 150
    .local v11, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "SmsIccFileFetcher"

    const-string/jumbo v2, "getNextMessageId IOException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v5    # "bytes":[B
    .end local v8    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v10    # "dis":Ljava/io/DataInputStream;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "nextMsgId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSmsPara()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 199
    const-string/jumbo v0, "SmsIccFileFetcher"

    const-string/jumbo v1, "getSmsPara"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "ef_smsp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getWapMsgId()I
    .locals 4

    .prologue
    monitor-enter p0

    .line 168
    :try_start_0
    const-string/jumbo v2, "SmsIccFileFetcher"

    const-string/jumbo v3, "getmWapMsgId"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v3, "ef_smss"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 170
    .local v0, "bytes":[B
    const/4 v1, -0x1

    .line 172
    .local v1, "mWapMsgId":I
    if-eqz v0, :cond_0

    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    :cond_0
    monitor-exit p0

    .line 192
    return v1

    .end local v0    # "bytes":[B
    .end local v1    # "mWapMsgId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onGetFilePara(Ljava/lang/String;)Lcom/mediatek/internal/telephony/uicc/IccFileRequest;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 88
    const-string/jumbo v0, "ef_smss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 91
    const-string/jumbo v4, "3F007F25"

    .line 90
    const/16 v1, 0x6f3d

    const/4 v2, 0x1

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 88
    :cond_0
    const-string/jumbo v0, "ef_smsp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;

    .line 94
    const-string/jumbo v4, "3F007F25"

    .line 93
    const/16 v1, 0x6f3e

    const/4 v2, 0x0

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/internal/telephony/uicc/IccFileRequest;-><init>(IIILjava/lang/String;[BILjava/lang/String;)V

    return-object v0

    .line 96
    :cond_1
    return-object v5
.end method

.method public onGetKeys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mFileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onParseResult(Ljava/lang/String;[BLjava/util/ArrayList;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "transparent"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "linearfixed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string/jumbo v2, "ef_smss"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string/jumbo v2, "SmsIccFileFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMSS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v3, "ef_smss"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v2, "ef_smsp"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string/jumbo v2, "SmsIccFileFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMSP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/mediatek/internal/telephony/uicc/SmsIccFileFetcher;->mData:Ljava/util/HashMap;

    const-string/jumbo v3, "ef_smsp"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 117
    .local v0, "item":[B
    const-string/jumbo v2, "SmsIccFileFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SMSP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
