.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DATASHPAING_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.datashaping.DataShapingService"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 227
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 226
    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    .line 158
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 241
    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 387
    :try_start_0
    sget-boolean v3, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v3, :cond_0

    .line 388
    new-instance v2, Ljava/io/FileOutputStream;

    const-string/jumbo v3, "/proc/bootprof"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 390
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 391
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v2    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof entry"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 393
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v3, "BOOTPROF"

    const-string/jumbo v4, "Failure open /proc/bootprof, not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 420
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 237
    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 402
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 405
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 408
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 409
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 401
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 411
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 380
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v9, 0x1

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 252
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 264
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v8    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 278
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 279
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 294
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 295
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 304
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 308
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 312
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 316
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 319
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 323
    const/4 v0, -0x2

    .line 322
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 324
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 325
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 328
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 332
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 343
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 346
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 347
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 351
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 352
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 367
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 375
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 355
    .local v7, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_4

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    .line 359
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v9}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1

    .line 361
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_4
    throw v7
.end method

.method private startBootstrapServices()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 435
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 438
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    .line 440
    const/4 v4, 0x0

    .line 441
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string/jumbo v6, "SystemServer"

    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    const-string/jumbo v9, "Create message monitor service successfully ."

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string/jumbo v6, "msgmonitorservice"

    .line 446
    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 445
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 454
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 455
    const-class v9, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 454
    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 456
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 457
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 463
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 467
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 470
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/lights/LightsService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 474
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 477
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 480
    const-string/jumbo v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 482
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 490
    :cond_1
    :goto_1
    const-string/jumbo v6, "0"

    const-string/jumbo v9, "ro.mtk_antibricking_level"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 491
    .local v1, "disableAntiBricking":Z
    if-nez v1, :cond_2

    .line 493
    :try_start_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Recovery Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 495
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_2

    .line 496
    const-string/jumbo v6, "recovery"

    .line 497
    iget-object v9, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v9}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 496
    invoke-static {v6, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 498
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    :cond_2
    :goto_2
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Package Manager"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 509
    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 508
    invoke-static {v9, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 510
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 511
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 513
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string/jumbo v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 517
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 520
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 524
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 431
    return-void

    .line 447
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 448
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Starting message monitor service exception "

    invoke-static {v6, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 484
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v9, "Device encrypted - only parsing core apps"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 500
    .restart local v1    # "disableAntiBricking":Z
    :catch_1
    move-exception v2

    .line 501
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    move v6, v8

    .line 509
    goto :goto_3

    .line 447
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disableAntiBricking":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Throwable;
    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 535
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 536
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 537
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 536
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 542
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 530
    return-void
.end method

.method private startOtherServices()V
    .locals 120

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 551
    .local v3, "context":Landroid/content/Context;
    const/16 v34, 0x0

    .line 552
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v52, 0x0

    .line 553
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    const/16 v113, 0x0

    .line 554
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 555
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v85, 0x0

    .line 556
    .local v85, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 557
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 558
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v88, 0x0

    .line 559
    .local v88, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .line 560
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v89, 0x0

    .line 561
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v105, 0x0

    .line 562
    .local v105, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v119, 0x0

    .line 563
    .local v119, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v112, 0x0

    .line 564
    .local v112, "usb":Lcom/android/server/usb/UsbService;
    const/16 v103, 0x0

    .line 565
    .local v103, "serial":Lcom/android/server/SerialService;
    const/16 v92, 0x0

    .line 566
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v45, 0x0

    .line 567
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v72, 0x0

    .line 568
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v108, 0x0

    .line 569
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v50, 0x0

    .line 570
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v39, 0x0

    .line 571
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v82, 0x0

    .line 572
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v65, 0x0

    .line 573
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v42, 0x0

    .line 576
    .local v42, "cameraService":Lcom/android/server/camera/CameraService;
    const/16 v83, 0x0

    .line 578
    .local v83, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v67, 0x0

    .line 581
    .local v67, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const/16 v86, 0x0

    .line 584
    .local v86, "mute":Lcom/android/server/MuteKeyObserver;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 585
    .local v60, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 586
    .local v55, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 587
    .local v56, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 588
    .local v61, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 589
    .local v59, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 590
    .local v57, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 591
    .local v58, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v74

    .line 594
    .local v74, "isEmulator":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 597
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 602
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v109, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4f

    .line 604
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v109, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 606
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance v66, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_50

    .line 609
    .local v66, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 611
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 617
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v35, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 619
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_56
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_51

    move-object/from16 v34, v35

    .line 624
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/4 v4, 0x1

    .line 625
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v52

    .line 629
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    :try_start_6
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v84, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 633
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v84, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_7
    const-string/jumbo v4, "mobile"

    invoke-virtual/range {v84 .. v84}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_52

    move-object/from16 v83, v84

    .line 640
    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 643
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v114, Lcom/android/server/VibratorService;

    move-object/from16 v0, v114

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 645
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .local v114, "vibrator":Lcom/android/server/VibratorService;
    :try_start_9
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v114

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 647
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    new-instance v51, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_53

    .line 649
    .local v51, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_a
    const-string/jumbo v4, "consumer_ir"

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 653
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 652
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 655
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v118

    .line 657
    .local v118, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v118

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 659
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v73, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_54

    .line 662
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2f

    const/4 v4, 0x1

    move v5, v4

    .line 665
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_30

    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 663
    move-object/from16 v0, v73

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v119

    .line 666
    .local v119, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v119

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 667
    const-string/jumbo v4, "input"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v119

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 671
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 672
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/input/InputManagerService;->start()V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 680
    if-eqz v74, :cond_31

    .line 681
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v113, v114

    .line 704
    .end local v36    # "alarm":Landroid/app/IAlarmManager;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "contentService":Lcom/android/server/content/ContentService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v114    # "vibrator":Lcom/android/server/VibratorService;
    .end local v118    # "watchdog":Lcom/android/server/Watchdog;
    .end local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_1
    :goto_6
    const/16 v106, 0x0

    .line 705
    .local v106, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v94, 0x0

    .line 706
    .local v94, "notification":Landroid/app/INotificationManager;
    const/16 v70, 0x0

    .line 707
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v116, 0x0

    .line 708
    .local v116, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v75, 0x0

    .line 709
    .local v75, "location":Lcom/android/server/LocationManagerService;
    const/16 v53, 0x0

    .line 710
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v110, 0x0

    .line 711
    .local v110, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 712
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v98, 0x0

    .line 713
    .local v98, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    const/16 v96, 0x0

    .line 714
    .local v96, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v37, 0x0

    .line 715
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v79, 0x0

    .line 717
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v100, 0x0

    .line 721
    .local v100, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    const/16 v43, 0x0

    .line 725
    .local v43, "colorMode":Lcom/letv/leui/server/ColorModeService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v71, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v71

    move-object/from16 v1, v119

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 729
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4e

    move-object/from16 v70, v71

    .line 735
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string/jumbo v4, "accessibility"

    .line 737
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 736
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 744
    :cond_2
    :goto_8
    :try_start_f
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 751
    :goto_9
    :try_start_10
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PhoneBindService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v101, Lcom/android/server/phonebind/PhoneBindService;

    move-object/from16 v0, v101

    invoke-direct {v0, v3}, Lcom/android/server/phonebind/PhoneBindService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 753
    .end local v100    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .local v101, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :try_start_11
    const-string/jumbo v4, "leuiphonebind"

    move-object/from16 v0, v101

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4d

    move-object/from16 v100, v101

    .line 761
    .end local v101    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :goto_a
    :try_start_12
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "ColorMode"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v44, Lcom/letv/leui/server/ColorModeService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/letv/leui/server/ColorModeService;-><init>(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 763
    .end local v43    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .local v44, "colorMode":Lcom/letv/leui/server/ColorModeService;
    :try_start_13
    const-string/jumbo v4, "leuicolormode"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4c

    move-object/from16 v43, v44

    .line 769
    .end local v44    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 770
    if-nez v60, :cond_3

    .line 771
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 788
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 791
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    :goto_d
    :try_start_15
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_4b

    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3b

    if-nez v59, :cond_5

    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v78, Lcom/android/server/FlymeExtLockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/FlymeExtLockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    .line 809
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_17
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_4a

    move-object/from16 v77, v78

    .line 814
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_f
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 815
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 818
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_5
    if-nez v61, :cond_6

    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v107, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;

    move-object/from16 v0, v107

    move-object/from16 v1, v119

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 829
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v107, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_19
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_49

    move-object/from16 v106, v107

    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_10
    if-nez v59, :cond_7

    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    :cond_7
    :goto_11
    if-nez v57, :cond_8

    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_8
    :goto_12
    if-nez v59, :cond_9

    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v111, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v111

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 859
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v111, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1d
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v111

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_48

    move-object/from16 v110, v111

    .line 865
    .end local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_13
    if-nez v57, :cond_3a

    .line 867
    :try_start_1e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v90, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 869
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1f
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_47

    move-object/from16 v89, v90

    .line 875
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_14
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v91, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v91

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 877
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v91, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_21
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_46

    move-object/from16 v6, v91

    .line 883
    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_15
    :try_start_22
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 885
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 886
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 884
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 888
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_23
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_45

    .line 893
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 896
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 895
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 900
    if-eqz v4, :cond_b

    .line 902
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 906
    :cond_b
    :try_start_24
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 909
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v49, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 910
    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 911
    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_44

    move-object/from16 v48, v49

    .line 917
    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_17
    :try_start_26
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v105

    .line 920
    .local v105, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 919
    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 926
    .end local v105    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_18
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "persist.mtk.datashaping.support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 928
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Start DataShaping Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.mediatek.datashaping.DataShapingService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    .line 937
    :cond_c
    :goto_19
    if-nez v59, :cond_d

    .line 939
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string/jumbo v4, "updatelock"

    .line 941
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 940
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16

    .line 952
    :cond_d
    :goto_1a
    if-eqz v85, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_36

    .line 960
    :cond_e
    :goto_1b
    if-eqz v34, :cond_f

    .line 961
    :try_start_29
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    .line 967
    :cond_f
    :goto_1c
    if-eqz v52, :cond_10

    .line 968
    :try_start_2a
    invoke-virtual/range {v52 .. v52}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_19

    .line 973
    :cond_10
    :goto_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 975
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 974
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v94

    .line 976
    .local v94, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 980
    if-nez v56, :cond_11

    .line 982
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1a

    .line 984
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string/jumbo v4, "location"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_43

    move-object/from16 v75, v76

    .line 990
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    :goto_1e
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    new-instance v54, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v54

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b

    .line 992
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v54, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_42

    move-object/from16 v53, v54

    .line 998
    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_1f
    if-nez v59, :cond_12

    .line 1000
    :try_start_2f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string/jumbo v4, "search"

    .line 1002
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 1001
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 1009
    :goto_20
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string/jumbo v4, "search_engine"

    .line 1011
    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    .line 1010
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1d

    .line 1019
    :cond_12
    :goto_21
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string/jumbo v4, "dropbox"

    .line 1021
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1020
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1e

    .line 1026
    :goto_22
    if-nez v59, :cond_13

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v117, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v117

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1f

    .line 1031
    .end local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v117, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_33
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_41

    move-object/from16 v116, v117

    .line 1038
    .end local v117    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13
    :goto_23
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v40, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_20

    .line 1040
    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .local v40, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_35
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_40

    move-object/from16 v39, v40

    .line 1047
    .end local v40    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_24
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1048
    const-string/jumbo v4, "ro.mtk_audio_profiles"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1050
    :try_start_36
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string/jumbo v4, "audioprofile"

    .line 1052
    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    .line 1051
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_21

    .line 1060
    :cond_14
    :goto_25
    const-string/jumbo v4, "1"

    const-string/jumbo v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1062
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string/jumbo v4, "sensorhubservice"

    .line 1064
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    .line 1063
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_22

    .line 1071
    :cond_15
    :goto_26
    if-nez v59, :cond_16

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1076
    :cond_16
    :try_start_38
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v72

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1078
    move-object/from16 v0, v72

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_23

    .line 1084
    :goto_27
    if-nez v59, :cond_1a

    .line 1085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1090
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1092
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1091
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1090
    if-eqz v4, :cond_19

    .line 1094
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1098
    :cond_19
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v104, Lcom/android/server/SerialService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_24

    .line 1101
    .end local v103    # "serial":Lcom/android/server/SerialService;
    .local v104, "serial":Lcom/android/server/SerialService;
    :try_start_3a
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3f

    move-object/from16 v103, v104

    .line 1108
    .end local v104    # "serial":Lcom/android/server/SerialService;
    :cond_1a
    :goto_28
    :try_start_3b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Mute Observer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    new-instance v87, Lcom/android/server/MuteKeyObserver;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/android/server/MuteKeyObserver;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_25

    .end local v86    # "mute":Lcom/android/server/MuteKeyObserver;
    .local v87, "mute":Lcom/android/server/MuteKeyObserver;
    move-object/from16 v86, v87

    .line 1114
    .end local v87    # "mute":Lcom/android/server/MuteKeyObserver;
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1118
    if-nez v59, :cond_1d

    .line 1119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1123
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1127
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1133
    :cond_1d
    :try_start_3c
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_26

    .line 1144
    :goto_2a
    :try_start_3d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const-string/jumbo v4, "samplingprofiler"

    .line 1146
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_27

    .line 1151
    :goto_2b
    if-nez v57, :cond_1e

    if-eqz v58, :cond_37

    .line 1161
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1e
    :goto_2c
    :try_start_3e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    new-instance v46, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_29

    .line 1163
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v46, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3f
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_3e

    move-object/from16 v45, v46

    .line 1168
    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_2d
    if-nez v57, :cond_1f

    .line 1170
    :try_start_40
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v41, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2a

    .line 1177
    :cond_1f
    :goto_2e
    if-nez v59, :cond_20

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_20
    goto/16 :goto_flyme_0

    if-nez v59, :cond_21

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_21
    :goto_flyme_0
    :goto_2f
    if-nez v59, :cond_22

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1202
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1207
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1210
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1214
    :cond_25
    if-nez v59, :cond_26

    .line 1216
    :try_start_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v80, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2c

    .line 1218
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_42
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3c

    move-object/from16 v79, v80

    .line 1223
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1228
    :try_start_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2d

    .line 1236
    :cond_26
    :goto_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1239
    const-string/jumbo v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1241
    :try_start_44
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "PerfService state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    new-instance v99, Lcom/mediatek/perfservice/PerfServiceStateNotifier;

    invoke-direct/range {v99 .. v99}, Lcom/mediatek/perfservice/PerfServiceStateNotifier;-><init>()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2e

    .line 1243
    .end local v98    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v99, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v99

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3b

    move-object/from16 v98, v99

    .line 1250
    .end local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :goto_32
    :try_start_46
    new-instance v97, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2f

    .line 1252
    .end local v96    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v97, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v95, 0x0

    .line 1253
    .local v95, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_47
    new-instance v95, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v95    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v95

    move-object/from16 v1, v97

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .line 1255
    .local v95, "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string/jumbo v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v95

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    if-eqz v95, :cond_27

    .line 1257
    const-string/jumbo v4, "mtk-perfservice"

    invoke-interface/range {v95 .. v95}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3a

    :cond_27
    move-object/from16 v96, v97

    .line 1267
    .end local v95    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_28
    :goto_33
    if-nez v59, :cond_29

    .line 1268
    const-string/jumbo v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1267
    if-eqz v4, :cond_29

    .line 1270
    :try_start_48
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    new-instance v68, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_30

    .line 1272
    .end local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v68, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_49
    const-string/jumbo v4, "mtkhdmi"

    .line 1273
    invoke-virtual/range {v68 .. v68}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1272
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_39

    move-object/from16 v67, v68

    .line 1281
    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    :cond_29
    :goto_34
    if-nez v59, :cond_2a

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1287
    :cond_2a
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v102

    .line 1288
    .local v102, "safeMode":Z
    if-eqz v102, :cond_39

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1291
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1298
    :goto_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v82

    .end local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v82, Lcom/android/server/MmsServiceBroker;

    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p0

    move-object/from16 v4, v119

    move-object/from16 v5, v116

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_4a
    invoke-virtual/range {v113 .. v113}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_31

    :goto_36
    :try_start_4b
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/phonebind/PhoneBindService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_32

    :goto_37
    if-eqz v77, :cond_2b

    :try_start_4c
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_33

    :cond_2b
    :goto_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1330
    :try_start_4d
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_34

    .line 1335
    :goto_39
    if-eqz v102, :cond_2c

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1342
    :cond_2c
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .line 1343
    .local v47, "config":Landroid/content/res/Configuration;
    new-instance v81, Landroid/util/DisplayMetrics;

    invoke-direct/range {v81 .. v81}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1344
    .local v81, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/view/WindowManager;

    .line 1345
    .local v115, "w":Landroid/view/WindowManager;
    invoke-interface/range {v115 .. v115}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1346
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v81

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1350
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_35

    .line 1356
    :goto_3a
    :try_start_4f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_36

    .line 1363
    :goto_3b
    :try_start_50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v102

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_37

    .line 1369
    :goto_3c
    move-object v13, v7

    .line 1370
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1371
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1372
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v48

    .line 1373
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v89

    .line 1374
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v116

    .line 1375
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v70

    .line 1376
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v75

    .line 1377
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v53

    .line 1378
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v92

    .line 1379
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v45

    .line 1380
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v110

    .line 1381
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v106

    .line 1382
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v37

    .line 1383
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v72

    .line 1384
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v108

    .line 1385
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v79

    .line 1386
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v39

    .line 1387
    .local v17, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v31, v82

    .line 1389
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v83

    .line 1391
    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v33, v0

    .line 1393
    .local v33, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v32, v96

    .line 1396
    .local v32, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v18, v86

    .line 1403
    .local v18, "muteF":Lcom/android/server/MuteKeyObserver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v33}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/MuteKeyObserver;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1575
    :try_start_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2d

    .line 1576
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_38

    .line 549
    :cond_2d
    :goto_3d
    return-void

    .line 620
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v18    # "muteF":Lcom/android/server/MuteKeyObserver;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v102    # "safeMode":Z
    .end local v115    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v36, "alarm":Landroid/app/IAlarmManager;
    .restart local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v85    # "mountService":Landroid/os/storage/IMountService;
    .restart local v86    # "mute":Lcom/android/server/MuteKeyObserver;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v103    # "serial":Lcom/android/server/SerialService;
    .local v105, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    .local v119, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v64

    .line 621
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v64, "e":Ljava/lang/Throwable;
    :goto_3e
    :try_start_52
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_52} :catch_1

    goto/16 :goto_0

    .line 693
    .end local v52    # "contentService":Lcom/android/server/content/ContentService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_1
    move-exception v63

    .local v63, "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v108, v109

    .line 694
    .end local v36    # "alarm":Landroid/app/IAlarmManager;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .end local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3f
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .line 626
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .restart local v36    # "alarm":Landroid/app/IAlarmManager;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 634
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    :catch_2
    move-exception v64

    .line 635
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_40
    :try_start_53
    const-string/jumbo v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_53} :catch_1

    goto/16 :goto_2

    .line 664
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .local v36, "alarm":Landroid/app/IAlarmManager;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v118    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2f
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    .line 665
    :cond_30
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 682
    .local v119, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_31
    :try_start_54
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_32

    .line 683
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 693
    .end local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_3
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v72, v73

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v113, v114

    .end local v114    # "vibrator":Lcom/android/server/VibratorService;
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3f

    .line 684
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 685
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 684
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 686
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 687
    :cond_33
    if-eqz v55, :cond_34

    .line 688
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 690
    :cond_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_54} :catch_3

    goto/16 :goto_5

    .line 730
    .end local v36    # "alarm":Landroid/app/IAlarmManager;
    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "contentService":Lcom/android/server/content/ContentService;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v114    # "vibrator":Lcom/android/server/VibratorService;
    .end local v118    # "watchdog":Lcom/android/server/Watchdog;
    .end local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v94, "notification":Landroid/app/INotificationManager;
    .restart local v96    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v100    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v64

    .line 731
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 738
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v64

    .line 739
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 745
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v64

    .line 746
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 754
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v64

    .line 755
    .end local v100    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting phoneBind service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 764
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v64

    .line 765
    .end local v43    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "starting colorMode service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 777
    .end local v64    # "e":Ljava/lang/Throwable;
    :cond_35
    :try_start_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 779
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 778
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_9

    move-result-object v85

    .local v85, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_c

    .line 780
    .local v85, "mountService":Landroid/os/storage/IMountService;
    :catch_9
    move-exception v64

    .line 781
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 792
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    :catch_a
    move-exception v64

    .line 793
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 810
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v64

    .line 811
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 830
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v64

    .line 831
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 840
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v64

    .line 841
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 850
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v64

    .line 851
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 860
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v64

    .line 861
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 870
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v64

    .line 871
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 878
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v64

    .line 879
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 889
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v88

    .line 890
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_49
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 912
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v64

    .line 913
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 921
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v105    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_14
    move-exception v64

    .line 922
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 930
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v64

    .line 931
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure to start DataShaping Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 942
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v64

    .line 943
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 954
    .end local v64    # "e":Ljava/lang/Throwable;
    :cond_36
    :try_start_56
    invoke-interface/range {v85 .. v85}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_56} :catch_17

    goto/16 :goto_1b

    .line 955
    :catch_17
    move-exception v69

    .local v69, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_1b

    .line 962
    .end local v69    # "ignored":Landroid/os/RemoteException;
    :catch_18
    move-exception v64

    .line 963
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 969
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v64

    .line 970
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 985
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v94, "notification":Landroid/app/INotificationManager;
    :catch_1a
    move-exception v64

    .line 986
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 993
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v64

    .line 994
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1003
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v64

    .line 1004
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 1012
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v64

    .line 1013
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1022
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v64

    .line 1023
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1032
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v64

    .line 1033
    .end local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1041
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v64

    .line 1042
    .end local v39    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1053
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v64

    .line 1054
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting AudioProfile Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1065
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v64

    .line 1066
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "starting SensorHub Service"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 1080
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v64

    .line 1081
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1102
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v64

    .line 1103
    .end local v103    # "serial":Lcom/android/server/SerialService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 1111
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v64

    .line 1112
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting MuteKeyObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1135
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v86    # "mute":Lcom/android/server/MuteKeyObserver;
    :catch_26
    move-exception v64

    .line 1136
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1147
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v64

    .line 1148
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1153
    .end local v64    # "e":Ljava/lang/Throwable;
    :cond_37
    :try_start_57
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    new-instance v93, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_28

    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v92, v93

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_2c

    .line 1155
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_28
    move-exception v64

    .line 1156
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1164
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_29
    move-exception v64

    .line 1165
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1172
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v64

    .line 1173
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1185
    .end local v64    # "e":Ljava/lang/Throwable;
    :cond_38
    :try_start_58
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    new-instance v38, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2b

    .line 1187
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_59
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_3d

    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_2f

    .line 1188
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_2b
    move-exception v64

    .line 1189
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1219
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v64

    .line 1220
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1230
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v64

    .line 1231
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1244
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v64

    .line 1245
    .end local v98    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FAIL starting PerfServiceStateNotifier"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1260
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v64

    .line 1261
    .end local v96    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1274
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v64

    .line 1275
    .end local v67    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v64    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v64

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1294
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v102    # "safeMode":Z
    :cond_39
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_35

    .line 1304
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_31
    move-exception v64

    .line 1305
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1311
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v64

    .line 1312
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making phone bind Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1319
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_33
    move-exception v64

    .line 1320
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1331
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v64

    .line 1332
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1351
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v47    # "config":Landroid/content/res/Configuration;
    .restart local v81    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v115    # "w":Landroid/view/WindowManager;
    :catch_35
    move-exception v64

    .line 1352
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1357
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v64

    .line 1358
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1364
    .end local v64    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v64

    .line 1365
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1578
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .restart local v18    # "muteF":Lcom/android/server/MuteKeyObserver;
    .restart local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_38
    move-exception v64

    .line 1579
    .restart local v64    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1274
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v18    # "muteF":Lcom/android/server/MuteKeyObserver;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v47    # "config":Landroid/content/res/Configuration;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v102    # "safeMode":Z
    .end local v115    # "w":Landroid/view/WindowManager;
    .restart local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    :catch_39
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v67, v68

    .end local v68    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v67, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto/16 :goto_55

    .line 1260
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v67, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_3a
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v96, v97

    .end local v97    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v96, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_54

    .line 1244
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v96, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_3b
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v98, v99

    .end local v99    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .local v98, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    goto/16 :goto_53

    .line 1219
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v98, "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    :catch_3c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_52

    .line 1188
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3d
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v37, v38

    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_51

    .line 1164
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v45, v46

    .end local v46    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_50

    .line 1102
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v86    # "mute":Lcom/android/server/MuteKeyObserver;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v104    # "serial":Lcom/android/server/SerialService;
    :catch_3f
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v103, v104

    .end local v104    # "serial":Lcom/android/server/SerialService;
    .local v103, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_4f

    .line 1041
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v40    # "audioService":Lcom/android/server/audio/AudioService;
    .local v103, "serial":Lcom/android/server/SerialService;
    :catch_40
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v39, v40

    .end local v40    # "audioService":Lcom/android/server/audio/AudioService;
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_4e

    .line 1032
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v39, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v117    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v116, v117

    .end local v117    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v116, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_4d

    .line 993
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v116, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_42
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v53, v54

    .end local v54    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4c

    .line 985
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v75, v76

    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .local v75, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_4b

    .line 912
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v75, "location":Lcom/android/server/LocationManagerService;
    .local v94, "notification":Landroid/app/INotificationManager;
    .restart local v105    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_44
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v48, v49

    .end local v49    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_4a

    .line 889
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_45
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    goto/16 :goto_49

    .line 878
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_46
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v91

    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_48

    .line 870
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_47
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v89, v90

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_47

    .line 860
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_48
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v110, v111

    .end local v111    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v110, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_46

    .line 830
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v110, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_49
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v106, v107

    .end local v107    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v106, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_45

    .line 810
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v106, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_4a
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v77, v78

    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_44

    .line 801
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_4b
    move-exception v62

    .local v62, "e":Landroid/os/RemoteException;
    goto/16 :goto_e

    .line 764
    .end local v62    # "e":Landroid/os/RemoteException;
    .restart local v44    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v85    # "mountService":Landroid/os/storage/IMountService;
    :catch_4c
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v43, v44

    .end local v44    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .local v43, "colorMode":Lcom/letv/leui/server/ColorModeService;
    goto/16 :goto_43

    .line 754
    .end local v64    # "e":Ljava/lang/Throwable;
    .local v43, "colorMode":Lcom/letv/leui/server/ColorModeService;
    .restart local v101    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :catch_4d
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v100, v101

    .end local v101    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .local v100, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    goto/16 :goto_42

    .line 730
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v100, "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    :catch_4e
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v70, v71

    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_41

    .line 693
    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v43    # "colorMode":Lcom/letv/leui/server/ColorModeService;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v96    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v98    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .end local v100    # "phoneBind":Lcom/android/server/phonebind/PhoneBindService;
    .end local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v36, "alarm":Landroid/app/IAlarmManager;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    .local v119, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_4f
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3f

    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_50
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v108, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3f

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_51
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3f

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_52
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v83, v84

    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v83, "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3f

    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "vibrator":Lcom/android/server/VibratorService;
    :catch_53
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v113, v114

    .end local v114    # "vibrator":Lcom/android/server/VibratorService;
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3f

    .end local v36    # "alarm":Landroid/app/IAlarmManager;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v114    # "vibrator":Lcom/android/server/VibratorService;
    :catch_54
    move-exception v63

    .restart local v63    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v50, v51

    .end local v51    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v108, v109

    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v113, v114

    .end local v114    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v113    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3f

    .line 634
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v108    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "alarm":Landroid/app/IAlarmManager;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v113, "vibrator":Lcom/android/server/VibratorService;
    :catch_55
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v83, v84

    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_40

    .line 620
    .end local v64    # "e":Ljava/lang/Throwable;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v52, "contentService":Lcom/android/server/content/ContentService;
    .local v83, "mom":Lcom/mediatek/mom/MobileManagerService;
    :catch_56
    move-exception v64

    .restart local v64    # "e":Ljava/lang/Throwable;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3e

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v36    # "alarm":Landroid/app/IAlarmManager;
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v52    # "contentService":Lcom/android/server/content/ContentService;
    .end local v64    # "e":Ljava/lang/Throwable;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v83    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    .end local v109    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v113    # "vibrator":Lcom/android/server/VibratorService;
    .end local v119    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceNotifier":Lcom/mediatek/perfservice/PerfServiceStateNotifier;
    .restart local v116    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_3a
    move-object/from16 v2, v88

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_19

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v106    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v110    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_3b
    move-object/from16 v2, v88

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_34
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1602
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1603
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1604
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1603
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1606
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1601
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1586
    const/4 v1, 0x0

    .line 1587
    .local v1, "ret":Landroid/content/ComponentName;
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1592
    .local v1, "ret":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 1593
    const-string/jumbo v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :goto_0
    return-object v1

    .line 1595
    :cond_0
    const-string/jumbo v2, "ANR_DEBUG"

    const-string/jumbo v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
