.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperData"
.end annotation


# instance fields
.field mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field height:I

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field private lockCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field lockImageWallpaperPending:Z

.field lockLastDiedTime:J

.field lockWallpaperUpdating:Z

.field mHeightOfLockWallpaper:I

.field mLockWallpaperBitmap:Landroid/graphics/Bitmap;

.field mLockWallpaperComponent:Landroid/content/ComponentName;

.field mNameOfLockWallpaper:Ljava/lang/String;

.field mNextLockWallpaperComponent:Landroid/content/ComponentName;

.field mWallpaperBitmap:Landroid/graphics/Bitmap;

.field mWidthOfLockWallpaper:I

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field final padding:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field wallpaperFile:Ljava/io/File;

.field wallpaperFileLock:Ljava/io/File;

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field width:I


# direct methods
.method static synthetic -get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 327
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 288
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 312
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 311
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 315
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 314
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockCallbacks:Landroid/os/RemoteCallbackList;

    .line 317
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 318
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 320
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    .line 321
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 322
    iput v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 328
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 329
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-get4(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "smartbook_wallpaper"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 327
    :goto_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->initFlymeWallpaperData()V

    return-void

    .line 332
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 333
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-wrap2(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "lock_wallpaper"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFileLock:Ljava/io/File;

    .line 334
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 335
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 336
    .local v0, "d":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 337
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 338
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 339
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 340
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WallpaperData-:  mWidthOfLockWallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    const-string/jumbo v5, " mHeightOfLockWallpaper: "

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 341
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


.method private initFlymeWallpaperData()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    invoke-direct {v0}, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mFlymeData:Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;

    return-void
.end method
