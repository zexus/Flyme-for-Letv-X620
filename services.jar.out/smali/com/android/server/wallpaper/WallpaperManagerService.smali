.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$FlymeChildrenModeToast;,
        Lcom/android/server/wallpaper/WallpaperManagerService$H;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$1;
    }
.end annotation


# static fields
.field private static final ACTION_BG_RELEASE:Ljava/lang/String; = "ACTION_BG_RELEASE"

.field static final BOOT_IPO:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field static DEBUG:Z = false

.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field static final LOCK_WALLPAPER:Ljava/lang/String; = "lock_wallpaper"

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final MOUNT_SDCARD:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field private static final MSG_BIND_WP:I = 0x2775

.field private static final SMARTBOOK_WALLPAPER:Ljava/lang/String; = "smartbook_wallpaper"

.field private static final SMARTBOOK_WALLPAPER_INFO:Ljava/lang/String; = "smartbook_wallpaper_info.xml"

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field private static final USE_LOCK_WALLPAPER:Z

.field private static final VIDEO_PATH:Ljava/lang/String; = "video_path"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_INFO:Ljava/lang/String; = "lock_wallpaper_info.xml"

.field static mCurrentComponetName:Landroid/content/ComponentName;

.field static mIsIPOBoot:Z


# instance fields
.field private mFlymeRestoredWallpaperComponent:Landroid/content/ComponentName;

.field mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field private mExpectedLiving:Z

.field final mH:Lcom/android/server/wallpaper/WallpaperManagerService$H;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveUsedSmartBook:Z

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field private mLastIntent:Landroid/content/Intent;

.field private mLastPhoneWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private mLastSmartBookWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mLockBitmap:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mPhoneWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartBookPlug:Z

.field private mSmartBookWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z

.field private mWallpaperFileName:Ljava/lang/String;

.field private mWallpaperInfoFileName:Ljava/lang/String;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->USE_LOCK_WALLPAPER:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateSettingsComponentName()V

    return-void
.end method

