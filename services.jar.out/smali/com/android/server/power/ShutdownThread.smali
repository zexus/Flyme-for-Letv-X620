.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;,
        Lcom/android/server/power/ShutdownThread$1;
    }
.end annotation


# static fields
.field private static final ACTION_PRE_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_PRE_SHUTDOWN"

.field private static final ACTION_SHUTDOWN_IPO:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNCRYPT_STATUS_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_status"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static bConfirmForAnimation:Z = false

.field private static bPlayaudio:Z = false

.field private static beginAnimationTime:J = 0x0L

.field private static final changeToNormalMessage:Ljava/lang/String; = "change shutdown flow from ipo to normal"

.field private static command:Ljava/lang/String; = null

.field private static endAnimationTime:J = 0x0L

.field private static mDelayDim:Ljava/lang/Runnable; = null

.field private static mEnableAnimating:Z = false

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt; = null

.field private static mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager; = null

.field private static mReboot:Z = false

.field private static mRebootReason:Ljava/lang/String; = null

.field private static mRebootSafeMode:Z = false

.field private static mRebootUpdate:Z = false

.field private static mShutdownFlow:I = 0x0

.field private static mShutdownThreadSync:Ljava/lang/Object; = null

.field private static final mSpew:Z = true

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShutdownManager:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return v0
.end method

.method static synthetic -get6()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get7()Lcom/android/server/power/ShutdownThread;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    return p0
.end method

.method static synthetic -set2(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 122
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 124
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 125
    const/4 v1, 0x4

    .line 124
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 126
    const/16 v1, 0xd

    .line 124
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 141
    sput-object v3, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 156
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 157
    sput-wide v4, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 158
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 159
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 162
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    .line 173
    sput-object v3, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 367
    new-instance v0, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$1;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    .line 196
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 200
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 199
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 481
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 482
    :try_start_0
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 483
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "Shutdown sequence already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 484
    return-void

    .line 486
    :cond_0
    const/4 v4, 0x1

    :try_start_1
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 490
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->playAudio()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 492
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v4, :cond_1

    .line 494
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 495
    sput-boolean v10, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 543
    :cond_1
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 547
    .local v2, "pd":Landroid/app/ProgressDialog;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v5, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v5}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 550
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 551
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->configShutdownAnimation(Landroid/content/Context;)Z

    move-result v1

    .line 552
    .local v1, "mShutOffAnimation":Z
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->getScreenTurnOffTime(Landroid/content/Context;)I

    move-result v3

    .line 553
    .local v3, "screenTurnOffTime":I
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v5

    .line 554
    :try_start_2
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mEnableAnimating:Z

    if-eqz v4, :cond_2

    .line 555
    if-eqz v1, :cond_5

    .line 556
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "mIBootAnim.isCustBootAnim() is true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->bootanimCust()V

    .line 586
    :goto_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    int-to-long v8, v3

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v5

    .line 589
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 590
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 593
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 595
    :try_start_3
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 596
    const-string/jumbo v6, "ShutdownThread-cpu"

    const/4 v7, 0x1

    .line 595
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 597
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 598
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 605
    :goto_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 606
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 608
    :try_start_4
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 609
    const-string/jumbo v6, "ShutdownThread-screen"

    const/16 v7, 0x1a

    .line 608
    invoke-virtual {v5, v7, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 610
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 611
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 618
    :cond_3
    :goto_2
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    sget-object v5, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 619
    :cond_4
    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v4, v12, :cond_6

    .line 620
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "ShutdownThread exists already"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 622
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v5

    .line 623
    :try_start_5
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    .line 480
    :goto_3
    return-void

    .line 481
    .end local v1    # "mShutOffAnimation":Z
    .end local v2    # "pd":Landroid/app/ProgressDialog;
    .end local v3    # "screenTurnOffTime":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 579
    .restart local v1    # "mShutOffAnimation":Z
    .restart local v2    # "pd":Landroid/app/ProgressDialog;
    .restart local v3    # "screenTurnOffTime":I
    :cond_5
    :try_start_6
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v4}, Lcom/android/server/power/ShutdownThread;->showShutdownWelcome(Landroid/content/Context;Z)V

    .line 580
    const-string/jumbo v4, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show leui shutdown view, beginAnimationTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 582
    const/16 v3, 0x1388

    goto/16 :goto_0

    .line 553
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 612
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 613
    .restart local v0    # "e":Ljava/lang/SecurityException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "No permission to acquire wake lock"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v11, v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2

    .line 622
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 626
    :cond_6
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "Thread state is not normal! froce to shutdown!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 629
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 630
    const/4 v5, 0x7

    .line 629
    invoke-virtual {v4, v6, v7, v5, v10}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 631
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_3

    .line 634
    :cond_7
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v4}, Lcom/android/server/power/ShutdownThread;->start()V

    goto :goto_3
