.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .locals 2
    .param p1, "efid"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCommonIccEFPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 82
    sparse-switch p1, :sswitch_data_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 90
    :sswitch_0
    const-string/jumbo v0, "3F007F10"

    return-object v0

    .line 94
    :sswitch_1
    const-string/jumbo v0, "3F00"

    return-object v0

    .line 97
    :sswitch_2
    const-string/jumbo v0, "3F007F105F3A"

    return-object v0

    .line 99
    :sswitch_3
    const-string/jumbo v0, "3F007F105F50"

    return-object v0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1
        0x2fe2 -> :sswitch_1
        0x4f20 -> :sswitch_3
        0x4f30 -> :sswitch_2
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_0
        0x6f4a -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4c -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 3
    .param p1, "efid"    # I

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetEFPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->logd(Ljava/lang/String;)V

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v1, "3F007F105F3A"

    return-object v1

    .line 44
    .end local v0    # "path":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v1, "3F007F25"

    return-object v1

    .line 59
    :sswitch_1
    const-string/jumbo v1, "3F007FFF"

    return-object v1

    .line 68
    .restart local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3b -> :sswitch_1
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_1
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f47 -> :sswitch_1
        0x6f4d -> :sswitch_1
        0x6f5a -> :sswitch_1
        0x6f75 -> :sswitch_1
    .end sparse-switch
.end method

.method protected getEFPath(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I
    .param p2, "is7FFF"    # Z

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    const/4 v4, 0x0

    .line 126
    .local v4, "response":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 162
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 115
    .end local v4    # "response":Landroid/os/Message;
    :goto_0
    return-void

    .line 128
    .restart local v4    # "response":Landroid/os/Message;
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 129
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 130
    .local v2, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 131
    .local v5, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    .line 132
    .local v4, "response":Landroid/os/Message;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, v5, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 138
    .local v1, "data":[B
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    const/4 v7, 0x4

    if-ne v7, v6, :cond_2

    .line 139
    const/16 v6, 0xd

    aget-byte v6, v1, v6

    const/4 v7, 0x1

    if-eq v7, v6, :cond_3

    .line 140
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 144
    :cond_3
    const/4 v3, 0x0

    .line 145
    .local v3, "recordSize":I
    const/16 v6, 0xe

    aget-byte v6, v1, v6

    and-int/lit16 v3, v6, 0xff

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " recordSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " efid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    const-string/jumbo v7, " data="

    .line 152
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 154
    iget v6, v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    const/16 v7, 0x4f3a

    if-ne v6, v7, :cond_4

    .line 155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " recordSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " efid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->loge(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v6, v3, -0xe

    invoke-static {v6}, Lcom/mediatek/internal/telephony/uicc/CsimPhbStorageInfo;->setMaxNameLength(I)V

    .line 159
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method
