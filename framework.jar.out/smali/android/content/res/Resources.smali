.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$ThemeKey;
    }
.end annotation


# static fields
.field private static final CACHE_NOT_THEMED:Ljava/lang/String; = ""

.field private static final CACHE_NULL_THEME:Ljava/lang/String; = "null_theme"

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_RESOURCE_ID:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field private static final NATIVE_CONFIG_DENSITY:I

.field private static final NATIVE_CONFIG_SCREEN_SIZE:I

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final TRACE_FOR_MISS_PRELOAD:Z

.field private static final TRACE_FOR_PRELOAD:Z

.field static mSystem:Landroid/content/res/Resources;

.field private static final sBoostDrawableCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLogId:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field public mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTmpValue:Landroid/util/TypedValue;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    const/16 v0, 0x2000

    .line 123
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    sput v0, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    .line 127
    const/16 v0, 0x1000

    .line 126
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    sput v0, Landroid/content/res/Resources;->NATIVE_CONFIG_DENSITY:I

    .line 129
    const/16 v0, 0x400

    .line 128
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    sput v0, Landroid/content/res/Resources;->NATIVE_CONFIG_SCREEN_SIZE:I

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 140
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 139
    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 142
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 146
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 145
    sput-object v0, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 161
    sput v2, Landroid/content/res/Resources;->sLogId:I

    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/LongSparseArray;

    sput-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 192
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v1, v0, v2

    .line 193
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 114
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 166
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 167
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 169
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 168
    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 171
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 170
    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 173
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 172
    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 179
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 183
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 185
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 188
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3276
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 3280
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3281
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 3282
    invoke-virtual {p0, v3, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3283
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 3275
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 284
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 166
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 167
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 169
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 168
    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 171
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 170
    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 173
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    .line 172
    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 175
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 179
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 180
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 183
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 185
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 188
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 300
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 301
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 302
    if-eqz p4, :cond_0

    .line 303
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 305
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 306
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 299
    return-void
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 2427
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2431
    .local v2, "separator":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2432
    move-object v0, p0

    .line 2433
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 2439
    .local v1, "remainder":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2435
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2436
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 424
    packed-switch p0, :pswitch_data_0

    .line 430
    const v0, 0x1000004

    return v0

    .line 425
    :pswitch_0
    const v0, 0x1000005

    return v0

    .line 426
    :pswitch_1
    const v0, 0x1000006

    return v0

    .line 427
    :pswitch_2
    const v0, 0x1000007

    return v0

    .line 428
    :pswitch_3
    const v0, 0x1000008

    return v0

    .line 429
    :pswitch_4
    const v0, 0x1000009

    return v0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 16
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2896
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v7

    .line 2897
    .local v7, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v7, :cond_0

    .line 2898
    return-void

    .line 2901
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_5

    .line 2902
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v10

    .line 2904
    .local v10, "changingConfigs":I
    const-string/jumbo v3, "ro.mtk_smartbook_support"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2905
    move-object/from16 v0, p8

    instance-of v3, v0, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_1

    .line 2908
    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 2912
    .local v14, "resName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2913
    move-object/from16 v0, p1

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2912
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2914
    const-string/jumbo v5, " ("

    .line 2912
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2914
    const-string/jumbo v5, ") is VectorDrawable,skip preloading it for SMB!!"

    .line 2912
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    return-void

    .line 2909
    .end local v14    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2910
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v14, "?"

    .restart local v14    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 2919
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v14    # "resName":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    .line 2920
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v4, "drawable"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v3, v4}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2921
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2895
    .end local v10    # "changingConfigs":I
    :cond_2
    :goto_1
    return-void

    .line 2925
    .restart local v10    # "changingConfigs":I
    :cond_3
    sget v3, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    const-string/jumbo v5, "drawable"

    .line 2924
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3, v4, v5}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2926
    sget v3, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    and-int/2addr v3, v10

    if-nez v3, :cond_4

    .line 2929
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2930
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 2933
    :cond_4
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 2938
    .end local v10    # "changingConfigs":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v15

    move-object/from16 v3, p3

    move-wide/from16 v4, p6

    move-object/from16 v6, p4

    move/from16 v8, p5

    .line 2939
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 2942
    if-nez p2, :cond_7

    .line 2943
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v9, v3, v4

    .line 2944
    .local v9, "boostKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/content/res/Resources;->isBoostApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2946
    sget-object v3, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 2947
    .local v2, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-nez v2, :cond_6

    .line 2948
    new-instance v2, Landroid/util/LongSparseArray;

    .end local v2    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 2949
    .restart local v2    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    sget-object v3, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2950
    sget-object v3, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "resKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2951
    .local v12, "resKey":Ljava/lang/String;
    const-string/jumbo v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ResourceKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2938
    .end local v2    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v9    # "boostKey":Ljava/lang/String;
    .end local v12    # "resKey":Ljava/lang/String;
    .end local v13    # "resKey$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v15

    throw v3

    .line 2953
    .restart local v2    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .restart local v9    # "boostKey":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2954
    const-string/jumbo v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CacheKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Resource:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v9    # "boostKey":Ljava/lang/String;
    :cond_7
    monitor-exit v15

    goto/16 :goto_1