.end method

.method private static bootanimCust()V
    .locals 8

    .prologue
    .line 675
    const-string/jumbo v4, "service.shutanim.running"

    const-string/jumbo v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "set service.shutanim.running to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x0

    .line 680
    .local v2, "isRotaionEnabled":Z
    :try_start_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 681
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x1

    .line 680
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 682
    :goto_0
    if-eqz v2, :cond_1

    .line 684
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 683
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 685
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_0

    .line 686
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 688
    :cond_0
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 689
    const-string/jumbo v5, "accelerometer_rotation"

    const/4 v6, 0x0

    .line 688
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 690
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 691
    const-string/jumbo v5, "accelerometer_rotation_restore"

    const/4 v6, 0x1

    .line 690
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    sput-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 702
    :try_start_1
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 701
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 703
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    if-eqz v3, :cond_2

    .line 704
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 710
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->startBootAnimation()V

    .line 672
    return-void

    .line 680
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 694
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v5, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 706
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 707
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private static checkEncryptionCondition()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1316
    const-string/jumbo v6, "vold.encrypt_progress"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1317
    .local v1, "encryptionProgress":Ljava/lang/String;
    const-string/jumbo v6, "100"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1322
    :cond_0
    const-string/jumbo v6, "ro.crypto.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "encrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1323
    return v4

    .line 1318
    :cond_1
    const-string/jumbo v4, "ShutdownThread"

    const-string/jumbo v6, "encryption in progress"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    return v5

    .line 1326
    :cond_2
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 1325
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1327
    .local v2, "service":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 1328
    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v3

    .line 1329
    .local v3, "type":I
    const-string/jumbo v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "phone encrypted type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    if-ne v3, v4, :cond_3

    :goto_0
    return v4

    :cond_3
    move v4, v5

    goto :goto_0

    .line 1332
    .end local v2    # "service":Landroid/os/storage/IMountService;
    .end local v3    # "type":I
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return v5
.end method

