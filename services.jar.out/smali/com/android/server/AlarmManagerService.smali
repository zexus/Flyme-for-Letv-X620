.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$DMReceiver;,
        Lcom/android/server/AlarmManagerService$BatteryReceiver;,
        Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;,
        Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;,
        Lcom/android/server/AlarmManagerService$1;,
        Lcom/android/server/AlarmManagerService$2;
    }
.end annotation


# static fields
.field static final ALARM_EVENT:I = 0x1

.field static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

.field static final DEBUG_ALARM_CLOCK:Z

.field static DEBUG_BATCH:Z = false

.field static DEBUG_VALIDATE:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final IS_WAKEUP_MASK:I = 0x5

.field private static final LEUI_INTERACTIVE_REBATCH_DELAY:J = 0x1b58L

.field private static final LEUI_INTERACTIVE_TIME_ALIGN_VALUE:J = 0x0L

.field private static final LEUI_MIN_TIME_ALIGN_VALUE:J = 0x493e0L

.field private static final LEUI_NONE_TIME_ALIGN_VALUE:J = 0x5265c0L

.field private static final LEUI_TIMEALIGN_ENABLE_KEY:Ljava/lang/String; = "leui_key_timealign_enable"

.field private static final LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

.field private static final LEUI_TWILIGHT_ENABLE_KEY:Ljava/lang/String; = "leui_key_timealign_twilight_enable"

.field private static final LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field private static final OPEN_MTK_TIMEALIGN:Z = false

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEALIGN_DEBUG:Z = false

.field private static final TIMEALIGN_SETTING_DEFAULT:I = 0x1

.field private static final TIMEALIGN_SETTING_FLAG:I = 0x1

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field private static final TWILIGHT_BEGIN:J = 0x5265c00L

.field private static final TWILIGHT_DUR:J = 0x1808580L

.field private static final TWILIGHT_END:J = 0x1808580L

.field private static final TWILIGHT_SETTING_DEFAULT:I = 0x0

.field private static final TWILIGHT_SETTING_FLAG:I = 0x2

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field private static final UTC_2000:J = 0xdc6d62da00L

.field static final WAKEUP_STATS:Z

.field static localLOGV:Z

.field private static mAlarmMode:I

.field static final mBackgroundIntent:Landroid/content/Intent;

.field private static mSupportAlarmGrouping:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final RECENT_WAKEUP_PERIOD:J

.field private dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIconPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleMinTime:J

.field private mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field final mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field private mDMEnable:Z

.field private mDMLock:Ljava/lang/Object;

.field private mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

.field mDateChangeSender:Landroid/app/PendingIntent;

.field private mDmFreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mDmResendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mGmtOffset:J

.field final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIPOShutdown:Z

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field mInteractive:Z

.field mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

.field private mIsLight:Z

.field private mIsPowered:Z

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastPowerTime:J

.field private mLastRebatchTime:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field mLastWakeLockUnimportantForLogging:Z

.field private mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private mMinimumPeriod_BlockSocket:J

.field mNativeData:J

.field private mNeedGrouping:Z

.field private mNeedToSetBlockSocket:Z

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPPLEnable:Z

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerOffAlarmLock:Ljava/lang/Object;

.field private final mPoweroffAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTime_SetBlockSocket:J

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field private mRebatchCount:J

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private mTimeAlignEnable:Z

.field mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mTriggleWakeupAlarmCount:J

.field private mTwilightEnable:Z

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private mWaitThreadlock:Ljava/lang/Object;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeupCount:J


