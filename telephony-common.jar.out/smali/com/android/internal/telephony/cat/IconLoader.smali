.class Lcom/android/internal/telephony/cat/IconLoader;
.super Landroid/os/Handler;
.source "IconLoader.java"


# static fields
.field private static final CLUT_ENTRY_SIZE:I = 0x3

.field private static final CLUT_LOCATION_OFFSET:I = 0x4

.field private static final EVENT_READ_CLUT_DONE:I = 0x3

.field private static final EVENT_READ_EF_IMG_RECOED_DONE:I = 0x1

.field private static final EVENT_READ_ICON_DONE:I = 0x2

.field private static final STATE_MULTI_ICONS:I = 0x2

.field private static final STATE_SINGLE_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Stk-IL"

.field private static sLoader:Lcom/android/internal/telephony/cat/IconLoader;

.field private static sSimCount:I

.field private static sThread:[Landroid/os/HandlerThread;


# instance fields
.field private mCurrentIcon:Landroid/graphics/Bitmap;

.field private mCurrentRecordIndex:I

.field private mEndMsg:Landroid/os/Message;

.field private mIconData:[B

.field private mIcons:[Landroid/graphics/Bitmap;

.field private mIconsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

.field private mRecordNumber:I

.field private mRecordNumbers:[I

.field private mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mSlotId:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 55
    sput-object v0, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 41
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 45
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 78
    iput p3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    .line 79
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method private static bitToBnW(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 312
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 313
    const/4 v0, -0x1

    return v0

    .line 315
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method static getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/IconLoader;
    .locals 5
    .param p0, "caller"    # Landroid/os/Handler;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 83
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    return-object v1

    .line 86
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    .line 88
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    new-array v1, v1, [Landroid/os/HandlerThread;

    sput-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ge v0, v1, :cond_1

    .line 90
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aput-object v4, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_1
    if-eqz p1, :cond_4

    .line 94
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, p2

    if-nez v1, :cond_2

    .line 95
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Cat Icon Loader"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, p2

    .line 96
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 98
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 99
    new-instance v1, Lcom/android/internal/telephony/cat/IconLoader;

    sget-object v2, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/cat/IconLoader;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    return-object v1

    .line 101
    :cond_3
    return-object v4

    .line 104
    :cond_4
    return-object v4
.end method

.method private static getMask(I)I
    .locals 1
    .param p0, "numOfBits"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 376
    .local v0, "mask":I
    packed-switch p0, :pswitch_data_0

    .line 402
    :goto_0
    return v0

    .line 378
    :pswitch_0
    const/4 v0, 0x1

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    const/4 v0, 0x3

    .line 382
    goto :goto_0

    .line 384
    :pswitch_2
    const/4 v0, 0x7

    .line 385
    goto :goto_0

    .line 387
    :pswitch_3
    const/16 v0, 0xf

    .line 388
    goto :goto_0

    .line 390
    :pswitch_4
    const/16 v0, 0x1f

    .line 391
    goto :goto_0

    .line 393
    :pswitch_5
    const/16 v0, 0x3f

    .line 394
    goto :goto_0

    .line 396
    :pswitch_6
    const/16 v0, 0x7f

    .line 397
    goto :goto_0

    .line 399
    :pswitch_7
    const/16 v0, 0xff

    .line 400
    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleImageDescriptor([B)Z
    .locals 3
    .param p1, "rawData"    # [B

    .prologue
    const/4 v2, 0x1

    .line 217
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "call handleImageDescriptor"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ImageDescriptor;->parse([BI)Lcom/android/internal/telephony/cat/ImageDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 219
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "fail to parse image raw data"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "success to parse image raw data"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return v2
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v11, 0x0

    .line 280
    const/4 v8, 0x1

    .local v8, "valueIndex":I
    aget-byte v11, p0, v11

    and-int/lit16 v10, v11, 0xff

    .line 281
    .local v10, "width":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    and-int/lit16 v3, v11, 0xff

    .line 282
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 284
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 286
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 287
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 288
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .line 289
    .end local v2    # "currentByte":B
    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 291
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 292
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 293
    .local v2, "currentByte":B
    const/4 v0, 0x7

    .line 295
    .end local v2    # "currentByte":B
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/cat/IconLoader;->bitToBnW(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 298
    :cond_0
    if-eq v6, v4, :cond_1

    .line 299
    const-string/jumbo v11, "IconLoader"

    const-string/jumbo v12, "parseToBnW; size error"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ[B)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z
    .param p3, "clut"    # [B

    .prologue
    .line 330
    const/16 v19, 0x0

    .line 331
    const/16 v16, 0x1

    .local v16, "valueIndex":I
    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 332
    .local v18, "width":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .local v17, "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v9, v0, 0xff

    .line 333
    .local v9, "height":I
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v19, p0, v17

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 334
    .local v4, "bitsPerImg":I
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    aget-byte v19, p0, v16

    move/from16 v0, v19

    and-int/lit16 v11, v0, 0xff

    .line 336
    .local v11, "numOfClutEntries":I
    if-eqz p2, :cond_0

    .line 337
    add-int/lit8 v19, v11, -0x1

    const/16 v20, 0x0

    aput-byte v20, p3, v19

    .line 340
    :cond_0
    mul-int v12, v18, v9

    .line 341
    .local v12, "numOfPixels":I
    new-array v15, v12, [I

    .line 344
    .local v15, "pixels":[I
    const/4 v13, 0x0

    .line 345
    .local v13, "pixelIndex":I
    rsub-int/lit8 v5, v4, 0x8

    .line 346
    .local v5, "bitsStartOffset":I
    move v2, v5

    .line 343
    .local v2, "bitIndex":I
    const/16 v19, 0x6

    .line 347
    const/16 v16, 0x7

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v19

    .line 348
    .local v8, "currentByte":B
    invoke-static {v4}, Lcom/android/internal/telephony/cat/IconLoader;->getMask(I)I

    move-result v10

    .line 349
    .local v10, "mask":I
    const/16 v19, 0x8

    rem-int v19, v19, v4

    if-nez v19, :cond_1

    const/4 v3, 0x1

    .local v3, "bitsOverlaps":Z
    move v14, v13

    .end local v13    # "pixelIndex":I
    .local v14, "pixelIndex":I
    move/from16 v17, v16

    .line 350
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :goto_0
    if-ge v14, v12, :cond_3

    .line 352
    if-gez v2, :cond_4

    .line 353
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    aget-byte v8, p0, v17

    .line 354
    if-eqz v3, :cond_2

    move v2, v5

    .line 356
    :goto_1
    shr-int v19, v8, v2

    and-int v6, v19, v10

    .line 357
    .local v6, "clutEntry":I
    mul-int/lit8 v7, v6, 0x3

    .line 358
    .local v7, "clutIndex":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "pixelIndex":I
    .restart local v13    # "pixelIndex":I
    aget-byte v19, p3, v7

    .line 359
    add-int/lit8 v20, v7, 0x1

    aget-byte v20, p3, v20

    add-int/lit8 v21, v7, 0x2

    aget-byte v21, p3, v21

    .line 358
    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    aput v19, v15, v14

    .line 360
    sub-int/2addr v2, v4

    move v14, v13

    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_0

    .line 349
    .end local v3    # "bitsOverlaps":Z
    .end local v6    # "clutEntry":I
    .end local v7    # "clutIndex":I
    .end local v14    # "pixelIndex":I
    .end local v17    # "valueIndex":I
    .restart local v13    # "pixelIndex":I
    .restart local v16    # "valueIndex":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "bitsOverlaps":Z
    move v14, v13

    .end local v13    # "pixelIndex":I
    .restart local v14    # "pixelIndex":I
    move/from16 v17, v16

    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    goto :goto_0

    .line 354
    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    :cond_2
    mul-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 364
    .end local v16    # "valueIndex":I
    .restart local v17    # "valueIndex":I
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 363
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v9, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    return-object v19

    :cond_4
    move/from16 v16, v17

    .end local v17    # "valueIndex":I
    .restart local v16    # "valueIndex":I
    goto :goto_1
.end method

.method private postIcon()V
    .locals 3

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    aput-object v2, v0, v1

    .line 263
    iget v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private readClut()V
    .locals 7

    .prologue
    const/4 v1, 0x3

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    aget-byte v0, v0, v1

    mul-int/lit8 v4, v0, 0x3

    .line 230
    .local v4, "length":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 231
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    .line 232
    iget-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    .line 233
    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    const/4 v6, 0x5

    aget-byte v3, v3, v6

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 228
    return-void
.end method

.method private readIconData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 250
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "call readIconData"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 252
    .local v5, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v1, v1, Lcom/android/internal/telephony/cat/ImageDescriptor;->mImageId:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v4, v3, Lcom/android/internal/telephony/cat/ImageDescriptor;->mLength:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    .line 249
    return-void
.end method

.method private readId()V
    .locals 3

    .prologue
    .line 238
    const-string/jumbo v1, "Stk-IL"

    const-string/jumbo v2, "call readId"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    if-gez v1, :cond_0

    .line 240
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 241
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 242
    return-void

    .line 244
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/IconLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    .line 237
    return-void
.end method

.method private startLoadingIcon(I)V
    .locals 3
    .param p1, "recordNumber"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "call startLoadingIcon"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    .line 133
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 134
    iput-object v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string/jumbo v0, "Stk-IL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIconsCache contains record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    .line 142
    return-void

    .line 146
    :cond_0
    const-string/jumbo v0, "Stk-IL"

    const-string/jumbo v1, "to load icon from EFimg"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readId()V

    .line 129
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 406
    iput-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSimFH:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 408
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 409
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 410
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    iget v2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mSlotId:I

    aput-object v3, v1, v2

    .line 413
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ge v0, v1, :cond_1

    .line 414
    sget-object v1, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 419
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/IconLoader;->sSimCount:I

    if-ne v0, v1, :cond_2

    .line 420
    sput-object v3, Lcom/android/internal/telephony/cat/IconLoader;->sThread:[Landroid/os/HandlerThread;

    .line 423
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    .line 424
    sput-object v3, Lcom/android/internal/telephony/cat/IconLoader;->sLoader:Lcom/android/internal/telephony/cat/IconLoader;

    .line 404
    return-void

    .line 413
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    const/4 v4, 0x0

    .line 156
    .local v4, "rawData":[B
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 151
    .end local v4    # "rawData":[B
    :goto_0
    return-void

    .line 158
    .restart local v4    # "rawData":[B
    :pswitch_0
    const-string/jumbo v5, "Stk-IL"

    const-string/jumbo v6, "load EFimg done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 160
    const-string/jumbo v5, "Stk-IL"

    const-string/jumbo v6, "msg.obj is null."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v4    # "rawData":[B
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Icon load failed"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto :goto_0

    .line 163
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "rawData":[B
    :cond_0
    :try_start_1
    const-string/jumbo v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "msg.obj is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 165
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 166
    .local v4, "rawData":[B
    const-string/jumbo v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "EFimg raw data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/IconLoader;->handleImageDescriptor([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readIconData()V

    goto :goto_0

    .line 170
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "Unable to parse image descriptor"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .local v4, "rawData":[B
    :pswitch_1
    const-string/jumbo v5, "Stk-IL"

    const-string/jumbo v6, "load icon done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 176
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 177
    .local v4, "rawData":[B
    const-string/jumbo v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icon raw data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v5, "Stk-IL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load icon CODING_SCHEME = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v7, v7, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_2

    .line 180
    array-length v5, v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/IconLoader;->parseToBnW([BI)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 181
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 183
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mId:Lcom/android/internal/telephony/cat/ImageDescriptor;

    iget v5, v5, Lcom/android/internal/telephony/cat/ImageDescriptor;->mCodingScheme:I

    const/16 v6, 0x21

    if-ne v5, v6, :cond_3

    .line 184
    iput-object v4, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->readClut()V

    goto/16 :goto_0

    .line 187
    :cond_3
    const-string/jumbo v5, "Stk-IL"

    const-string/jumbo v6, "else  /postIcon "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V

    goto/16 :goto_0

    .line 192
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .local v4, "rawData":[B
    :pswitch_2
    const-string/jumbo v5, "Stk-IL"

    const-string/jumbo v6, "load clut done"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 194
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 195
    .local v2, "clut":[B
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    iget-object v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconData:[B

    array-length v6, v6

    .line 196
    const/4 v7, 0x0

    .line 195
    invoke-static {v5, v6, v7, v2}, Lcom/android/internal/telephony/cat/IconLoader;->parseToRGB([BIZ[B)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    .line 197
    iget-object v5, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIconsCache:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/IconLoader;->postIcon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method loadIcon(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    if-nez p2, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    .line 120
    return-void
.end method

.method loadIcons([ILandroid/os/Message;)V
    .locals 2
    .param p1, "recordNumbers"    # [I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 108
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 108
    :cond_1
    if-eqz p2, :cond_0

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/cat/IconLoader;->mEndMsg:Landroid/os/Message;

    .line 113
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mIcons:[Landroid/graphics/Bitmap;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mRecordNumbers:[I

    .line 115
    iput v1, p0, Lcom/android/internal/telephony/cat/IconLoader;->mCurrentRecordIndex:I

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/cat/IconLoader;->mState:I

    .line 117
    aget v0, p1, v1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/IconLoader;->startLoadingIcon(I)V

    .line 107
    return-void
.end method
