.class Lcom/android/internal/telephony/cat/SendDataResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mTxBufferSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 315
    iput p1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    .line 313
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/16 v2, 0xff

    .line 320
    if-nez p1, :cond_0

    .line 321
    return-void

    .line 326
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 327
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    if-lt v1, v2, :cond_1

    .line 330
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 319
    :goto_0
    return-void

    .line 332
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/cat/SendDataResponseData;->mTxBufferSize:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