# direct methods
.method static synthetic -get0(Lcom/android/server/AlarmManagerService;)Lcom/mediatek/amplus/AlarmManagerPlus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAmPlus:Lcom/mediatek/amplus/AlarmManagerPlus;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/AlarmManagerService;)Landroid/os/BatteryManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    return-object v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/AlarmManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastPowerTime:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/AlarmManagerService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/AlarmManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/AlarmManagerService;J)Z
    .locals 1
    .param p1, "now"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->isWakeupAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onBatteryChange()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/AlarmManagerService;ZI)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->onSettingChange(ZI)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTwilightChange()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->shutdownCheckPoweroffAlarm()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/AlarmManagerService;JJ)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "millis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/AlarmManagerService;JI)I
    .locals 1
    .param p1, "nativeData"    # J
    .param p3, "minuteswest"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/AlarmManagerService;J)I
    .locals 1
    .param p1, "nativeData"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(JJJJ)J
    .locals 2
    .param p0, "triggerElapsed"    # J
    .param p2, "windowLength"    # J
    .param p4, "interval"    # J
    .param p6, "nowElapsed"    # J

    .prologue
    invoke-static/range {p0 .. p7}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap7(Lcom/android/server/AlarmManagerService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap8(Lcom/android/server/AlarmManagerService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap9(Lcom/android/server/AlarmManagerService;J)V
    .locals 1
    .param p1, "nativeData"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 126
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 127
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 128
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 134
    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 137
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 141
    new-instance v0, Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 141
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 150
    const/4 v0, 0x2

    sput v0, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 151
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->mSupportAlarmGrouping:Z

    .line 685
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    .line 3887
    const-string/jumbo v0, "leui_key_timealign_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

    .line 3890
    const-string/jumbo v0, "leui_key_timealign_twilight_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

    .line 112
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    :cond_2
    move v0, v1

    .line 127
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 695
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string/jumbo v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 154
    iput v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 163
    new-instance v0, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    .line 167
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 169
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 170
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 171
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 187
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 194
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 197
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 196
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 198
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 203
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 335
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 336
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    .line 337
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    .line 339
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 340
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 341
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 346
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mNeedGrouping:Z

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 369
    iput v4, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 384
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 624
    new-instance v0, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 690
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 691
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 858
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mWaitThreadlock:Ljava/lang/Object;

    .line 859
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    .line 860
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 925
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 924
    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 927
    iput v4, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 928
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 929
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1416
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 3881
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    .line 3905
    iput-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    .line 3909
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    .line 3917
    iput-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 3922
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    .line 3923
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    .line 3925
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    .line 3926
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastRebatchTime:J

    .line 696
    new-instance v0, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 694
    return-void
.end method

.method private FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    .locals 17
    .param p3, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3479
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "mDmFreeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "resendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3480
    .local v16, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/4 v15, 0x0

    .line 3481
    .local v15, "isFreeIntent":Z
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3482
    const/4 v15, 0x0

    .line 3483
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3485
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_5

    .line 3486
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3487
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v3, :cond_1

    .line 3488
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending alarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    :cond_1
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3490
    sget-object v4, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 3491
    const-string/jumbo v5, "android.intent.extra.ALARM_COUNT"

    iget v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3490
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 3492
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3489
    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3494
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v3, :cond_2

    .line 3495
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3496
    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v2, p0

    .line 3495
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 3497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3500
    :cond_2
    new-instance v2, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3501
    iget-object v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v6, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v7, v10, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    .line 3500
    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 3503
    .local v2, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3504
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3505
    iget-object v11, v2, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3506
    .local v11, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3507
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_6

    .line 3508
    const/4 v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3509
    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3513
    :goto_2
    iget-object v13, v2, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3514
    .local v13, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3515
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v3, :cond_7

    .line 3516
    const/4 v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3517
    move-wide/from16 v0, p3

    iput-wide v0, v13, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3521
    :goto_3
    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 3522
    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_4

    .line 3523
    :cond_3
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3524
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 3528
    :cond_4
    const/4 v15, 0x1

    .line 3533
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    if-nez v15, :cond_0

    .line 3534
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3535
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3511
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_6
    iget v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3537
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v12

    .line 3538
    .local v12, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v4, v10, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_0

    .line 3519
    .end local v12    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_7
    :try_start_1
    iget v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v13, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3485
    .end local v2    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v11    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 3478
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "i":I
    :cond_9
    return-void
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 3
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v1, 0x0

    .line 725
    sget-object v2, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 726
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 727
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 729
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 730
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 3651
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3653
    .local v2, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    sget-object v7, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v7}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    .line 3654
    .local v3, "index":I
    if-gez v3, :cond_0

    .line 3655
    rsub-int/lit8 v7, v3, 0x0

    add-int/lit8 v3, v7, -0x1

    .line 3657
    :cond_0
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding alarm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    :cond_1
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3660
    sget-boolean v7, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v7, :cond_2

    .line 3662
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "alarms: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    const/4 v4, 0x0

    .line 3664
    .local v4, "position":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3665
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 3666
    .local v5, "time":Landroid/text/format/Time;
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 3667
    const-string/jumbo v7, "%b %d %I:%M:%S %p"

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3668
    .local v6, "timeStr":Ljava/lang/String;
    const-string/jumbo v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3669
    const-string/jumbo v9, " "

    .line 3668
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3669
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    .line 3668
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3674
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    .end local v4    # "position":I
    .end local v5    # "time":Landroid/text/format/Time;
    .end local v6    # "timeStr":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method private afterTwilightTimeEnd(Lcom/android/server/AlarmManagerService$Batch;)Z
    .locals 12
    .param p1, "b"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    const-wide/32 v10, 0x5265c00

    .line 4558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 4561
    .local v2, "daysMillis":J
    const-wide/32 v6, 0x6a6e180

    sub-long/2addr v6, v2

    rem-long v4, v6, v10

    .line 4563
    .local v4, "twilightend2Now":J
    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 4565
    .local v0, "batchStart2Now":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private native bootFromAlarm(I)Z
.end method

.method private calculateTwilight(J)Z
    .locals 9
    .param p1, "now"    # J

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v4, 0x0

    .line 4201
    const-wide v2, 0xdc6d62da00L

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 4203
    return v4

    .line 4207
    :cond_0
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    add-long/2addr v2, p1

    rem-long v0, v2, v6

    .line 4213
    .local v0, "daysMillis":J
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    const-wide/32 v2, 0x1808580

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 4215
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 4217
    :cond_2
    return v4
.end method

.method private native close(J)V
.end method

.method static convertToElapsed(JI)J
    .locals 6
    .param p0, "when"    # J
    .param p2, "type"    # I

    .prologue
    .line 700
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 701
    .local v0, "isRtc":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 704
    :cond_1
    return-wide p0

    .line 700
    .end local v0    # "isRtc":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isRtc":Z
    goto :goto_0
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2345
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2346
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2347
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v9

    .line 2348
    .local v9, "label":Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2349
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide/from16 v4, p5

    move-wide v6, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2345
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2344
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "label":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowRTC"    # J
    .param p6, "nowELAPSED"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2323
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2324
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2325
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2326
    const-string/jumbo v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2323
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2322
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    return-void
.end method

.method private final ensureLeuiPlug()V
    .locals 4

    .prologue
    .line 4020
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    if-nez v0, :cond_0

    .line 4021
    new-instance v0, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;-><init>(JLcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    .line 4019
    :cond_0
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .locals 4

    .prologue
    .line 1941
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1942
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1943
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1944
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1945
    return-object v1

    .line 1942
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1948
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private findLeuiFirstWakeupBatchLocked(Z)[Lcom/android/server/AlarmManagerService$Batch;
    .locals 10
    .param p1, "twilight"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4579
    const/4 v4, 0x2

    new-array v3, v4, [Lcom/android/server/AlarmManagerService$Batch;

    .line 4580
    .local v3, "wakeups":[Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4582
    .local v0, "N":I
    if-eqz p1, :cond_4

    .line 4584
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 4585
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 4586
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    aget-object v4, v3, v8

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-eqz v4, :cond_2

    .line 4588
    aput-object v1, v3, v8

    .line 4594
    :cond_0
    :goto_1
    aget-object v4, v3, v8

    if-eqz v4, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService;->afterTwilightTimeEnd(Lcom/android/server/AlarmManagerService$Batch;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4627
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    return-object v3

    .line 4589
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    aget-object v4, v3, v9

    if-nez v4, :cond_0

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4591
    aput-object v1, v3, v9

    goto :goto_1

    .line 4600
    :cond_3
    aget-object v4, v3, v9

    if-nez v4, :cond_1

    .line 4584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4606
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 4607
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 4608
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    aget-object v4, v3, v8

    if-nez v4, :cond_7

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-eqz v4, :cond_7

    .line 4610
    aput-object v1, v3, v8

    .line 4616
    :cond_5
    :goto_3
    aget-object v4, v3, v8

    if-eqz v4, :cond_6

    aget-object v4, v3, v8

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Batch;->end:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 4622
    :cond_6
    aget-object v4, v3, v9

    if-nez v4, :cond_1

    .line 4606
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4611
    :cond_7
    aget-object v4, v3, v9

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Batch;->leuiTimeAlign:Z

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4613
    aput-object v1, v3, v9

    goto :goto_3
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .prologue
    .line 2084
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "EHm"

    .line 2085
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    .local v0, "pattern":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string/jumbo v2, ""

    :goto_1
    return-object v2

    .line 2084
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Ehma"

    .restart local v1    # "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 2087
    .restart local v0    # "pattern":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static fuzzForDuration(J)I
    .locals 2
    .param p0, "duration"    # J

    .prologue
    .line 2674
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 2677
    long-to-int v0, p0

    return v0

    .line 2678
    :cond_0
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 2680
    const v0, 0xdbba0

    return v0

    .line 2683
    :cond_1
    const v0, 0x1b7740

    return v0
.end method

.method private static getGoogleMaxTriggerTime(JJJJ)J
    .locals 8
    .param p0, "triggerElapsed"    # J
    .param p2, "windowLength"    # J
    .param p4, "interval"    # J
    .param p6, "nowElapsed"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 2516
    cmp-long v0, p2, v2

    if-nez v0, :cond_0

    .line 2517
    move-wide v6, p0

    .line 2523
    .local v6, "maxElapsed":J
    :goto_0
    return-wide v6

    .line 2518
    .end local v6    # "maxElapsed":J
    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    move-wide v0, p6

    move-wide v2, p0

    move-wide v4, p4

    .line 2519
    invoke-static/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v6

    .restart local v6    # "maxElapsed":J
    goto :goto_0

    .line 2521
    .end local v6    # "maxElapsed":J
    :cond_1
    add-long v6, p0, p2

    .restart local v6    # "maxElapsed":J
    goto :goto_0
.end method

.method private getLeuiTimeAlignTime()J
    .locals 2

    .prologue
    .line 3934
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-eqz v0, :cond_1

    .line 3936
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3939
    :cond_1
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method public static getRTCTimeString(J)Ljava/lang/String;
    .locals 2
    .param p0, "rtcMillis"    # J

    .prologue
    .line 2542
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 3324
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 3325
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    .line 3326
    .local v2, "uid":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 3327
    .local v3, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v3, :cond_0

    .line 3328
    new-instance v3, Landroid/util/ArrayMap;

    .end local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 3329
    .restart local v3    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3331
    :cond_0
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3332
    .local v0, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v0, :cond_1

    .line 3333
    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .end local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-direct {v0, v2, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    .line 3334
    .restart local v0    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-virtual {v3, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    :cond_1
    return-object v0
.end method

.method private native init()J
.end method

.method private final initLeuiSettings()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3950
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 3953
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3954
    const-string/jumbo v4, "leui_key_timealign_enable"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x1

    .line 3953
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    .line 3956
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3957
    const-string/jumbo v4, "leui_key_timealign_twilight_enable"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/4 v6, 0x0

    .line 3956
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    .line 3960
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->registerBattery()V

    .line 3962
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initSettings mTimeAlignDisable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mTwilightEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsPowered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3946
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 3954
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3957
    goto :goto_1

    .line 3963
    :catch_0
    move-exception v0

    .line 3964
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initSettings timealign Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isBootFromAlarm(I)Z
    .locals 1
    .param p1, "fd"    # I

    .prologue
    .line 3609
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->bootFromAlarm(I)Z

    move-result v0

    return v0
.end method

.method private final isTwilightAlign()Z
    .locals 1

    .prologue
    .line 4040
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWakeupAlarm(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 2533
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2332
    packed-switch p0, :pswitch_data_0

    .line 2340
    const-string/jumbo v0, "--unknown--"

    return-object v0

    .line 2333
    :pswitch_0
    const-string/jumbo v0, "RTC"

    return-object v0

    .line 2334
    :pswitch_1
    const-string/jumbo v0, "RTC_WAKEUP"

    return-object v0

    .line 2335
    :pswitch_2
    const-string/jumbo v0, "ELAPSED"

    return-object v0

    .line 2336
    :pswitch_3
    const-string/jumbo v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 2332
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private leUiescheduleKernelAlarmsLocked()V
    .locals 12

    .prologue
    .line 4634
    const-wide/16 v2, 0x0

    .line 4635
    .local v2, "nextNonWakeup":J
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 4637
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 4638
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isTwilightAlign()Z

    move-result v6

    .line 4639
    .local v6, "twilight":Z
    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->findLeuiFirstWakeupBatchLocked(Z)[Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 4642
    .local v1, "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    if-eqz v7, :cond_5

    .line 4643
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-wide v10, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 4645
    const/4 v7, 0x0

    aget-object v7, v1, v7

    iget-wide v8, v7, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 4646
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    const/4 v7, 0x2

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4650
    :cond_0
    const/4 v7, 0x0

    aget-object v7, v1, v7

    if-eq v0, v7, :cond_1

    .line 4651
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 4674
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    .end local v6    # "twilight":Z
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 4675
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_3

    .line 4676
    :cond_2
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4679
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_4

    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v7, v8, v2

    if-eqz v7, :cond_4

    .line 4680
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 4681
    const/4 v7, 0x3

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4633
    :cond_4
    return-void

    .line 4653
    .restart local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v1    # "firstWakeup":[Lcom/android/server/AlarmManagerService$Batch;
    .restart local v6    # "twilight":Z
    :cond_5
    const/4 v7, 0x1

    aget-object v7, v1, v7

    if-eqz v7, :cond_7

    .line 4655
    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/AlarmManagerService;->optimizeKernaelWakeupTime(ZLcom/android/server/AlarmManagerService$Batch;)J

    move-result-wide v4

    .line 4657
    .local v4, "tempNextWakeup":J
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    cmp-long v7, v8, v4

    if-eqz v7, :cond_6

    .line 4659
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 4660
    iget-wide v8, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    const/4 v7, 0x2

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 4664
    :cond_6
    const/4 v7, 0x1

    aget-object v7, v1, v7

    if-eq v0, v7, :cond_1

    .line 4665
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    goto :goto_0

    .line 4669
    .end local v4    # "tempNextWakeup":J
    :cond_7
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    goto :goto_0
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .locals 12
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 1901
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v9, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1902
    .local v9, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1903
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1904
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1905
    .local v4, "nowELAPSED":J
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1906
    .local v0, "NZ":I
    const/4 v11, 0x0

    .local v11, "iz":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 1907
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Batch;

    .line 1908
    .local v10, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v2, "Batch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1909
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v3, "  "

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1910
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1911
    const-string/jumbo v2, "AlarmManager"

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1906
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1900
    .end local v10    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .locals 6
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .prologue
    .line 714
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 715
    sub-long v0, p2, p0

    .line 717
    .local v0, "futurity":J
    :goto_0
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 718
    const-wide/16 v0, 0x0

    .line 720
    :cond_0
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v2, p2

    return-wide v2

    .line 716
    .end local v0    # "futurity":J
    :cond_1
    move-wide v0, p4

    .restart local v0    # "futurity":J
    goto :goto_0
.end method

.method private onBatteryChange()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 4171
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatteryChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4175
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4176
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 4170
    :cond_0
    return-void
.end method

.method private onInteractiveChange(Z)V
    .locals 4
    .param p1, "interactive"    # Z

    .prologue
    const/4 v3, 0x5

    .line 4186
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInteractiveChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4189
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 4190
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1b58

    .line 4189
    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4185
    :cond_0
    return-void

    .line 4190
    :cond_1
    const-wide/16 v0, 0xdac

    goto :goto_0
.end method

.method private onSettingChange(ZI)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x5

    .line 4123
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSettingChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", selfChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_0

    .line 4126
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 4128
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4129
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 4121
    :goto_0
    return-void

    .line 4131
    :cond_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSettingChange why.............flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onTimeZoneChange()V
    .locals 4

    .prologue
    .line 4141
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTimeZoneChange  align: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", twilight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", light: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", powered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/AlarmManagerService;->calculateTwilight(J)Z

    move-result v0

    .line 4144
    .local v0, "nowIsLight":Z
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    if-eq v0, v1, :cond_0

    .line 4145
    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    .line 4146
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTwilightChange()V

    .line 4140
    :cond_0
    return-void
.end method

.method private onTwilightChange()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 4156
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTwilightChange  align: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", twilight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", light: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTwilightEnable:Z

    if-eqz v0, :cond_0

    .line 4158
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 4160
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4161
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 4155
    :cond_0
    return-void
.end method

.method private optimizeKernaelWakeupTime(ZLcom/android/server/AlarmManagerService$Batch;)J
    .locals 18
    .param p1, "twilight"    # Z
    .param p2, "firstTimeAlignWakeup"    # Lcom/android/server/AlarmManagerService$Batch;

    .prologue
    .line 4519
    const-wide/16 v10, 0x0

    .line 4520
    .local v10, "tempNextWakeup":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4521
    .local v6, "lastAlarmDeliveryTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_0

    .line 4523
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 4547
    :goto_0
    return-wide v10

    .line 4524
    :cond_0
    if-eqz p1, :cond_2

    .line 4526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    rem-long v4, v14, v16

    .line 4527
    .local v4, "daysMillis":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4530
    .local v8, "nowElepse":J
    const-wide/32 v14, 0x6a6e180

    sub-long/2addr v14, v4

    const-wide/32 v16, 0x5265c00

    rem-long v12, v14, v16

    .line 4532
    .local v12, "twilightend2Now":J
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    sub-long v2, v14, v8

    .line 4534
    .local v2, "batchStart2Now":J
    cmp-long v14, v12, v2

    if-lez v14, :cond_1

    .line 4536
    add-long v10, v8, v12

    goto :goto_0

    .line 4539
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v14

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 4540
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    .line 4544
    .end local v2    # "batchStart2Now":J
    .end local v4    # "daysMillis":J
    .end local v8    # "nowElepse":J
    .end local v12    # "twilightend2Now":J
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getLeuiTimeAlignTime()J

    move-result-wide v14

    add-long/2addr v14, v6

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 4545
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0
.end method

.method private registerBattery()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3972
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v1, :cond_0

    .line 3973
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 3977
    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    .line 3978
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-eqz v1, :cond_1

    .line 3979
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastPowerTime:J

    .line 3983
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3985
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/AlarmManagerService$BatteryReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/AlarmManagerService$BatteryReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$BatteryReceiver;)V

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3971
    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    .line 2141
    const/4 v1, 0x0

    .line 2142
    .local v1, "didRemove":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2143
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2144
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 2145
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 2146
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2142
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2149
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2150
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2152
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2149
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2156
    :cond_3
    if-eqz v1, :cond_7

    .line 2158
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove(operation) changed bounds; rebatching operation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const/4 v3, 0x0

    .line 2161
    .local v3, "restorePending":Z
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2162
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2163
    const/4 v3, 0x1

    .line 2165
    :cond_4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2166
    iput-object v7, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2169
    :cond_5
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_8

    .line 2170
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2175
    :goto_2
    if-eqz v3, :cond_6

    .line 2176
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2178
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2140
    .end local v3    # "restorePending":Z
    :cond_7
    return-void

    .line 2172
    .restart local v3    # "restorePending":Z
    :cond_8
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "mAlarmBatches.size() is larger than 300 , do not rebatch"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private removePoweroffAlarmLocked(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3678
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    .line 3679
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 3680
    return-void

    .line 3684
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3686
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3688
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3689
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 3677
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    return-void
.end method

.method private resendDmPendingList(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3551
    .local p1, "DmResendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 3552
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3553
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3555
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_0
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v1, :cond_1

    .line 3556
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending alarm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    :cond_1
    iget-object v0, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3558
    sget-object v2, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 3559
    const-string/jumbo v3, "android.intent.extra.ALARM_COUNT"

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 3558
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 3560
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 3557
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 3563
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_2

    .line 3564
    iget-object v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 3565
    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    .line 3564
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 3566
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3568
    :cond_2
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3569
    iget-object v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v1, p0

    .line 3568
    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 3570
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3571
    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 3572
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3573
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 3574
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v1, :cond_4

    .line 3575
    const/4 v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 3576
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 3580
    :goto_1
    iget-object v11, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3581
    .local v11, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 3582
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v1, :cond_5

    .line 3583
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 3584
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 3588
    :goto_2
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 3589
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v1, :cond_0

    .line 3590
    :cond_3
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 3591
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3595
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_0
    move-exception v10

    .line 3596
    .local v10, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    goto/16 :goto_0

    .line 3578
    .end local v10    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_4
    :try_start_1
    iget v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    goto :goto_1

    .line 3586
    .restart local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_5
    iget v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3550
    .end local v0    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v11    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_6
    return-void
.end method

.method private resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 14
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v3, 0x7

    const-wide/16 v12, 0x3e8

    .line 3700
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    .line 3701
    .local v10, "setPackageName":Ljava/lang/String;
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3704
    .local v8, "latestTime":J
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 3705
    const-string/jumbo v0, "com.android.deskclock"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3709
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3710
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3731
    :goto_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset power off alarm is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    const-string/jumbo v0, "sys.power_off_alarm"

    div-long v2, v8, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    :goto_1
    return-void

    .line 3715
    :cond_0
    const-string/jumbo v0, "com.mediatek.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.letv.leui.schpwronoff"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3716
    :cond_1
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3719
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto :goto_0

    .line 3721
    :cond_2
    const-string/jumbo v0, "com.mediatek.poweronofftest"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3722
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBootPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set Prop 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    const-string/jumbo v0, "persist.sys.bootpackage"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    div-long v4, v8, v12

    rem-long v6, v8, v12

    mul-long/2addr v6, v12

    mul-long/2addr v6, v12

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    goto/16 :goto_0

    .line 3727
    :cond_3
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") to set power off alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3734
    :cond_4
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, " do not set alarm to RTC when fd close "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private sendNextAlarmClockChanged()V
    .locals 8

    .prologue
    .line 2051
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 2052
    .local v3, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 2054
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "sendNextAlarmClockChanged begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2056
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2057
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2058
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 2059
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2057
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2061
    .end local v4    # "userId":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2064
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2065
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 2066
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2067
    .restart local v4    # "userId":I
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2068
    .local v1, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2069
    const-string/jumbo v6, "next_alarm_formatted"

    .line 2070
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1, v4}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 2068
    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2073
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 2074
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 2073
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2065
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2055
    .end local v0    # "N":I
    .end local v1    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v2    # "i":I
    .end local v4    # "userId":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2076
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_1
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "sendNextAlarmClockChanged end"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-void
.end method

.method private native set(JIJJ)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    .locals 20
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "flags"    # I
    .param p14, "doValidate"    # Z
    .param p15, "workSource"    # Landroid/os/WorkSource;
    .param p16, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p17, "uid"    # I
    .param p18, "leuiTimeAlign"    # Z

    .prologue
    .line 1291
    new-instance v2, Lcom/android/server/AlarmManagerService$Alarm;

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    move-object/from16 v15, p15

    move/from16 v16, p13

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    invoke-direct/range {v2 .. v19}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1293
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    .line 1294
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1290
    return-void
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .locals 17
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .prologue
    .line 1298
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    .line 1303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_0

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1307
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1308
    .local v14, "nowElapsed":J
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v4, v14

    invoke-static {v4, v5}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v12

    .line 1309
    .local v12, "fuzz":I
    if-lez v12, :cond_2

    .line 1310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_1

    .line 1311
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 1313
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    .line 1314
    .local v11, "delta":I
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v11

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1322
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1336
    .end local v11    # "delta":I
    .end local v12    # "fuzz":I
    .end local v14    # "nowElapsed":J
    :cond_2
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_3

    .line 1337
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a.whenElapsed ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1338
    const-string/jumbo v5, " a.leuiTimeAlign= "

    .line 1337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1338
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    .line 1337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1339
    const-string/jumbo v5, "  a.flags= "

    .line 1337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1339
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    .line 1337
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_3
    const/16 v16, -0x1

    .line 1350
    .local v16, "whichBatch":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->attemptCoalesceLocked(Ljava/util/ArrayList;IJJZ)I

    move-result v16

    .line 1357
    :goto_0
    if-gez v16, :cond_d

    .line 1358
    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1359
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1371
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_5

    .line 1372
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1375
    :cond_5
    const/4 v13, 0x0

    .line 1377
    .local v13, "needRebatch":Z
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_e

    .line 1378
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 1380
    const/4 v13, 0x1

    .line 1393
    :cond_6
    :goto_2
    if-nez p2, :cond_9

    .line 1394
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v3, :cond_7

    .line 1395
    if-eqz p3, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->validateConsistencyLocked()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1407
    :cond_7
    :goto_3
    if-eqz v13, :cond_8

    .line 1408
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1411
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1412
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1297
    :cond_9
    return-void

    .line 1325
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v13    # "needRebatch":Z
    .end local v16    # "whichBatch":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_2

    .line 1328
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0xe

    if-nez v3, :cond_2

    .line 1332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    return-void

    .line 1354
    .restart local v16    # "whichBatch":I
    :cond_b
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    if-eqz v3, :cond_c

    const/16 v16, -0x1

    goto :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v16

    goto :goto_0

    .line 1361
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1362
    .restart local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " alarm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " add to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto/16 :goto_1

    .line 1381
    .restart local v13    # "needRebatch":Z
    :cond_e
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 1383
    :cond_f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_6

    .line 1388
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 1396
    :cond_10
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tipping-point operation: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1397
    const-string/jumbo v5, " when(hex)="

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1397
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1398
    const-string/jumbo v5, " whenElapsed="

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1398
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1396
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1399
    const-string/jumbo v5, " maxWhenElapsed="

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1399
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1396
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1400
    const-string/jumbo v5, " interval="

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1400
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1396
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1400
    const-string/jumbo v5, " op="

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1400
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1401
    const-string/jumbo v5, " flags=0x"

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1401
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1396
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1403
    const/4 v13, 0x0

    goto/16 :goto_3
.end method

.method private native setKernelTime(JJ)I
.end method

.method private native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "when"    # J

    .prologue
    .line 2298
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2302
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 2303
    const-wide/16 v4, 0x0

    .line 2304
    .local v4, "alarmSeconds":J
    const-wide/16 v6, 0x0

    .line 2309
    .local v6, "alarmNanoseconds":J
    :goto_0
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set alarm to RTC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 2297
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :goto_1
    return-void

    .line 2306
    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v4, p2, v0

    .line 2307
    .restart local v4    # "alarmSeconds":J
    const-wide/16 v0, 0x3e8

    rem-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v6, v0, v2

    .restart local v6    # "alarmNanoseconds":J
    goto :goto_0

    .line 2312
    .end local v4    # "alarmSeconds":J
    .end local v6    # "alarmNanoseconds":J
    :cond_1
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the mNativeData from RTC is abnormal,  mNativeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 2314
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x1

    iput v0, v8, Landroid/os/Message;->what:I

    .line 2316
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2317
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v8, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private shutdownCheckPoweroffAlarm()V
    .locals 22

    .prologue
    .line 3781
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "into shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    const/4 v15, 0x0

    .line 3784
    .local v15, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3785
    .local v16, "nowTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 3786
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 3787
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3788
    .end local v15    # "setPackageName":Ljava/lang/String;
    .local v14, "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3789
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3790
    .local v10, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3791
    .local v12, "latestTime":J
    iget-object v2, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v15

    .line 3793
    .local v15, "setPackageName":Ljava/lang/String;
    const-wide/16 v2, 0x7530

    sub-long v2, v12, v2

    cmp-long v2, v2, v16

    if-gtz v2, :cond_0

    .line 3794
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "get target latestTime < 30S!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3795
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3785
    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v12    # "latestTime":J
    .end local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v15    # "setPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2

    .line 3798
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v14    # "mTempPoweroffAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 3799
    .local v18, "tempIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3800
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3801
    .restart local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v12, v10, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 3803
    .restart local v12    # "latestTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 3804
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    iget v5, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const-wide/16 v6, 0x3e8

    div-long v6, v12, v6

    const-wide/16 v8, 0x3e8

    rem-long v8, v12, v8

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    const-wide/16 v20, 0x3e8

    mul-long v8, v8, v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v10    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "latestTime":J
    :cond_3
    monitor-exit v19

    .line 3808
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v3, "away shutdownCheckPoweroffAlarm()!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .locals 17

    .prologue
    .line 1969
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v13, :cond_0

    .line 1970
    return-void

    .line 1972
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 1974
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1975
    .local v11, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 1977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1978
    .local v2, "N":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_4

    .line 1979
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v6, v13, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 1980
    .local v6, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1982
    .local v1, "M":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_3

    .line 1983
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1984
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v13, :cond_2

    .line 1985
    iget v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1987
    .local v12, "userId":I
    sget-boolean v13, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v13, :cond_1

    .line 1988
    const-string/jumbo v13, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Found AlarmClockInfo at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v0, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v15

    .line 1988
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1990
    const-string/jumbo v15, " for user "

    .line 1988
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1995
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1982
    .end local v12    # "userId":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1978
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2002
    .end local v1    # "M":I
    .end local v6    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v9    # "j":I
    :cond_4
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2003
    .local v3, "NN":I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_6

    .line 2004
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2005
    .local v10, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 2006
    .restart local v12    # "userId":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2007
    .local v7, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v10, v7}, Landroid/app/AlarmManager$AlarmClockInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2008
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2003
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2013
    .end local v7    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v10    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v12    # "userId":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2014
    .local v4, "NNN":I
    add-int/lit8 v8, v4, -0x1

    :goto_3
    if-ltz v8, :cond_8

    .line 2015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 2016
    .restart local v12    # "userId":I
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    .line 2017
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 2014
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 1968
    .end local v12    # "userId":I
    :cond_8
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    const/4 v3, 0x4

    .line 2024
    if-eqz p2, :cond_1

    .line 2025
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_0

    .line 2026
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2, p1}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 2026
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2037
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2038
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 2039
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 2023
    return-void

    .line 2031
    :cond_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    if-eqz v0, :cond_2

    .line 2032
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Next AlarmClockInfoForUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private updatePoweroffAlarm(J)V
    .locals 7
    .param p1, "nowRTC"    # J

    .prologue
    .line 3617
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3619
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 3621
    return-void

    .line 3624
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v4, p1

    if-lez v2, :cond_1

    monitor-exit v3

    .line 3626
    return-void

    .line 3629
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3631
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3633
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3635
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 3644
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3645
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v3

    .line 3615
    return-void

    .line 3639
    .restart local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    :try_start_3
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v4, "power off alarm update deleted"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3617
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private final useLeuiSetKernelAlarms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4052
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mIsPowered:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final usePolicyMakeBatch()Z
    .locals 1

    .prologue
    .line 4031
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 4032
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mTimeAlignEnable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isTwilightAlign()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateConsistencyLocked()Z
    .locals 9

    .prologue
    .line 1917
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    if-eqz v6, :cond_1

    .line 1918
    const-wide/high16 v4, -0x8000000000000000L

    .line 1919
    .local v4, "lastTime":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1920
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1921
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1922
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_0

    .line 1924
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 1920
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1926
    :cond_0
    const-string/jumbo v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CONSISTENCY FAILURE: Batch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is out of order"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1928
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->logBatchesLocked(Ljava/text/SimpleDateFormat;)V

    .line 1929
    const/4 v6, 0x0

    return v6

    .line 1933
    .end local v0    # "N":I
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "i":I
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastTime":J
    :cond_1
    const/4 v6, 0x1

    return v6
.end method

.method private native waitForAlarm(J)I
.end method


# virtual methods
.method attemptCoalesceLocked(JJ)I
    .locals 5
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 735
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 736
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 737
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 740
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    return v2

    .line 736
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v3, -0x2

    return v3
.end method

.method public bootFromPoweroffAlarm()Z
    .locals 3

    .prologue
    .line 1070
    const-string/jumbo v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1072
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 1071
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 649
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 652
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 653
    const/4 v2, 0x0

    .line 660
    .local v2, "alarmPrio":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 661
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 662
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_0
    if-nez v4, :cond_1

    .line 663
    new-instance v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 664
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_1
    iput-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 668
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v5, v6, :cond_5

    .line 670
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 671
    iget v5, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    .line 648
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_3
    iget-boolean v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v5, :cond_4

    .line 655
    const/4 v2, 0x1

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 657
    .end local v2    # "alarmPrio":I
    :cond_4
    const/4 v2, 0x2

    .restart local v2    # "alarmPrio":I
    goto :goto_1

    .line 676
    .restart local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_5
    iget v5, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v2, v5, :cond_2

    .line 677
    iput v2, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    goto :goto_2

    .line 646
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    :cond_6
    return-void
.end method

.method public cancelPoweroffAlarmImpl(Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 3744
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove power off alarm pacakge name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    monitor-enter v9

    .line 3747
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 3750
    const-string/jumbo v0, "persist.sys.bootpackage"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3751
    .local v8, "bootReason":Ljava/lang/String;
    if-eqz v8, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3752
    const-string/jumbo v0, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.android.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3754
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3757
    const-string/jumbo v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3772
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v9

    .line 3743
    return-void

    .line 3760
    :cond_2
    :try_start_1
    const-string/jumbo v0, "3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.android.deskclock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3761
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3762
    const-string/jumbo v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3746
    .end local v8    # "bootReason":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 3765
    .restart local v8    # "bootReason":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v0, "2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.mediatek.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "com.letv.leui.schpwronoff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3766
    const-string/jumbo v0, "com.mediatek.poweronofftest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3765
    if-eqz v0, :cond_0

    .line 3767
    :cond_4
    iget-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/AlarmManagerService;->set(JIJJ)V

    .line 3768
    const-string/jumbo v0, "sys.power_off_alarm"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .locals 9
    .param p1, "nowELAPSED"    # J

    .prologue
    const/4 v2, 0x0

    .line 2688
    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eqz v3, :cond_0

    .line 2689
    return v2

    .line 2691
    :cond_0
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 2692
    return v2

    .line 2694
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    .line 2698
    return v2

    .line 2700
    :cond_2
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v0, p1, v4

    .line 2701
    .local v0, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1576
    array-length v3, p2

    if-lt p3, v3, :cond_0

    .line 1577
    const-string/jumbo v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    :goto_0
    add-int/lit8 v2, p3, 0x1

    .line 1602
    .local v2, "optiSocketPeriod":I
    array-length v3, p2

    if-lt v2, v3, :cond_6

    .line 1603
    const-string/jumbo v3, "  Invalid minimum socket block period index!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    :goto_1
    return-void

    .line 1579
    .end local v2    # "optiSocketPeriod":I
    :cond_0
    const-string/jumbo v3, "on"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1580
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1581
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1582
    sput-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1583
    :cond_1
    const-string/jumbo v3, "off"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1584
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 1585
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 1586
    sput-boolean v5, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    goto :goto_0

    .line 1587
    :cond_2
    const-string/jumbo v3, "0"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1588
    sput v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1589
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1590
    :cond_3
    const-string/jumbo v3, "1"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1591
    sput v6, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1592
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1593
    :cond_4
    const-string/jumbo v3, "2"

    aget-object v4, p2, p3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1594
    const/4 v3, 0x2

    sput v3, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    .line 1595
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mAlarmMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/AlarmManagerService;->mAlarmMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1597
    :cond_5
    const-string/jumbo v3, "  Invalid argument!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1606
    .restart local v2    # "optiSocketPeriod":I
    :cond_6
    :try_start_0
    aget-object v1, p2, v2

    .line 1607
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1608
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 1609
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMinimumPeriod_BlockSocket(secs) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1610
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1609
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1615
    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1617
    const-string/jumbo v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "socket block period exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1613
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string/jumbo v3, "  Invalid minimum socket block period!"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .locals 5
    .param p1, "nowELAPSED"    # J

    .prologue
    .line 2657
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v2

    .line 2658
    .local v0, "timeSinceOn":J
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;JZ)V
    .locals 30
    .param p2, "nowELAPSED"    # J
    .param p4, "kernel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 2714
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 2715
    const/16 v21, 0x0

    .line 2716
    .local v21, "hasWakeup":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 2717
    .local v24, "nowRTC":J
    const/16 v23, 0x0

    .line 2719
    .local v23, "needRebatch":Z
    const/16 v26, 0x0

    .line 2721
    .local v26, "openLteGateSuccess":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_0

    .line 2722
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    .line 2723
    .local v14, "b":Landroid/os/IBinder;
    invoke-static {v14}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2725
    const-string/jumbo v5, "data_shaping"

    .line 2724
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/mediatek/datashaping/IDataShapingManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 2728
    .end local v14    # "b":Landroid/os/IBinder;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    if-eqz v5, :cond_1

    .line 2730
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/mediatek/datashaping/IDataShapingManager;->openLteDataUpLinkGate(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 2736
    .end local v26    # "openLteGateSuccess":Z
    :cond_1
    :goto_0
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "openLteGateSuccess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    if-eqz v5, :cond_3

    .line 2740
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2741
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J

    .line 2740
    sub-long v28, v6, v8

    .line 2742
    .local v28, "socktUnblockingTimeElapsed":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    cmp-long v5, v28, v6

    if-ltz v5, :cond_8

    .line 2746
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v5, :cond_2

    .line 2747
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    .line 2748
    .local v15, "b1":Landroid/os/IBinder;
    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 2751
    .end local v15    # "b1":Landroid/os/IBinder;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mPreviousTime_SetBlockSocket:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2760
    .end local v28    # "socktUnblockingTimeElapsed":J
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2763
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_5

    .line 2764
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2765
    .local v12, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_9

    const/4 v13, 0x1

    .line 2767
    .local v13, "allowWhileIdle":Z
    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->updatePoweroffAlarm(J)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2771
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-nez v5, :cond_a

    .line 2772
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/server/AlarmManagerService;->FreeDmIntent(Ljava/util/ArrayList;Ljava/util/ArrayList;JLjava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v11

    .line 2869
    .end local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "allowWhileIdle":Z
    :cond_5
    if-eqz p4, :cond_6

    if-eqz v21, :cond_6

    .line 2871
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mWakeupCount:J

    .line 2878
    :cond_6
    if-eqz v23, :cond_7

    .line 2879
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, " deliverAlarmsLocked removeInvalidAlarmLocked then rebatch "

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2881
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2704
    :cond_7
    return-void

    .line 2731
    .end local v22    # "i":I
    .restart local v26    # "openLteGateSuccess":Z
    :catch_0
    move-exception v18

    .line 2732
    .local v18, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error openLteDataUpLinkGate false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2752
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v26    # "openLteGateSuccess":Z
    .restart local v28    # "socktUnblockingTimeElapsed":J
    :catch_1
    move-exception v18

    .line 2753
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error setBlockUplinkSocket false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2756
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_8
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "socktUnblockingTimeElapsed(ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2757
    const-string/jumbo v7, " < mMinimumPeriod_BlockSocket: "

    .line 2756
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2757
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMinimumPeriod_BlockSocket:J

    .line 2756
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2765
    .end local v28    # "socktUnblockingTimeElapsed":J
    .restart local v12    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v22    # "i":I
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "allowWhileIdle":Z
    goto/16 :goto_3

    :cond_a
    monitor-exit v11

    .line 2779
    const-string/jumbo v5, "ro.mtk_ipo_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2780
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_c

    .line 2763
    :cond_b
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 2770
    :catchall_0
    move-exception v5

    monitor-exit v11

    throw v5

    .line 2786
    :cond_c
    :try_start_3
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_d

    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_d
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v5, :cond_e

    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 2788
    :cond_e
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wakeup alarm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2789
    const-string/jumbo v7, "leuiTimeAlign = "

    .line 2788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2789
    iget-boolean v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    .line 2788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    const/16 v21, 0x1

    .line 2791
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTriggleWakeupAlarmCount:J

    .line 2794
    :cond_f
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_10

    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 2795
    const/16 v27, 0x0

    .local v27, "wi":I
    :goto_5
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_11

    .line 2797
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2796
    invoke-static {v5, v6, v7}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2795
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 2801
    .end local v27    # "wi":I
    :cond_10
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, -0x1

    .line 2800
    invoke-static {v5, v7, v6}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    .line 2804
    :cond_11
    iget-object v4, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2805
    sget-object v6, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 2806
    const-string/jumbo v7, "android.intent.extra.ALARM_COUNT"

    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2805
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 2807
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    .line 2804
    :goto_6
    const/4 v6, 0x0

    .line 2807
    const/4 v10, 0x0

    .line 2804
    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2809
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sending alarm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v5, :cond_12

    .line 2812
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 2813
    iget v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    .line 2812
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 2814
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2816
    :cond_12
    new-instance v4, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2817
    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v9, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    .line 2816
    invoke-direct/range {v4 .. v11}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;J)V

    .line 2818
    .local v4, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2819
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2821
    if-eqz v13, :cond_13

    .line 2823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move-wide/from16 v0, p2

    invoke-virtual {v5, v6, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2826
    :cond_13
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-object/from16 v16, v0

    .line 2827
    .local v16, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 2828
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_16

    .line 2829
    const/4 v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2830
    move-wide/from16 v0, p2

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 2834
    :goto_7
    iget-object v0, v4, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v20, v0

    .line 2835
    .local v20, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2836
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v5, :cond_17

    .line 2837
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2838
    move-wide/from16 v0, p2

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 2842
    :goto_8
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_14

    .line 2843
    iget v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_b

    .line 2844
    :cond_14
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 2845
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 2846
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v5, :cond_18

    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 2847
    const/16 v27, 0x0

    .restart local v27    # "wi":I
    :goto_9
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_b

    .line 2849
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 2850
    iget-object v7, v12, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2848
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    .line 2847
    add-int/lit8 v27, v27, 0x1

    goto :goto_9

    .line 2807
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v20    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "wi":I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 2832
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_16
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    iput v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 2857
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_2
    move-exception v17

    .line 2858
    .local v17, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_b

    .line 2861
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/AlarmManagerService;->removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v23, 0x1

    goto/16 :goto_4

    .line 2840
    .end local v17    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v20    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_17
    :try_start_4
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    .line 2863
    .end local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v20    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_3
    move-exception v19

    .line 2864
    .local v19, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v6, "Failure sending alarm."

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2854
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v16    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v20    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_18
    :try_start_5
    iget-object v5, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v12, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 2853
    invoke-static {v5, v7, v8, v6}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_4
.end method

.method dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 50
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1627
    const/16 v38, 0x0

    .line 1628
    .local v38, "opti":I
    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v38

    if-ge v0, v5, :cond_0

    .line 1629
    aget-object v33, p2, v38

    .line 1630
    .local v33, "opt":Ljava/lang/String;
    if-eqz v33, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1646
    .end local v33    # "opt":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    array-length v5, v0

    move/from16 v0, v38

    if-ge v0, v5, :cond_3

    .line 1647
    aget-object v23, p2, v38

    .line 1648
    .local v23, "cmd":Ljava/lang/String;
    add-int/lit8 v38, v38, 0x1

    .line 1649
    const-string/jumbo v5, "log"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1650
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1651
    return-void

    .line 1630
    .end local v23    # "cmd":Ljava/lang/String;
    .restart local v33    # "opt":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 1633
    add-int/lit8 v38, v38, 0x1

    .line 1634
    const-string/jumbo v5, "-h"

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1635
    const-string/jumbo v5, "alarm manager dump options:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    const-string/jumbo v5, "  log  [on/off]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    const-string/jumbo v5, "  Example:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v5, "  $adb shell dumpsys alarm log on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    const-string/jumbo v5, "  $adb shell dumpsys alarm log off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    return-void

    .line 1642
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; use -h for help"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1655
    .end local v33    # "opt":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v49, v0

    monitor-enter v49

    .line 1656
    :try_start_0
    const-string/jumbo v5, "Current Alarm Manager state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;)V

    .line 1658
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1661
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1662
    .local v8, "nowELAPSED":J
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v12, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1664
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "  nowRTC="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1665
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1666
    const-string/jumbo v5, " nowELAPSED="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1667
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1668
    const-string/jumbo v5, "  mLastTimeChangeClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 1669
    const-string/jumbo v5, "="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    const-string/jumbo v5, "  mLastTimeChangeRealtime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1672
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1673
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v5, :cond_4

    .line 1674
    const-string/jumbo v5, "  Time since non-interactive: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1676
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1677
    const-string/jumbo v5, "  Max wakeup delay: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1678
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1679
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1680
    const-string/jumbo v5, "  Time since last dispatch: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1682
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1683
    const-string/jumbo v5, "  Next non-wakeup delivery time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v6, v8, v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1685
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1688
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v10, v8

    add-long v36, v6, v14

    .line 1689
    .local v36, "nextWakeupRTC":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v14, v10, v8

    add-long v34, v6, v14

    .line 1690
    .local v34, "nextNonWakeupRTC":J
    const-string/jumbo v5, "  Next non-wakeup alarm: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1691
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1692
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v34

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v5, "  Next wakeup: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1694
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v36

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v5, "  Num time change events: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1697
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1698
    const-string/jumbo v5, "  Next alarm clock information: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v48, Ljava/util/TreeSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/TreeSet;-><init>()V

    .line 1700
    .local v48, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_5

    .line 1701
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1700
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1703
    :cond_5
    const/16 v27, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_6

    .line 1704
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1703
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 1706
    :cond_6
    invoke-interface/range {v48 .. v48}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .local v47, "user$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 1707
    .local v46, "user":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 1708
    .local v32, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v32, :cond_8

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v42

    .line 1709
    .local v42, "time":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    move/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v39

    .line 1710
    .local v39, "pendingSend":Z
    const-string/jumbo v5, "    user:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1711
    const-string/jumbo v5, " pendingSend:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1712
    const-string/jumbo v5, " time:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1713
    const-wide/16 v6, 0x0

    cmp-long v5, v42, v6

    if-lez v5, :cond_7

    .line 1714
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    move-wide/from16 v0, v42

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    const-string/jumbo v5, " = "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v42

    move-object/from16 v2, p1

    invoke-static {v0, v1, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1717
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 1655
    .end local v8    # "nowELAPSED":J
    .end local v10    # "nowRTC":J
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v27    # "i":I
    .end local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v34    # "nextNonWakeupRTC":J
    .end local v36    # "nextWakeupRTC":J
    .end local v39    # "pendingSend":Z
    .end local v42    # "time":J
    .end local v46    # "user":I
    .end local v47    # "user$iterator":Ljava/util/Iterator;
    .end local v48    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v49

    throw v5

    .line 1708
    .restart local v8    # "nowELAPSED":J
    .restart local v10    # "nowRTC":J
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v27    # "i":I
    .restart local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local v34    # "nextNonWakeupRTC":J
    .restart local v36    # "nextWakeupRTC":J
    .restart local v46    # "user":I
    .restart local v47    # "user$iterator":Ljava/util/Iterator;
    .restart local v48    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_8
    const-wide/16 v42, 0x0

    .restart local v42    # "time":J
    goto :goto_4

    .line 1719
    .end local v32    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v42    # "time":J
    .end local v46    # "user":I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1720
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1721
    const-string/jumbo v5, "  Pending alarm batches: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "b$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 1724
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 1725
    iget-object v6, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_5

    .line 1728
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v21    # "b$iterator":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1729
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1730
    const-string/jumbo v5, "    Idle mode state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string/jumbo v5, "      Idling until: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_e

    .line 1733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1738
    :goto_6
    const-string/jumbo v5, "      Pending alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "      "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1741
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v5, :cond_d

    .line 1742
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1743
    const-string/jumbo v5, "  Next wake from idle: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1744
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string/jumbo v15, "    "

    move-object/from16 v14, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1747
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1748
    const-string/jumbo v5, "  Past-due non-wakeup alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1749
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 1750
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string/jumbo v7, "    "

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 1755
    :goto_7
    const-string/jumbo v5, "    Number of delayed alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1756
    const-string/jumbo v5, ", total delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1757
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1758
    const-string/jumbo v5, "    Max delay time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1759
    const-string/jumbo v5, ", max non-interactive time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1761
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1763
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1764
    const-string/jumbo v5, "  Broadcast ref count: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1765
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1767
    const-string/jumbo v5, "  mAllowWhileIdleMinTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1769
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 1771
    const-string/jumbo v5, "  Last allow while idle dispatch times:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    const/16 v27, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5}, Landroid/util/SparseLongArray;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_10

    .line 1773
    const-string/jumbo v5, "  UID "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1775
    const-string/jumbo v5, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1778
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1772
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1736
    :cond_e
    const-string/jumbo v5, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1753
    :cond_f
    const-string/jumbo v5, "(none)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1781
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string/jumbo v6, "  Recent problems"

    const-string/jumbo v7, "    "

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1784
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1787
    :cond_11
    const/16 v5, 0xa

    new-array v0, v5, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v44, v0

    .line 1788
    .local v44, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v24, Lcom/android/server/AlarmManagerService$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1799
    .local v24, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v31, 0x0

    .line 1800
    .local v31, "len":I
    const/16 v30, 0x0

    .local v30, "iu":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_18

    .line 1801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/ArrayMap;

    .line 1802
    .local v45, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v28, 0x0

    .local v28, "ip":I
    :goto_a
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_17

    .line 1803
    move-object/from16 v0, v45

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1804
    .local v22, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/16 v29, 0x0

    .local v29, "is":I
    :goto_b
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_16

    .line 1805
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1806
    .local v26, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    if-lez v31, :cond_15

    .line 1807
    const/4 v5, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v31

    move-object/from16 v2, v26

    move-object/from16 v3, v24

    invoke-static {v0, v5, v1, v2, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v40

    .line 1808
    .local v40, "pos":I
    :goto_c
    if-gez v40, :cond_12

    .line 1809
    move/from16 v0, v40

    neg-int v5, v0

    add-int/lit8 v40, v5, -0x1

    .line 1811
    :cond_12
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v40

    if-ge v0, v5, :cond_14

    .line 1812
    move-object/from16 v0, v44

    array-length v5, v0

    sub-int v5, v5, v40

    add-int/lit8 v25, v5, -0x1

    .line 1813
    .local v25, "copylen":I
    if-lez v25, :cond_13

    .line 1814
    add-int/lit8 v5, v40, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v40

    move-object/from16 v2, v44

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    :cond_13
    aput-object v26, v44, v40

    .line 1817
    move-object/from16 v0, v44

    array-length v5, v0

    move/from16 v0, v31

    if-ge v0, v5, :cond_14

    .line 1818
    add-int/lit8 v31, v31, 0x1

    .line 1804
    .end local v25    # "copylen":I
    :cond_14
    add-int/lit8 v29, v29, 0x1

    goto :goto_b

    .line 1807
    .end local v40    # "pos":I
    :cond_15
    const/16 v40, 0x0

    .restart local v40    # "pos":I
    goto :goto_c

    .line 1802
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v40    # "pos":I
    :cond_16
    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    .line 1800
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v29    # "is":I
    :cond_17
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_9

    .line 1824
    .end local v28    # "ip":I
    .end local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_18
    if-lez v31, :cond_1a

    .line 1825
    const-string/jumbo v5, "  Top Alarms:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    const/16 v27, 0x0

    :goto_d
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    .line 1827
    aget-object v26, v44, v27

    .line 1828
    .restart local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1829
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_19

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    :cond_19
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1831
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1832
    const-string/jumbo v5, " wakeups, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1833
    const-string/jumbo v5, " alarms: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1834
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1835
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1836
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1826
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_d

    .line 1841
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1a
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    const-string/jumbo v5, "  Alarm Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1843
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    .local v41, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/16 v30, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_20

    .line 1845
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/util/ArrayMap;

    .line 1846
    .restart local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/16 v28, 0x0

    .restart local v28    # "ip":I
    :goto_f
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_1f

    .line 1847
    move-object/from16 v0, v45

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1848
    .restart local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string/jumbo v5, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1849
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v5, :cond_1b

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    :cond_1b
    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1851
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1853
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1854
    const-string/jumbo v5, " running, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1855
    const-string/jumbo v5, " wakeups:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 1857
    const/16 v29, 0x0

    .restart local v29    # "is":I
    :goto_10
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_1c

    .line 1858
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1857
    add-int/lit8 v29, v29, 0x1

    goto :goto_10

    .line 1860
    :cond_1c
    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1861
    const/16 v27, 0x0

    :goto_11
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_1e

    .line 1862
    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1863
    .restart local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string/jumbo v5, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v5, :cond_1d

    const-string/jumbo v5, "*ACTIVE* "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1865
    :cond_1d
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1866
    const-string/jumbo v5, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1867
    const-string/jumbo v5, " wakes "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1868
    const-string/jumbo v5, " alarms, last "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    move-object/from16 v0, p1

    invoke-static {v6, v7, v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1870
    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v5, "      "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1872
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1861
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_11

    .line 1846
    .end local v26    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_1e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_f

    .line 1844
    .end local v22    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v29    # "is":I
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_e

    .end local v28    # "ip":I
    .end local v45    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_20
    monitor-exit v49

    .line 1625
    return-void
.end method

.method public enableDm()I
    .locals 2

    .prologue
    .line 3439
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mDMLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3440
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mPPLEnable:Z

    if-eqz v0, :cond_0

    .line 3453
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->resendDmPendingList(Ljava/util/ArrayList;)V

    .line 3454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 3455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3458
    const/4 v0, -0x1

    return v0

    .line 3439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1085
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 1083
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    .line 1087
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 1086
    throw v0
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1958
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v1, "getNextAlarmClockImpl is called before Lock "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1960
    :try_start_0
    const-string/jumbo v0, "AlarmManager"

    const-string/jumbo v2, "getNextAlarmClockImpl is called in Lock "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1959
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getNextWakeFromIdleTimeImpl()J
    .locals 3

    .prologue
    .line 1952
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1953
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 1952
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method interactiveStateChangedLocked(Z)V
    .locals 10
    .param p1, "interactive"    # Z

    .prologue
    .line 2253
    iget-boolean v6, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v6, p1, :cond_2

    .line 2254
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 2255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2256
    .local v2, "nowELAPSED":J
    if-eqz p1, :cond_3

    .line 2257
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2258
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v6

    .line 2259
    .local v4, "thisDelayTime":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2260
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_0

    .line 2261
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2263
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v2, v3, v7}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;JZ)V

    .line 2264
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2266
    .end local v4    # "thisDelayTime":J
    :cond_1
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2267
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, v2, v6

    .line 2268
    .local v0, "dur":J
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 2269
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 2278
    .end local v0    # "dur":J
    .end local v2    # "nowELAPSED":J
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->onInteractiveChange(Z)V

    .line 2252
    return-void

    .line 2273
    .restart local v2    # "nowELAPSED":J
    :cond_3
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    goto :goto_0
.end method

.method public lookForPackageFromAmsImpl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3827
    if-nez p1, :cond_0

    .line 3828
    const/4 v0, 0x0

    return v0

    .line 3830
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3831
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 3830
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2284
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2285
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2286
    return v3

    .line 2283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2289
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2290
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2291
    return v3

    .line 2289
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2294
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x0

    .line 4059
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 4060
    new-instance v0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    .line 4062
    .local v0, "observer":Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->LEUI_TIMEALIGN_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4063
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/AlarmManagerService;->LEUI_TWILIGHT_ENABLE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4058
    .end local v0    # "observer":Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 14

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    .line 934
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 937
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    if-nez v9, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->initLeuiSettings()V

    .line 939
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->ensureLeuiPlug()V

    .line 946
    :cond_0
    const-string/jumbo v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 947
    :cond_1
    const-string/jumbo v9, "persist.sys.timezone"

    const-string/jumbo v10, "Asia/Shanghai"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_2
    const-string/jumbo v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 964
    .local v7, "pm":Landroid/os/PowerManager;
    const-string/jumbo v9, "*alarm*"

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 966
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 967
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.TIME_TICK"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    const/high16 v11, 0x50000000

    .line 967
    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    .line 970
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 966
    const/4 v12, 0x0

    .line 969
    const/4 v13, 0x0

    .line 966
    invoke-static {v9, v12, v10, v13, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    .line 971
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v9, 0x20000000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 974
    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 973
    const/4 v11, 0x0

    .line 974
    const/high16 v12, 0x4000000

    .line 973
    invoke-static {v9, v11, v5, v12, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 977
    new-instance v9, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 978
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 979
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 980
    new-instance v9, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mInteractiveStateReceiver:Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    .line 981
    new-instance v9, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    .line 983
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    .line 984
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmIconPackageList:Ljava/util/ArrayList;

    const-string/jumbo v10, "com.android.deskclock"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    :try_start_0
    const-string/jumbo v9, "DmAgent"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 988
    .local v2, "binder":Landroid/os/IBinder;
    if-eqz v2, :cond_5

    .line 989
    invoke-static {v2}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 990
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v6

    .line 991
    .local v6, "locked":Z
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "dm state lock is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz v6, :cond_4

    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/android/server/AlarmManagerService;->mDMEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v6    # "locked":Z
    :goto_1
    new-instance v9, Lcom/android/server/AlarmManagerService$DMReceiver;

    invoke-direct {v9, p0}, Lcom/android/server/AlarmManagerService$DMReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDMReceiver:Lcom/android/server/AlarmManagerService$DMReceiver;

    .line 1000
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    .line 1001
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmFreeList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mDmResendList:Ljava/util/ArrayList;

    .line 1007
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_6

    .line 1008
    new-instance v8, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v8, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1009
    .local v8, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1015
    .end local v8    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    :goto_2
    const-string/jumbo v9, "ro.mtk_ipo_support"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1016
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1017
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v9, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v9, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v10, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v9, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1058
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_3
    const-string/jumbo v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1059
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->mNwService:Landroid/os/INetworkManagementService;

    .line 1061
    const-string/jumbo v9, "data_shaping"

    .line 1060
    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/mediatek/datashaping/IDataShapingManager;

    iput-object v9, p0, Lcom/android/server/AlarmManagerService;->dataShapingManager:Lcom/mediatek/datashaping/IDataShapingManager;

    .line 1063
    const-string/jumbo v9, "alarm"

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 932
    return-void

    .line 992
    .end local v1    # "b":Landroid/os/IBinder;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v2    # "binder":Landroid/os/IBinder;
    .restart local v6    # "locked":Z
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 994
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v6    # "locked":Z
    :cond_5
    :try_start_1
    const-string/jumbo v9, "AlarmManager"

    const-string/jumbo v10, "dm binder is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 996
    .end local v2    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v3

    .line 997
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "AlarmManager"

    const-string/jumbo v10, "remote error"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1011
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string/jumbo v9, "AlarmManager"

    const-string/jumbo v10, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 20
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .prologue
    .line 786
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 787
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v4, v5, v6}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v8

    .line 790
    .local v8, "whenElapsed":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    if-eqz v4, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move-wide/from16 v6, p2

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v18

    .line 821
    .local v18, "maxElapsed":J
    :goto_0
    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 822
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 823
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v4, :cond_0

    .line 824
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reAddAlarmLocked a.whenElapsed  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 825
    const-string/jumbo v6, " a.maxWhenElapsed = "

    .line 824
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 825
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 824
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 785
    return-void

    .line 794
    .end local v18    # "maxElapsed":J
    :cond_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 796
    move-wide/from16 v18, v8

    .restart local v18    # "maxElapsed":J
    goto :goto_0

    .line 801
    .end local v18    # "maxElapsed":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v14, p2

    invoke-static/range {v8 .. v15}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v18

    .restart local v18    # "maxElapsed":J
    goto :goto_0
.end method

.method rebatchAllAlarms()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 750
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 748
    return-void

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .locals 14
    .param p1, "doValidate"    # Z

    .prologue
    .line 755
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 756
    .local v8, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 758
    .local v7, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 759
    .local v4, "nowElapsed":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 760
    .local v6, "oldBatches":I
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebatchAllAlarmsLocked begin oldBatches count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-wide v10, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/server/AlarmManagerService;->mRebatchCount:J

    .line 763
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mLastRebatchTime:J

    .line 765
    const/4 v2, 0x0

    .local v2, "batchNum":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 766
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 767
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    .line 768
    .local v0, "N":I
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rebatchAllAlarmsLocked  batch.size() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 770
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v9

    invoke-virtual {p0, v9, v4, v5, p1}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 765
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "N":I
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v7, v9, :cond_2

    .line 774
    const-string/jumbo v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Rebatching: idle until changed from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 775
    const-string/jumbo v11, " to "

    .line 774
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 775
    iget-object v11, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 774
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v9, :cond_2

    .line 778
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 782
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 754
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .locals 10
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 2638
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2639
    .local v6, "numBatches":I
    const/4 v4, 0x0

    .local v4, "nextBatch":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 2640
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 2641
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v7, v8, p2

    if-lez v7, :cond_1

    .line 2637
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    return-void

    .line 2645
    .restart local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2646
    .local v5, "numAlarms":I
    const/4 v3, 0x0

    .local v3, "nextAlarm":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 2647
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2648
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v2, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 2649
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    .line 2650
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 2648
    invoke-direct {v2, p4, p5, v7, v8}, Lcom/android/server/AlarmManagerService$WakeupEvent;-><init>(JILjava/lang/String;)V

    .line 2651
    .local v2, "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2646
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2639
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "e":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public removeFromAmsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3815
    if-nez p1, :cond_0

    .line 3816
    return-void

    .line 3818
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3819
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3814
    return-void

    .line 3818
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeImpl(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1133
    if-nez p1, :cond_0

    .line 1134
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1132
    return-void

    .line 1136
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method removeInvalidAlarmLocked(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 2209
    const/4 v1, 0x0

    .line 2210
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2211
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2212
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Landroid/app/PendingIntent;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2213
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2214
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2210
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2217
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    return v1
.end method

.method removeLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2183
    const/4 v1, 0x0

    .line 2184
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2185
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2186
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2187
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2188
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2184
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2191
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2192
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2194
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2191
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2198
    :cond_3
    if-eqz v1, :cond_4

    .line 2200
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "remove(package) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2204
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2182
    :cond_4
    return-void
.end method

.method removeUserLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2221
    const/4 v1, 0x0

    .line 2222
    .local v1, "didRemove":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .end local v1    # "didRemove":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2223
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2224
    .local v0, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Batch;->remove(I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 2225
    .local v1, "didRemove":Z
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2226
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2222
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2229
    .end local v0    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "didRemove":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2230
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 2233
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2229
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2236
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 2237
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 2238
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2236
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2242
    :cond_5
    if-eqz v1, :cond_7

    .line 2243
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_6

    .line 2244
    const-string/jumbo v3, "AlarmManager"

    const-string/jumbo v4, "remove(user) changed bounds; rebatching"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2248
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2220
    :cond_7
    return-void
.end method

.method rescheduleKernelAlarmsLocked()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 2098
    iget-boolean v4, p0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 2099
    const-string/jumbo v4, "AlarmManager"

    const-string/jumbo v5, "IPO Shutdown so drop the repeating alarm"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    return-void

    .line 2105
    :cond_0
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->useLeuiSetKernelAlarms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2106
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->leUiescheduleKernelAlarmsLocked()V

    .line 2107
    return-void

    .line 2111
    :cond_1
    const-wide/16 v2, 0x0

    .line 2112
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2113
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v1

    .line 2114
    .local v1, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Batch;

    .line 2116
    .local v0, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    iget-wide v6, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2117
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 2118
    iget-wide v4, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    const/4 v6, 0x2

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2120
    :cond_2
    if-eq v0, v1, :cond_3

    .line 2121
    iget-wide v2, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 2124
    .end local v0    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v1    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2125
    cmp-long v4, v2, v10

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    .line 2126
    :cond_4
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2130
    :cond_5
    cmp-long v4, v2, v10

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 2131
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 2132
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 2093
    :cond_6
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 832
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 833
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 834
    .local v1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 836
    .local v4, "nowElapsed":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 837
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 838
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0, v4, v5, v7}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 836
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 843
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "i":I
    .end local v4    # "nowElapsed":J
    :cond_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Constants;->updateAllowWhileIdleMinTimeLocked()V

    .line 846
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 847
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 851
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_1
    return-void

    .line 852
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V
    .locals 56
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "flags"    # I
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p12, "callingUid"    # I

    .prologue
    .line 1155
    if-nez p8, :cond_0

    .line 1156
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "set/setRepeating ignored because there is no intent"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void

    .line 1161
    :cond_0
    const/4 v5, 0x1

    move/from16 v0, p9

    if-eq v0, v5, :cond_1

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->-wrap0(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1162
    const-wide/16 v10, 0x0

    cmp-long v5, p4, v10

    if-nez v5, :cond_2

    const/16 p9, 0x1

    .line 1163
    :goto_0
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "cts: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", flags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerService;->mIPOShutdown:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_3

    .line 1174
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "IPO Shutdown so drop the alarm"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1162
    :cond_2
    const/16 p9, 0x0

    goto :goto_0

    .line 1181
    :cond_3
    const-wide/32 v10, 0x2932e00

    cmp-long v5, p4, v10

    if-lez v5, :cond_4

    .line 1182
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Window length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1183
    const-string/jumbo v11, "ms suspiciously long; limiting to 1 hour"

    .line 1182
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const-wide/32 p4, 0x36ee80

    .line 1189
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v5, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    move-wide/from16 v42, v0

    .line 1190
    .local v42, "minInterval":J
    const-wide/16 v10, 0x0

    cmp-long v5, p6, v10

    if-lez v5, :cond_5

    cmp-long v5, p6, v42

    if-gez v5, :cond_5

    .line 1191
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Suspiciously short interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1192
    const-string/jumbo v11, " millis; expanding to "

    .line 1191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1192
    const-wide/16 v12, 0x3e8

    div-long v12, v42, v12

    .line 1191
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1193
    const-string/jumbo v11, " seconds"

    .line 1191
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-wide/from16 p6, v42

    .line 1197
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v5, p2, v10

    if-gez v5, :cond_6

    .line 1198
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v54, v0

    .line 1199
    .local v54, "who":J
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v52, v0

    .line 1200
    .local v52, "what":J
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Invalid alarm trigger time! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p12

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1201
    const-string/jumbo v11, " pid="

    .line 1200
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v52

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const-wide/16 p2, 0x0

    .line 1207
    .end local v52    # "what":J
    .end local v54    # "who":J
    :cond_6
    const/4 v5, 0x7

    move/from16 v0, p1

    if-eq v0, v5, :cond_7

    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    .line 1208
    :cond_7
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-nez v5, :cond_8

    .line 1209
    const-string/jumbo v5, "AlarmManager"

    const-string/jumbo v10, "alarm driver not open ,return!"

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void

    .line 1213
    :cond_8
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "alarm set type 7 8, package name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v41

    .line 1216
    .local v41, "packageName":Ljava/lang/String;
    const/16 v50, 0x0

    .line 1217
    .local v50, "setPackageName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 1218
    .local v48, "nowTime":J
    cmp-long v5, p2, v48

    if-gez v5, :cond_9

    .line 1219
    const-string/jumbo v5, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "power off alarm set time is wrong! nowTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v48

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ; triggerAtTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    return-void

    .line 1223
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPowerOffAlarmLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1224
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->removePoweroffAlarmLocked(Ljava/lang/String;)V

    .line 1225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v20

    .line 1226
    .local v20, "poweroffAlarmUserId":I
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 1227
    const/16 v18, 0x0

    .line 1228
    const/16 v21, 0x1

    move/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v14, p6

    move-object/from16 v16, p8

    move-object/from16 v17, p10

    move-object/from16 v19, p11

    .line 1226
    invoke-direct/range {v4 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 1229
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AlarmManagerService;->addPoweroffAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    .line 1230
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1231
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mPoweroffAlarms:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;->resetPoweroffAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    monitor-exit v22

    .line 1234
    const/16 p1, 0x0

    .line 1239
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v20    # "poweroffAlarmUserId":I
    .end local v41    # "packageName":Ljava/lang/String;
    .end local v48    # "nowTime":J
    .end local v50    # "setPackageName":Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1240
    .local v6, "nowElapsed":J
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v46

    .line 1242
    .local v46, "nominalTrigger":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v10, v5, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    add-long v44, v6, v10

    .line 1243
    .local v44, "minTrigger":J
    cmp-long v5, v46, v44

    if-lez v5, :cond_d

    move-wide/from16 v8, v46

    .line 1248
    .local v8, "triggerElapsed":J
    :goto_1
    const/16 v40, 0x0

    .line 1249
    .local v40, "mLeuiTimeAlign":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    if-eqz v5, :cond_c

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-wide/from16 v10, p4

    move/from16 v12, p9

    move/from16 v13, p1

    move-object/from16 v14, p8

    move-object/from16 v15, p11

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->useTimeAlign(JJJIILandroid/app/PendingIntent;Landroid/app/AlarmManager$AlarmClockInfo;)Z

    move-result v40

    .line 1252
    .end local v40    # "mLeuiTimeAlign":Z
    :cond_c
    if-eqz v40, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p11

    move/from16 v17, p1

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v30

    .line 1274
    .local v30, "maxElapsed":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1276
    :try_start_1
    const-string/jumbo v5, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "APP set("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") : type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1277
    const-string/jumbo v12, " triggerAtTime="

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1277
    const-string/jumbo v12, " win="

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1278
    const-string/jumbo v12, " tElapsed="

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1278
    const-string/jumbo v12, " maxElapsed="

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1279
    const-string/jumbo v12, " interval="

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1279
    const-string/jumbo v12, " flags=0x"

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1279
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 1276
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/16 v36, 0x1

    move-object/from16 v22, p0

    move/from16 v23, p1

    move-wide/from16 v24, p2

    move-wide/from16 v26, v8

    move-wide/from16 v28, p4

    move-wide/from16 v32, p6

    move-object/from16 v34, p8

    move/from16 v35, p9

    move-object/from16 v37, p10

    move-object/from16 v38, p11

    move/from16 v39, p12

    .line 1281
    invoke-direct/range {v22 .. v40}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v10

    .line 1154
    return-void

    .line 1223
    .end local v6    # "nowElapsed":J
    .end local v8    # "triggerElapsed":J
    .end local v30    # "maxElapsed":J
    .end local v44    # "minTrigger":J
    .end local v46    # "nominalTrigger":J
    .restart local v41    # "packageName":Ljava/lang/String;
    .restart local v48    # "nowTime":J
    .restart local v50    # "setPackageName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v22

    throw v5

    .line 1243
    .end local v41    # "packageName":Ljava/lang/String;
    .end local v48    # "nowTime":J
    .end local v50    # "setPackageName":Ljava/lang/String;
    .restart local v6    # "nowElapsed":J
    .restart local v44    # "minTrigger":J
    .restart local v46    # "nominalTrigger":J
    :cond_d
    move-wide/from16 v8, v44

    .restart local v8    # "triggerElapsed":J
    goto/16 :goto_1

    :cond_e
    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    move-wide v14, v6

    .line 1260
    invoke-static/range {v8 .. v15}, Lcom/android/server/AlarmManagerService;->getGoogleMaxTriggerTime(JJJJ)J

    move-result-wide v30

    .restart local v30    # "maxElapsed":J
    goto/16 :goto_2

    .line 1274
    :catchall_1
    move-exception v5

    monitor-exit v10

    throw v5
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .locals 9
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1092
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1093
    return-void

    .line 1096
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 1099
    .local v4, "zone":Ljava/util/TimeZone;
    const/4 v3, 0x0

    .line 1100
    .local v3, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1101
    :try_start_0
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1112
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 1113
    .local v1, "gmtOffset":I
    iget-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const v5, 0xea60

    div-int v5, v1, v5

    neg-int v5, v5

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    .line 1117
    int-to-long v6, v1

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mGmtOffset:J

    .line 1118
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->onTimeZoneChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1122
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1124
    if-eqz v3, :cond_1

    .line 1125
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1126
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1127
    const-string/jumbo v5, "time-zone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1091
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1103
    .end local v1    # "gmtOffset":I
    :cond_2
    :try_start_1
    sget-boolean v5, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v5, :cond_3

    .line 1104
    const-string/jumbo v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", new="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_3
    const/4 v3, 0x1

    .line 1107
    const-string/jumbo v5, "persist.sys.timezone"

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1100
    .end local v0    # "current":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 6
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "type"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "first"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3034
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 3035
    .local v2, "unimportant":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v2}, Landroid/os/PowerManager$WakeLock;->setUnimportantForLogging(Z)V

    .line 3036
    if-nez p5, :cond_0

    iget-boolean v3, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    if-eqz v3, :cond_2

    .line 3037
    :cond_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 3041
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mLastWakeLockUnimportantForLogging:Z

    .line 3042
    if-eqz p2, :cond_4

    .line 3043
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3044
    return-void

    .line 3034
    .end local v2    # "unimportant":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "unimportant":Z
    goto :goto_0

    .line 3039
    :cond_2
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3053
    .end local v2    # "unimportant":Z
    :catch_0
    move-exception v0

    .line 3057
    :cond_3
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3032
    return-void

    .line 3047
    .restart local v2    # "unimportant":Z
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 3048
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v4

    .line 3047
    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    .line 3049
    .local v1, "uid":I
    if-ltz v1, :cond_3

    .line 3050
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3051
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z
    .locals 38
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .line 2368
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/16 v30, 0x0

    .line 2372
    .local v30, "hasWakeup":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerService$Batch;

    .line 2374
    .local v25, "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v4, v4, p2

    if-lez v4, :cond_2

    .line 2475
    .end local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 2476
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2479
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v4, :cond_10

    .line 2480
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_10

    .line 2481
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Triggering alarm #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 2380
    .end local v31    # "i":I
    .restart local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2382
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v23

    .line 2383
    .local v23, "N":I
    const/16 v31, 0x0

    .restart local v31    # "i":I
    :goto_1
    move/from16 v0, v31

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 2384
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v24

    .line 2386
    .local v24, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    .line 2389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v32

    .line 2390
    .local v32, "lastTime":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleMinTime:J

    add-long v34, v32, v4

    .line 2391
    .local v34, "minTime":J
    cmp-long v4, p2, v34

    if-gez v4, :cond_5

    .line 2395
    move-wide/from16 v0, v34

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2396
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v4, v4, v34

    if-gez v4, :cond_3

    .line 2397
    move-wide/from16 v0, v34

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2399
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2383
    .end local v32    # "lastTime":J
    .end local v34    # "minTime":J
    :cond_4
    :goto_2
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 2404
    :cond_5
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2406
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v4, :cond_6

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 2407
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNeedToSetBlockSocket:Z

    .line 2410
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_8

    .line 2412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    .line 2413
    :goto_3
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->tag:Ljava/lang/String;

    .line 2412
    invoke-static {v4, v5}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 2415
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v24

    if-ne v4, v0, :cond_9

    .line 2416
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2417
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2418
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 2420
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v24

    if-ne v4, v0, :cond_a

    .line 2421
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2422
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2427
    :cond_a
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    .line 2434
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long v26, p2, v4

    .line 2435
    .local v26, "delaySkew":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_b

    .line 2437
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long v6, v26, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 2443
    :cond_b
    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v4, v4

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v28, v4, v6

    .line 2444
    .local v28, "delta":J
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    add-long v36, v4, v28

    .line 2446
    .local v36, "nextElapsed":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->usePolicyMakeBatch()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    if-eqz v4, :cond_f

    .line 2448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLeuiPlus:Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;

    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, v24

    iget v15, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move/from16 v17, v0

    move-wide/from16 v6, p2

    invoke-virtual/range {v5 .. v17}, Lcom/android/server/AlarmManagerService$LeuiAlarmManagerPlus;->getMaxTriggerTime(JJJJLandroid/app/PendingIntent;ILandroid/app/AlarmManager$AlarmClockInfo;I)J

    move-result-wide v12

    .line 2456
    .local v12, "maxElapsed":J
    :goto_4
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v6, v6, v28

    move-object/from16 v0, v24

    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 2458
    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move/from16 v17, v0

    .line 2459
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v19, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->leuiTimeAlign:Z

    move/from16 v22, v0

    .line 2458
    const/16 v18, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, v36

    .line 2456
    invoke-direct/range {v4 .. v22}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;IZ)V

    .line 2462
    .end local v12    # "maxElapsed":J
    .end local v26    # "delaySkew":J
    .end local v28    # "delta":J
    .end local v36    # "nextElapsed":J
    :cond_c
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v4, :cond_d

    .line 2463
    const/16 v30, 0x1

    .line 2467
    :cond_d
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_4

    .line 2468
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto/16 :goto_2

    .line 2412
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2453
    .restart local v26    # "delaySkew":J
    .restart local v28    # "delta":J
    .restart local v36    # "nextElapsed":J
    :cond_f
    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v4, p2

    move-wide/from16 v6, v36

    invoke-static/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v12

    .restart local v12    # "maxElapsed":J
    goto :goto_4

    .line 2485
    .end local v12    # "maxElapsed":J
    .end local v23    # "N":I
    .end local v24    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v25    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v26    # "delaySkew":J
    .end local v28    # "delta":J
    .end local v31    # "i":I
    .end local v36    # "nextElapsed":J
    :cond_10
    return v30
.end method

.method protected writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3837
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AlarmManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3835
    :goto_0
    return-void

    .line 3838
    :catch_0
    move-exception v0

    .line 3839
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "File path retriving failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 3844
    if-nez p1, :cond_0

    .line 3845
    return-void

    .line 3846
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3847
    .local v2, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 3849
    .local v4, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 3850
    .local v3, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 3853
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3854
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 3855
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3859
    if-eqz v5, :cond_1

    .line 3861
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v4, v5

    .line 3843
    .end local v5    # "out":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 3862
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 3863
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "AlarmManager"

    const-string/jumbo v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3856
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 3857
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeStringToFile error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3859
    if-eqz v4, :cond_2

    .line 3861
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3862
    :catch_2
    move-exception v0

    .line 3863
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "AlarmManager"

    const-string/jumbo v7, "FAIL to writeStringToFile "

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3858
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 3859
    :goto_3
    if-eqz v4, :cond_3

    .line 3861
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3858
    :cond_3
    :goto_4
    throw v6

    .line 3862
    :catch_3
    move-exception v0

    .line 3863
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "AlarmManager"

    const-string/jumbo v8, "FAIL to writeStringToFile "

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3858
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3856
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
