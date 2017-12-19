.class public final Lcom/mediatek/aal/AalUtils;
.super Ljava/lang/Object;
.source "AalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/aal/AalUtils$AalConfig;,
        Lcom/mediatek/aal/AalUtils$AalIndex;
    }
.end annotation


# static fields
.field private static final AAL_DEFAULT_LEVEL:I = 0x80

.field private static final AAL_MAX_LEVEL:I = 0x100

.field private static final AAL_MIN_LEVEL:I = 0x0

.field public static final AAL_MODE_BALANCE:I = 0x1

.field public static final AAL_MODE_LOWPOWER:I = 0x2

.field public static final AAL_MODE_PERFORMANCE:I = 0x0

.field public static final AAL_MODE_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AalUtils"

.field private static sDebug:Z

.field private static sEnabled:Z

.field private static sInstance:Lcom/mediatek/aal/AalUtils;

.field private static sIsAalSupported:Z


# instance fields
.field private mAalMode:I

.field private mConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mediatek/aal/AalUtils$AalIndex;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

.field private mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;


# direct methods
.method static synthetic -get0(Lcom/mediatek/aal/AalUtils;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/aal/AalUtils;I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    .line 60
    const-string/jumbo v0, "ro.mtk_aal_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 59
    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    .line 50
    return-void
.end method

.method constructor <init>(Z)V
    .locals 8
    .param p1, "init"    # Z

    .prologue
    const/16 v7, 0xc0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0xa0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v4, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;)V

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mIndex:Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 72
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 73
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void

    .line 79
    :cond_1
    if-nez p1, :cond_2

    .line 80
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 90
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 92
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 94
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 96
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 98
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.browser"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 100
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.letv.browser"

    invoke-direct {v1, p0, v5, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 104
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 106
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 108
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 110
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 112
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.browser"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 114
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.letv.browser"

    invoke-direct {v1, p0, v4, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 117
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.launcher3"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 119
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.rovio.angrybirds"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 121
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.vectorunit.yellow"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 123
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "nl.dotsightsoftware.pacificfighter.release"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 125
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.browser"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    .line 127
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    const-string/jumbo v2, "com.android.letv.browser"

    invoke-direct {v1, p0, v6, v2}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private ensureBacklightLevel(I)I
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/16 v4, 0x100

    const/4 v3, 0x0

    .line 414
    if-gez p1, :cond_1

    .line 415
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid AAL backlight level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    return v3

    .line 419
    :cond_1
    if-le p1, v4, :cond_3

    .line 420
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_2

    .line 421
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid AAL backlight level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2
    return v4

    .line 426
    :cond_3
    return p1
.end method

.method private getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;
    .locals 4
    .param p1, "index"    # Lcom/mediatek/aal/AalUtils$AalIndex;

    .prologue
    .line 430
    const/16 v0, 0x80

    .line 431
    .local v0, "level":I
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 438
    :cond_0
    :goto_0
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalConfig;

    invoke-virtual {p1}, Lcom/mediatek/aal/AalUtils$AalIndex;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    return-object v1

    .line 434
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 435
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No config for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mediatek/aal/AalUtils;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/aal/AalUtils;->getInstance(Z)Lcom/mediatek/aal/AalUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Z)Lcom/mediatek/aal/AalUtils;
    .locals 1
    .param p0, "init"    # Z

    .prologue
    .line 207
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/mediatek/aal/AalUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/aal/AalUtils;-><init>(Z)V

    sput-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    .line 210
    :cond_0
    sget-object v0, Lcom/mediatek/aal/AalUtils;->sInstance:Lcom/mediatek/aal/AalUtils;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 3

    .prologue
    .line 141
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 142
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    return v0
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 584
    packed-switch p1, :pswitch_data_0

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 586
    :pswitch_0
    const-string/jumbo v0, "AAL_MODE_PERFORMANCE"

    return-object v0

    .line 588
    :pswitch_1
    const-string/jumbo v0, "AAL_MODE_BALANCE"

    return-object v0

    .line 590
    :pswitch_2
    const-string/jumbo v0, "AAL_MODE_LOWPOWER"

    return-object v0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native setSmartBacklightStrength(I)V
.end method


# virtual methods
.method public declared-synchronized dumpDebugUsageInternal()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    .line 487
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\nUsage:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v1, "1. App-based AAL help:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string/jumbo v1, "    adb shell dumpsys activity aal\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string/jumbo v1, "2. Dump App-based AAL settings:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string/jumbo v1, "    adb shell dumpsys activity aal dump\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string/jumbo v1, "1. App-based AAL debug on:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string/jumbo v1, "    adb shell dumpsys activity aal debugon\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string/jumbo v1, "1. App-based AAL debug off:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string/jumbo v1, "    adb shell dumpsys activity aal debugoff\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string/jumbo v1, "3. Enable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string/jumbo v1, "    adb shell dumpsys activity aal on\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string/jumbo v1, "4. Disable App-based AAL:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string/jumbo v1, "    adb shell dumpsys activity aal off\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string/jumbo v1, "5. Set App-based AAL mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string/jumbo v1, "    adb shell dumpsys activity aal mode <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string/jumbo v1, "6. Set App-based AAL config for current mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string/jumbo v1, "    adb shell dumpsys activity aal set <pacakge> <value>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v1, "7. Set App-based AAL config for the mode:\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v1, "    adb shell dumpsys activity aal set <pacakge> <value> <mode>\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpInternal()Ljava/lang/String;
    .locals 8

    .prologue
    monitor-enter p0

    .line 460
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\nApp-based AAL Mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v6}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    const-string/jumbo v6, "), Supported: "

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    const-string/jumbo v6, ", Enabled: "

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    const-string/jumbo v6, ", Debug: "

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    sget-boolean v6, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 463
    const-string/jumbo v6, "\n"

    .line 461
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/4 v0, 0x1

    .line 466
    .local v0, "i":I
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "index$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    .line 467
    .local v1, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "level":Ljava/lang/String;
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    .end local v3    # "level":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 472
    const-string/jumbo v5, "\nThere is no App-based AAL configuration.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/aal/AalUtils;->dumpDebugUsageInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_1
    sget-boolean v5, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v5, :cond_2

    .line 476
    const-string/jumbo v5, "AalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dump config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit p0

    return-object v5

    .end local v0    # "i":I
    .end local v2    # "index$iterator":Ljava/util/Iterator;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setAalMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 163
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 164
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "AalUtils"

    const-string/jumbo v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void

    .line 170
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 171
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAalMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 175
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalMode(I)V

    .line 162
    return-void