.method private static checkShutdownFlow()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 754
    const-string/jumbo v11, "sys.ipo.disable"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "IPODisableProp":Ljava/lang/String;
    const-string/jumbo v11, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x0

    .line 756
    .local v4, "isIPOEnabled":Z
    :goto_0
    const-string/jumbo v11, "ro.mtk_ipo_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 757
    .local v5, "isIPOsupport":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkEncryptionCondition()Z

    move-result v9

    .line 758
    .local v9, "passIPOEncryptionCondition":Z
    const/4 v6, 0x0

    .line 759
    .local v6, "isSafeMode":Z
    const-string/jumbo v11, "ro.mtk_smartbook_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 760
    .local v8, "isSmartBookSupport":Z
    const/4 v7, 0x0

    .line 762
    .local v7, "isSmartBookPluggedIn":Z
    if-eqz v8, :cond_0

    .line 764
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "display"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 763
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 765
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isSmartBookPluggedIn()Z

    move-result v7

    .line 770
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v7    # "isSmartBookPluggedIn":Z
    :cond_0
    :try_start_0
    const-string/jumbo v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 769
    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 771
    .local v10, "wm":Landroid/view/IWindowManager;
    if-eqz v10, :cond_1

    .line 772
    invoke-interface {v10}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 777
    .end local v6    # "isSafeMode":Z
    .end local v10    # "wm":Landroid/view/IWindowManager;
    :cond_1
    :goto_1
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: IPO_Support="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 778
    const-string/jumbo v13, " mReboot="

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 778
    sget-boolean v13, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 779
    const-string/jumbo v13, " sys.ipo.disable="

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 780
    const-string/jumbo v13, " isSafeMode="

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 781
    const-string/jumbo v13, " passEncryptionCondition="

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 782
    const-string/jumbo v13, " Smartbook MHL PluggedIn="

    .line 777
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-eqz v5, :cond_2

    sget-boolean v11, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v11, :cond_4

    .line 787
    :cond_2
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 788
    return-void

    .line 755
    .end local v4    # "isIPOEnabled":Z
    .end local v5    # "isIPOsupport":Z
    .end local v8    # "isSmartBookSupport":Z
    .end local v9    # "passIPOEncryptionCondition":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "isIPOEnabled":Z
    goto/16 :goto_0

    .line 773
    .restart local v5    # "isIPOsupport":Z
    .restart local v6    # "isSafeMode":Z
    .restart local v8    # "isSmartBookSupport":Z
    .restart local v9    # "passIPOEncryptionCondition":Z
    :catch_0
    move-exception v2

    .line 774
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 784
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v6    # "isSafeMode":Z
    :cond_4
    if-eqz v4, :cond_2

    .line 785
    if-nez v6, :cond_2

    if-eqz v9, :cond_2

    .line 786
    if-nez v7, :cond_2

    .line 792
    :try_start_1
    sget-object v11, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v11, v11, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 793
    const-string/jumbo v12, "ipo_setting"

    const/4 v13, 0x1

    .line 792
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-ne v11, v15, :cond_5

    const/4 v4, 0x1

    .line 800
    :goto_2
    if-eqz v4, :cond_7

    .line 801
    const-string/jumbo v11, "1"

    const-string/jumbo v12, "sys.ipo.battlow"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 802
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 809
    :goto_3
    const-string/jumbo v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 810
    const-string/jumbo v13, " mShutdownFlow="

    .line 809
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 810
    sget v13, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 809
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .line 792
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 794
    :catch_1
    move-exception v3

    .line 795
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "ShutdownThread"

    const-string/jumbo v12, "checkShutdownFlow: fail to get IPO setting"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 797
    return-void

    .line 804
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :cond_6
    sput v15, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3

    .line 806
    :cond_7
    sput v14, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    goto :goto_3
.end method