.method static synthetic -wrap2(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .locals 0
    .param p1, "isSmartBookPlug"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->dynimicSwitchingWallpaper(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadLockWallpaperBitmap(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadWallpaperBitmap(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "isLive"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    sput-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 110
    const-string/jumbo v0, "debug.lock_wallpaper"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->USE_LOCK_WALLPAPER:Z

    .line 154
    sput-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsIPOBoot:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 715
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 97
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 98
    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockBitmap:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$H;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mH:Lcom/android/server/wallpaper/WallpaperManagerService$H;

    .line 266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2675
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    .line 2679
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    .line 2728
    const-string/jumbo v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 2729
    const-string/jumbo v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 2736
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 2737
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 716
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "WallpaperService startup"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 719
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:string@image_wallpaper_component#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 721
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 720
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 722
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 723
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 724
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 725
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 726
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 727
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 728
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsOfLockWallpaperLocked(I)V

    .line 730
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadWallpaperBitmap(I)V

    .line 731
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadLockWallpaperBitmap(I)V

    .line 715
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1613
    const-string/jumbo v2, ", must have permission "

    .line 1612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_0
    return-void
.end method

.method private doVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/16 v2, 0x2775

    .line 2707
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mExpectedLiving:Z

    if-eqz v0, :cond_1

    .line 2706
    :cond_0
    :goto_0
    return-void

    .line 2708
    :cond_1
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Restart current wallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2710
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2711
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private dumpSmartBook()V
    .locals 4

    .prologue
    .line 2790
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "========== Smart book dump start ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Plug in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookPlug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWallpaperFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWallpaperInfoFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2795
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 2796
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 2798
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 2801
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NextWallpaperComponent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    :cond_1
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 2804
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WallpaperFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_2
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "========== Smart book dump end   ============ "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    return-void
.end method

.method private dynimicSwitchingWallpaper(Z)V
    .locals 3
    .param p1, "isSmartBookPlug"    # Z

    .prologue
    .line 2740
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2741
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopWatchingWallpaper()V

    .line 2743
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switching(Z)V

    .line 2745
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 2747
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->startWatchingWallpaper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2750
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2751
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2739
    return-void

    .line 2740
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    const/4 v1, 0x0

    .line 1739
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1740
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1741
    return p3

    .line 1743
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 1045
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1046
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1047
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1048
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1049
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .locals 4

    .prologue
    .line 1931
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1932
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1933
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private static getVideoPath(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .locals 9
    .param p0, "descriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 2597
    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2598
    .local v3, "inputStream":Ljava/io/FileInputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 2599
    .local v0, "bytes":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 2600
    .local v4, "len":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 2601
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    .line 2602
    .local v5, "videoPath":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getVideoPath(ParcelFileDescriptor descriptor) videoPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    :cond_0
    return-object v5

    .line 2606
    .end local v0    # "bytes":[B
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v5    # "videoPath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2607
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2609
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v6, 0x0

    return-object v6

    .line 2604
    :catch_1
    move-exception v1

    .line 2605
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 735
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1754
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1755
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 1756
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1757
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1759
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-object v0
.end method

.method private isGmoRamOptimizeSupport()Z
    .locals 2

    .prologue
    .line 2837
    const-string/jumbo v0, "ro.mtk_gmo_rom_optimize"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSmartBookSupport()Z
    .locals 2

    .prologue
    .line 2833
    const-string/jumbo v0, "ro.mtk_smartbook_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLockWallpaperBitmap(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1894
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockBitmap:Ljava/lang/Object;

    monitor-enter v6

    .line 1895
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1896
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1897
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v4, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1898
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1900
    :cond_0
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 1901
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1902
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1904
    :cond_1
    const-string/jumbo v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadLockWallpaperBitmap file.exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFileLock:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFileLock:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1906
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFileLock:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_0
    monitor-exit v6

    .line 1893
    return-void

    .line 1908
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, #android:drawable@default_lock_wallpaper#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    const-string v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadLockWallpaperBitmap load default is="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1911
    if-eqz v2, :cond_2

    .line 1913
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1914
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1919
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1920
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1915
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 1916
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v7, "Can\'t decode stream"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1919
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1920
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1917
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 1919
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1917
    :goto_1
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1894
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1920
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private loadSettingsLocked(I)V
    .locals 25
    .param p1, "userId"    # I

    .prologue
    .line 1763
    sget-boolean v20, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string/jumbo v20, "WallpaperManagerService"

    const-string/jumbo v21, "loadSettingsLocked"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v12

    .line 1766
    .local v12, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v14, 0x0

    .line 1767
    .local v14, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v12}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v11

    .line 1768
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_1

    .line 1770
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 1772
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1773
    .local v19, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v19, :cond_2

    .line 1774
    new-instance v19, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1775
    .restart local v19    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1777
    :cond_2
    const/16 v16, 0x0

    .line 1779
    .local v16, "success":Z
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v14    # "stream":Ljava/io/FileInputStream;
    move-result-object v13

    .line 1781
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1785
    :cond_3
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 1786
    .local v18, "type":I
    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1787
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1788
    .local v17, "tag":Ljava/lang/String;
    const-string/jumbo v20, "wp"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1789
    const-string/jumbo v20, "width"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1791
    const-string/jumbo v20, "height"

    const/16 v21, 0x0

    .line 1790
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1792
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const-string/jumbo v21, "paddingLeft"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1793
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const-string/jumbo v21, "paddingTop"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1794
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const-string/jumbo v21, "paddingRight"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1795
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const-string/jumbo v21, "paddingBottom"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1796
    const-string/jumbo v20, "name"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1797
    const-string/jumbo v20, "component"

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1798
    .local v4, "comp":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 1799
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    .line 1798
    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1801
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1802
    const-string/jumbo v20, "android"

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 1801
    if-eqz v20, :cond_5

    .line 1804
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1807
    :cond_5
    sget-boolean v20, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v20, :cond_6

    .line 1808
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mWidth:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mHeight:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mName:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mNextWallpaperComponent:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1812
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 1811
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_c

    .line 1816
    .end local v4    # "comp":Ljava/lang/String;
    .end local v17    # "tag":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 1817
    const/16 v16, 0x1

    move-object v14, v15

    .line 1832
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v18    # "type":I
    :goto_1
    if-eqz v14, :cond_7

    .line 1833
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1839
    :cond_7
    :goto_2
    if-nez v16, :cond_8

    .line 1840
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1841
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1842
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Rect;->set(IIII)V

    .line 1843
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1847
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension()I

    move-result v3

    .line 1848
    .local v3, "baseSize":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_9

    .line 1849
    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1851
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v0, v3, :cond_a

    .line 1852
    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1762
    :cond_a
    return-void

    .line 1800
    .end local v3    # "baseSize":I
    .restart local v4    # "comp":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "tag":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1828
    .end local v4    # "comp":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "tag":Ljava/lang/String;
    .end local v18    # "type":I
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .line 1829
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_3
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1826
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 1827
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_4
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1824
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 1825
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1822
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    .line 1823
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v9, "e":Ljava/lang/NumberFormatException;
    :goto_6
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1820
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    .line 1821
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/NullPointerException;
    :goto_7
    const-string/jumbo v20, "WallpaperManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "failed parsing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1818
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    .line 1819
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_8
    const-string/jumbo v20, "WallpaperManagerService"

    const-string/jumbo v21, "no current wallpaper -- first boot?"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1835
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 1818
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 1820
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    .restart local v8    # "e":Ljava/lang/NullPointerException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1822
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1824
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v10

    .restart local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 1826
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 1828
    .end local v6    # "e":Ljava/io/IOException;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v7

    .restart local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v14, v15

    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private loadSettingsOfLockWallpaperLocked(I)V
    .locals 21
    .param p1, "userId"    # I

    .prologue
    .line 2457
    sget-boolean v18, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 2458
    const-string/jumbo v18, "WallpaperManagerService"

    const-string/jumbo v19, "loadSettingsOflockWallpaperLocked"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v10

    .line 2460
    .local v10, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v12, 0x0

    .line 2461
    .local v12, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v9

    .line 2462
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 2466
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2467
    .local v17, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v17, :cond_2

    .line 2468
    new-instance v17, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v17    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 2469
    .restart local v17    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2471
    :cond_2
    const/4 v14, 0x0

    .line 2473
    .local v14, "success":Z
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2474
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .end local v12    # "stream":Ljava/io/FileInputStream;
    move-result-object v11

    .line 2475
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v11, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2479
    :cond_3
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .line 2480
    .local v16, "type":I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2481
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 2482
    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v18, "lwp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2484
    const-string/jumbo v18, "width"

    .line 2483
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 2486
    const-string/jumbo v18, "height"

    .line 2485
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 2487
    const-string/jumbo v18, "name"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 2488
    const-string/jumbo v18, "component"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2489
    .local v3, "comp":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNextLockWallpaperComponent:Landroid/content/ComponentName;

    .line 2491
    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 2494
    sget-boolean v18, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 2495
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mWidthOfLockWallpaper:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mHeightOfLockWallpaper:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mNameOfLockWallpaper:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "mNextLockWallpaperComponent:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2500
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNextLockWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    .line 2499
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2498
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_a

    .line 2504
    .end local v3    # "comp":Ljava/lang/String;
    .end local v15    # "tag":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2505
    const/4 v14, 0x1

    move-object v12, v13

    .line 2518
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .end local v16    # "type":I
    :goto_2
    if-eqz v12, :cond_5

    .line 2519
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 2456
    :cond_5
    :goto_3
    return-void

    .line 2490
    .restart local v3    # "comp":Ljava/lang/String;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "tag":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2491
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 2514
    .end local v3    # "comp":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .end local v15    # "tag":Ljava/lang/String;
    .end local v16    # "type":I
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 2515
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2512
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 2513
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2510
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    .line 2511
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2508
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .line 2509
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/lang/NumberFormatException;
    :goto_7
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2506
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    .line 2507
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/lang/NullPointerException;
    :goto_8
    const-string/jumbo v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2521
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 2506
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NullPointerException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v12, "stream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 2508
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 2510
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    .restart local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 2512
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 2514
    .end local v4    # "e":Ljava/io/IOException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private loadWallpaperBitmap(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1858
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockBitmap:Ljava/lang/Object;

    monitor-enter v6

    .line 1859
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1860
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 1861
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v4, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1862
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1864
    :cond_0
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 1865
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1866
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 1868
    :cond_1
    const-string/jumbo v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadWallpaperBitmap file.exist="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1870
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_0
    monitor-exit v6

    .line 1857
    return-void

    .line 1872
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, #android:drawable@default_wallpaper#t

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .local v2, "is":Ljava/io/InputStream;
    const-string v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWallpaperBitmap load default is="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1875
    if-eqz v2, :cond_2

    .line 1877
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1878
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1883
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1879
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 1880
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v7, "Can\'t decode stream"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1883
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 1884
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1881
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 1883
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1881
    :goto_1
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1858
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1884
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 1629
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private static makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lock_wallpaper_info.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2384
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1723
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "migrateFromOld.."

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1726
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1727
    new-instance v1, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1728
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1729
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateFromOld..oldWallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1732
    new-instance v0, Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1733
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1734
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "migrateFromOld..oldInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Rename to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private modifyWallpaperAdj(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 2718
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->updateWallpaperState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    :goto_0
    return-void

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "Modify wallpaper\'s ADJ, catch RemoteException!!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1595
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 1596
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1598
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1605
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1606
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1594
    return-void

    .line 1599
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "isLive"    # Z

    .prologue
    .line 237
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 238
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 240
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v4}, Landroid/app/IWallpaperManagerCallback;->onLockWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 248
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "is_live_wallpaper"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 236
    return-void

    .line 241
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private static persistentVideoPath(Ljava/lang/String;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "fos"    # Ljava/io/FileOutputStream;

    .prologue
    .line 2635
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "persistentVideoPath"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-le v3, v4, :cond_1

    .line 2637
    return-void

    .line 2641
    :cond_1
    :try_start_0
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2642
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 2646
    :catch_0
    move-exception v1

    .line 2647
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "IOException persistentVideoPath"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    :cond_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 2643
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2644
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "UnsupportedEncodingException persistentVideoPath"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_3
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1674
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 1675
    .local v2, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 1677
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1678
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1679
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1680
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1682
    const-string/jumbo v6, "wp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1683
    const-string/jumbo v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1684
    const-string/jumbo v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1685
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-eqz v6, :cond_0

    .line 1686
    const-string/jumbo v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1688
    :cond_0
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-eqz v6, :cond_1

    .line 1689
    const-string/jumbo v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1691
    :cond_1
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-eqz v6, :cond_2

    .line 1692
    const-string/jumbo v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1694
    :cond_2
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_3

    .line 1695
    const-string/jumbo v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1697
    :cond_3
    const-string/jumbo v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1698
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_4

    .line 1699
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_0
    const-string v6, "wp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->sendFlymeWallpaperBroadcastAsUser(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V

    move-object v4, v5

    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_5
    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1710
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 1712
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_6

    .line 1713
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1718
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 1715
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_3

    .line 1710
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2347
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFileForLockWallpaper(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v2

    .line 2348
    .local v2, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v4, 0x0

    .line 2351
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2352
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2353
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2354
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2356
    const-string/jumbo v6, "lwp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2357
    const-string/jumbo v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2358
    const-string/jumbo v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    const-string/jumbo v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2360
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 2361
    const-string/jumbo v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2365
    :goto_0
    const-string/jumbo v6, "lwp"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2368
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 2369
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->commit()V

    move-object v4, v5

    .line 2345
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 2363
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :cond_0
    const-string/jumbo v6, "component"

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-interface {v3, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2370
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 2372
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v4, :cond_1

    .line 2373
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2378
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_1

    .line 2375
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_3

    .line 2370
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private showDebugZones(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2080
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2081
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_0

    .line 2082
    return-void

    .line 2083
    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_1

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    :cond_1
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v1, :cond_2

    .line 2087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    :cond_2
    return-void
.end method

.method private showUsage(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2064
    const-string/jumbo v0, "Wallpaper manager dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    const-string/jumbo v0, "  -d enable  <zone zone ...> : enable the debug zone"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    const-string/jumbo v0, "  -d disable <zone zone ...> : disable the debug zone"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    const-string/jumbo v0, "  -d list : list the debug zones"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    const-string/jumbo v0, "  zone usage : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    const-string/jumbo v0, "    0  : WallpaperManagerService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    const-string/jumbo v0, "    [IWallpaperService Id] : WallpaperService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    const-string/jumbo v0, "  -s [type] [component] : set wallpaper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    const-string/jumbo v0, "  -r [type] [component] : reset wallpaper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    const-string/jumbo v0, "  type may be one of:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v0, "    normal: normal wallpaper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    const-string/jumbo v0, "    keyguard: keyguard wallpaper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const-string/jumbo v0, "  component: the wallpaper component"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    return-void
.end method

.method private startWatchingWallpaper()V
    .locals 3

    .prologue
    .line 2755
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2756
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_0

    .line 2757
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2759
    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 2754
    return-void
.end method

.method private stopWatchingWallpaper()V
    .locals 3

    .prologue
    .line 2763
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2764
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_0

    .line 2765
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 2762
    :cond_0
    return-void
.end method

.method private switching(Z)V
    .locals 1
    .param p1, "isSmartBookPlug"    # Z

    .prologue
    .line 2770
    if-eqz p1, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    .line 2775
    const-string/jumbo v0, "smartbook_wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 2776
    const-string/jumbo v0, "smartbook_wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 2777
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2769
    :goto_0
    return-void

    .line 2781
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSmartBookWallpaperMap:Landroid/util/SparseArray;

    .line 2783
    const-string/jumbo v0, "wallpaper"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    .line 2784
    const-string/jumbo v0, "wallpaper_info.xml"

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    .line 2785
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPhoneWallpaperMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private updateSettingsComponentName()V
    .locals 10

    .prologue
    .line 1640
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1641
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 1642
    .local v5, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v6, 0x0

    .line 1643
    .local v6, "wallpaperInfo":Landroid/app/WallpaperInfo;
    const/4 v1, 0x0

    .line 1644
    .local v1, "currentWallpaperName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1645
    .local v3, "packageName":Ljava/lang/String;
    const v4, 0x80500b5

    .line 1647
    .local v4, "resId":I
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1649
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1650
    .local v5, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v7, :cond_0

    .line 1651
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    :cond_0
    monitor-exit v8

    .line 1654
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1655
    iget-object v8, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1654
    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1659
    :cond_1
    :goto_0
    if-nez v4, :cond_3

    .line 1660
    invoke-virtual {v6, v2}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1666
    .local v1, "currentWallpaperName":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1667
    const-string/jumbo v8, "current_wallpaper_component_name"

    iget v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1666
    invoke-static {v7, v8, v1, v9}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1668
    const-string/jumbo v7, "WallpaperManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currentWallpaperName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1669
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    .line 1668
    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    return-void

    .line 1647
    .end local v5    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v1, "currentWallpaperName":Ljava/lang/String;
    .restart local v6    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1656
    .end local v6    # "wallpaperInfo":Landroid/app/WallpaperInfo;
    .restart local v5    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1657
    invoke-virtual {v6}, Landroid/app/WallpaperInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/ServiceInfo;->labelRes:I

    goto :goto_0

    .line 1662
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentWallpaperName":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method bindLockWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 17
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1463
    sget-boolean v14, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bindLockWallpaperComponentLocked: componentName="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    if-nez p2, :cond_4

    .line 1465
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v14, :cond_4

    .line 1466
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-nez v14, :cond_2

    .line 1467
    if-nez p1, :cond_4

    .line 1468
    sget-boolean v14, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string/jumbo v14, "WallpaperManagerService"

    const-string/jumbo v15, "Still using default wallpaper"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_1
    const/4 v14, 0x1

    return v14

    .line 1471
    :cond_2
    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1472
    sget-boolean v14, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "WallpaperManagerService"

    const-string/jumbo v15, "same wallpaper"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_3
    const/4 v14, 0x1

    return v14

    .line 1478
    :cond_4
    if-nez p1, :cond_5

    .line 1480
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1481
    sget-boolean v14, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v14, :cond_5

    const-string/jumbo v14, "WallpaperManagerService"

    const-string/jumbo v15, "Using image wallpaper"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_5
    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1485
    .local v11, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v15, 0x1080

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v12

    .line 1486
    .local v12, "si":Landroid/content/pm/ServiceInfo;
    if-nez v12, :cond_6

    .line 1487
    const/4 v14, 0x0

    return v14

    .line 1489
    :cond_6
    const-string/jumbo v14, "android.permission.BIND_WALLPAPER"

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 1490
    const/4 v14, 0x0

    return v14

    .line 1493
    :cond_7
    const/4 v13, 0x0

    .line 1494
    .local v13, "wi":Landroid/app/WallpaperInfo;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "android.service.wallpaper.WallpaperService"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x80

    move/from16 v0, v16

    invoke-interface {v14, v6, v15, v0, v11}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v9

    .line 1496
    .local v9, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_8

    .line 1497
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v10, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1498
    .local v10, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v14, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v14

    if-eqz v14, :cond_9

    .line 1500
    :try_start_1
    new-instance v13, Landroid/app/WallpaperInfo;

    .end local v13    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13, v15, v14}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1509
    .end local v10    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_8
    :try_start_2
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/16 v14, 0x835

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v13, v1, v14}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 1510
    .local v8, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1511
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1513
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v11}, Landroid/os/UserHandle;-><init>(I)V

    .line 1512
    const v16, 0x20000001

    .line 1511
    move/from16 v0, v16

    invoke-virtual {v14, v6, v8, v0, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1514
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to bind service: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1516
    .local v7, "msg":Ljava/lang/String;
    const-string/jumbo v14, "WallpaperManagerService"

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/4 v14, 0x0

    return v14

    .line 1503
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v10    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    .line 1504
    .local v3, "e":Ljava/io/IOException;
    const/4 v14, 0x0

    return v14

    .line 1501
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1502
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v14, 0x0

    return v14

    .line 1496
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "wi":Landroid/app/WallpaperInfo;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1520
    .end local v10    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v13    # "wi":Landroid/app/WallpaperInfo;
    .restart local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_a
    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v14, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v14, :cond_b

    .line 1521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 1524
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 1525
    move-object/from16 v0, p4

    iput-object v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1526
    move-object/from16 v0, p5

    iput-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1529
    :try_start_3
    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v14, v15, :cond_d

    .line 1530
    sget-boolean v14, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v14, :cond_c

    .line 1531
    const-string/jumbo v14, "WallpaperManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Adding window token: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v15, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 1533
    const/16 v16, 0x835

    .line 1532
    invoke-interface/range {v14 .. v16}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1534
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1546
    :cond_d
    :goto_1
    const/4 v14, 0x1

    return v14

    .line 1538
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v9    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceUserId":I
    .end local v12    # "si":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v2

    .line 1539
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Remote exception for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1540
    .restart local v7    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_e

    .line 1541
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1543
    :cond_e
    const-string/jumbo v14, "WallpaperManagerService"

    invoke-static {v14, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const/4 v14, 0x0

    return v14

    .line 1536
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "msg":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v9    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "serviceUserId":I
    .restart local v12    # "si":Landroid/content/pm/ServiceInfo;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 22
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1306
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isStorageLow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1310
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Storage low, fail to set wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v3, 0x0

    return v3

    .line 1315
    :cond_1
    if-nez p2, :cond_4

    .line 1316
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_4

    .line 1317
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    .line 1318
    if-nez p1, :cond_4

    .line 1319
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "bindWallpaperComponentLocked: still using default"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 1323
    :cond_3
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsIPOBoot:Z

    if-eqz v3, :cond_6

    .line 1332
    :cond_4
    if-nez p1, :cond_5

    .line 1333
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1334
    if-nez p1, :cond_5

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1339
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Using image wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_5
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v18, v0

    .line 1343
    .local v18, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1344
    const/16 v4, 0x1080

    .line 1343
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v19

    .line 1345
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    if-nez v19, :cond_8

    .line 1347
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    const/4 v3, 0x0

    return v3

    .line 1325
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_6
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "same wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 1350
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_8
    :try_start_1
    const-string/jumbo v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1354
    .local v14, "msg":Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 1355
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1450
    .end local v14    # "msg":Ljava/lang/String;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    .line 1451
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1452
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_19

    .line 1453
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1357
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :cond_9
    :try_start_2
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v3, 0x0

    return v3

    .line 1361
    .end local v14    # "msg":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x0

    .line 1363
    .local v20, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1404
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_b
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binding to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_c
    new-instance v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/16 v3, 0x7dd

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .local v15, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, #android:string@wallpaper_binding_label#t

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v21, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v6, #android:string@chooser_wallpaper#t

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1411
    invoke-static {v4, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 1413
    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1410
    const/4 v4, 0x0

    .line 1413
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1409
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1417
    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1415
    const v5, 0x22000001

    .line 1414
    invoke-virtual {v3, v13, v15, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1420
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_13

    .line 1421
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1367
    .end local v14    # "msg":Ljava/lang/String;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1369
    const/16 v5, 0x80

    .line 1367
    move/from16 v0, v18

    invoke-interface {v3, v13, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v16

    .line 1370
    .local v16, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_e

    .line 1371
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1372
    .local v17, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1373
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 1372
    if-eqz v3, :cond_11

    .line 1375
    :try_start_3
    new-instance v20, Landroid/app/WallpaperInfo;

    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1392
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_e
    if-nez v20, :cond_b

    .line 1393
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1395
    .restart local v14    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_12

    .line 1396
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1382
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_1
    move-exception v10

    .line 1383
    .local v10, "e":Ljava/io/IOException;
    if-eqz p3, :cond_f

    .line 1384
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1386
    :cond_f
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    const/4 v3, 0x0

    return v3

    .line 1376
    .end local v10    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 1377
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_10

    .line 1378
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1380
    :cond_10
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1381
    const/4 v3, 0x0

    return v3

    .line 1370
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20    # "wi":Landroid/app/WallpaperInfo;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v17    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v20    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_12
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v3, 0x0

    return v3

    .line 1423
    .end local v12    # "i":I
    .end local v16    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_13
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const/4 v3, 0x0

    return v3

    .line 1427
    .end local v14    # "msg":Ljava/lang/String;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1428
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastIntent:Landroid/content/Intent;

    .line 1429
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/app/IActivityManager;->setWallpaperProcess(Landroid/content/ComponentName;)V

    .line 1430
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tell ActivityManager current wallpaper process is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_15
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_16

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 1437
    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1438
    move-object/from16 v0, p4

    iput-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1439
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1441
    :try_start_5
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v3, v4, :cond_18

    .line 1442
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_17

    .line 1443
    const-string/jumbo v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding window token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    .line 1445
    const/16 v5, 0x7dd

    .line 1444
    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1446
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1458
    :cond_18
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 1455
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v18    # "serviceUserId":I
    .end local v19    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v9    # "e":Landroid/os/RemoteException;
    .restart local v14    # "msg":Ljava/lang/String;
    :cond_19
    const-string/jumbo v3, "WallpaperManagerService"

    invoke-static {v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const/4 v3, 0x0

    return v3

    .line 1448
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "msg":Ljava/lang/String;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v18    # "serviceUserId":I
    .restart local v19    # "si":Landroid/content/pm/ServiceInfo;
    :catch_3
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public clearLockWallpaper()V
    .locals 4

    .prologue
    .line 972
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "clearLockWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearLockWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 971
    return-void

    .line 973
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearLockWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1590
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 1591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 1589
    return-void
.end method

.method clearLockWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 979
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 980
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v9, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "lock_wallpaper"

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 981
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 984
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 986
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 988
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockImageWallpaperPending:Z

    .line 989
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_1

    .line 1012
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 989
    return-void

    .line 990
    :cond_1
    if-eqz p1, :cond_2

    .line 991
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 992
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 990
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindLockWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 993
    return-void

    .line 995
    :catch_0
    move-exception v8

    .line 996
    .local v8, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v8

    .line 1003
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Default lock wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearLockWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1005
    if-eqz p3, :cond_4

    .line 1007
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1012
    :cond_4
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 978
    return-void

    .line 1008
    :catch_1
    move-exception v7

    .local v7, "e1":Landroid/os/RemoteException;
    goto :goto_0

    .line 1011
    .end local v7    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 1012
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1011
    throw v0
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 914
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    const-string/jumbo v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 917
    return-void

    .line 919
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 913
    return-void

    .line 919
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1585
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1586
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 1584
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .locals 12
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 927
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_0

    .line 928
    return-void

    .line 931
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 933
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 936
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 938
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 940
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 941
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, v0, :cond_2

    .line 964
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    return-void

    .line 942
    :cond_2
    if-eqz p1, :cond_3

    .line 943
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 944
    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 942
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 964
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 945
    return-void

    .line 947
    :catch_0
    move-exception v8

    .line 948
    .local v8, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v8

    .line 955
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_2
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 957
    if-eqz p3, :cond_5

    .line 959
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 964
    :cond_5
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 924
    return-void

    .line 960
    :catch_1
    move-exception v7

    .local v7, "e1":Landroid/os/RemoteException;
    goto :goto_0

    .line 963
    .end local v7    # "e1":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 964
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    throw v0
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "normal"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1550
    const/4 v0, 0x0

    .line 1551
    .local v0, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-eqz p2, :cond_4

    .line 1552
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1553
    .local v0, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iput-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1558
    :goto_0
    if-eqz v0, :cond_3

    .line 1559
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v2, :cond_0

    .line 1561
    :try_start_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1564
    :goto_1
    iput-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1566
    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_1

    .line 1568
    :try_start_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1572
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1574
    :try_start_2
    sget-boolean v2, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1575
    const-string/jumbo v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing window token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_2
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1579
    :goto_3
    iput-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1580
    iput-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1549
    :cond_3
    return-void

    .line 1555
    .local v0, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1556
    .local v0, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iput-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 1569
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 1562
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2097
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2096
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2098
    const-string/jumbo v4, ", uid="

    .line 2096
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2098
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2096
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2099
    return-void

    .line 2102
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2103
    .local v10, "currentDateTimeString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dump time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    const/4 v8, 0x0

    .local v8, "action":Ljava/lang/String;
    const/16 v23, 0x0

    .line 2106
    .local v23, "type":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2107
    .local v3, "componentName":Landroid/content/ComponentName;
    const/16 v20, 0x0

    .line 2108
    .local v20, "setWallpaper":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2109
    const/16 v18, 0x0

    .line 2110
    .end local v8    # "action":Ljava/lang/String;
    .local v18, "opti":I
    :cond_1
    :goto_0
    :try_start_0
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_2

    .line 2111
    aget-object v17, p3, v18

    .line 2112
    .local v17, "opt":Ljava/lang/String;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_8

    .line 2185
    .end local v17    # "opt":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    aget-object v2, p3, v18

    const-string/jumbo v4, "normal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p3, v18

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2186
    :cond_3
    aget-object v23, p3, v18

    .line 2187
    .local v23, "type":Ljava/lang/String;
    add-int/lit8 v18, v18, 0x1

    .line 2189
    .end local v23    # "type":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 2190
    aget-object v2, p3, v18

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2192
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_5
    if-eqz v8, :cond_1f

    if-eqz v23, :cond_1f

    .line 2193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2194
    .local v6, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v15, 0x1

    .line 2195
    .local v15, "normalWallpaper":Z
    const-string/jumbo v2, "normal"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "keyguard"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2199
    :cond_6
    const-string/jumbo v2, "keyguard"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2200
    const/4 v15, 0x0

    .line 2201
    :cond_7
    if-eqz v20, :cond_1d

    .line 2202
    if-eqz v15, :cond_1c

    .line 2203
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v25

    .line 2223
    return-void

    .line 2112
    .end local v6    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v15    # "normalWallpaper":Z
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v17    # "opt":Ljava/lang/String;
    .local v23, "type":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_2

    .line 2116
    add-int/lit8 v18, v18, 0x1

    .line 2117
    const-string/jumbo v2, "-h"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2118
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->showUsage(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v25

    .line 2119
    return-void

    .line 2120
    :cond_9
    :try_start_2
    const-string/jumbo v2, "-d"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2121
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v18

    if-lt v0, v2, :cond_a

    .line 2122
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->showUsage(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v25

    .line 2123
    return-void

    .line 2125
    :cond_a
    :try_start_3
    const-string/jumbo v2, "list"

    aget-object v4, p3, v18

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2126
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->showDebugZones(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v25

    .line 2127
    return-void

    .line 2128
    :cond_b
    :try_start_4
    const-string/jumbo v2, "enable"

    aget-object v4, p3, v18

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "disable"

    aget-object v4, p3, v18

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2131
    :cond_c
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p3

    array-length v4, v0

    if-lt v2, v4, :cond_e

    .line 2132
    const-string/jumbo v2, "must specify at least a zone:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->showDebugZones(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v25

    .line 2134
    return-void

    .line 2129
    :cond_d
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p3, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v25

    .line 2130
    return-void

    .line 2136
    :cond_e
    :try_start_6
    const-string/jumbo v2, "enable"

    aget-object v4, p3, v18

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 2137
    .local v13, "enable":Z
    :goto_2
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_17

    .line 2138
    aget-object v22, p3, v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2139
    .local v22, "target":Ljava/lang/String;
    const/16 v16, 0x0

    .line 2141
    .local v16, "objectId":I
    const/16 v2, 0x10

    :try_start_7
    move-object/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v16

    .line 2147
    const/16 v21, 0x1

    .line 2148
    .local v21, "success":Z
    if-nez v16, :cond_f

    .line 2149
    :try_start_8
    sput-boolean v13, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    .line 2173
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v13, :cond_15

    const-string/jumbo v2, "enable "

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v21, :cond_16

    const-string/jumbo v2, " successfully"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 2108
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "enable":Z
    .end local v16    # "objectId":I
    .end local v17    # "opt":Ljava/lang/String;
    .end local v21    # "success":Z
    .end local v22    # "target":Ljava/lang/String;
    .end local v23    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v25

    throw v2

    .line 2142
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "enable":Z
    .restart local v16    # "objectId":I
    .restart local v17    # "opt":Ljava/lang/String;
    .restart local v22    # "target":Ljava/lang/String;
    .restart local v23    # "type":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2143
    .local v12, "e":Ljava/lang/NumberFormatException;
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2151
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "success":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2152
    .local v24, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v24, :cond_10

    monitor-exit v25

    .line 2153
    return-void

    .line 2154
    :cond_10
    const/16 v19, 0x0

    .line 2155
    .local v19, "service":Landroid/service/wallpaper/IWallpaperService;
    :try_start_a
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_12

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_12

    .line 2156
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_12

    .line 2157
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    move-object/from16 v19, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2162
    .end local v19    # "service":Landroid/service/wallpaper/IWallpaperService;
    :cond_11
    :goto_6
    if-eqz v19, :cond_14

    .line 2164
    :try_start_b
    invoke-interface/range {v19 .. v19}, Landroid/service/wallpaper/IWallpaperService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    const-string/jumbo v2, "-d"

    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 2165
    if-eqz v13, :cond_13

    const-string/jumbo v2, "enable"

    :goto_7
    const/4 v7, 0x1

    aput-object v2, v5, v7

    const-string/jumbo v2, "0"

    const/4 v7, 0x2

    aput-object v2, v5, v7

    .line 2164
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    .line 2167
    :catch_1
    move-exception v11

    .line 2168
    .local v11, "e":Landroid/os/RemoteException;
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2158
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v19    # "service":Landroid/service/wallpaper/IWallpaperService;
    :cond_12
    :try_start_c
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_11

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_11

    .line 2159
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_11

    .line 2160
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    move-object/from16 v19, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .local v19, "service":Landroid/service/wallpaper/IWallpaperService;
    goto :goto_6

    .line 2165
    .end local v19    # "service":Landroid/service/wallpaper/IWallpaperService;
    :cond_13
    :try_start_d
    const-string/jumbo v2, "disable"
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 2171
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2173
    .end local v24    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_15
    :try_start_e
    const-string/jumbo v2, "disable "

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v2, " failed"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_5

    .end local v16    # "objectId":I
    .end local v21    # "success":Z
    .end local v22    # "target":Ljava/lang/String;
    :cond_17
    monitor-exit v25

    .line 2175
    return-void

    .line 2176
    .end local v13    # "enable":Z
    :cond_18
    :try_start_f
    const-string/jumbo v2, "-r"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "-s"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2177
    :cond_19
    move-object/from16 v8, v17

    .line 2178
    .local v8, "action":Ljava/lang/String;
    const-string/jumbo v2, "-s"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2179
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 2181
    .end local v8    # "action":Ljava/lang/String;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown argument: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; use -h for help"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit v25

    .line 2182
    return-void

    .line 2196
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v17    # "opt":Ljava/lang/String;
    .end local v23    # "type":Ljava/lang/String;
    .restart local v6    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15    # "normalWallpaper":Z
    :cond_1b
    :try_start_10
    const-string/jumbo v2, "invalid argument type: type should be either normal or keyguard"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit v25

    .line 2197
    return-void

    .line 2205
    :cond_1c
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    :try_start_11
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindLockWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto/16 :goto_1

    .line 2207
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 2208
    if-eqz v15, :cond_1e

    .line 2209
    const/4 v2, -0x1

    iput v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2210
    const/4 v2, -0x1

    iput v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2211
    iget-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v4, v5, v7, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2212
    const-string/jumbo v2, ""

    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2213
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 2214
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto/16 :goto_1

    .line 2216
    :cond_1e
    const/4 v2, -0x1

    iput v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    .line 2217
    const/4 v2, -0x1

    iput v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    .line 2218
    const-string/jumbo v2, ""

    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 2219
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 2220
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto/16 :goto_1

    .line 2226
    .end local v6    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v15    # "normalWallpaper":Z
    :cond_1f
    const-string/jumbo v2, "Current Wallpaper Service state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2227
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_24

    .line 2228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2229
    .restart local v24    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2230
    const-string/jumbo v2, " NormalWallpaper:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2231
    const-string/jumbo v2, "  mWidth="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2232
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2233
    const-string/jumbo v2, " mHeight="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2234
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2235
    const-string/jumbo v2, "  mPadding="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2236
    const-string/jumbo v2, "  mName="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2237
    const-string/jumbo v2, "  mWallpaperComponent="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2238
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_21

    .line 2239
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2240
    .local v9, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v2, "  Wallpaper connection "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2241
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2242
    const-string/jumbo v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2243
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_20

    .line 2244
    const-string/jumbo v2, "    mInfo.component="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2245
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2247
    :cond_20
    const-string/jumbo v2, "    mToken="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2249
    const-string/jumbo v2, "    mService="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2250
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2251
    const-string/jumbo v2, "    mEngine="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2253
    const-string/jumbo v2, "    mLastDiedTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v4, v4, v26

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 2257
    .end local v9    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_21
    const-string/jumbo v2, " KeyguardWallpaper:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    const-string/jumbo v2, "  mWidth="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2260
    const-string/jumbo v2, " mHeight="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2262
    const-string/jumbo v2, "  mName="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2263
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    const-string/jumbo v2, "  mWallpaperComponent="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2266
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_23

    .line 2267
    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockConnection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2268
    .restart local v9    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string/jumbo v2, "  Wallpaper connection "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2269
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2270
    const-string/jumbo v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2271
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_22

    .line 2272
    const-string/jumbo v2, "    mInfo.component="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2273
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2275
    :cond_22
    const-string/jumbo v2, "    mToken="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2277
    const-string/jumbo v2, "    mService="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2278
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2279
    const-string/jumbo v2, "    mEngine="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    iget-object v2, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2281
    const-string/jumbo v2, "    mLastDiedTime="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2282
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockLastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v4, v4, v26

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->println(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2227
    .end local v9    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_23
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .end local v24    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_24
    monitor-exit v25

    .line 2092
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 740
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 743
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    return-void
.end method

.method public getHeightHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1111
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1112
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1114
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1109
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLockWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 2389
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2390
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2391
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 2392
    .local v4, "wallpaperUserId":I
    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1

    .line 2393
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2397
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2399
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_0

    .line 2400
    :try_start_1
    const-string/jumbo v5, "width"

    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWidthOfLockWallpaper:I

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2401
    const-string/jumbo v5, "height"

    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mHeightOfLockWallpaper:I

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2403
    :cond_0
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2405
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "lock_wallpaper"

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2407
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v6

    .line 2408
    return-object v8

    .line 2395
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 2411
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    const/high16 v5, 0x10000000

    :try_start_3
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 2412
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2414
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v7, "Error getting lock_wallpaper"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 2416
    return-object v8

    .line 2389
    .end local v0    # "callingUid":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getLockWallpaperBitmap(Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .prologue
    .line 2437
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockBitmap:Ljava/lang/Object;

    monitor-enter v4

    .line 2438
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2439
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 2440
    .local v2, "wallpaperUserId":I
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 2441
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2445
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2446
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2447
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 2443
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 2437
    .end local v0    # "callingUid":I
    .end local v2    # "wallpaperUserId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getLockWallpaperInfo()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2533
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2534
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2535
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2536
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 2537
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 2539
    return-object v4

    .line 2534
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 831
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 834
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2572
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2573
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2574
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 2575
    .local v4, "wallpaperUserId":I
    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_0

    .line 2576
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2581
    :goto_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v5

    const-string/jumbo v7, "video_path"

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2582
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    monitor-exit v6

    .line 2583
    return-object v8

    .line 2578
    .end local v3    # "f":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 2585
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    const/high16 v5, 0x10000000

    :try_start_3
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 2586
    .local v1, "descriptor":Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getVideoPath(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 2587
    .end local v1    # "descriptor":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 2589
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v7, "Error getting wallpaper"

    invoke-static {v5, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 2591
    return-object v8

    .line 2572
    .end local v0    # "callingUid":I
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1155
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1158
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1159
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1160
    .local v4, "wallpaperUserId":I
    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_0

    .line 1161
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 1165
    :goto_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_1

    monitor-exit v6

    .line 1167
    return-object v8

    .line 1163
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 1170
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz p2, :cond_2

    .line 1171
    :try_start_2
    const-string/jumbo v5, "width"

    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1172
    const-string/jumbo v5, "height"

    iget v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    :cond_2
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1175
    new-instance v2, Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1176
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    monitor-exit v6

    .line 1177
    return-object v8

    .line 1179
    :cond_3
    const/high16 v5, 0x10000000

    :try_start_3
    invoke-static {v2, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 1180
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v5, "WallpaperManagerService"

    const-string/jumbo v7, "Error getting wallpaper"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v6

    .line 1184
    return-object v8

    .line 1155
    .end local v0    # "callingUid":I
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wallpaperUserId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getWallpaperBitmap(Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .prologue
    .line 2422
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockBitmap:Ljava/lang/Object;

    monitor-enter v4

    .line 2423
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2424
    .local v0, "callingUid":I
    const/4 v2, 0x0

    .line 2425
    .local v2, "wallpaperUserId":I
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 2426
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2430
    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2431
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-get0(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2432
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    .line 2428
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 2422
    .end local v0    # "callingUid":I
    .end local v2    # "wallpaperUserId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1189
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1190
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1191
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1192
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 1193
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 1195
    return-object v4

    .line 1190
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWallpaperInfoWithIpo()Landroid/app/WallpaperInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1203
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1204
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1205
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1206
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    .line 1207
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    .line 1209
    return-object v5

    .line 1204
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getWidthHint()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1100
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_0

    .line 1101
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1103
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1098
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1017
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1019
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 1021
    .local v0, "ident":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1023
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1025
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1027
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1030
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1031
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_1

    .line 1033
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1034
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1036
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    if-eqz v5, :cond_0

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 1037
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 1022
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "user$iterator":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v6

    .line 1023
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1017
    .end local v0    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "ident":J
    .restart local v3    # "user$iterator":Ljava/util/Iterator;
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    monitor-exit v7

    .line 1041
    const/4 v6, 0x0

    return v6
.end method

.method public isStorageLow()Z
    .locals 3

    .prologue
    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isStorageLow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "isStorageLow(), load exception.."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1623
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onRemoveUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 854
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    return-void

    .line 855
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 856
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onStoppingUser(I)V

    .line 857
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 858
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 859
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onFlymeRemoveUser(I)V

    new-instance v0, Ljava/io/File;

    .end local v0    # "wallpaperFile":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "lock_wallpaper"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 863
    .restart local v0    # "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 864
    new-instance v1, Ljava/io/File;

    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "lock_wallpaper_info.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 865
    .restart local v1    # "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 853
    return-void

    .line 855
    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method onStoppingUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 840
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-void

    .line 841
    :cond_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 843
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_2

    .line 844
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 846
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 839
    return-void

    .line 841
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2696
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Visibility changed from WMS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isGmoRamOptimizeSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2698
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    if-eq v0, p1, :cond_1

    .line 2699
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    .line 2700
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->modifyWallpaperAdj(Z)V

    .line 2701
    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mVisible:Z

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->doVisibilityChanged(Z)V

    .line 2695
    :cond_1
    return-void
.end method

.method public resetWallpaper()V
    .locals 5

    .prologue
    .line 2816
    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "reset wallpaper "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2818
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v3, :cond_0

    .line 2819
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 2821
    :cond_0
    new-instance v1, Ljava/io/File;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2822
    .local v1, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2823
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2825
    :cond_1
    new-instance v2, Ljava/io/File;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_info.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2826
    .local v2, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2827
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2815
    :cond_2
    return-void
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 25
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1990
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const-string/jumbo v21, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x4

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1991
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1993
    .local v18, "resName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1994
    .local v14, "pkg":Ljava/lang/String;
    const/16 v21, 0x3a

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1995
    .local v6, "colon":I
    if-lez v6, :cond_0

    .line 1996
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1999
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    .line 2000
    .local v13, "ident":Ljava/lang/String;
    const/16 v21, 0x2f

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 2001
    .local v19, "slash":I
    if-lez v19, :cond_1

    .line 2002
    add-int/lit8 v21, v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2005
    .end local v13    # "ident":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    .line 2006
    .local v20, "type":Ljava/lang/String;
    if-lez v6, :cond_2

    if-lez v19, :cond_2

    sub-int v21, v19, v6

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 2007
    add-int/lit8 v21, v6, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2010
    .end local v20    # "type":Ljava/lang/String;
    :cond_2
    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    if-eqz v20, :cond_6

    .line 2011
    const/16 v17, -0x1

    .line 2012
    .local v17, "resId":I
    const/16 v16, 0x0

    .line 2013
    .local v16, "res":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 2015
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 2016
    .local v5, "c":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 2017
    .local v15, "r":Landroid/content/res/Resources;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 2018
    if-nez v17, :cond_3

    .line 2019
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " type="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2020
    const-string/jumbo v23, " ident="

    .line 2019
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/16 v21, 0x0

    return v21

    .line 2024
    :cond_3
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v16

    .line 2025
    .local v16, "res":Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2026
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->delete()Z

    .line 2028
    :cond_4
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2030
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v12, "fos":Ljava/io/FileOutputStream;
    const v21, 0x8000

    :try_start_1
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 2032
    .local v4, "buffer":[B
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "amt":I
    if-lez v3, :cond_7

    .line 2033
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2039
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v11, v12

    .line 2040
    .end local v5    # "c":Landroid/content/Context;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Package name "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " not found"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2046
    if-eqz v16, :cond_5

    .line 2048
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 2051
    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    .line 2052
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2054
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 2060
    .end local v6    # "colon":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "resId":I
    .end local v18    # "resName":Ljava/lang/String;
    .end local v19    # "slash":I
    :cond_6
    :goto_3
    const/16 v21, 0x0

    return v21

    .line 2037
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    .restart local v17    # "resId":I
    .restart local v18    # "resName":Ljava/lang/String;
    .restart local v19    # "slash":I
    :cond_7
    :try_start_5
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Restored wallpaper: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2038
    const/16 v21, 0x1

    .line 2046
    if-eqz v16, :cond_8

    .line 2048
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2051
    :cond_8
    :goto_4
    if-eqz v12, :cond_9

    .line 2052
    invoke-static {v12}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2054
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 2038
    :cond_9
    :goto_5
    return v21

    .line 2049
    :catch_1
    move-exception v10

    .local v10, "ex":Ljava/io/IOException;
    goto :goto_4

    .line 2055
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 2043
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    .line 2044
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string/jumbo v21, "WallpaperManagerService"

    const-string/jumbo v22, "IOException while restoring wallpaper "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2046
    if-eqz v16, :cond_a

    .line 2048
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 2051
    :cond_a
    :goto_7
    if-eqz v11, :cond_6

    .line 2052
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2054
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 2055
    :catch_4
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 2049
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 2041
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    .line 2042
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .local v8, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_8
    :try_start_b
    const-string/jumbo v21, "WallpaperManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Resource not found: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2046
    if-eqz v16, :cond_b

    .line 2048
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 2051
    :cond_b
    :goto_9
    if-eqz v11, :cond_6

    .line 2052
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2054
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_3

    .line 2055
    :catch_7
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    .line 2049
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_9

    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_9
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_2

    .line 2055
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_a
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    .line 2045
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 2046
    :goto_a
    if-eqz v16, :cond_c

    .line 2048
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 2051
    :cond_c
    :goto_b
    if-eqz v11, :cond_d

    .line 2052
    invoke-static {v11}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2054
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 2045
    :cond_d
    :goto_c
    throw v21

    .line 2049
    :catch_b
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_b

    .line 2055
    .end local v10    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v10

    .restart local v10    # "ex":Ljava/io/IOException;
    goto :goto_c

    .line 2045
    .end local v10    # "ex":Ljava/io/IOException;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    :catchall_1
    move-exception v21

    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    .line 2039
    .end local v5    # "c":Landroid/content/Context;
    .end local v15    # "r":Landroid/content/res/Resources;
    .end local v16    # "res":Ljava/io/InputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v7

    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1

    .line 2041
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "r":Landroid/content/res/Resources;
    .restart local v16    # "res":Ljava/io/InputStream;
    :catch_e
    move-exception v8

    .restart local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v11, "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 2043
    .end local v8    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    move-object v11, v12

    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1054
    const-string/jumbo v4, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1057
    return-void

    .line 1060
    :cond_0
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDimensionHints : ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1063
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1064
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 1065
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 1066
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "width and height must be > 0"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    .end local v2    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1069
    .restart local v2    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1070
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1071
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1073
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v4, :cond_4

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v4, :cond_6

    .line 1074
    :cond_4
    iput p1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1075
    iput p2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1076
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1077
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v2, :cond_5

    monitor-exit v5

    return-void

    .line 1078
    :cond_5
    :try_start_2
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_6

    .line 1079
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_7

    .line 1081
    :try_start_3
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v4, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    :goto_0
    :try_start_4
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_1
    monitor-exit v5

    .line 1053
    return-void

    .line 1086
    :cond_7
    :try_start_5
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v4, :cond_6

    .line 1090
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1083
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 7
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1120
    const-string/jumbo v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1122
    return-void

    .line 1124
    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1125
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1126
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1127
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_2

    .line 1128
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "padding must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1127
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v3, :cond_1

    .line 1131
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1132
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1133
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1134
    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v1, :cond_3

    monitor-exit v4

    return-void

    .line 1135
    :cond_3
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_4

    .line 1136
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 1138
    :try_start_3
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    :goto_0
    :try_start_4
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v4

    .line 1119
    return-void

    .line 1142
    :cond_5
    :try_start_5
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_4

    .line 1146
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1139
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLockWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2289
    const-string/jumbo v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2290
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2291
    :try_start_0
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 2292
    const-string/jumbo v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLockWallpaper("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2294
    .local v3, "userId":I
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2295
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_1

    .line 2296
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2290
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2298
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 2301
    .local v0, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2302
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_2

    .line 2304
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->USE_LOCK_WALLPAPER:Z

    if-nez v5, :cond_3

    .line 2305
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 2306
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2313
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    .line 2311
    return-object v2

    .line 2308
    :cond_3
    const/4 v5, 0x1

    :try_start_4
    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockImageWallpaperPending:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 2312
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_1
    move-exception v5

    .line 2313
    :try_start_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2312
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setLockWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 12
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2544
    const-string/jumbo v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2545
    iget-object v11, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2546
    :try_start_0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLockWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 2548
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2549
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_1

    .line 2550
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v1, "setLockWallpaperComponent wallpaper null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v6

    .line 2554
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lockImageWallpaperPending:Z

    .line 2555
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->USE_LOCK_WALLPAPER:Z

    if-nez v0, :cond_3

    .line 2556
    iput-object p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 2557
    invoke-direct {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsOfLockWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2562
    :goto_0
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v9

    .line 2561
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2564
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v11

    .line 2543
    return-void

    .line 2559
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindLockWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2563
    :catchall_0
    move-exception v0

    .line 2564
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2563
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2545
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "ident":J
    .end local v8    # "userId":I
    :catchall_1
    move-exception v0

    monitor-exit v11

    throw v0

    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "ident":J
    .restart local v8    # "userId":I
    :cond_4
    move v0, v10

    .line 2562
    goto :goto_1
.end method

.method public setVideoPath(Ljava/lang/String;)Z
    .locals 9
    .param p1, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 2613
    const-string/jumbo v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2615
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setVideoPath userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    :cond_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2617
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 2619
    .local v2, "ident":J
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateVideoPathLocked(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 2620
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2621
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-static {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->persistentVideoPath(Ljava/lang/String;Ljava/io/FileOutputStream;)V

    .line 2622
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2628
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2623
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 2624
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 2625
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2626
    sget-boolean v6, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "WallpaperManagerService"

    const-string/jumbo v8, "setVideoPath IOException"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2628
    :cond_1
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2630
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2627
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2628
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2627
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2616
    .end local v2    # "ident":J
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFlymeChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return-object v0

    :cond_flyme_0

    const/4 v6, 0x0

    .line 1215
    const-string/jumbo v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1217
    return-object v6

    .line 1219
    :cond_0
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1220
    :try_start_0
    sget-boolean v5, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setWallpaper("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1223
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mHaveUsedSmartBook:Z

    .line 1226
    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1227
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1228
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "ident":J
    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setFlymeWallpaperSimultaneously()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 1234
    return-object v2

    .line 1235
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v5

    .line 1236
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1235
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1219
    .end local v0    # "ident":J
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isFlymeChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 1278
    .local v8, "userId":I
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1279
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_1

    .line 1280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "userId":I
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1282
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "userId":I
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1284
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1285
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1287
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v9

    .line 1273
    return-void

    .line 1286
    :catchall_1
    move-exception v0

    .line 1287
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1286
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1267
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 1266
    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 1940
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1944
    :cond_0
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_1
    const/4 v5, 0x0

    .line 1946
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1947
    .local v7, "success":Z
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1948
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V

    .line 1949
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1950
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 1951
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1963
    :cond_2
    const-string/jumbo v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1964
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored: name is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_3
    const/4 v7, 0x1

    .line 1970
    .end local v7    # "success":Z
    :goto_0
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "settingsRestored: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_4
    if-eqz v7, :cond_5

    .line 1972
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1973
    const/4 v6, 0x0

    move-object v1, p0

    .line 1972
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v8

    .line 1978
    if-nez v7, :cond_6

    .line 1979
    const-string/jumbo v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const-string/jumbo v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1981
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1984
    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1985
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 1937
    return-void

    .line 1952
    .restart local v7    # "success":Z
    :cond_7
    :try_start_2
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1953
    const/4 v6, 0x0

    move-object v1, p0

    .line 1952
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1957
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1959
    :cond_8
    const/4 v7, 0x1

    .line 1951
    goto :goto_1

    .line 1967
    :cond_9
    sget-boolean v1, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored: attempting to restore named resource"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .local v7, "success":Z
    goto/16 :goto_0

    .line 1947
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "success":Z
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1

    .line 1984
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 870
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 871
    :try_start_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 872
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 873
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsOfLockWallpaperLocked(I)V

    .line 875
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_0

    .line 876
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 877
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 879
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 869
    return-void

    .line 870
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 9
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 884
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 885
    const/4 v6, 0x0

    .line 886
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 888
    .local v1, "cname":Landroid/content/ComponentName;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 889
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mLockWallpaperComponent:Landroid/content/ComponentName;

    .line 890
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindLockWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_1
    if-eqz v6, :cond_0

    .line 895
    :try_start_1
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "Failure starting previous lock wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :cond_0
    const/4 v6, 0x0

    .line 900
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 901
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 902
    .restart local v1    # "cname":Landroid/content/ComponentName;
    :goto_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_3
    if-eqz v6, :cond_1

    .line 907
    :try_start_3
    const-string/jumbo v0, "WallpaperManagerService"

    const-string/jumbo v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit v8

    .line 883
    return-void

    .line 889
    .local v1, "cname":Landroid/content/ComponentName;
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_4
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNextLockWallpaperComponent:Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v1, "cname":Landroid/content/ComponentName;
    goto :goto_0

    .line 891
    .end local v1    # "cname":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    .line 892
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .local v6, "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 901
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    .local v6, "e":Ljava/lang/RuntimeException;
    :cond_3
    :try_start_5
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v1    # "cname":Landroid/content/ComponentName;
    goto :goto_2

    .line 903
    .end local v1    # "cname":Landroid/content/ComponentName;
    :catch_1
    move-exception v7

    .line 904
    .restart local v7    # "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .local v6, "e":Ljava/lang/RuntimeException;
    goto :goto_3

    .line 884
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public systemRunning()V
    .locals 5

    .prologue
    .line 748
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "systemReady"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 750
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 751
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 752
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 754
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string/jumbo v3, "android.intent.action.USER_STOPPING"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    const-string/jumbo v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 758
    const-string/jumbo v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSmartBookSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    sget-boolean v3, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WallpaperManagerService"

    const-string/jumbo v4, "Smart Book support..."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_1
    const-string/jumbo v3, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 766
    :cond_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 806
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 807
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 806
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateLockWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v8, 0x0

    .line 2320
    if-nez p1, :cond_0

    .line 2321
    const-string/jumbo p1, ""

    .line 2323
    :cond_0
    :try_start_0
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2324
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2325
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2327
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 2328
    const/16 v5, 0x1f9

    .line 2329
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 2326
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2331
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "lock_wallpaper"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2333
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2334
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2335
    return-object v8

    .line 2337
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    return-object v2

    .line 2339
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2340
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "Error setting lock_wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2342
    return-object v8
.end method

.method updateVideoPathLocked(I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2653
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "updateVideoPathLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2656
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2657
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 2659
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 2660
    const/16 v5, 0x1f9

    .line 2661
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 2658
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2663
    :cond_1
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "ParcelFileDescriptor.open"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_2
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "video_path"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2665
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x38000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2666
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    return-object v2

    .line 2667
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2668
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-boolean v4, Lcom/android/server/wallpaper/WallpaperManagerService;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "updateVideoPathLocked updateVideoPathLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v8, 0x0

    .line 1242
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .line 1244
    :cond_0
    :try_start_0
    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1245
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1246
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1248
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1249
    const/16 v5, 0x1f9

    .line 1250
    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 1247
    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1252
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperFileName:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1254
    .local v3, "file":Ljava/io/File;
    const/high16 v4, 0x3c000000    # 0.0078125f

    .line 1253
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1255
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1256
    return-object v8

    .line 1258
    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    return-object v2

    .line 1260
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 1261
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "WallpaperManagerService"

    const-string/jumbo v5, "Error setting wallpaper"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    return-object v8
.end method

.method private isFlymeChildrenMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "children_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "com.android.settings"

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v1, "handlerToast":Landroid/os/Handler;
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$FlymeChildrenModeToast;

    invoke-direct {v0, p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$FlymeChildrenModeToast;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$FlymeChildrenModeToast;)V

    .local v0, "childrenModeToast":Lcom/android/server/wallpaper/WallpaperManagerService$FlymeChildrenModeToast;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v5
.end method

.method private onFlymeRemoveUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/FlymeWallpaperService;->onRemoveUser(I)V

    return-void
.end method

.method private sendFlymeWallpaperBroadcastAsUser(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeRestoredWallpaperComponent:Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeRestoredWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeRestoredWallpaperComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private setFlymeWallpaperSimultaneously()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "set_wallpaper_simultaneously"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public mzGetCurrentUserId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method public mzGetSyncObject()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public mzGetWallpaperMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method public startFlymeWallpaperService(Landroid/content/Context;)Lcom/android/server/wallpaper/FlymeWallpaperService;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/server/wallpaper/FlymeWallpaperService;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wallpaper/FlymeWallpaperService;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .local v0, "fws":Lcom/android/server/wallpaper/FlymeWallpaperService;
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/FlymeWallpaperService;->loadSettingsOfLockWallpaperLocked(I)V

    invoke-static {p1}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    return-object v0
.end method
