.class public Lcom/mediatek/pq/PictureQuality;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/pq/PictureQuality$Hist;,
        Lcom/mediatek/pq/PictureQuality$Range;,
        Lcom/mediatek/pq/PictureQuality$GammaLut;
    }
.end annotation


# static fields
.field public static final CAPABILITY_MASK_COLOR:I = 0x1

.field public static final CAPABILITY_MASK_DC:I = 0x8

.field public static final CAPABILITY_MASK_GAMMA:I = 0x4

.field public static final CAPABILITY_MASK_OD:I = 0x10

.field public static final CAPABILITY_MASK_SHARPNESS:I = 0x2

.field public static final DCHIST_INFO_NUM:I = 0x14

.field private static final GAMMA_INDEX_PROPERTY_NAME:Ljava/lang/String; = "persist.sys.gamma.index"

.field public static final GAMMA_LUT_SIZE:I = 0x200

.field public static final MODE_CAMERA:I = 0x1

.field public static final MODE_MASK:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_VIDEO:I = 0x2

.field public static final PIC_MODE_EYE:I = 0x3

.field public static final PIC_MODE_IPHONE:I = 0x2

.field public static final PIC_MODE_STANDARD:I = 0x0

.field public static final PIC_MODE_USER_DEF:I = 0x5

.field public static final PIC_MODE_VIDEO:I = 0x4

.field public static final PIC_MODE_VIVID:I = 0x1

.field static sLibStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    .line 140
    :try_start_0
    const-string/jumbo v1, "JNI_PQ"

    const-string/jumbo v2, "loadLibrary"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v1, "jni_pq"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 142
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "JNI_PQ"

    const-string/jumbo v2, "UnsatisfiedLinkError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableBlueLight(Z)Z
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 422
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableBlueLight(Z)Z

    move-result v0

    return v0
.end method

