.class public Lcom/letv/leui/util/LeDPIUtils;
.super Ljava/lang/Object;
.source "LeDPIUtils.java"


# static fields
.field private static final whiteList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.gms"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/letv/leui/util/LeDPIUtils;->whiteList:[Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDPIByPackageName(Landroid/util/DisplayMetrics;)V
    .locals 7
    .param p0, "outMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 11
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "currentPackageName":Ljava/lang/String;
    sget-object v4, Lcom/letv/leui/util/LeDPIUtils;->whiteList:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    .line 14
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 15
    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 16
    .local v1, "density":I
    int-to-float v6, v1

    iput v6, p0, Landroid/util/DisplayMetrics;->density:F

    .line 17
    mul-int/lit16 v6, v1, 0xa0

    iput v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 18
    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 19
    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 20
    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iput v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 21
    iget v6, p0, Landroid/util/DisplayMetrics;->density:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 22
    iget v6, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 23
    iget v6, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 24
    iget v6, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 25
    iget v6, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v6, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 13
    .end local v1    # "density":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
