.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final ACTION_SCREEN_BRIGHTNESS_BOOST_CHANGED:Ljava/lang/String; = "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final DRAW_WAKE_LOCK:I = 0x80

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x8

.field public static final GO_TO_SLEEP_REASON_SHUTDOWN:I = 0x7

.field public static final GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final MTK_ULTRA_DIMMING_SUPPORT:Z

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final POWER_HINT_BALANCE:I = 0x103

.field public static final POWER_HINT_PERFORMANCE_BOOST:I = 0x102

.field public static final POWER_HINT_POWER_SAVING:I = 0x101

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final ULTRA_DIMMING_BRIGHTNESS_MINIMUM:I = 0x4

.field public static final ULTRA_DIMMING_PHYSICAL_CONTROL:I = 0xa

.field public static final ULTRA_DIMMING_PHYSICAL_MININUM:I = 0x8

.field public static final ULTRA_DIMMING_VIRTUAL_CONTROL:I = 0x50

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1

.field public static final USER_ACTIVITY_EVENT_LONG_TOUCH:I = 0x3

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final WAKE_UP_REASON_SHUTDOWN:I = 0x1

.field public static final WRITE_MISC_ONLY:Ljava/lang/String; = "WRITE_MISC_ONLY"

.field private static final dimmingGammaHighInv:F


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIDeviceIdleController:Landroid/os/IDeviceIdleController;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1395
    const-string/jumbo v0, "ro.mtk_ultra_dimming_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1394
    sput-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    .line 1499
    const-wide v0, 0x3fd4141420000000L    # 0.3137255012989044

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 1500
    const-wide v2, 0x3fa4141420000000L    # 0.03921568766236305

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 1498
    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/os/PowerManager;->dimmingGammaHighInv:F

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPowerManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 458
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 459
    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 456
    return-void
.end method

.method public static dimmingPhysicalToVirtual(I)I
    .locals 4
    .param p0, "physicalValue"    # I

    .prologue
    .line 1509
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-nez v0, :cond_0

    .line 1510
    return p0

    .line 1512
    :cond_0
    const/16 v0, 0xa

    if-gt p0, v0, :cond_1

    .line 1513
    int-to-float v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    .line 1514
    const/high16 v1, 0x42a00000    # 80.0f

    .line 1513
    mul-float/2addr v0, v1

    .line 1514
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1513
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 1517
    :cond_1
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    sget v2, Landroid/os/PowerManager;->dimmingGammaHighInv:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 1518
    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 1517
    mul-double/2addr v0, v2

    .line 1518
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 1517
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static useTwilightAdjustmentFeature()Z
    .locals 2

    .prologue
    .line 529
    const-string/jumbo v0, "persist.power.usetwilightadj"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2
    .param p0, "levelAndFlags"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 593
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :sswitch_0
    if-nez p1, :cond_0

    .line 606
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    return-void

    .line 593
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0x1a -> :sswitch_0
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public boostScreenBrightness(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 854
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDefaultScreenBrightnessSetting()I
    .locals 4

    .prologue
    const v3, 0x10e005d

    .line 507
    sget-boolean v2, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 508
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 510
    .local v0, "defaultValue":I
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 511
    const v3, 0x80c0008

    .line 510
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 512
    .local v1, "screenBrightnessVirtualValues":Z
    if-nez v1, :cond_0

    .line 513
    invoke-static {v0}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result v0

    .line 516
    :cond_0
    return v0

    .line 519
    .end local v0    # "defaultValue":I
    .end local v1    # "screenBrightnessVirtualValues":Z
    :cond_1
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    return v2
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 4

    .prologue
    const v3, 0x10e005c

    .line 485
    sget-boolean v2, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 486
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 488
    .local v1, "settingMaximum":I
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 489
    const v3, 0x80c0008

    .line 488
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 490
    .local v0, "screenBrightnessVirtualValues":Z
    if-nez v0, :cond_0

    .line 491
    invoke-static {v1}, Landroid/os/PowerManager;->dimmingPhysicalToVirtual(I)I

    move-result v1

    .line 494
    :cond_0
    return v1

    .line 497
    .end local v0    # "screenBrightnessVirtualValues":Z
    .end local v1    # "settingMaximum":I
    :cond_1
    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    return v2
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 470
    sget-boolean v0, Landroid/os/PowerManager;->MTK_ULTRA_DIMMING_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x4

    return v0

    .line 473
    :cond_0
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 474
    const v1, 0x10e005b

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1423
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1426
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public goToSleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 695
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 694
    return-void
.end method

.method public goToSleep(JII)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDeviceIdleMode()Z
    .locals 2

    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1060
    monitor-enter p0

    .line 1061
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v1, :cond_0

    .line 1063
    const-string/jumbo v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1062
    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1067
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v1, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    .line 1060
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isInteractive()Z
    .locals 2

    .prologue
    .line 979
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isInteractive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isPowerSaveMode()Z
    .locals 2

    .prologue
    .line 1011
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isPowerSaveMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isProximitySensorPositive()Z
    .locals 2

    .prologue
    .line 1406
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isProximitySensorPositive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1409
    const/4 v1, 0x0

    return v1
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 2

    .prologue
    .line 869
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenBrightnessBoosted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isScreenInDimState()Z
    .locals 2

    .prologue
    .line 1467
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenInDimState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1470
    const/4 v1, 0x0

    return v1
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 915
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public nap(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 832
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2
    .param p1, "levelAndFlags"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 588
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public powerHint(II)V
    .locals 2
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->powerHint(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 996
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resetTouch()V
    .locals 2

    .prologue
    .line 1453
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->resetTouch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    return-void

    .line 1454
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBacklightBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 887
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setBacklightOffForWfd(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 901
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightOffForWfd(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 1028
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1439
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1442
    const/4 v1, 0x0

    return v1
.end method

.method public shutdown(ZZ)V
    .locals 2
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    .line 1083
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->shutdown(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity(JII)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 670
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity(JZ)V
    .locals 3
    .param p1, "when"    # J
    .param p3, "noChangeLights"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 640
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 639
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 638
    return-void

    :cond_0
    move v0, v1

    .line 640
    goto :goto_0
.end method

.method public wakeUp(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 747
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const-string/jumbo v2, "wakeUp"

    iget-object v3, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public wakeUp(JLjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public wakeUpByReason(JI)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "reason"    # I

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPowerManager;->wakeUpByReason(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
