.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field mBufferSize:I

.field mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;I)V
    .locals 3
    .param p1, "channelStatus"    # Lcom/android/internal/telephony/cat/ChannelStatus;
    .param p2, "bearerDesc"    # Lcom/android/internal/telephony/cat/BearerDesc;
    .param p3, "bufferSize"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 200
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 201
    iput v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenChannelResponseData-constructor: channelStatus cid/status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    iget v2, p1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    const-string/jumbo v2, "/"

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    iget v2, p1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    if-eqz p2, :cond_1

    .line 212
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenChannelResponseData-constructor: bearerDesc bearerType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    iget v2, p2, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_1
    if-lez p3, :cond_2

    .line 218
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenChannelResponseData-constructor: buffer size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_2
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 225
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 226
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    .line 203
    return-void

    .line 209
    :cond_0
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "OpenChannelResponseData-constructor: channelStatus is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "OpenChannelResponseData-constructor: bearerDesc is null"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OpenChannelResponseData-constructor: bearerDesc is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 8
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v2, 0x80

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OpenChannelResponseData-format: buf is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-nez v1, :cond_1

    .line 237
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OpenChannelResponseData-format: mBearerDesc is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    if-eq v1, v7, :cond_2

    .line 242
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OpenChannelResponseData-format: bearer type is not gprs"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 248
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    if-lez v1, :cond_6

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    if-eqz v1, :cond_3

    .line 250
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v4, "OpenChannelResponseData-format: Write channel status into TR"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 252
    .local v0, "tag":I
    const-string/jumbo v1, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 254
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v4, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 256
    const-string/jumbo v4, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OpenChannelResponseData-format: channel id & isActivated: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v6, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    or-int/2addr v1, v6

    .line 256
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    if-eqz v4, :cond_5

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 259
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: channel status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v3, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mChannelStatus:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 264
    .end local v0    # "tag":I
    :cond_3
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Write bearer description into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 266
    .restart local v0    # "tag":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 268
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OpenChannelResponseData-format: length: 7"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 270
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: bearer type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    .line 270
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->bearerType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: precedence: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    .line 273
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 276
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: delay: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 276
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 279
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: reliability: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 279
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 282
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: peak: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 282
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 285
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: mean: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 285
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    const-string/jumbo v2, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: pdp type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 288
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    check-cast v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v1, v1, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 292
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Write buffer size into TR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 294
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "OpenChannelResponseData-format: length: 2"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: length(hi-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 299
    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v3, v3, 0x8

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 301
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OpenChannelResponseData-format: length(low-byte): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 302
    iget v3, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v3, v3, 0xff

    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->mBufferSize:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    .end local v0    # "tag":I
    :goto_2
    return-void

    .restart local v0    # "tag":I
    :cond_4
    move v1, v3

    .line 257
    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 258
    goto/16 :goto_1

    .line 305
    .end local v0    # "tag":I
    :cond_6
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Miss ChannelStatus, BearerDesc or BufferSize"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