.method public static enableColor(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 196
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColor(I)Z

    move-result v0

    return v0
.end method

.method public static enableColorEffect(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 224
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableColorEffect(I)Z

    move-result v0

    return v0
.end method

.method public static enableContentColor(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 201
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableContentColor(I)Z

    move-result v0

    return v0
.end method

.method public static enableDynamicContrast(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 213
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicContrast(I)Z

    move-result v0

    return v0
.end method

.method public static enableDynamicSharpness(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 218
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableDynamicSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static enableGamma(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 230
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableGamma(I)Z

    move-result v0

    return v0
.end method

.method public static enableISOAdaptiveSharpness(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 239
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableISOAdaptiveSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static enableOD(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 235
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableOD(I)Z

    move-result v0

    return v0
.end method

.method public static enablePQ(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 190
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnablePQ(I)Z

    move-result v0

    return v0
.end method

.method public static enableSharpness(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 207
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableSharpness(I)Z

    move-result v0

    return v0
.end method

.method public static enableUltraResolution(I)Z
    .locals 1
    .param p0, "isEnable"    # I

    .prologue
    .line 243
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeEnableUltraResolution(I)Z

    move-result v0

    return v0
.end method

.method public static getBlueLightStrength()I
    .locals 1

    .prologue
    .line 415
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetBlueLightStrength()I

    move-result v0

    return v0
.end method

.method public static getBlueLightStrengthRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 4

    .prologue
    .line 395
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 396
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    const/4 v1, 0x0

    const/16 v2, 0xff

    const/16 v3, 0x80

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/pq/PictureQuality$Range;->set(III)V

    .line 397
    return-object v0
.end method

.method public static getCapability()I
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetCapability()I

    move-result v0

    return v0
.end method

.method public static getColorEffectIndex()I
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndex()I

    move-result v0

    return v0
.end method

.method public static getColorEffectIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 343
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 344
    return-object v0
.end method

.method public static getContrastIndex()I
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 268
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 269
    return-object v0
.end method

.method public static getDynamicContrastHistogram([BII)Lcom/mediatek/pq/PictureQuality$Hist;
    .locals 1
    .param p0, "srcBuffer"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 182
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Hist;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Hist;-><init>()V

    .line 183
    .local v0, "outHist":Lcom/mediatek/pq/PictureQuality$Hist;
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V

    .line 184
    return-object v0
.end method

.method public static getDynamicContrastIndex()I
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndex()I

    move-result v0

    return v0
.end method

.method public static getDynamicContrastIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 328
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 329
    return-object v0
.end method

.method public static getGammaIndex()I
    .locals 2

    .prologue
    .line 386
    const-string/jumbo v0, "persist.sys.gamma.index"

    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/pq/PictureQuality$Range;->defaultValue:I

    .line 385
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGammaIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 365
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 366
    return-object v0
.end method

.method public static getLibStatus()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/mediatek/pq/PictureQuality;->sLibStatus:Z

    return v0
.end method

.method public static getPicBrightnessIndex()I
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndex()I

    move-result v0

    return v0
.end method

.method public static getPicBrightnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 298
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 299
    return-object v0
.end method

.method public static getPictureMode()I
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetPictureMode()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndex()I
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndex()I

    move-result v0

    return v0
.end method

.method public static getSaturationIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 282
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 283
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 284
    return-object v0
.end method

.method public static getSharpnessIndex()I
    .locals 1

    .prologue
    .line 318
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndex()I

    move-result v0

    return v0
.end method

.method public static getSharpnessIndexRange()Lcom/mediatek/pq/PictureQuality$Range;
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/mediatek/pq/PictureQuality$Range;

    invoke-direct {v0}, Lcom/mediatek/pq/PictureQuality$Range;-><init>()V

    .line 313
    .local v0, "r":Lcom/mediatek/pq/PictureQuality$Range;
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V

    .line 314
    return-object v0
.end method

.method public static isBlueLightEnabled()Z
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeIsBlueLightEnabled()Z

    move-result v0

    return v0
.end method

.method private static native nativeEnableBlueLight(Z)Z
.end method

.method private static native nativeEnableColor(I)Z
.end method

.method private static native nativeEnableColorEffect(I)Z
.end method

.method private static native nativeEnableContentColor(I)Z
.end method

.method private static native nativeEnableDynamicContrast(I)Z
.end method

.method private static native nativeEnableDynamicSharpness(I)Z
.end method

.method private static native nativeEnableGamma(I)Z
.end method

.method private static native nativeEnableISOAdaptiveSharpness(I)Z
.end method

.method private static native nativeEnableOD(I)Z
.end method

.method private static native nativeEnablePQ(I)Z
.end method

.method private static native nativeEnableSharpness(I)Z
.end method

.method private static native nativeEnableUltraResolution(I)Z
.end method

.method private static native nativeGetBlueLightStrength()I
.end method

.method private static native nativeGetCapability()I
.end method

.method private static native nativeGetColorEffectIndex()I
.end method

.method private static native nativeGetColorEffectIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetContrastIndex()I
.end method

.method private static native nativeGetContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetDynamicContrastHistogram([BIILcom/mediatek/pq/PictureQuality$Hist;)V
.end method

.method private static native nativeGetDynamicContrastIndex()I
.end method

.method private static native nativeGetDynamicContrastIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetGammaIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPicBrightnessIndex()I
.end method

.method private static native nativeGetPicBrightnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetPictureMode()I
.end method

.method private static native nativeGetSaturationIndex()I
.end method

.method private static native nativeGetSaturationIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeGetSharpnessIndex()I
.end method

.method private static native nativeGetSharpnessIndexRange(Lcom/mediatek/pq/PictureQuality$Range;)V
.end method

.method private static native nativeIsBlueLightEnabled()Z
.end method

.method private static native nativeSetBlueLightStrength(I)Z
.end method

.method private static native nativeSetCameraPreviewMode()V
.end method

.method private static native nativeSetColorEffectIndex(I)V
.end method

.method private static native nativeSetColorRegion(IIIII)Z
.end method

.method private static native nativeSetContrastIndex(I)V
.end method

.method private static native nativeSetDynamicContrastIndex(I)V
.end method

.method private static native nativeSetGalleryNormalMode()V
.end method

.method private static native nativeSetGammaIndex(I)V
.end method

.method private static native nativeSetPicBrightnessIndex(I)V
.end method

.method private static native nativeSetPictureMode(I)Z
.end method

.method private static native nativeSetSaturationIndex(I)V
.end method

.method private static native nativeSetSharpnessIndex(I)V
.end method

.method private static native nativeSetVideoPlaybackMode()V
.end method

.method public static setBlueLightStrength(I)Z
    .locals 1
    .param p0, "strength"    # I

    .prologue
    .line 406
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetBlueLightStrength(I)Z

    move-result v0

    return v0
.end method

.method public static setColorEffectIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 352
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorEffectIndex(I)V

    .line 351
    return-void
.end method

.method public static setColorRegion(IIIII)Z
    .locals 1
    .param p0, "isEnable"    # I
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 262
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/pq/PictureQuality;->nativeSetColorRegion(IIIII)Z

    move-result v0

    return v0
.end method

.method public static setContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 277
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetContrastIndex(I)V

    .line 276
    return-void
.end method

.method public static setDynamicContrastIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 337
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetDynamicContrastIndex(I)V

    .line 336
    return-void
.end method

.method public static setGammaIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 375
    const-string/jumbo v0, "persist.sys.gamma.index"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetGammaIndex(I)V

    .line 374
    return-void
.end method

.method public static setMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 166
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetCameraPreviewMode()V

    .line 178
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 170
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetVideoPlaybackMode()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->nativeSetGalleryNormalMode()V

    goto :goto_0
.end method

.method public static setPicBrightnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 307
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPicBrightnessIndex(I)V

    .line 306
    return-void
.end method

.method public static setPictureMode(I)Z
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 255
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetPictureMode(I)Z

    move-result v0

    return v0
.end method

.method public static setSaturationIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 292
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSaturationIndex(I)V

    .line 291
    return-void
.end method

.method public static setSharpnessIndex(I)V
    .locals 0
    .param p0, "index"    # I

    .prologue
    .line 322
    invoke-static {p0}, Lcom/mediatek/pq/PictureQuality;->nativeSetSharpnessIndex(I)V

    .line 321
    return-void
.end method