.method private static configShutdownAnimation(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 443
    .local v2, "mShutOffAnimation":Z
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 442
    check-cast v3, Landroid/os/PowerManager;

    .line 445
    .local v3, "pm":Landroid/os/PowerManager;
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    .line 451
    :goto_0
    :try_start_0
    const-string/jumbo v4, "ro.operator.optr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "cust":Ljava/lang/String;
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v4, :cond_1

    .line 454
    const-class v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 455
    :cond_1
    if-eqz v0, :cond_3

    const-string/jumbo v4, "CUST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    const/4 v2, 0x1

    .line 463
    .end local v0    # "cust":Ljava/lang/String;
    .end local v2    # "mShutOffAnimation":Z
    :goto_1
    return v2

    .line 446
    .restart local v2    # "mShutOffAnimation":Z
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    goto :goto_0

    .line 458
    .restart local v0    # "cust":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v4}, Lcom/mediatek/common/bootanim/IBootAnimExt;->isCustBootAnim()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .local v2, "mShutOffAnimation":Z
    goto :goto_1

    .line 460
    .end local v0    # "cust":Ljava/lang/String;
    .local v2, "mShutOffAnimation":Z
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static delayForPlayAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 734
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    .line 738
    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 740
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v2, Lcom/android/server/power/ShutdownThread;->endAnimationTime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .local v0, "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void

    .line 741
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 742
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getScreenTurnOffTime(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, "screenTurnOffTime":I
    :try_start_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    if-nez v2, :cond_0

    .line 471
    const-class v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/bootanim/IBootAnimExt;

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    .line 472
    :cond_0
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mIBootAnim:Lcom/mediatek/common/bootanim/IBootAnimExt;

    invoke-interface {v2}, Lcom/mediatek/common/bootanim/IBootAnimExt;->getScreenTurnOffTime()I

    move-result v1

    .line 473
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IBootAnim get screenTurnOffTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static final playAudio()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 186
    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 188
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    if-nez v0, :cond_0

    return v2

    .line 189
    :cond_0
    const-string/jumbo v1, "shutdown.play_audio"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const/4 v1, 0x1

    return v1

    .line 192
    :cond_1
    return v2
.end method

.method public static powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 288
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 289
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "SmartBook: Re-sraw power off dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 296
    const v4, 0x10e0048

    .line 295
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 297
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_1

    .line 298
    const v2, 0x1040107

    .line 303
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_3

    .line 307
    const v3, 0x1040106

    .line 305
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 311
    new-instance v4, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    .line 310
    const v5, 0x1040013

    .line 305
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 320
    new-instance v4, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v4}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    .line 319
    const v5, 0x1040009

    .line 305
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 331
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 332
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 335
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    .line 337
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 338
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 340
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 287
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :cond_0
    return-void

    .line 299
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v1    # "longPressBehavior":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 300
    const v2, 0x1040105

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 301
    .end local v2    # "resourceId":I
    :cond_2
    const v2, 0x1040104

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 308
    :cond_3
    const v3, 0x10400f9

    goto :goto_1
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    const/4 v2, 0x0

    .line 392
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 393
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 394
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 395
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 396
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "reboot"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 400
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 402
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "     |----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 391
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1282
    if-eqz p1, :cond_1

    .line 1283
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rebooting, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_0
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Performing low-level shutdown..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 1281
    return-void

    .line 1286
    :cond_1
    if-eqz p0, :cond_0

    .line 1288
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2, p0}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1290
    .local v2, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_0
    sget-object v3, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1298
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v1

    .local v1, "unused":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1291
    .end local v1    # "unused":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1293
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v2, 0x1

    .line 417
    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 418
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 423
    sput-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 424
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 425
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 426
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "rebootSafeMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 416
    return-void
.end method