.end method

.method private calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2395
    const v0, 0xfffffff

    .line 2396
    .local v0, "configChanges":I
    if-eqz p1, :cond_2

    .line 2397
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2398
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 2399
    .local v1, "density":I
    if-nez v1, :cond_0

    .line 2400
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v2, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 2403
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1, v3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 2405
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_1

    .line 2406
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2407
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2409
    :cond_1
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 2410
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    .line 2412
    .end local v1    # "density":I
    :cond_2
    return v0
.end method

.method private clearBoostDrawableCacheLocked(Landroid/util/LongSparseArray;I)V
    .locals 5
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v4, 0x0

    .line 2366
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2367
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2368
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2369
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 2371
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v3

    .line 2370
    invoke-static {p2, v3}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2378
    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 2367
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2361
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    return-void
.end method

.method private clearCache(Z)V
    .locals 4
    .param p1, "themeChange"    # Z

    .prologue
    .line 3291
    if-eqz p1, :cond_1

    .line 3294
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3295
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3297
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    aget-object v1, v1, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3299
    :cond_0
    const/4 p1, 0x0

    .line 3290
    .end local v0    # "i":I
    .end local p1    # "themeChange":Z
    :cond_1
    return-void
.end method

.method private getBoostCachedDrawable(Landroid/util/ArrayMap;J)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v6, 0x0

    .line 2965
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2966
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 2967
    .local v2, "boostKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->isBoostApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2968
    sget-object v3, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 2969
    .local v0, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v0, :cond_0

    .line 2970
    invoke-direct {p0, v0, p2, p3}, Landroid/content/res/Resources;->getBoostCachedDrawableLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2971
    .local v1, "boostDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    monitor-exit v4

    .line 2972
    return-object v1

    .end local v0    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v1    # "boostDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    monitor-exit v4

    .line 2978
    return-object v6

    .line 2965
    .end local v2    # "boostKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getBoostCachedDrawableLocked(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p2, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;J)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "drawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v1, 0x0

    .line 2984
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2985
    .local v0, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2986
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 2988
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2990
    return-object v1
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 415
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 316
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 318
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 319
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 320
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 323
    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-direct {v1}, Landroid/content/res/Resources;->setThemeResource()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 327
    return-object v0

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isBoostApp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2349
    const-string/jumbo v2, "android.content.res.Resources"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2350
    return v3

    .line 2352
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v0, v3

    .line 2353
    .local v0, "applist":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 2354
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2355
    return v6

    .line 2353
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2357
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const-wide/32 v8, 0x8000

    .line 3138
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 3139
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 3140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t convert to color state list: type=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/util/TypedValue;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3139
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3143
    :cond_0
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3162
    .local v2, "file":Ljava/lang/String;
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3163
    const-string/jumbo v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3166
    :try_start_0
    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string/jumbo v6, "colorstatelist"

    .line 3165
    invoke-virtual {p0, v2, p2, v5, v6}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 3167
    .local v4, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v4, p3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 3168
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3183
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3185
    return-object v0

    .line 3169
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v4    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 3170
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3171
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    .line 3172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from color state list resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3173
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 3172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3171
    invoke-direct {v3, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3174
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3175
    throw v3

    .line 3178
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3179
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    .line 3180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from drawable resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3181
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 3180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3181
    const-string/jumbo v7, ": .xml extension required"

    .line 3180
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3179
    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2998
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v8, :cond_0

    .line 2999
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Resource \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\" ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3000
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 2999
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3000
    const-string/jumbo v10, ") is not a Drawable (color or path): "

    .line 2999
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3003
    :cond_0
    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3022
    .local v3, "file":Ljava/lang/String;
    const-wide/32 v8, 0x8000

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3024
    :try_start_0
    const-string/jumbo v8, ".xml"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3026
    iget v8, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string/jumbo v9, "drawable"

    .line 3025
    invoke-virtual {p0, v3, p2, v8, v9}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 3027
    .local v7, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v7, p3}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3028
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3066
    .end local v7    # "rp":Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_0
    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3068
    return-object v1

    .line 3030
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v4, 0x0

    .line 3033
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 3034
    .local v5, "isIconNeedClip":Z
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-eqz v8, :cond_3

    .line 3035
    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget-object v9, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, p0, p2, v3, v9}, Landroid/content/res/theme/LeResourceHelper;->getReplaceIs(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v4

    .line 3036
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_3

    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget v8, v8, Landroid/content/res/theme/LeResourceHelper;->mIconId:I

    if-ne v8, p2, :cond_3

    .line 3037
    const/4 v5, 0x1

    .line 3040
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_3
    if-nez v4, :cond_4

    .line 3042
    iget-object v8, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    .line 3043
    const/4 v10, 0x2

    .line 3042
    invoke-virtual {v8, v9, v3, v10}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 3045
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, p1, v4, v3, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3046
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 3047
    iget-object v8, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p0, v1, v8}, Landroid/content/res/theme/LeIconCustomHelper;->getClipIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/util/DisplayMetrics;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3048
    .local v0, "clipDr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 3049
    return-object v0

    .line 3052
    .end local v0    # "clipDr":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3054
    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget-object v8, v8, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    if-eqz v8, :cond_1

    .line 3055
    iget-object v8, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget-object v8, v8, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    invoke-virtual {v8}, Landroid/content/res/theme/LeThemeResource;->clean()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3059
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "isIconNeedClip":Z
    :catch_0
    move-exception v2

    .line 3060
    .local v2, "e":Ljava/lang/Exception;
    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3061
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    .line 3062
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from drawable resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3061
    invoke-direct {v6, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3063
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v2}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3064
    throw v6
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 3269
    if-nez p1, :cond_0

    .line 3270
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 3272
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static resourceHasPackage(I)Z
    .locals 2
    .param p0, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .line 2539
    ushr-int/lit8 v1, p0, 0x18

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 218
    const v2, 0x1030005

    .line 219
    const v3, 0x103006b

    .line 220
    const v4, 0x1030128

    .line 221
    const v5, 0x103013f

    move v0, p0

    move v1, p1

    .line 217
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 227
    if-eqz p0, :cond_0

    .line 228
    return p0

    .line 230
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    .line 231
    return p2

    .line 233
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    .line 234
    return p3

    .line 236
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    .line 237
    return p4

    .line 239
    :cond_3
    return p5