.end method

.method public declared-synchronized setAalModeInternal(I)Ljava/lang/String;
    .locals 3
    .param p1, "mode"    # I

    .prologue
    monitor-enter p0

    .line 220
    :try_start_0
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v1, :cond_1

    .line 221
    const-string/jumbo v0, "AAL is not enabled"

    .line 222
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 223
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 225
    return-object v0

    .line 228
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 229
    .local v0, "msg":Ljava/lang/String;
    if-ltz p1, :cond_2

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 230
    :try_start_1
    iput p1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAalModeInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-direct {p0, v2}, Lcom/mediatek/aal/AalUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 237
    return-object v0

    .line 233
    .local v0, "msg":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDebugInternal(Z)Ljava/lang/String;
    .locals 3
    .param p1, "debug"    # Z

    .prologue
    monitor-enter p0

    .line 271
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set Debug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sDebug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 274
    return-object v0

    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDefaultSmartBacklightInternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x80

    monitor-enter p0

    .line 396
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 397
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 398
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 400
    return-void

    .line 403
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v0, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v0, v1, :cond_2

    .line 404
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartBacklightStrength(128) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/16 v1, 0x80

    iput v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 406
    iget-object v0, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 407
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 395
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 185
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v1, :cond_1

    .line 186
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 187
    const-string/jumbo v1, "AalUtils"

    const-string/jumbo v2, "AAL is not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void

    .line 192
    :cond_1
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_2

    .line 193
    const-string/jumbo v1, "AalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 197
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->setAalEnabled(Z)V

    .line 184
    return-void
.end method