.method private running()V
    .locals 33

    .prologue
    .line 852
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    .line 854
    new-instance v6, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 867
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 868
    .local v30, "reason":Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 876
    const-string/jumbo v2, "persist.sys.safemode"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Sending shutdown broadcast..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 886
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "_mode"

    sget v4, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 890
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 889
    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v24, v4, v8

    .line 893
    .local v24, "endTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 894
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v24, v8

    .line 896
    .local v16, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_10

    .line 897
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 899
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v16    # "delay":J
    :cond_1
    monitor-exit v4

    .line 914
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_2

    .line 915
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 920
    :cond_2
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 921
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 922
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v3    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v3

    move-object v10, v6

    invoke-virtual/range {v7 .. v14}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 926
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x2710

    add-long v26, v4, v8

    .line 927
    .local v26, "endTimeIPO":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 928
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_3

    .line 929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v26, v8

    .line 930
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_12

    .line 931
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 933
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v16    # "delay":J
    :cond_3
    monitor-exit v4

    .line 946
    .end local v26    # "endTimeIPO":J
    :cond_4
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    .line 947
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down activity manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v15

    .line 951
    .local v15, "am":Landroid/app/IActivityManager;
    if-eqz v15, :cond_5

    .line 953
    const/16 v2, 0x2710

    :try_start_2
    invoke-interface {v15, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 957
    :cond_5
    :goto_4
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_6

    .line 958
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 962
    .end local v15    # "am":Landroid/app/IActivityManager;
    :cond_6
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down package manager..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    .line 964
    check-cast v29, Lcom/android/server/pm/PackageManagerService;

    .line 966
    .local v29, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v29, :cond_7

    .line 967
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 969
    :cond_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_8

    .line 970
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 974
    :cond_8
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down radios..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 976
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_9

    .line 977
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 980
    :cond_9
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v4, "3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 981
    :cond_a
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "bypass MountService!"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :goto_5
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "set service.shutanim.running to 1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const-string/jumbo v2, "service.shutanim.running"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_b

    .line 1044
    new-instance v32, Landroid/os/SystemVibrator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1046
    .local v32, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_3
    sget-object v2, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1054
    :goto_6
    const-wide/16 v4, 0x1f4

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1060
    .end local v32    # "vibrator":Landroid/os/Vibrator;
    :cond_b
    :goto_7
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Performing ipo low-level shutdown..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1064
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1065
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1068
    :cond_c
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 1073
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_18

    .line 1074
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1088
    :cond_d
    :goto_8
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1089
    const/4 v4, 0x0

    :try_start_5
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v2

    .line 1092
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1093
    const/4 v7, 0x1

    .line 1092
    invoke-virtual {v2, v4, v5, v7}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 1094
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1096
    sget-object v4, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1098
    :try_start_6
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_9
    monitor-exit v4

    .line 851
    :goto_a
    return-void

    .line 867
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v24    # "endTime":J
    .end local v29    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v30    # "reason":Ljava/lang/String;
    :cond_e
    const-string/jumbo v2, "0"

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, ""

    goto/16 :goto_1

    .line 903
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v16    # "delay":J
    .restart local v24    # "endTime":J
    .restart local v30    # "reason":Ljava/lang/String;
    :cond_10
    :try_start_7
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_11

    .line 904
    const-wide/16 v8, 0x2710

    sub-long v8, v8, v16

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    .line 905
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 904
    mul-double/2addr v8, v10

    .line 905
    const-wide v10, 0x40c3880000000000L    # 10000.0

    .line 904
    div-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v31, v0

    .line 906
    .local v31, "status":I
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 909
    .end local v31    # "status":I
    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 910
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_2

    .line 893
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 939
    .restart local v16    # "delay":J
    .restart local v26    # "endTimeIPO":J
    :cond_12
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3

    .line 940
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_3

    .line 927
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 954
    .end local v26    # "endTimeIPO":J
    .restart local v15    # "am":Landroid/app/IActivityManager;
    :catch_2
    move-exception v18

    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_4

    .line 984
    .end local v15    # "am":Landroid/app/IActivityManager;
    .end local v18    # "e":Landroid/os/RemoteException;
    .restart local v29    # "pm":Lcom/android/server/pm/PackageManagerService;
    :cond_13
    new-instance v28, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 994
    .local v28, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Shutting down MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 998
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v8, 0x4e20

    add-long v22, v4, v8

    .line 999
    .local v22, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1002
    :try_start_a
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1001
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v21

    .line 1003
    .local v21, "mount":Landroid/os/storage/IMountService;
    if-eqz v21, :cond_15

    .line 1004
    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1011
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :goto_b
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_14

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v16, v22, v8

    .line 1013
    .restart local v16    # "delay":J
    const-wide/16 v8, 0x0

    cmp-long v2, v16, v8

    if-gtz v2, :cond_16

    .line 1014
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Shutdown wait timed out"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_14

    .line 1016
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const/4 v2, 0x0

    sput v2, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v16    # "delay":J
    :cond_14
    monitor-exit v4

    .line 1033
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "MountService shut done..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1006
    .restart local v21    # "mount":Landroid/os/storage/IMountService;
    :cond_15
    :try_start_c
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "MountService unavailable for shutdown"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_b

    .line 1008
    .end local v21    # "mount":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v19

    .line 1009
    .local v19, "e":Ljava/lang/Exception;
    :try_start_d
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v5, "Exception during MountService shutdown"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_b

    .line 999
    .end local v19    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1020
    .restart local v16    # "delay":J
    :cond_16
    :try_start_e
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_17

    .line 1021
    const-wide/16 v8, 0x4e20

    sub-long v8, v8, v16

    long-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v8, v10

    .line 1022
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1021
    mul-double/2addr v8, v10

    .line 1023
    const-wide v10, 0x40d3880000000000L    # 20000.0

    .line 1021
    div-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v31, v0

    .line 1024
    .restart local v31    # "status":I
    add-int/lit8 v31, v31, 0x12

    .line 1025
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-direct {v2, v0, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1028
    .end local v31    # "status":I
    :cond_17
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x1f4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_b

    .line 1029
    :catch_4
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_b

    .line 1047
    .end local v16    # "delay":J
    .end local v20    # "e":Ljava/lang/InterruptedException;
    .end local v22    # "endShutTime":J
    .end local v28    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .restart local v32    # "vibrator":Landroid/os/Vibrator;
    :catch_5
    move-exception v19

    .line 1049
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "Failed to vibrate during shutdown."

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 1055
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v20

    .restart local v20    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_7

    .line 1077
    .end local v20    # "e":Ljava/lang/InterruptedException;
    .end local v32    # "vibrator":Landroid/os/Vibrator;
    :cond_18
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    invoke-virtual {v2}, Lcom/android/server/power/ui/ShutdownViewManager;->isShow()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1078
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "MTKTest mLeuiShutdown.isShow"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-object v2, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    invoke-virtual {v2}, Lcom/android/server/power/ui/ShutdownViewManager;->hide()V

    .line 1080
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    goto/16 :goto_8

    .line 1083
    :cond_19
    sget-wide v4, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v8, 0x0

    cmp-long v2, v4, v8

    if-lez v2, :cond_d

    .line 1084
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "service.bootanim.exit = 1"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string/jumbo v2, "service.bootanim.exit"

    const-string/jumbo v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1088
    :catchall_3
    move-exception v4

    monitor-exit v2

    throw v4

    .line 1099
    :catch_7
    move-exception v20

    .line 1100
    .restart local v20    # "e":Ljava/lang/InterruptedException;
    :try_start_10
    invoke-virtual/range {v20 .. v20}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_9

    .line 1096
    .end local v20    # "e":Ljava/lang/InterruptedException;
    :catchall_4
    move-exception v2

    monitor-exit v4

    throw v2

    .line 1104
    :cond_1a
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v2, :cond_1b

    .line 1105
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 1111
    :cond_1b
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string/jumbo v4, "recovery"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1112
    :cond_1c
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v2, :cond_1e

    .line 1113
    :cond_1d
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->delayForPlayAnimation()V

    .line 1115
    :cond_1e
    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v2, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1116
    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 1115
    invoke-virtual {v2, v4, v5, v7, v8}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v5, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    goto/16 :goto_a
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1121
    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 640
    const-string/jumbo v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showShutdownDialog start ... mRebootUpdate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string/jumbo v1, "recovery"

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/cache/recovery/uncrypt_file"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    .line 644
    const-string/jumbo v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showShutdownDialog mRebootUpdate is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootUpdate:Z

    if-eqz v1, :cond_0

    .line 648
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 650
    .local v0, "pd":Landroid/app/ProgressDialog;
    const v1, 0x10400fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    const v1, 0x10400fe

    .line 651
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 653
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 654
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 655
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 656
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 657
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 659
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 660
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 662
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "showShutdownDialog return real pd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-object v0

    .line 667
    .end local v0    # "pd":Landroid/app/ProgressDialog;
    :cond_0
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "showShutdownDialog ... end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-object v5
.end method

.method private static showShutdownWelcome(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z

    .prologue
    .line 432
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/android/server/power/ui/ShutdownViewManager;

    invoke-direct {v0, p0}, Lcom/android/server/power/ui/ShutdownViewManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    .line 434
    :cond_0
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mLeuiShutdown:Lcom/android/server/power/ui/ShutdownViewManager;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ui/ShutdownViewManager;->show(Z)V

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/power/ShutdownThread;->beginAnimationTime:J

    .line 431
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v3, 0x0

    .line 214
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 215
    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 217
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v4, "!!! Request to shutdown !!!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 221
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 223
    .local v0, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v5, "ShutdownThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    |----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v2, "ro.monkey"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 213
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v6, 0x0

    .line 238
    sget-object v4, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_0
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 240
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v5, "Request to shutdown already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 241
    return-void

    :cond_0
    monitor-exit v4

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 246
    const v4, 0x10e0048

    .line 245
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 247
    .local v1, "longPressBehavior":I
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_2

    .line 248
    const v2, 0x1040107

    .line 253
    .local v2, "resourceId":I
    :goto_0
    const-string/jumbo v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz p1, :cond_5

    .line 256
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 258
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 260
    :cond_1
    sput-boolean p1, Lcom/android/server/power/ShutdownThread;->bConfirmForAnimation:Z

    .line 261
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v3, :cond_4

    .line 264
    const v3, 0x1040106

    .line 262
    :goto_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 268
    new-instance v4, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v4, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    .line 267
    const v5, 0x1040013

    .line 262
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 273
    const v4, 0x1040009

    .line 262
    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 275
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    iput-object v3, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 276
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 277
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 278
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 235
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :goto_2
    return-void

    .line 238
    .end local v1    # "longPressBehavior":I
    .end local v2    # "resourceId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 249
    .restart local v1    # "longPressBehavior":I
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 250
    const v2, 0x1040105

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 251
    .end local v2    # "resourceId":I
    :cond_3
    const v2, 0x1040104

    .restart local v2    # "resourceId":I
    goto/16 :goto_0

    .line 265
    .restart local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_4
    const v3, 0x10400f9

    goto :goto_1

    .line 280
    .end local v0    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    :cond_5
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private shutdownRadios(I)V
    .locals 14
    .param p1, "timeout"    # I

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 1137
    const-string/jumbo v6, "connectivity"

    .line 1136
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1138
    .local v7, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1139
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->command:Ljava/lang/String;

    const-string/jumbo v6, "3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1143
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 1144
    .local v2, "endTime":J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 1145
    .local v5, "done":[Z
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;JZ[ZI)V

    .line 1259
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1261
    int-to-long v10, p1

    :try_start_0
    invoke-virtual {v0, v10, v11}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    :goto_1
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 1265
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    sget v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    .line 1267
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v6, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    .line 1135
    :cond_0
    return-void

    .line 1138
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v2    # "endTime":J
    .end local v5    # "done":[Z
    :cond_1
    const/4 v4, 0x1

    .local v4, "bypassRadioOff":Z
    goto :goto_0

    .line 1139
    .end local v4    # "bypassRadioOff":Z
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .end local v4    # "bypassRadioOff":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "bypassRadioOff":Z
    goto :goto_0

    .line 1262
    .end local v4    # "bypassRadioOff":Z
    .restart local v0    # "t":Ljava/lang/Thread;
    .restart local v2    # "endTime":J
    .restart local v5    # "done":[Z
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 714
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "Set \'service.bootanim.exit\' = 0)."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 718
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    return-void

    .line 721
    :cond_0
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string/jumbo v0, "ShutdownThread"

    const-string/jumbo v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private switchToLauncher()V
    .locals 4

    .prologue
    .line 820
    :try_start_0
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "set launcher as foreground"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v1, "intent1":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 824
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v1    # "intent1":Landroid/content/Intent;
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "ShutdownThread"

    const-string/jumbo v3, "ActivityNotFoundException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uncrypt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1339
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Calling uncrypt and monitoring the progress..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v3, 0x1

    new-array v0, v3, [Z

    .line 1342
    .local v0, "done":[Z
    aput-boolean v6, v0, v6

    .line 1343
    new-instance v1, Lcom/android/server/power/ShutdownThread$10;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/ShutdownThread$10;-><init>(Lcom/android/server/power/ShutdownThread;[Z)V

    .line 1405
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1408
    const-wide/32 v4, 0xdbba0

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    :goto_0
    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    .line 1412
    const-string/jumbo v3, "ShutdownThread"

    const-string/jumbo v4, "Timed out waiting for uncrypt."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    return-void

    .line 1409
    :catch_0
    move-exception v2

    .local v2, "unused":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 727
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 729
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 726
    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 837
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkShutdownFlow()V

    .line 838
    :goto_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 840
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 841
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 842
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    goto :goto_0

    .line 844
    :cond_0
    sget v0, Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mShutdownManager:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 846
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->switchToLauncher()V

    .line 847
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread;->running()V

    .line 836
    :cond_1
    return-void
.end method