.end method

.method private setThemeResource()V
    .locals 2

    .prologue
    .line 3317
    iget-object v0, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-nez v0, :cond_0

    .line 3318
    new-instance v0, Landroid/content/res/theme/LeResourceHelper;

    sget-object v1, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Landroid/content/res/theme/LeResourceHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    .line 3319
    iget-object v0, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/res/theme/LeResourceHelper;->setThemeResource(Ljava/lang/String;)V

    .line 3316
    :cond_0
    return-void
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 435
    packed-switch p0, :pswitch_data_0

    .line 441
    const-string/jumbo v0, "other"

    return-object v0

    .line 436
    :pswitch_0
    const-string/jumbo v0, "zero"

    return-object v0

    .line 437
    :pswitch_1
    const-string/jumbo v0, "one"

    return-object v0

    .line 438
    :pswitch_2
    const-string/jumbo v0, "two"

    return-object v0

    .line 439
    :pswitch_3
    const-string/jumbo v0, "few"

    return-object v0

    .line 440
    :pswitch_4
    const-string/jumbo v0, "many"

    return-object v0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 2450
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 2451
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2449
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2785
    const v2, -0x40001001    # -1.9995116f

    and-int/2addr v2, p1

    .line 2786
    not-int v3, p2

    .line 2785
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2789
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2795
    .local v1, "resName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2796
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 2795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2797
    const-string/jumbo v4, " ("

    .line 2795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2797
    const-string/jumbo v4, ") that varies with configuration!!"

    .line 2795
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    return v5

    .line 2790
    .end local v1    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2791
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v1, "?"

    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 2811
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 2766
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 2767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2768
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 2765
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 2729
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 2731
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 2732
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2733
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 2734
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 2735
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 2736
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 2738
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 2728
    return-void

    .line 2729
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1383
    const-string/jumbo v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 2720
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1248
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1249
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1250
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1253
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1254
    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 1255
    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_2

    .line 1256
    iget v4, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :goto_0
    monitor-exit v3

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 1258
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1260
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1259
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1260
    const-string/jumbo v4, " is not valid"

    .line 1259
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1258
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1093
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1122
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1123
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 1124
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1126
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1127
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    .line 1128
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 1129
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1130
    iget v2, v1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return v2

    .line 1131
    :cond_1
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 1132
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1134
    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1134
    const-string/jumbo v5, " is not valid"

    .line 1133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1121
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1136
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1139
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1140
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1141
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_3

    .line 1142
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit v3

    .line 1146
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    return v2

    .line 1140
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1169
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1170
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1171
    const-string/jumbo v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ColorStateList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    const-string/jumbo v3, "Resources.getColorStateList(int, Theme) or "

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1174
    const-string/jumbo v3, "Context.getColorStateList(int)."

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1174
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 1171
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1208
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1209
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 1210
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1214
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1217
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1218
    .local v0, "res":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1219
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 1220
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v3

    .line 1224
    return-object v0

    .line 1212
    .end local v0    # "res":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1207
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1218
    .restart local v0    # "res":Landroid/content/res/ColorStateList;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 737
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 738
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 739
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 741
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 742
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 743
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 745
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 747
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 747
    const-string/jumbo v4, " is not valid"

    .line 746
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 745
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 777
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 778
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 779
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 780
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 782
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 783
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 785
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 784
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 787
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 789
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 788
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 789
    const-string/jumbo v4, " is not valid"

    .line 788
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 787
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 777
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 821
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 822
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 823
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 825
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 826
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 828
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 827
    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 830
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 832
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 831
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 832
    const-string/jumbo v4, " is not valid"

    .line 831
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 830
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 2466
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 911
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const-string/jumbo v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has unresolved theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 913
    const-string/jumbo v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    .line 912
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 914
    const-string/jumbo v3, "Context.getDrawable(int)."

    .line 912
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 914
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    .line 912
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 942
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 943
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 944
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 945
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 949
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 951
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 952
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 953
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 954
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v3

    .line 957
    return-object v0

    .line 947
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 942
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 952
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1015
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1017
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_2

    .line 1018
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1022
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 1031
    iget v2, v1, Landroid/util/TypedValue;->density:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->density:I

    const v4, 0xffff

    if-eq v2, v4, :cond_0

    .line 1032
    iget v2, v1, Landroid/util/TypedValue;->density:I

    if-ne v2, p2, :cond_3

    .line 1033
    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/util/TypedValue;->density:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v3

    .line 1040
    invoke-virtual {p0, v1, p1, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1041
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1042
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1

    .line 1043
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v3

    .line 1046
    return-object v0

    .line 1020
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1015
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1035
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_3
    :try_start_3
    iget v2, v1, Landroid/util/TypedValue;->density:I

    iget-object v4, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v2, v4

    div-int/2addr v2, p2

    iput v2, v1, Landroid/util/TypedValue;->density:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1041
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getFloat(I)F
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 1312
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1313
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1314
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1317
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1318
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 1319
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1321
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1322
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1322
    const-string/jumbo v4, " is not valid"

    .line 1321
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 860
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 862
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 863
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 865
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 866
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 867
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 869
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 871
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 871
    const-string/jumbo v4, " is not valid"

    .line 870
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 2522
    if-nez p1, :cond_0

    .line 2523
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2526
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2527
    :catch_0
    move-exception v0

    .line 2530
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getIntArray(I)[I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v0

    .line 671
    .local v0, "res":[I
    if-eqz v0, :cond_0

    .line 672
    return-object v0

    .line 674
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Int array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 675
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInteger(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1282
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1283
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1284
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1285
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1287
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1288
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 1289
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 1290
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1292
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1294
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1294
    const-string/jumbo v4, " is not valid"

    .line 1293
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1353
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1065
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    .line 1067
    .local v2, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    :goto_0
    return-object v2

    .line 1069
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v1

    .line 400
    .local v1, "rule":Llibcore/icu/NativePluralRules;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 401
    invoke-virtual {v1, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v3

    .line 400
    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 402
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 403
    return-object v0

    .line 405
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const v3, 0x1000004

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_1

    .line 407
    return-object v0

    .line 409
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Plural resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 410
    const-string/jumbo v4, " quantity="

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    const-string/jumbo v4, " item="

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    invoke-virtual {v1, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2614
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 2615
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2616
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2617
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2616
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2557
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 2558
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2559
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2560
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2576
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2577
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2578
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2579
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2595
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 2596
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 2597
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2598
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 468
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 469
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 471
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 646
    return-object v0

    .line 648
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 649
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v2, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    invoke-virtual {v2, p0, p1}, Landroid/content/res/theme/LeResourceHelper;->getReplaceText(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    .local v0, "mapRes":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 358
    return-object v0

    .line 363
    .end local v0    # "mapRes":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 364
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 365
    return-object v1

    .line 367
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "String resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 595
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 596
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 595
    :cond_0
    const/4 v0, 0x0

    .local v0, "res":Ljava/lang/CharSequence;
    goto :goto_0

    .end local v0    # "res":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    .line 596
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 617
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 618
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 619
    return-object v0

    .line 621
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Text array resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 622
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1581
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 1582
    return-void

    .line 1584
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1585
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1584
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1638
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1639
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 1640
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1641
    return-void

    .line 1643
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 1610
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 1611
    return-void

    .line 1613
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1414
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3082
    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    iget v3, p1, Landroid/util/TypedValue;->data:I

    int-to-long v8, v3

    or-long v4, v6, v8

    .line 3087
    .local v4, "key":J
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v3, v6, :cond_2

    .line 3088
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_2

    .line 3090
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 3091
    .local v2, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_0

    .line 3092
    invoke-virtual {v2}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    return-object v3

    .line 3095
    :cond_0
    iget v3, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 3097
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_1

    .line 3098
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    .line 3099
    const-string/jumbo v7, "color"

    .line 3098
    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3100
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3104
    :cond_1
    return-object v1

    .line 3107
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_2
    iget-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 3108
    .local v0, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ColorStateList;>;"
    invoke-virtual {v0, v4, v5, p3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 3109
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_3

    .line 3110
    return-object v1

    .line 3114
    :cond_3
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 3115
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_4

    .line 3116
    invoke-virtual {v2, p0, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 3119
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_4
    if-nez v1, :cond_5

    .line 3120
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 3123
    :cond_5
    if-eqz v1, :cond_6

    .line 3124
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_7

    .line 3125
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    .line 3126
    const-string/jumbo v7, "color"

    .line 3125
    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3127
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3134
    :cond_6
    :goto_0
    return-object v1

    .line 3130
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, v4, v5, p3, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2829
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 2830
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 2831
    const/4 v6, 0x1

    .line 2832
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 2833
    .local v7, "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    int-to-long v10, v4

    .line 2842
    .local v10, "key":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v4, :cond_2

    .line 2843
    move-object/from16 v0, p3

    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 2844
    .local v14, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_1

    .line 2845
    return-object v14

    .line 2835
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v6, 0x0

    .line 2836
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 2837
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    move-object/from16 v0, p1

    iget v8, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v8

    move-wide/from16 v16, v0

    or-long v10, v4, v16

    .restart local v10    # "key":J
    goto :goto_0

    .line 2848
    .restart local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-object v4, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Landroid/content/res/Resources;->getBoostCachedDrawable(Landroid/util/ArrayMap;J)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 2849
    .local v13, "boostDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_2

    .line 2850
    const-string/jumbo v4, "Resources"

    const-string/jumbo v5, "Using Boost"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    return-object v13

    .line 2859
    .end local v13    # "boostDrawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v6, :cond_5

    .line 2860
    sget-object v4, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2866
    .local v15, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    if-eqz v15, :cond_6

    .line 2867
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 2877
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v9

    .line 2878
    :goto_3
    if-eqz v9, :cond_3

    if-eqz p3, :cond_3

    .line 2879
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 2880
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2881
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 2886
    :cond_3
    if-eqz v12, :cond_4

    .line 2887
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 2888
    invoke-direct/range {v4 .. v12}, Landroid/content/res/Resources;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    .line 2891
    :cond_4
    return-object v12

    .line 2862
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    sget-object v4, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/Drawable$ConstantState;

    .restart local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1

    .line 2868
    :cond_6
    if-eqz v6, :cond_7

    .line 2869
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 2871
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/content/res/Resources;->loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 2877
    :cond_8
    const/4 v9, 0x0

    .local v9, "canApplyTheme":Z
    goto :goto_3
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3196
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3197
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 3198
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 3199
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 3201
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3202
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 3203
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3204
    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 3203
    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 3206
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 3207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3208
    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 3207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3208
    const-string/jumbo v4, " is not valid"

    .line 3207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3206
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3214
    if-eqz p2, :cond_5

    .line 3217
    :try_start_0
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3219
    :try_start_1
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v7

    .line 3220
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3221
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v7, v7, v2

    if-ne v7, p2, :cond_0

    .line 3224
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    .line 3220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3230
    :cond_1
    :try_start_3
    iget-object v7, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v7, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 3232
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_4

    .line 3233
    iget v7, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v7, 0x1

    .line 3234
    .local v5, "pos":I
    if-lt v5, v3, :cond_2

    const/4 v5, 0x0

    .line 3235
    :cond_2
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 3236
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v7, v5

    .line 3237
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_3

    .line 3238
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 3240
    :cond_3
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v7, v5

    .line 3241
    iget-object v7, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v7, v5

    .line 3244
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    :try_start_4
    monitor-exit v8

    return-object v7

    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v5    # "pos":I
    :cond_4
    monitor-exit v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3256
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_5
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    .line 3257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3258
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 3257
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3256
    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3217
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 3247
    :catch_0
    move-exception v1

    .line 3248
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    .line 3249
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "File "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from xml type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resource ID #0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3250
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 3249
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3248
    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 3251
    .local v6, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v6, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3252
    throw v6
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 2172
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 2188
    array-length v7, p2

    .line 2189
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    .line 2195
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    .line 2196
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 2197
    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v4, p2

    .line 2196
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    .line 2199
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 2201
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 699
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 700
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 701
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 702
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 701
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 706
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 707
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 709
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1440
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1441
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 1442
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    monitor-exit v3

    .line 1447
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 1448
    .local v0, "res":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1449
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 1450
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v3

    .line 1453
    return-object v0

    .line 1444
    .end local v0    # "res":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1439
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1448
    .restart local v0    # "res":Ljava/io/InputStream;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 7
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1477
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1480
    iget-object v3, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-eqz v3, :cond_0

    .line 1481
    iget-object v3, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, p0, p1, v4, v5}, Landroid/content/res/theme/LeResourceHelper;->getReplaceIs(Landroid/content/res/Resources;ILjava/lang/String;Landroid/util/DisplayMetrics;)Ljava/io/InputStream;

    move-result-object v1

    .line 1482
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1483
    return-object v1

    .line 1489
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1490
    const/4 v6, 0x2

    .line 1489
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1493
    const-string/jumbo v4, " from drawable resource ID #0x"

    .line 1492
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1493
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1492
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1495
    throw v2
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1529
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1530
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1531
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_1

    .line 1532
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1536
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1539
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 1540
    iget v4, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1539
    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 1549
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1550
    :try_start_2
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 1551
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit v4

    .line 1539
    return-object v3

    .line 1534
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1529
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1549
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1541
    :catch_0
    move-exception v0

    .line 1542
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    .line 1543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1544
    const-string/jumbo v4, " from drawable resource ID #0x"

    .line 1543
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1545
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 1543
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1542
    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1547
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1548
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_2
    move-exception v3

    .line 1549
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1550
    :try_start_5
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_2

    .line 1551
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    monitor-exit v4

    .line 1548
    throw v3

    .line 1549
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2676
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    .line 2675
    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2678
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2680
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2681
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2682
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2683
    const-string/jumbo v6, "> requires an android:name attribute at "

    .line 2682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2684
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2682
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2687
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2689
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 2690
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 2691
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2692
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2713
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2674
    return-void

    .line 2693
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 2694
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 2695
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    .line 2696
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 2697
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2698
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 2699
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 2701
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2702
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2703
    const-string/jumbo v6, "> only supports string, integer, float, color, and boolean at "

    .line 2702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2704
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2702
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2707
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2708
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2709
    const-string/jumbo v6, "> requires an android:value or android:resource attribute at "

    .line 2708
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2710
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 2708
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 2633
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2635
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 2636
    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 2637
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 2641
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2642
    .local v0, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2643
    const-string/jumbo v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2644
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2647
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2632
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 2495
    if-eqz p1, :cond_0

    .line 2496
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2497
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2494
    :cond_0
    return-void
.end method

.method public setHelper(Landroid/content/res/theme/LeResourceHelper;)V
    .locals 0
    .param p1, "resHelp"    # Landroid/content/res/theme/LeResourceHelper;

    .prologue
    .line 3309
    iput-object p1, p0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    .line 3308
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 2749
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2750
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 2751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2749
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2753
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 2754
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 2755
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 2756
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2757
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2748
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 2208
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 26
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2241
    if-eqz p3, :cond_0

    .line 2242
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 2244
    :cond_0
    if-eqz p2, :cond_1

    .line 2245
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2256
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 2258
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v23

    .line 2261
    .local v23, "configChanges":I
    const/16 v24, 0x0

    .line 2264
    .local v24, "themeChange":Z
    if-eqz p1, :cond_2

    const/high16 v3, -0x80000000

    and-int v3, v3, v23

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mResourceHelper:Landroid/content/res/theme/LeResourceHelper;

    iget-object v3, v3, Landroid/content/res/theme/LeResourceHelper;->mThemeResource:Landroid/content/res/theme/LeThemeResource;

    if-eqz v3, :cond_2

    .line 2265
    const/16 v24, 0x1

    .line 2268
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_3

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2270
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 2272
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v3, :cond_4

    .line 2273
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2274
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/util/DisplayMetrics;->density:F

    .line 2276
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2278
    const/4 v6, 0x0

    .line 2279
    .local v6, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v3, :cond_5

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/res/Resources;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2284
    .end local v6    # "locale":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v3, v4, :cond_8

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2286
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v14, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2295
    .local v14, "height":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 2297
    const/4 v11, 0x3

    .line 2302
    .local v11, "keyboardHidden":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->mnc:I

    .line 2303
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 2304
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->touchscreen:I

    .line 2305
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->densityDpi:I

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    .line 2306
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v12, Landroid/content/res/Configuration;->navigation:I

    .line 2307
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v17, v0

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v19, v0

    .line 2310
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 2302
    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 2318
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v22, v3, v4

    .line 2319
    .local v22, "boostKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/res/Resources;->isBoostApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2320
    sget-object v3, Landroid/content/res/Resources;->sBoostDrawableCache:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/LongSparseArray;

    .line 2321
    .local v21, "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v21, :cond_6

    .line 2322
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/res/Resources;->clearBoostDrawableCacheLocked(Landroid/util/LongSparseArray;I)V

    .line 2323
    const-string/jumbo v3, "Resources"

    const-string/jumbo v4, "Clear boost cache"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    .end local v21    # "boostCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 2329
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 2330
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 2331
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 2335
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/res/Resources;->clearCache(Z)V

    .line 2338
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v25

    .line 2340
    sget-object v4, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v4

    .line 2341
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v3, :cond_7

    if-eqz p1, :cond_7

    .line 2342
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    monitor-exit v4

    .line 2216
    return-void

    .line 2289
    .end local v11    # "keyboardHidden":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v22    # "boostKey":Ljava/lang/String;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2291
    .restart local v13    # "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v14, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v14    # "height":I
    goto/16 :goto_0

    .line 2299
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v3, Landroid/content/res/Configuration;->keyboardHidden:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v11    # "keyboardHidden":I
    goto/16 :goto_1

    .line 2217
    .end local v11    # "keyboardHidden":I
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v23    # "configChanges":I
    .end local v24    # "themeChange":Z
    :catchall_0
    move-exception v3

    monitor-exit v25

    throw v3

    .line 2340
    .restart local v11    # "keyboardHidden":I
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v22    # "boostKey":Ljava/lang/String;
    .restart local v23    # "configChanges":I
    .restart local v24    # "themeChange":Z
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method