.method public declared-synchronized setEnabledInternal(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    monitor-enter p0

    .line 246
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sIsAalSupported:Z

    if-nez v0, :cond_1

    .line 247
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 250
    return-void

    .line 253
    :cond_1
    :try_start_1
    sput-boolean p1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    .line 254
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_2

    .line 255
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/mediatek/aal/AalUtils;->setDefaultSmartBacklightInternal(Ljava/lang/String;)V

    .line 256
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    const-string/jumbo v0, "AalUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabledInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 245
    return-void

    .line 258
    :cond_2
    :try_start_2
    const-string/jumbo v0, "persist.sys.mtk_app_aal_support"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 335
    :try_start_0
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v0, :cond_1

    .line 336
    sget-boolean v0, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "AalUtils"

    const-string/jumbo v1, "AAL is not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 339
    return-void

    .line 342
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightInternal(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 334
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartBacklightInternal(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    monitor-enter p0

    .line 352
    :try_start_0
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v3, :cond_1

    .line 353
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_0

    .line 354
    const-string/jumbo v3, "AalUtils"

    const-string/jumbo v4, "AAL is not enabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 356
    return-void

    .line 359
    :cond_1
    if-ltz p2, :cond_2

    const/4 v3, 0x3

    if-lt p2, v3, :cond_4

    .line 360
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_3

    .line 361
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 363
    return-void

    .line 366
    :cond_4
    :try_start_2
    new-instance v1, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v1, p0, p2, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 367
    .local v1, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    if-nez v3, :cond_6

    .line 368
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_5

    .line 369
    const-string/jumbo v3, "AalUtils"

    const-string/jumbo v4, "mCurrentConfig == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_5
    new-instance v3, Lcom/mediatek/aal/AalUtils$AalConfig;

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-direct {v3, p0, v4, v5}, Lcom/mediatek/aal/AalUtils$AalConfig;-><init>(Lcom/mediatek/aal/AalUtils;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    .line 375
    :cond_6
    invoke-direct {p0, v1}, Lcom/mediatek/aal/AalUtils;->getAalConfig(Lcom/mediatek/aal/AalUtils$AalIndex;)Lcom/mediatek/aal/AalUtils$AalConfig;

    move-result-object v0

    .line 376
    .local v0, "config":Lcom/mediatek/aal/AalUtils$AalConfig;
    iget v3, v0, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-direct {p0, v3}, Lcom/mediatek/aal/AalUtils;->ensureBacklightLevel(I)I

    move-result v2

    .line 377
    .local v2, "validLevel":I
    sget-boolean v3, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v3, :cond_7

    .line 378
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklight current level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v5, v5, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 379
    const-string/jumbo v5, " for "

    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_7
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iget v3, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    if-eq v3, v2, :cond_8

    .line 383
    const-string/jumbo v3, "AalUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSmartBacklightStrength("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput v2, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mLevel:I

    .line 385
    iget-object v3, p0, Lcom/mediatek/aal/AalUtils;->mCurrentConfig:Lcom/mediatek/aal/AalUtils$AalConfig;

    iput-object p1, v3, Lcom/mediatek/aal/AalUtils$AalConfig;->mPackageName:Ljava/lang/String;

    .line 386
    invoke-direct {p0, v2}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightStrength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    .line 351
    return-void

    .end local v0    # "config":Lcom/mediatek/aal/AalUtils$AalConfig;
    .end local v1    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    .end local v2    # "validLevel":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    monitor-enter p0

    .line 285
    :try_start_0
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v1, :cond_1

    .line 286
    const-string/jumbo v0, "AAL is not enabled"

    .line 287
    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v1, :cond_0

    .line 288
    const-string/jumbo v1, "AalUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 290
    return-object v0

    .line 293
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/mediatek/aal/AalUtils;->mAalMode:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/mediatek/aal/AalUtils;->setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSmartBacklightTableInternal(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "mode"    # I

    .prologue
    monitor-enter p0

    .line 305
    :try_start_0
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sEnabled:Z

    if-nez v2, :cond_1

    .line 306
    const-string/jumbo v1, "AAL is not enabled"

    .line 307
    .local v1, "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_0

    .line 308
    const-string/jumbo v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 310
    return-object v1

    .line 313
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    if-ltz p3, :cond_2

    const/4 v2, 0x3

    if-lt p3, v2, :cond_4

    .line 314
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .restart local v1    # "msg":Ljava/lang/String;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_3

    .line 316
    const-string/jumbo v2, "AalUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 318
    return-object v1

    .line 321
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v0, Lcom/mediatek/aal/AalUtils$AalIndex;

    invoke-direct {v0, p0, p3, p1}, Lcom/mediatek/aal/AalUtils$AalIndex;-><init>(Lcom/mediatek/aal/AalUtils;ILjava/lang/String;)V

    .line 322
    .local v0, "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    sget-boolean v2, Lcom/mediatek/aal/AalUtils;->sDebug:Z

    if-eqz v2, :cond_5

    .line 323
    const-string/jumbo v2, "AalUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSmartBacklightTable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_5
    iget-object v2, p0, Lcom/mediatek/aal/AalUtils;->mConfig:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0    # "index":Lcom/mediatek/aal/AalUtils$AalIndex;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
