.class public final Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$1;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$2;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$3;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1

.field static final PROCESS_STATE_NONE:I = 0x3


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 4496
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 4399
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4414
    iput v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 4430
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4429
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4436
    new-array v0, v3, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4435
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4446
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4447
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4448
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4454
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4461
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4470
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 4479
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 4484
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 4489
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 4494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 4497
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 4498
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4499
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4498
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4500
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4501
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4500
    invoke-direct {v0, p0, v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4502
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4503
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4502
    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4504
    new-array v0, v5, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4505
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4506
    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4505
    const/4 v3, 0x7

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4507
    new-array v0, v4, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4508
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 4496
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4665
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4666
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4665
    const/16 v3, 0xf

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4737
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4738
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4737
    const/16 v3, 0x11

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4740
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4713
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4714
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4713
    const/16 v3, 0x10

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4716
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4760
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4761
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4762
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0xa

    .line 4761
    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4764
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 3

    .prologue
    .line 4796
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    .line 4797
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 4799
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 4

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4689
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4690
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4689
    const/16 v3, 0x8

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4692
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4871
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4872
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 6821
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4886
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4887
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5042
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4881
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4882
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4891
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4892
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4823
    const-wide/16 v0, 0x0

    return-wide v0

    .line 4825
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5026
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5027
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5026
    :goto_0
    return v0

    .line 5027
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5020
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5021
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5020
    :goto_0
    return-wide v0

    .line 5021
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5000
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 5001
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5002
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5004
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5010
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 5011
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5012
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5014
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4538
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6644
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 6645
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 6646
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6647
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6650
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6627
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 6631
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 6632
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 6633
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 6634
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6636
    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 4909
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    :cond_0
    return-wide v2

    .line 4910
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 4911
    return-wide v2

    .line 4913
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6574
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6575
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 6576
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 6577
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6580
    :cond_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4528
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 5
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .prologue
    const/4 v4, 0x0

    .line 6698
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 6699
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_1

    .line 6700
    if-nez p2, :cond_0

    .line 6701
    return-object v4

    .line 6703
    :cond_0
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 6704
    .restart local v0    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6706
    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6707
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v1, :cond_2

    .line 6708
    return-object v1

    .line 6710
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 6711
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 6712
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6713
    .restart local v2    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6715
    :cond_3
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 6716
    .restart local v1    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6717
    return-object v1
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .prologue
    .line 6658
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 6659
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 6660
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 6661
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 6662
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6665
    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4518
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(II)J
    .locals 2
    .param p1, "step"    # I
    .param p2, "which"    # I

    .prologue
    .line 5047
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5048
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5049
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5052
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 4543
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 4941
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 4942
    const/4 v0, 0x0

    return v0

    .line 4944
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5032
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4917
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4918
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 4876
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 4877
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 4855
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return v1

    .line 4856
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 4857
    return v1

    .line 4859
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 4
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 4846
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return-wide v2

    .line 4847
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 4848
    return-wide v2

    .line 4850
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiControllerActivity(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5057
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 5058
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5059
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5061
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4864
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4865
    const-wide/16 v0, 0x0

    return-wide v0

    .line 4867
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4814
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4815
    const-wide/16 v0, 0x0

    return-wide v0

    .line 4817
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 4838
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4839
    const/4 v0, 0x0

    return v0

    .line 4841
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 4830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4831
    const-wide/16 v0, 0x0

    return-wide v0

    .line 4833
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .prologue
    .line 4995
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 4936
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 5065
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5066
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5067
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 5068
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5069
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5071
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5072
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5064
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 4966
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 4967
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 4968
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 4967
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4965
    :cond_0
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 4896
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 4898
    :cond_1
    if-nez p2, :cond_2

    .line 4899
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4900
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4899
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 4895
    :goto_0
    return-void

    .line 4902
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4903
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    .line 4902
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_0
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v2, 0xb

    .line 4948
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 4950
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 4951
    .local v3, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v3, :cond_2

    .line 4952
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4953
    .restart local v3    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4955
    :cond_2
    if-nez p2, :cond_3

    .line 4956
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4957
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4956
    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 4947
    :goto_0
    return-void

    .line 4959
    :cond_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4960
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, p0

    move-object v5, p2

    .line 4959
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v6, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4776
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4774
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4770
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4768
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4676
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4677
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4675
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4672
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4671
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4748
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4749
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4747
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4744
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4743
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4725
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4723
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4720
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4719
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4568
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 4569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4570
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4571
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4572
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4571
    const/4 v3, 0x5

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4567
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4580
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 4581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 4582
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4579
    :cond_0
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    .prologue
    .line 4986
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 4987
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 4989
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4990
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4985
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .prologue
    .line 4973
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 4974
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 4976
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 4977
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4978
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4972
    :goto_0
    return-void

    .line 4980
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4981
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 4980
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4683
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4681
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4755
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4753
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4730
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4731
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4729
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4706
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4707
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4705
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 6807
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6808
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6809
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6806
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6735
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6736
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6737
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6734
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6792
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6793
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6794
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6791
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6721
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6722
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6723
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6720
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 6749
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6750
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 6751
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 6753
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 6754
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v0

    .line 6755
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    .line 6756
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 6748
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 6814
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6815
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6816
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6813
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6742
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6743
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6744
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6741
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6800
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 6801
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6802
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6798
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 6728
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6729
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 6730
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6727
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 6762
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6763
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 6764
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 6766
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 6767
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 6768
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_1

    .line 6769
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6770
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 6771
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 6761
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 4923
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 4924
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 4926
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 4927
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 4922
    :goto_0
    return-void

    .line 4929
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4930
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 4929
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    .prologue
    .line 4807
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    .line 4808
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 4806
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 4803
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 4802
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4700
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 4701
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4699
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4696
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4695
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 4
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 4608
    const/4 v0, 0x0

    .line 4609
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4610
    shr-int/lit8 p1, p1, 0x3

    .line 4611
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4614
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    return-void

    .line 4616
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 4617
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4620
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4621
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 4622
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 4624
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4607
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, -0x1

    .line 4629
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-eq v0, v2, :cond_0

    .line 4630
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4632
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 4628
    :cond_0
    return-void
.end method

.method public noteWifiControllerActivityLocked(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 4657
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 4658
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    .line 4660
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 4656
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4650
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 4651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4652
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4649
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4638
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 4639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 4640
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4641
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4642
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4641
    const/4 v3, 0x7

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4644
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4637
    :cond_1
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4548
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 4549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4550
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4551
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4552
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4551
    const/4 v3, 0x4

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4554
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4547
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4588
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    .line 4589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 4590
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 4591
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4592
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 4591
    const/4 v3, 0x6

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 4594
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4587
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4600
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    .line 4601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 4602
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4599
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 4560
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 4561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 4562
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4559
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 33
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 5512
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 5513
    .local v21, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5514
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    move/from16 v0, v21

    if-ge v12, v0, :cond_0

    .line 5515
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 5516
    .local v31, "wakelockName":Ljava/lang/String;
    new-instance v30, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5517
    .local v30, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5514
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 5521
    .end local v30    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v31    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 5522
    .local v20, "numSyncs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5523
    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v12, v0, :cond_2

    .line 5524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 5525
    .local v29, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 5526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    .line 5527
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xd

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5526
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5523
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5531
    .end local v29    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 5532
    .local v16, "numJobs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 5533
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 5534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 5535
    .local v13, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 5536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v32, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v13, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5533
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 5540
    .end local v13    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 5541
    .local v19, "numSensors":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 5542
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_5

    .line 5543
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 5544
    .local v27, "sensorNumber":I
    new-instance v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 5545
    .local v26, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5542
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 5549
    .end local v26    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v27    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 5550
    .local v18, "numProcs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5551
    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_6

    .line 5552
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 5553
    .local v25, "processName":Ljava/lang/String;
    new-instance v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Ljava/lang/String;)V

    .line 5554
    .local v24, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5551
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 5558
    .end local v24    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v25    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 5559
    .local v17, "numPkgs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 5560
    const/4 v15, 0x0

    .local v15, "l":I
    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    .line 5561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 5562
    .local v22, "packageName":Ljava/lang/String;
    new-instance v23, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 5563
    .local v23, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 5564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5560
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 5567
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 5568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 5569
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5570
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5569
    const/4 v6, 0x4

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5574
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 5575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 5576
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5576
    const/4 v6, 0x5

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5581
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 5582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 5583
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5584
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5583
    const/4 v6, 0x6

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5588
    :goto_8
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 5589
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9
    const/4 v4, 0x5

    if-ge v11, v4, :cond_c

    .line 5590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 5591
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 5589
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 5572
    .end local v11    # "i":I
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_6

    .line 5579
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_7

    .line 5586
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_8

    .line 5593
    .restart local v11    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v11

    goto :goto_a

    .line 5596
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 5597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 5598
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5598
    const/4 v6, 0x7

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5603
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 5604
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5604
    const/16 v6, 0xf

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5609
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 5610
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5610
    const/16 v6, 0x8

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5615
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 5616
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5617
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5616
    const/16 v6, 0x10

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5621
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 5622
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5622
    const/16 v6, 0x11

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5627
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 5628
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v6, 0xa

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    .line 5628
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5633
    :goto_10
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 5634
    const/4 v11, 0x0

    :goto_11
    const/4 v4, 0x3

    if-ge v11, v4, :cond_14

    .line 5635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 5636
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 5634
    :goto_12
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 5601
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_b

    .line 5607
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_c

    .line 5613
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_d

    .line 5619
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    .line 5625
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    .line 5631
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    .line 5638
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v11

    goto :goto_12

    .line 5641
    :cond_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    .line 5642
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v6, v5, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5646
    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 5647
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5648
    const/4 v11, 0x0

    :goto_14
    const/4 v4, 0x3

    if-ge v11, v4, :cond_17

    .line 5649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v11

    .line 5648
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 5644
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_13

    .line 5652
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5654
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 5655
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5657
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5656
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5658
    const/4 v11, 0x0

    :goto_15
    const/4 v4, 0x4

    if-ge v11, v4, :cond_18

    .line 5659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5660
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5659
    aput-object v5, v4, v11

    .line 5661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5662
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 5661
    aput-object v5, v4, v11

    .line 5658
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 5664
    :cond_18
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5665
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5671
    :goto_16
    const/4 v11, 0x0

    :goto_17
    const/4 v4, 0x4

    if-ge v11, v4, :cond_1b

    .line 5672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 5673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v11

    .line 5671
    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 5667
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5668
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_16

    .line 5675
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v11

    goto :goto_18

    .line 5679
    :cond_1b
    const/4 v11, 0x0

    :goto_19
    const/4 v4, 0x4

    if-ge v11, v4, :cond_1d

    .line 5680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 5681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v11

    .line 5679
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 5683
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v11

    goto :goto_1a

    .line 5687
    :cond_1d
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5688
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5689
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 5692
    .local v10, "bins":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuSpeedSteps()I

    move-result v28

    .line 5693
    .local v28, "steps":I
    move/from16 v0, v28

    if-lt v10, v0, :cond_1e

    move/from16 v28, v10

    .end local v28    # "steps":I
    :cond_1e
    move/from16 v0, v28

    new-array v4, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5694
    const/4 v11, 0x0

    :goto_1b
    if-ge v11, v10, :cond_20

    .line 5695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 5696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v11

    .line 5694
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 5511
    :cond_20
    return-void
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6675
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6676
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6677
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6674
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6669
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6670
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6671
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6668
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 6681
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6682
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6683
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6684
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6686
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 6687
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6689
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6690
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6692
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 6693
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 6680
    :cond_3
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 6785
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 6786
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 6787
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 6784
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 6778
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 6779
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 6780
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 6777
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 28

    .prologue
    .line 5080
    const/4 v4, 0x0

    .line 5082
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v4, 0x0

    .line 5084
    .local v4, "active":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v25, v0

    or-int v4, v4, v25

    .line 5086
    .end local v4    # "active":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 5087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x0

    :goto_1
    or-int v4, v4, v25

    .line 5088
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v25, v0

    or-int v4, v4, v25

    .line 5090
    .end local v4    # "active":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 5091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_6

    const/16 v25, 0x0

    :goto_2
    or-int v4, v4, v25

    .line 5092
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    move/from16 v25, v0

    or-int v4, v4, v25

    .line 5094
    .end local v4    # "active":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 5095
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ge v6, v0, :cond_8

    .line 5096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_3

    .line 5097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_7

    const/16 v25, 0x0

    :goto_4
    or-int v4, v4, v25

    .line 5095
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 5083
    .end local v6    # "i":I
    .local v4, "active":Z
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 5087
    .end local v4    # "active":Z
    :cond_5
    const/16 v25, 0x1

    goto :goto_1

    .line 5091
    :cond_6
    const/16 v25, 0x1

    goto :goto_2

    .line 5097
    .restart local v6    # "i":I
    :cond_7
    const/16 v25, 0x1

    goto :goto_4

    .line 5100
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    const/16 v25, 0x1

    :goto_5
    or-int v4, v4, v25

    .line 5102
    .end local v6    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 5103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_12

    const/16 v25, 0x0

    :goto_6
    or-int v4, v4, v25

    .line 5104
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v25, v0

    or-int v4, v4, v25

    .line 5106
    .end local v4    # "active":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 5107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    :goto_7
    or-int v4, v4, v25

    .line 5109
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 5110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v25, 0x0

    :goto_8
    or-int v4, v4, v25

    .line 5112
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 5113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v25, 0x0

    :goto_9
    or-int v4, v4, v25

    .line 5115
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 5116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_16

    const/16 v25, 0x0

    :goto_a
    or-int v4, v4, v25

    .line 5118
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    :goto_b
    or-int v4, v4, v25

    .line 5121
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 5122
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v6, v0, :cond_19

    .line 5123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_10

    .line 5124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    :goto_d
    or-int v4, v4, v25

    .line 5122
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 5100
    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 5103
    .end local v6    # "i":I
    :cond_12
    const/16 v25, 0x1

    goto/16 :goto_6

    .line 5107
    :cond_13
    const/16 v25, 0x1

    goto/16 :goto_7

    .line 5110
    :cond_14
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 5113
    :cond_15
    const/16 v25, 0x1

    goto :goto_9

    .line 5116
    :cond_16
    const/16 v25, 0x1

    goto :goto_a

    .line 5119
    :cond_17
    const/16 v25, 0x1

    goto :goto_b

    .line 5124
    .restart local v6    # "i":I
    :cond_18
    const/16 v25, 0x1

    goto :goto_d

    .line 5127
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1c

    const/16 v25, 0x1

    :goto_e
    or-int v4, v4, v25

    .line 5129
    .end local v6    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1b

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 5132
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5138
    :cond_1b
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 5139
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_10
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v6, v0, :cond_1e

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 5139
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 5127
    :cond_1c
    const/16 v25, 0x0

    goto :goto_e

    .line 5134
    .end local v6    # "i":I
    :cond_1d
    const/4 v4, 0x1

    .local v4, "active":Z
    goto :goto_f

    .line 5144
    .end local v4    # "active":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_20

    .line 5145
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_11
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_1f

    .line 5146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5145
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 5149
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5153
    .end local v6    # "i":I
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_12
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_23

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_21

    .line 5155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5158
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_22

    .line 5159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5153
    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5163
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5166
    const/4 v6, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v6, v0, :cond_25

    .line 5167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v5, v25, v6

    .line 5168
    .local v5, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_24

    .line 5169
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 5166
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 5173
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v23

    .line 5174
    .local v23, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .local v13, "iw":I
    :goto_14
    if-ltz v13, :cond_27

    .line 5175
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5176
    .local v24, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v25

    if-eqz v25, :cond_26

    .line 5177
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5174
    :goto_15
    add-int/lit8 v13, v13, -0x1

    goto :goto_14

    .line 5179
    :cond_26
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_15

    .line 5182
    .end local v4    # "active":Z
    .end local v24    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 5184
    .local v21, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v9, v25, -0x1

    .local v9, "is":I
    :goto_16
    if-ltz v9, :cond_29

    .line 5185
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5186
    .local v22, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_28

    .line 5187
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5188
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5184
    :goto_17
    add-int/lit8 v9, v9, -0x1

    goto :goto_16

    .line 5190
    :cond_28
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_17

    .line 5193
    .end local v4    # "active":Z
    .end local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    .line 5195
    .local v14, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v7, v25, -0x1

    .local v7, "ij":I
    :goto_18
    if-ltz v7, :cond_2b

    .line 5196
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5197
    .restart local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v25

    if-eqz v25, :cond_2a

    .line 5198
    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5199
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5195
    :goto_19
    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    .line 5201
    :cond_2a
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_19

    .line 5204
    .end local v4    # "active":Z
    .end local v22    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 5205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    add-int/lit8 v10, v25, -0x1

    .local v10, "ise":I
    :goto_1a
    if-ltz v10, :cond_2d

    .line 5206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5207
    .local v19, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v25

    if-eqz v25, :cond_2c

    .line 5208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5205
    :goto_1b
    add-int/lit8 v10, v10, -0x1

    goto :goto_1a

    .line 5210
    :cond_2c
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_1b

    .line 5213
    .end local v4    # "active":Z
    .end local v19    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v8, v25, -0x1

    .local v8, "ip":I
    :goto_1c
    if-ltz v8, :cond_2f

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5215
    .local v18, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2e

    .line 5216
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 5217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5213
    :goto_1d
    add-int/lit8 v8, v8, -0x1

    goto :goto_1c

    .line 5219
    :cond_2e
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->reset()V

    .line 5220
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_1d

    .line 5223
    .end local v4    # "active":Z
    .end local v18    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    if-lez v25, :cond_31

    .line 5224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    add-int/lit8 v6, v25, -0x1

    :goto_1e
    if-ltz v6, :cond_31

    .line 5225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/BatteryStats$Uid$Pid;

    .line 5226
    .local v16, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v25, v0

    if-lez v25, :cond_30

    .line 5227
    const/4 v4, 0x1

    .line 5224
    :goto_1f
    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    .line 5229
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1f

    .line 5233
    .end local v16    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    if-lez v25, :cond_34

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 5235
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_32
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_33

    .line 5236
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 5237
    .local v17, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5238
    .local v15, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 5239
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v25

    if-lez v25, :cond_32

    .line 5241
    iget-object v0, v15, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 5242
    .local v12, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_20
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_32

    .line 5243
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 5244
    .local v20, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_20

    .line 5248
    .end local v12    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v15    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v17    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v20    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->clear()V

    .line 5251
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_34
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 5252
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    .line 5254
    if-nez v4, :cond_46

    .line 5255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_35

    .line 5256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5258
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_36

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5261
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_37

    .line 5262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5264
    :cond_37
    const/4 v6, 0x0

    :goto_21
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ge v6, v0, :cond_39

    .line 5265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_38

    .line 5266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5264
    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 5269
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3a

    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5272
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3b

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5274
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5276
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3c

    .line 5277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5278
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5280
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3d

    .line 5281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5282
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5284
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3e

    .line 5285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5286
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5288
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3f

    .line 5289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 5290
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5292
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_40

    .line 5293
    const/4 v6, 0x0

    :goto_22
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v6, v0, :cond_40

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 5293
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 5297
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    if-eqz v25, :cond_41

    .line 5298
    const/4 v6, 0x0

    :goto_23
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_41

    .line 5299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5298
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 5304
    :cond_41
    const/4 v6, 0x0

    :goto_24
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_44

    .line 5305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_42

    .line 5306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5309
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    if-eqz v25, :cond_43

    .line 5310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5304
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 5313
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 5315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5318
    const/4 v6, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v6, v0, :cond_46

    .line 5319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v25, v0

    aget-object v5, v25, v6

    .line 5320
    .restart local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_45

    .line 5321
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 5318
    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 5326
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_46
    if-eqz v4, :cond_47

    const/16 v25, 0x0

    :goto_26
    return v25

    :cond_47
    const/16 v25, 0x1

    goto :goto_26
.end method

.method public updateProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    .line 6585
    const/4 v1, 0x6

    if-gt p2, v1, :cond_0

    .line 6586
    const/4 v0, 0x0

    .line 6592
    .local v0, "procState":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateRealProcessStateLocked(Ljava/lang/String;IJ)V

    .line 6583
    return-void

    .line 6587
    .end local v0    # "procState":I
    :cond_0
    const/16 v1, 0xb

    if-gt p2, v1, :cond_1

    .line 6588
    const/4 v0, 0x1

    .restart local v0    # "procState":I
    goto :goto_0

    .line 6590
    .end local v0    # "procState":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "procState":I
    goto :goto_0
.end method

.method public updateRealProcessStateLocked(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "procState"    # I
    .param p3, "elapsedRealtimeMs"    # J

    .prologue
    .line 6597
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    .line 6598
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-eq v4, p2, :cond_5

    .line 6600
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge p2, v4, :cond_2

    .line 6604
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-le v4, p2, :cond_1

    const/4 v0, 0x1

    .line 6611
    .local v0, "changed":Z
    :goto_0
    iput p2, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6612
    if-eqz v0, :cond_5

    .line 6614
    const/4 v3, 0x3

    .line 6615
    .local v3, "uidProcState":I
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "ip":I
    :goto_1
    if-ltz v1, :cond_4

    .line 6616
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6617
    .restart local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget v4, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ge v4, v3, :cond_0

    .line 6618
    iget v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    .line 6615
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 6604
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 6609
    .end local v0    # "changed":Z
    :cond_2
    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    iget v5, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mProcessState:I

    if-ne v4, v5, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 6621
    .restart local v1    # "ip":I
    .restart local v3    # "uidProcState":I
    :cond_4
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateUidProcessStateLocked(IJ)V

    .line 6596
    .end local v0    # "changed":Z
    .end local v1    # "ip":I
    .end local v3    # "uidProcState":I
    :cond_5
    return-void
.end method

.method updateUidProcessStateLocked(IJ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 4781
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 4783
    :cond_0
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v0, v2, :cond_1

    .line 4784
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 4786
    :cond_1
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 4787
    if-eq p1, v2, :cond_3

    .line 4788
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 4789
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 4791
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 4780
    :cond_3
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 28
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v24

    .line 5331
    .local v24, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 5332
    .local v8, "NW":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 5333
    const/4 v15, 0x0

    .local v15, "iw":I
    :goto_0
    if-ge v15, v8, :cond_0

    .line 5334
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5335
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 5336
    .local v25, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5333
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5339
    .end local v25    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v22

    .line 5340
    .local v22, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 5341
    .local v6, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 5342
    const/4 v13, 0x0

    .local v13, "is":I
    :goto_1
    if-ge v13, v6, :cond_1

    .line 5343
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5344
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5345
    .local v23, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5342
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 5348
    .end local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v16

    .line 5349
    .local v16, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 5350
    .local v4, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5351
    const/4 v11, 0x0

    .local v11, "ij":I
    :goto_2
    if-ge v11, v4, :cond_2

    .line 5352
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5353
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5354
    .restart local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 5351
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 5357
    .end local v23    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 5358
    .local v7, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 5359
    const/4 v14, 0x0

    .local v14, "ise":I
    :goto_3
    if-ge v14, v7, :cond_3

    .line 5360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 5362
    .local v21, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 5359
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 5365
    .end local v21    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 5366
    .local v5, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5367
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_4
    if-ge v12, v5, :cond_4

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 5370
    .local v20, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 5367
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 5373
    .end local v20    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "pkgEntry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 5375
    .local v18, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5376
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 5377
    .local v17, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_5

    .line 5380
    .end local v17    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v18    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 5381
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5386
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 5387
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5392
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 5393
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5398
    :goto_8
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_9
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v10, v0, :cond_a

    .line 5399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    if-eqz v26, :cond_9

    .line 5400
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5398
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 5384
    .end local v10    # "i":I
    :cond_6
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 5390
    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 5396
    :cond_8
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 5403
    .restart local v10    # "i":I
    :cond_9
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 5406
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 5407
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5413
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 5414
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5419
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 5420
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5425
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 5426
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5431
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 5432
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5437
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 5438
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5443
    :goto_10
    const/4 v10, 0x0

    :goto_11
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ge v10, v0, :cond_12

    .line 5444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    if-eqz v26, :cond_11

    .line 5445
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5443
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 5410
    :cond_b
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 5417
    :cond_c
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 5423
    :cond_d
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 5429
    :cond_e
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 5435
    :cond_f
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f

    .line 5441
    :cond_10
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 5448
    :cond_11
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 5451
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 5452
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 5457
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    .line 5458
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5459
    const/4 v10, 0x0

    :goto_14
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ge v10, v0, :cond_15

    .line 5460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5459
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 5455
    :cond_13
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 5463
    :cond_14
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5465
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 5466
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5467
    const/4 v10, 0x0

    :goto_15
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_16

    .line 5468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5467
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 5471
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5477
    :goto_16
    const/4 v10, 0x0

    :goto_17
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_19

    .line 5478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    if-eqz v26, :cond_18

    .line 5479
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5477
    :goto_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    .line 5474
    :cond_17
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 5482
    :cond_18
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 5486
    :cond_19
    const/4 v10, 0x0

    :goto_19
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ge v10, v0, :cond_1b

    .line 5487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    if-eqz v26, :cond_1a

    .line 5488
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerTime:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5486
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 5491
    :cond_1a
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 5495
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5500
    const/4 v10, 0x0

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_1d

    .line 5501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v26, v0

    aget-object v9, v26, v10

    .line 5502
    .local v9, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_1c

    .line 5503
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5504
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 5500
    :goto_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 5506
    :cond_1c
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 5329
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1d
    return-void
.end method
