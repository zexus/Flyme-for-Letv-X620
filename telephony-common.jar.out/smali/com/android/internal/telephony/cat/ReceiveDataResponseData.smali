.class Lcom/android/internal/telephony/cat/ReceiveDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mData:[B

.field mRemainingCount:I


# direct methods
.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "remaining"    # I

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 339
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 343
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    .line 344
    iput p2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    .line 341
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/16 v2, 0x80

    .line 349
    if-nez p1, :cond_0

    .line 350
    return-void

    .line 355
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 356
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    if-eqz v1, :cond_2

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    if-lt v1, v2, :cond_1

    .line 360
    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mData:[B

    array-length v2, v2

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 369
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 370
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 373
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ReceiveDataResponseData: length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    if-lt v1, v4, :cond_3

    .line 376
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    :goto_1
    return-void

    .line 366
    :cond_2
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 378
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;->mRemainingCount:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method
