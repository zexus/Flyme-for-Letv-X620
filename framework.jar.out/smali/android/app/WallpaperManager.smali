.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;,
        Landroid/app/WallpaperManager$FlymeInjector;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$Globals;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field private static final DEFAULT_SIZE:I = 0x32

.field private static final DIR_WALLPAPER_HISTORY:Ljava/lang/String; = ".CacheOfEUI/image/WallpaperHistory"

.field public static final EXTRA_IS_LIVE_WALLPAPER:Ljava/lang/String; = "is_live_wallpaper"

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static final HEX_DIGITS:[C

.field public static final LOCK_VIDEO_CENTER_CROP:I = 0x1

.field public static final LOCK_VIDEO_CENTER_INSIDE:I = 0x2

.field private static final LOCK_WALLPAPER_CATEGORY_KEY:Ljava/lang/String; = "category"

.field private static final LOCK_WALLPAPER_CATEGORY_PREFERENCES:Ljava/lang/String; = "lockWallpaperCategory"

.field public static final LOCK_WALLPAPER_IMAGE:I = 0x1

.field private static final LOCK_WALLPAPER_SCLAE_KEY:Ljava/lang/String; = "scaleType"

.field public static final LOCK_WALLPAPER_VIDEO:I = 0x2

.field private static final NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static SCREEN_H:I = 0x0

.field private static SCREEN_W:I = 0x0

.field private static final SUFFIX_JPG:Ljava/lang/String; = ".jpg"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final PATH_WALLPAPER_HISTORY:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .prologue
    invoke-static {p0, p1}, Landroid/app/WallpaperManager;->checkFileMd5(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/io/File;)I
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    invoke-static {p0}, Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 95
    const-string/jumbo v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 99
    sput v1, Landroid/app/WallpaperManager;->SCREEN_W:I

    .line 100
    sput v1, Landroid/app/WallpaperManager;->SCREEN_H:I

    .line 627
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    .line 1230
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 98
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".CacheOfEUI/image/WallpaperHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    .line 639
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 638
    return-void
.end method

.method private static checkFileMd5(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0, "file1"    # Ljava/io/File;
    .param p1, "file2"    # Ljava/io/File;

    .prologue
    .line 1421
    invoke-static {p0}, Landroid/app/WallpaperManager;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/app/WallpaperManager;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkHistory(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1367
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->checkRepeat(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1368
    .local v0, "repetitionFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1366
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-direct {p0}, Landroid/app/WallpaperManager;->checkHistorySize()V

    goto :goto_0
.end method

.method private checkHistorySize()V
    .locals 4

    .prologue
    .line 1460
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v0

    .line 1461
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1462
    array-length v2, v0

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 1463
    invoke-static {v0}, Landroid/app/WallpaperManager;->getLeastRecentlyFile([Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1464
    .local v1, "leastFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1459
    .end local v1    # "leastFile":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static checkOrMkDir(Ljava/lang/String;)Z
    .locals 3
    .param p0, "dirStr"    # Ljava/lang/String;

    .prologue
    .line 1342
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1344
    const/4 v2, 0x1

    return v2

    .line 1346
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1347
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 1348
    invoke-static {v0}, Landroid/app/WallpaperManager;->createNoMedia(Ljava/io/File;)Z

    .line 1350
    :cond_1
    return v1
.end method

.method private checkRepeat(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1380
    invoke-static {p1}, Landroid/app/WallpaperManager;->getFileLength(Ljava/io/File;)I

    move-result v3

    .line 1381
    .local v3, "size":I
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1382
    .local v0, "checkDir":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1383
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Landroid/app/WallpaperManager$3;

    invoke-direct {v4, p0, v2, v3, p1}, Landroid/app/WallpaperManager$3;-><init>(Landroid/app/WallpaperManager;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1398
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    if-lez v4, :cond_1

    .line 1399
    aget-object v4, v1, v6

    return-object v4

    .line 1378
    .end local v0    # "checkDir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_0
    return-object v5

    .line 1402
    .restart local v0    # "checkDir":Ljava/io/File;
    .restart local v3    # "size":I
    :cond_1
    return-object v5
.end method

.method private static createNoMedia(Ljava/io/File;)Z
    .locals 3
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 1356
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, ".nomedia"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1358
    .local v1, "noMedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1362
    const/4 v2, 0x0

    return v2
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v10, 0x0

    .line 570
    if-nez p1, :cond_0

    .line 571
    return-object v10

    .line 574
    :cond_0
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 575
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 576
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 577
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 579
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 581
    :cond_1
    return-object p1

    .line 580
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_1

    .line 586
    :cond_3
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 587
    .local v5, "newbm":Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 589
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 590
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 591
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 594
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 595
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 597
    .local v1, "deltah":I
    if-gtz v2, :cond_4

    if-lez v1, :cond_5

    .line 600
    :cond_4
    if-le v2, v1, :cond_6

    .line 601
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 605
    .local v7, "scale":F
    :goto_0
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 606
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 607
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 608
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 611
    .end local v7    # "scale":F
    :cond_5
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 613
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 614
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 615
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 616
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 618
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 620
    return-object v5

    .line 603
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_6
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_0

    .line 621
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v5    # "newbm":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 622
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    sget-object v10, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    return-object p1
.end method

.method public static getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 1853
    const-string/jumbo v2, "ro.config.wallpaper_component"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1854
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1855
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1856
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1857
    return-object v0

    .line 1861
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_0
    const v2, #android:string@default_wallpaper_component#t

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1862
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1863
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1864
    .restart local v0    # "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 1865
    return-object v0

    .line 1869
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    return-object v3
.end method

.method private static getFileLength(Ljava/io/File;)I
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1407
    const/4 v3, 0x0

    .line 1408
    .local v3, "lenth":I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1409
    const/4 v1, 0x0

    .line 1411
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    move-result v3

    .line 1416
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v3

    .line 1413
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private static getFileMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1426
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1428
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1429
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1430
    .local v5, "inputStream":Ljava/io/InputStream;
    const/16 v7, 0x2800

    new-array v0, v7, [B

    .line 1432
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1433
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1437
    .end local v0    # "buff":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "len":I
    :catch_0
    move-exception v4

    .line 1438
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1445
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_1
    const-string/jumbo v7, ""

    return-object v7

    .line 1435
    .restart local v0    # "buff":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1436
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    return-object v7

    .line 1441
    .end local v0    # "buff":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "len":I
    :catch_1
    move-exception v3

    .line 1442
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1439
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1440
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 648
    const-string/jumbo v0, "wallpaper"

    .line 647
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getLeastRecentlyFile([Ljava/io/File;)Ljava/io/File;
    .locals 9
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 1474
    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 1475
    .local v4, "timeLeastRecently":J
    aget-object v1, p0, v6

    .line 1476
    .local v1, "fileLeastRecently":Ljava/io/File;
    array-length v7, p0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, p0, v6

    .line 1477
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1478
    .local v2, "time":J
    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    .line 1479
    move-wide v4, v2

    .line 1480
    move-object v1, v0

    .line 1476
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1483
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "time":J
    :cond_1
    return-object v1
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    const/4 v6, 0x0

    .line 885
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 887
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 888
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 889
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 890
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 891
    .local v2, "cropWidth":F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 892
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 900
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    .line 894
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 895
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 896
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 897
    .local v0, "cropHeight":F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 898
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 631
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 630
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyLockScreenVideoChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2152
    const-string/jumbo v0, "android.intent.action.LOCK_WALLPAPER_VIDEO_PATH_CHANGED"

    .line 2153
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2154
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "videoPath"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2155
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2151
    return-void
.end method

.method public static openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1831
    const-string/jumbo v3, "ro.config.wallpaper"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1832
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1833
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1834
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1836
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #android:drawable@default_wallpaper#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method

.method private saveHistory(Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    if-nez p1, :cond_0

    .line 1302
    return-void

    .line 1304
    :cond_0
    iget-object v5, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/WallpaperManager;->checkOrMkDir(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1305
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1306
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1307
    .local v2, "fileNmae":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v0, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .local v0, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1309
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 1311
    .local v1, "fileLength":I
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 1312
    invoke-static {v4, v3}, Landroid/app/WallpaperManager;->setHistory(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    if-eqz v4, :cond_1

    .line 1315
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1317
    :cond_1
    if-eqz v3, :cond_2

    .line 1318
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1319
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1321
    :cond_2
    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 1322
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->checkHistory(Ljava/io/File;)V

    .line 1300
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileLength":I
    .end local v2    # "fileNmae":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_3
    :goto_0
    return-void

    .line 1324
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileLength":I
    .restart local v2    # "fileNmae":Ljava/lang/String;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1313
    :catchall_0
    move-exception v5

    .line 1314
    if-eqz v4, :cond_5

    .line 1315
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1317
    :cond_5
    if-eqz v3, :cond_6

    .line 1318
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1319
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1321
    :cond_6
    int-to-long v6, v1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    if-eqz v1, :cond_7

    .line 1322
    invoke-direct {p0, v0}, Landroid/app/WallpaperManager;->checkHistory(Ljava/io/File;)V

    .line 1313
    :goto_1
    throw v5

    .line 1324
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private saveLockWallpaperToHistory()V
    .locals 5

    .prologue
    .line 1291
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1292
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-interface {v3, v4, v0}, Landroid/app/IWallpaperManager;->getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1293
    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->saveHistory(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "save lockWallpaper history failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveWallpaperToHistory()V
    .locals 5

    .prologue
    .line 1280
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-interface {v3, v4, v0}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1282
    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->saveHistory(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v1

    .line 1284
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "save wallpaper history failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setHistory(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1333
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1335
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1336
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1332
    :cond_0
    return-void
.end method

.method private setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1951
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1953
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1954
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1950
    :cond_0
    return-void
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1212
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1214
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 1215
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1211
    :cond_0
    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1450
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1451
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1452
    sget-object v2, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1453
    sget-object v2, Landroid/app/WallpaperManager;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    #const v0, #android:drawable@default_wallpaper#t

    #invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager$FlymeInjector;->openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public clearLockWallpaper()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v0, #android:drawable@default_lock_wallpaper#t

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResourceToLockWallpaper(I)V

    return-void
.end method

.method public clearWallpaper()V
    .locals 3

    .prologue
    .line 1669
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1670
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void

    .line 1674
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return-void

    .line 1675
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1794
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 1795
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    .line 1794
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :goto_0
    return-void

    .line 1796
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deleteAllWallpaperHistory()V
    .locals 2

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/app/WallpaperManager$2;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$2;-><init>(Landroid/app/WallpaperManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1263
    return-void
.end method

.method public forgetLoadedLockWallpaper()V
    .locals 1

    .prologue
    .line 983
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedLockWallpaper()V

    .line 982
    return-void
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 974
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 973
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 964
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    .line 691
    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    .line 709
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 710
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/4 v5, 0x0

    return-object v5

    .line 713
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 714
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 715
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 717
    new-instance v17, Ljava/io/BufferedInputStream;

    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager$FlymeInjector;->openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 719
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_1

    .line 720
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "default wallpaper input stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v5, 0x0

    return-object v5

    .line 723
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_4

    .line 724
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 726
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_3

    .line 727
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_3
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 729
    :catch_0
    move-exception v15

    .line 730
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 737
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_4
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 738
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 739
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 740
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_8

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_8

    .line 741
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 742
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 756
    .local v4, "inHeight":I
    if-eqz v17, :cond_5

    .line 757
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 762
    :cond_5
    :goto_1
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager$FlymeInjector;->openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 766
    .restart local v17    # "is":Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 767
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 768
    if-eqz p3, :cond_a

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 769
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 778
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_2
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 779
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 781
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_b

    .line 782
    :cond_6
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-eqz v17, :cond_7

    .line 785
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 790
    :cond_7
    :goto_3
    const/4 v5, 0x0

    return-object v5

    .line 744
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_8
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-eqz v17, :cond_9

    .line 747
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 752
    :cond_9
    :goto_4
    const/4 v5, 0x0

    return-object v5

    .line 749
    :catch_1
    move-exception v15

    .line 750
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 759
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :catch_2
    move-exception v15

    .line 760
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 772
    .end local v15    # "e":Ljava/io/IOException;
    :cond_a
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 773
    .local v18, "left":F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 774
    .local v24, "right":F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 775
    .local v28, "top":F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 776
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_2

    .line 787
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :catch_3
    move-exception v15

    .line 788
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 794
    .end local v15    # "e":Ljava/io/IOException;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    .line 795
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    .line 794
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 798
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    .line 800
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_4
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 805
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :goto_5
    const/4 v11, 0x0

    .line 806
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_d

    .line 808
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 809
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_c

    .line 810
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 812
    :cond_c
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 813
    .local v11, "crop":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 816
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_d
    if-nez v11, :cond_11

    .line 819
    if-eqz v17, :cond_e

    .line 820
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 825
    :cond_e
    :goto_6
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/WallpaperManager$FlymeInjector;->openFlymeDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 826
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 827
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_10

    .line 828
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 829
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_f

    .line 830
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 832
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 834
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_10
    if-eqz v16, :cond_11

    .line 835
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 836
    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 837
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 835
    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 841
    :cond_11
    if-nez v11, :cond_13

    .line 842
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    if-eqz v17, :cond_12

    .line 845
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 850
    :cond_12
    :goto_7
    const/4 v5, 0x0

    return-object v5

    .line 801
    .restart local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    :catch_4
    move-exception v15

    .line 802
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 822
    .end local v14    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v15    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v15

    .line 823
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 847
    .end local v15    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    .line 848
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 854
    .end local v15    # "e":Ljava/io/IOException;
    :cond_13
    if-lez p1, :cond_15

    if-lez p2, :cond_15

    .line 855
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_15

    .line 856
    :cond_14
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 857
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 858
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 859
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 860
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    .line 861
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 860
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 862
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_15

    .line 863
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 864
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 865
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 866
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 867
    move-object/from16 v11, v27

    .line 871
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_15
    if-eqz v17, :cond_16

    .line 872
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 878
    :cond_16
    :goto_8
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 874
    :catch_7
    move-exception v15

    .line 875
    .restart local v15    # "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "error closing input stream"

    invoke-static {v5, v6, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1036
    if-nez p1, :cond_0

    .line 1037
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Image URI must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1040
    :cond_0
    const-string/jumbo v5, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1041
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Image URI must be of the content scheme type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1045
    :cond_1
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1047
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v0, v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1048
    .local v0, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1051
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1053
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000

    .line 1052
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 1054
    .local v4, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 1055
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1059
    .local v1, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1060
    return-object v0

    .line 1065
    .end local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string/jumbo v5, "com.android.wallpapercropper"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1068
    .restart local v1    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1069
    return-object v0

    .line 1073
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1547
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1548
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    return v3

    .line 1552
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1553
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1520
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1521
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return v3

    .line 1525
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1526
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "useCache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 676
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 678
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 679
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 680
    return-object v1

    .line 682
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2014
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawableOfLockWallpaper(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableOfLockWallpaper(Z)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "useCache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2021
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2022
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2023
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2024
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 2025
    return-object v1

    .line 2027
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 936
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 938
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    return-object v1

    .line 940
    :cond_0
    return-object v4
.end method

.method public getFastDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1995
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1996
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1997
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    .line 1998
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 2000
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 653
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 2036
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperCategory()I
    .locals 5

    .prologue
    .line 2185
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2186
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "category"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2187
    .local v0, "category":I
    return v0
.end method

.method public getLockWallpaperDesiredMinimumWidth()I
    .locals 9

    .prologue
    .line 2049
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 2050
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2051
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2052
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2053
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2054
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2055
    .local v2, "height":I
    if-eqz v0, :cond_2

    .line 2056
    if-ge v5, v2, :cond_0

    const/4 v3, 0x1

    .line 2057
    .local v3, "isPortrait":Z
    :goto_0
    if-eqz v3, :cond_1

    move v4, v5

    .line 2059
    .local v4, "result":I
    :goto_1
    return v4

    .line 2056
    .end local v3    # "isPortrait":Z
    .end local v4    # "result":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isPortrait":Z
    goto :goto_0

    .line 2057
    :cond_1
    move v4, v2

    .restart local v4    # "result":I
    goto :goto_1

    .line 2061
    .end local v3    # "isPortrait":Z
    .end local v4    # "result":I
    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method public getLockWallpaperInfo()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2106
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2107
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    return-object v3

    .line 2110
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getLockWallpaperInfo()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLockWallpaperVideoScaleType()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 2208
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2209
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "scaleType"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2210
    .local v1, "type":I
    return v1
.end method

.method public getVideoPathFromLockWallpaper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2145
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->peekVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperHistoryArray()[Ljava/io/File;
    .locals 3

    .prologue
    .line 1234
    iget-object v1, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/WallpaperManager;->checkOrMkDir(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/WallpaperManager;->PATH_WALLPAPER_HISTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/app/WallpaperManager$1;

    invoke-direct {v2, p0}, Landroid/app/WallpaperManager$1;-><init>(Landroid/app/WallpaperManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1244
    .local v0, "files":[Ljava/io/File;
    return-object v0

    .line 1246
    .end local v0    # "files":[Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWallpaperHistoryList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1251
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    .local v2, "mHistoryPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperHistoryArray()[Ljava/io/File;

    move-result-object v1

    .line 1253
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1254
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1255
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 1256
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1259
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 993
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 994
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-object v3

    .line 997
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1012
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1013
    return-object v2

    .line 1015
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getlockWallpaperDesiredMinimumHeight()I
    .locals 9

    .prologue
    .line 2069
    iget-object v7, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 2070
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2071
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2072
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2073
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2074
    .local v5, "width":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2075
    .local v2, "height":I
    if-eqz v0, :cond_2

    .line 2076
    if-ge v5, v2, :cond_0

    const/4 v3, 0x1

    .line 2077
    .local v3, "isPortrait":Z
    :goto_0
    if-eqz v3, :cond_1

    move v4, v2

    .line 2079
    .local v4, "result":I
    :goto_1
    return v4

    .line 2076
    .end local v3    # "isPortrait":Z
    .end local v4    # "result":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isPortrait":Z
    goto :goto_0

    .line 2077
    :cond_1
    move v4, v5

    .restart local v4    # "result":I
    goto :goto_1

    .line 2081
    .end local v3    # "isPortrait":Z
    .end local v4    # "result":I
    :cond_2
    const/4 v7, 0x0

    return v7
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .param p1, "resid"    # I

    .prologue
    const/4 v5, 0x0

    .line 1492
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1493
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    return v5

    .line 1497
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1498
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1499
    .local v1, "name":Ljava/lang/String;
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1500
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1501
    .local v0, "e":Landroid/os/RemoteException;
    return v5
.end method

.method public isWallpaperSupported()Z
    .locals 3

    .prologue
    .line 1770
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1771
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1774
    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1775
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 913
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 914
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 915
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 916
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 917
    return-object v1

    .line 919
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public peekDrawableOfLockWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2092
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekLockWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2093
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2094
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2095
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 2096
    return-object v1

    .line 2098
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v5
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 951
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 952
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 953
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable;)V

    return-object v1

    .line 955
    :cond_0
    return-object v4
.end method

.method public resetWallpaper()V
    .locals 3

    .prologue
    .line 1878
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1879
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_0
    return-void

    .line 1881
    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->resetWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1883
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1757
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 1758
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1757
    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    :goto_0
    return-void

    .line 1760
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager$FlymeInjector;->isFlymeChildrenMode(Landroid/app/WallpaperManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_flyme_0

    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    :cond_3
    :goto_0
    return-void

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_0
    move-exception v5

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setBitmapToLockWallpaper(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1137
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void

    .line 1141
    :cond_0
    :try_start_0
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    :cond_3
    :goto_0
    return-void

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_0
    move-exception v5

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setDisplayOffset(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLockWallpaperCategory(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    const/4 v4, 0x2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "setLockWallpaperCategory"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "category"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLockWallpaperVideoScaleType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "lockWallpaperCategory"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "scaleType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setResource(I)V
    .locals 9
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager$FlymeInjector;->isFlymeChildrenMode(Landroid/app/WallpaperManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_flyme_0

    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "resources":Landroid/content/res/Resources;
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    move-result-object v6

    invoke-direct {p0, v6, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v6

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResourceToLockWallpaper(I)V
    .locals 9
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "resources":Landroid/content/res/Resources;
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    move-result-object v6

    invoke-direct {p0, v6, v3}, Landroid/app/WallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v6

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v6
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    .end local v5    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager$FlymeInjector;->isFlymeChildrenMode(Landroid/app/WallpaperManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_flyme_0

    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    .line 1142
    iget-object v6, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1141
    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1143
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 1144
    return-void

    .line 1146
    :cond_1
    const/4 v2, 0x0

    .line 1147
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1149
    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    :cond_3
    :goto_0
    return-void

    .line 1152
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_0
    move-exception v5

    .line 1153
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    .line 1154
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1152
    :cond_4
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1160
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStreamToLockWallpaper(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1923
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1924
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void

    .line 1928
    :cond_0
    :try_start_0
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/app/IWallpaperManager;->setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1929
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 1930
    return-void

    .line 1932
    :cond_1
    const/4 v2, 0x0

    .line 1933
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1935
    .local v4, "isSetSuccess":Z
    :try_start_1
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1936
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->setLockWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0}, Landroid/app/WallpaperManager;->saveLockWallpaperToHistory()V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "isSetSuccess":Z
    :cond_3
    :goto_0
    return-void

    .line 1938
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_0
    move-exception v5

    .line 1939
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v2, :cond_4

    .line 1940
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1938
    :cond_4
    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1946
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "isSetSuccess":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1938
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "isSetSuccess":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setVideoPathToLockWallpaper(Ljava/lang/String;)V
    .locals 5
    .param p1, "absoluteVideoPath"    # Ljava/lang/String;

    .prologue
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "absoluteVideoPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "sGlobals == null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "before setVideoPath"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IWallpaperManager;->setVideoPath(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isSuccess":Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after setVideoPathisSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/WallpaperManager;->setLockWallpaperCategory(I)V

    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->notifyLockScreenVideoChanged(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "after notifyLockScreenVideoChanged"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "isSuccess":Z
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "RemoteException setVideoPathToLockScreen"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager$FlymeInjector;->isFlymeChildrenMode(Landroid/app/WallpaperManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return v0

    :cond_flyme_0

    const/4 v3, 0x0

    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1654
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_0
    return-void

    .line 1657
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 8
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    :try_start_0
    const-string v4, "sys.max_texture_size"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .local v3, "maximumTextureSize":I
    :goto_0
    if-lez v3, :cond_1

    if-gt p1, v3, :cond_0

    if-le p2, v3, :cond_1

    :cond_0
    int-to-float v4, p2

    int-to-float v5, p1

    div-float v0, v4, v5

    .local v0, "aspect":F
    if-le p1, p2, :cond_2

    move p1, v3

    int-to-float v4, p1

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int p2, v4

    .end local v0    # "aspect":F
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "maximumTextureSize":I
    :goto_2
    return-void

    .line 1636
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .restart local v3    # "maximumTextureSize":I
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "aspect":F
    :cond_2
    move p2, v3

    int-to-float v4, p2

    div-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v6

    double-to-int p1, v4

    goto :goto_1

    .line 1609
    .line 1612
    .end local v0    # "aspect":F
    :cond_3
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-get0(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    .line 1613
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1612
    invoke-interface {v4, p1, p2, v5}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1615
    .end local v3    # "maximumTextureSize":I
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public static getFlymeDefWallpaper(Landroid/content/Context;Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    .prologue
    invoke-static {p0}, Landroid/app/WallpaperManager$FlymeInjector;->initColorValue(Landroid/content/Context;)V

    const/4 v1, 0x0

    .local v1, "is":Ljava/io/InputStream;
    sget-object v2, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LAUNCHER:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    if-ne p1, v2, :cond_1

    sget-object v2, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/WallpaperManager$FlymeInjector;->checkWallpaperPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    return-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0

    .local v1, "is":Ljava/io/InputStream;
    :cond_1
    sget-object v2, Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;->LOCK:Landroid/app/WallpaperManager$FLYME_WALLPAPER_TYPE;

    if-ne p1, v2, :cond_4

    sget-object v2, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/WallpaperManager$FlymeInjector;->checkWallpaperPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    const-string v2, "/custom/meizu/wallpaper/default_lock_wallpaper.png"

    invoke-static {v2}, Landroid/app/WallpaperManager$FlymeInjector;->checkWallpaperPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/content/res/flymetheme/FlymeThemeUtils;->isUseCustomSystem()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    const-string v3, "/custom/meizu/wallpaper/default_lock_wallpaper.png"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0

    .local v1, "is":Ljava/io/InputStream;
    :cond_2
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/app/WallpaperManager$FlymeInjector;->mFlymeLockWallpaperPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->default_lock_wallpaper:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v1, "is":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->default_lock_wallpaper:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0

    .local v1, "is":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/flyme/internal/R$drawable;->default_wallpaper:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .local v1, "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method flymeGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    return-object v0
.end method
