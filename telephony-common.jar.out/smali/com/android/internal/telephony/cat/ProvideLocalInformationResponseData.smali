.class Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private language:[B

.field private mBatteryState:I

.field private mIsBatteryState:Z

.field private mIsDate:Z

.field private mIsLanguage:Z

.field private minute:I

.field private month:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "batteryState"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 333
    iput p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mBatteryState:I

    .line 334
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 335
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 331
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timezone"    # I

    .prologue
    const/4 v1, 0x0

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 311
    iput p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    .line 312
    iput p2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    .line 313
    iput p3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    .line 314
    iput p4, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    .line 315
    iput p5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    .line 316
    iput p6, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    .line 317
    iput p7, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 319
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 320
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 309
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "language"    # [B

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .line 326
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 328
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsBatteryState:Z

    .line 323
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 341
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    if-eqz v2, :cond_1

    .line 343
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 345
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 346
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 349
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 350
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 353
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    .end local v1    # "tag":I
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    if-eqz v2, :cond_2

    .line 357
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 359
    .restart local v1    # "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 360
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 362
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 364
    .end local v0    # "b":B
    .end local v1    # "tag":I
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsBatteryState:Z

    if-eqz v2, :cond_0

    .line 365
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BATTERY_STATE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 366
    .restart local v1    # "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 367
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 368
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mBatteryState:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
