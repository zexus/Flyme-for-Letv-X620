.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$1;,
        Lcom/android/server/net/NetworkStatsService$2;,
        Lcom/android/server/net/NetworkStatsService$3;,
        Lcom/android/server/net/NetworkStatsService$4;,
        Lcom/android/server/net/NetworkStatsService$5;,
        Lcom/android/server/net/NetworkStatsService$6;,
        Lcom/android/server/net/NetworkStatsService$7;,
        Lcom/android/server/net/NetworkStatsService$8;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_FREEFLOW_TAG:I = 0x3d0dbbe3

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field private static final LOGV:Z = true

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_FREE:Ljava/lang/String; = "uid_free"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static USE_TRUESTED_TIME:Z


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mFreeStatsCached:Lcom/android/server/net/NetworkStatsCollection;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mIgnoreAlert:Z

.field private mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkStatsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/net/NetworkStatsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForFreeflow(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->enforcePermissionForManagedAdmin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p1, "uids"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;

    .prologue
    .line 276
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v4

    .line 277
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, p1}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 276
    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;Landroid/util/TrustedTime;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/IAlarmManager;
    .param p4, "time"    # Landroid/util/TrustedTime;
    .param p5, "systemDir"    # Ljava/io/File;
    .param p6, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .prologue
    const/4 v6, 0x0

    .line 284
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 234
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 237
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 239
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 243
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 246
    new-instance v2, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V

    .line 245
    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 260
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 263
    new-instance v2, Landroid/net/NetworkStats;

    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 268
    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 272
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 957
    new-instance v2, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 966
    new-instance v2, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 978
    new-instance v2, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    new-instance v2, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1019
    new-instance v2, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    .line 1027
    new-instance v2, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1040
    new-instance v2, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1520
    new-instance v2, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 287
    const-string/jumbo v2, "missing Context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 288
    const-string/jumbo v2, "missing INetworkManagementService"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 289
    const-string/jumbo v2, "missing TrustedTime"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/TrustedTime;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    .line 290
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "missing TelephonyManager"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 291
    const-string/jumbo v2, "missing NetworkStatsSettings"

    invoke-static {p6, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 292
    const-string/jumbo v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 295
    const-string/jumbo v2, "power"

    .line 294
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 296
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "NetworkStats"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 300
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 302
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 303
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netstats"

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 304
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 306
    iput-boolean v6, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlert:Z

    .line 286
    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    .prologue
    .line 1545
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1544
    :cond_0
    return-void
.end method

.method private bootstrapStatsLocked()V
    .locals 7

    .prologue
    .line 1201
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 1205
    .local v0, "currentTime":J
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :goto_1
    return-void

    .line 1202
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0    # "currentTime":J
    goto :goto_0

    .line 1208
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1206
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1207
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "problem reading network stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 384
    const-string/jumbo v1, "dropbox"

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 385
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v1, Lcom/android/internal/util/FileRotator;

    .line 386
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v3, p1

    .line 385
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    .line 387
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v3, v8

    move-object v4, p1

    move v7, p3

    .line 385
    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "pollOnCreate"    # Z

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 505
    if-eqz p2, :cond_0

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    .local v0, "ident":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    .end local v0    # "ident":J
    :cond_0
    new-instance v2, Lcom/android/server/net/NetworkStatsService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/NetworkStatsService$9;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    return-object v2

    .line 509
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    .line 510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    throw v2
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v0

    .line 766
    .local v0, "appOpsAllow":Z
    if-nez v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v3, "NetworkStats"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    :cond_0
    return-void
.end method

.method private enforcePermissionForManagedAdmin(Ljava/lang/String;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->hasAppOpsPermission(Ljava/lang/String;)Z

    move-result v2

    .line 747
    .local v2, "hasPermission":Z
    if-nez v2, :cond_0

    .line 749
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 751
    .local v0, "callingUid":I
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 750
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 754
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_0

    .line 755
    const/4 v3, -0x1

    .line 754
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    return-void

    .line 759
    .end local v0    # "callingUid":I
    .end local v1    # "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    :cond_0
    if-nez v2, :cond_1

    .line 760
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v5, "NetworkStats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_1
    return-void
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .prologue
    .line 1161
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1162
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    .line 1163
    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    .end local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    .line 1164
    .restart local v0    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_0
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 281
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getFreeflowStatsDetail(I)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getFreeflowStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private getFreeflowStatsUidDetail(II)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->getFreeflowStatsUidDetail(II)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkStatsTethering()Landroid/net/NetworkStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1509
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem reading network stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1476
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1479
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1480
    .local v0, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1481
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1483
    return-object v1
.end method

.method private hasAppOpsPermission(Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 725
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 726
    .local v2, "callingUid":I
    const/4 v1, 0x0

    .line 727
    .local v1, "appOpsAllow":Z
    if-eqz p1, :cond_1

    .line 728
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 729
    const-string/jumbo v6, "appops"

    .line 728
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 731
    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/16 v5, 0x2b

    invoke-virtual {v0, v5, v2, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    .line 733
    .local v3, "mode":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 736
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 737
    const-string/jumbo v6, "android.permission.PACKAGE_USAGE_STATS"

    .line 736
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    .line 738
    .local v4, "permissionCheck":I
    if-nez v4, :cond_2

    const/4 v1, 0x1

    .line 740
    .end local v4    # "permissionCheck":I
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 742
    .end local v0    # "appOps":Landroid/app/AppOpsManager;
    .end local v3    # "mode":I
    :cond_1
    :goto_1
    return v1

    .line 738
    .restart local v0    # "appOps":Landroid/app/AppOpsManager;
    .restart local v3    # "mode":I
    .restart local v4    # "permissionCheck":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 740
    .end local v4    # "permissionCheck":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private internalGetHistoryForFreeflow(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mFreeStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v3, -0x1

    move-object v1, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    const/4 v2, -0x1

    .line 790
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1553
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    return v1

    .line 1554
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1556
    return v1

    .line 1557
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1558
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1557
    throw v1
.end method

.method public static isValidSubscriptionId(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 721
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 5

    .prologue
    .line 435
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 441
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_xt.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 446
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_uid.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 447
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 449
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 450
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 452
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 454
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private performPoll(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1224
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1213
    return-void

    .line 1225
    :catchall_0
    move-exception v0

    .line 1226
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1225
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1220
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private performPollLocked(I)V
    .locals 17
    .param p1, "flags"    # I

    .prologue
    .line 1236
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v14, :cond_0

    return-void

    .line 1237
    :cond_0
    const-string/jumbo v14, "NetworkStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performPollLocked(flags=0x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1241
    .local v12, "startRealtime":J
    and-int/lit8 v14, p1, 0x1

    if-eqz v14, :cond_3

    const/4 v9, 0x1

    .line 1242
    .local v9, "persistNetwork":Z
    :goto_0
    and-int/lit8 v14, p1, 0x2

    if-eqz v14, :cond_4

    const/4 v10, 0x1

    .line 1243
    .local v10, "persistUid":Z
    :goto_1
    move/from16 v0, p1

    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_5

    const/4 v8, 0x1

    .line 1247
    .local v8, "persistForce":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v14}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v14

    if-eqz v14, :cond_6

    sget-boolean v14, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v14, :cond_6

    .line 1248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v14}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v2

    .line 1251
    .local v2, "currentTime":J
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    if-eqz v8, :cond_7

    .line 1262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1280
    :cond_1
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v4, v14, v12

    .line 1281
    .local v4, "duration":J
    const-string/jumbo v14, "NetworkStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "performPollLocked() took "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v14}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1290
    :cond_2
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v14, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v11, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v11, "updatedIntent":Landroid/content/Intent;
    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1293
    const-string/jumbo v16, "android.permission.READ_NETWORK_USAGE_HISTORY"

    .line 1292
    move-object/from16 v0, v16

    invoke-virtual {v14, v11, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1235
    return-void

    .line 1241
    .end local v2    # "currentTime":J
    .end local v4    # "duration":J
    .end local v8    # "persistForce":Z
    .end local v9    # "persistNetwork":Z
    .end local v10    # "persistUid":Z
    .end local v11    # "updatedIntent":Landroid/content/Intent;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "persistNetwork":Z
    goto/16 :goto_0

    .line 1242
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "persistUid":Z
    goto/16 :goto_1

    .line 1243
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "persistForce":Z
    goto/16 :goto_2

    .line 1248
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2    # "currentTime":J
    goto/16 :goto_3

    .line 1255
    :catch_0
    move-exception v6

    .line 1257
    .local v6, "e":Landroid/os/RemoteException;
    return-void

    .line 1252
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 1253
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v14, "NetworkStats"

    const-string/jumbo v15, "problem reading network stats"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    return-void

    .line 1268
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    if-eqz v9, :cond_8

    .line 1269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1272
    :cond_8
    if-eqz v10, :cond_1

    .line 1273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v14, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_4
.end method

.method private performSampleLocked()V
    .locals 32

    .prologue
    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v26

    .line 1311
    .local v26, "trustedTime":J
    :goto_0
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1312
    .local v29, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1313
    .local v28, "devTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1314
    .local v31, "xtTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1317
    .local v30, "uidTotal":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1318
    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    .line 1319
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    .line 1316
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1323
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    .line 1329
    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1330
    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    .line 1331
    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    .line 1328
    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1299
    return-void

    .line 1303
    .end local v26    # "trustedTime":J
    .end local v28    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v29    # "template":Landroid/net/NetworkTemplate;
    .end local v30    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .end local v31    # "xtTotal":Landroid/net/NetworkStats$Entry;
    :cond_0
    const-wide/16 v26, -0x1

    .restart local v26    # "trustedTime":J
    goto/16 :goto_0
.end method

.method private recordSnapshotLocked(J)V
    .locals 17
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v14

    .line 1173
    .local v14, "uidSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v16

    .line 1174
    .local v16, "xtSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v10

    .line 1176
    .local v10, "devSnapshot":Landroid/net/NetworkStats;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v15

    .line 1177
    .local v15, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    const v2, 0x3d0dbbe3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->getFreeflowStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v12

    .line 1180
    .local v12, "freeflowSnapshot":Landroid/net/NetworkStats;
    new-instance v3, Landroid/net/NetworkStats;

    const/4 v2, 0x2

    move-wide/from16 v0, p1

    invoke-direct {v3, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1181
    .local v3, "result":Landroid/net/NetworkStats;
    const/4 v11, 0x0

    .line 1182
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v13, 0x0

    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    .local v13, "i":I
    :goto_0
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 1183
    invoke-virtual {v12, v13, v11}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v11

    .line 1184
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    iput v2, v11, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1185
    invoke-virtual {v3, v11}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1182
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1187
    .end local v11    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object v5, v10

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object/from16 v5, v16

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v14

    move-object v7, v15

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v14

    move-object v7, v15

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1169
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 6

    .prologue
    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v2, v4, v5}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem registering for global alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPollAlarmLocked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 465
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 473
    .local v2, "currentRealtime":J
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 474
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 473
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 464
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 4
    .param p1, "uids"    # [I

    .prologue
    .line 1339
    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUidsLocked() for UIDs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1344
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1345
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1346
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1349
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 1350
    .local v0, "uid":I
    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    .end local v0    # "uid":I
    :cond_0
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1358
    const-string/jumbo v5, "NetworkStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUserLocked() for userId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v5, 0x0

    new-array v4, v5, [I

    .line 1362
    .local v4, "uids":[I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1363
    const/16 v6, 0x2200

    .line 1362
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1364
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1365
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1366
    .local v3, "uid":I
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    goto :goto_0

    .line 1369
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1357
    return-void
.end method

.method private shutdownLocked()V
    .locals 3

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    .line 409
    .local v0, "currentTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 410
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 411
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 412
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 413
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 390
    return-void

    .line 406
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .restart local v0    # "currentTime":J
    goto :goto_0
.end method

.method private updateIfaces()V
    .locals 3

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1068
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    :try_start_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1064
    return-void

    .line 1069
    :catchall_0
    move-exception v0

    .line 1070
    :try_start_3
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1069
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1065
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateIfacesLocked()V
    .locals 24

    .prologue
    .line 1082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    return-void

    .line 1083
    :cond_0
    const-string/jumbo v19, "NetworkStats"

    const-string/jumbo v20, "updateIfacesLocked()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1096
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v18

    .line 1097
    .local v18, "states":[Landroid/net/NetworkState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1103
    .local v2, "activeLink":Landroid/net/LinkProperties;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->clear()V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->clear()V

    .line 1109
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1110
    .local v12, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v19, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    aget-object v17, v18, v19

    .line 1111
    .local v17, "state":Landroid/net/NetworkState;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1112
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v11

    .line 1113
    .local v11, "isMobile":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v8

    .line 1114
    .local v8, "ident":Landroid/net/NetworkIdentity;
    const-string/jumbo v21, "NetworkStats"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "NetworkIdentity: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "baseIface":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1121
    if-eqz v11, :cond_1

    .line 1122
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1130
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v16

    .line 1131
    .local v16, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "stackedLink$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkProperties;

    .line 1132
    .local v14, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v14}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 1133
    .local v13, "stackedIface":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1135
    if-eqz v11, :cond_2

    .line 1136
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1098
    .end local v2    # "activeLink":Landroid/net/LinkProperties;
    .end local v3    # "baseIface":Ljava/lang/String;
    .end local v8    # "ident":Landroid/net/NetworkIdentity;
    .end local v11    # "isMobile":Z
    .end local v12    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "stackedIface":Ljava/lang/String;
    .end local v14    # "stackedLink":Landroid/net/LinkProperties;
    .end local v15    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v16    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    .end local v17    # "state":Landroid/net/NetworkState;
    .end local v18    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v4

    .line 1100
    .local v4, "e":Landroid/os/RemoteException;
    return-void

    .line 1103
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activeLink":Landroid/net/LinkProperties;
    .restart local v18    # "states":[Landroid/net/NetworkState;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1110
    .restart local v12    # "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "state":Landroid/net/NetworkState;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 1143
    .end local v17    # "state":Landroid/net/NetworkState;
    :cond_5
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_7

    .line 1144
    const-string/jumbo v20, "NetworkStats"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "iface:"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/net/NetworkIdentitySet;

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "id$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkIdentity;

    .line 1146
    .local v6, "id":Landroid/net/NetworkIdentity;
    const-string/jumbo v19, "NetworkStats"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ident:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1143
    .end local v6    # "id":Landroid/net/NetworkIdentity;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1152
    .end local v7    # "id$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iface$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1153
    .local v9, "iface":Ljava/lang/String;
    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1154
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    goto :goto_5

    .line 1081
    .end local v9    # "iface":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private updatePersistThresholds()V
    .locals 4

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 947
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 948
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 949
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 950
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 951
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 945
    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .locals 9
    .param p1, "thresholdBytes"    # J

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 914
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 916
    const-string/jumbo v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "advisePersistThreshold() given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", clamped to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 917
    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 916
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v6

    .line 924
    .local v6, "currentTime":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 925
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    .line 923
    .end local v6    # "currentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .restart local v6    # "currentTime":J
    goto :goto_0

    .line 927
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 929
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 930
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 931
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 932
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 933
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 937
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 909
    return-void

    .line 924
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 310
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 309
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 21
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.DUMP"

    const-string/jumbo v20, "NetworkStats"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-wide/32 v12, 0x5265c00

    .line 1377
    .local v12, "duration":J
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1378
    .local v9, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v8, p3, v2

    .line 1379
    .local v8, "arg":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1381
    const-string/jumbo v20, "--duration="

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1383
    const/16 v20, 0xb

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 1378
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1390
    .end local v8    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "--poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 1391
    :goto_2
    const-string/jumbo v2, "--checkin"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 1392
    .local v10, "checkin":Z
    const-string/jumbo v2, "--full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1393
    :goto_3
    const-string/jumbo v2, "--uid"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 1394
    :goto_4
    const-string/jumbo v2, "--tag"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    .line 1396
    :goto_5
    new-instance v19, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1398
    .local v19, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1399
    if-eqz v18, :cond_6

    .line 1400
    const/16 v2, 0x103

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1401
    const-string/jumbo v2, "Forced poll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v20

    .line 1402
    return-void

    .line 1390
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_2
    const/16 v18, 0x1

    .local v18, "poll":Z
    goto :goto_2

    .line 1392
    .end local v18    # "poll":Z
    .restart local v10    # "checkin":Z
    :cond_3
    const/4 v11, 0x1

    .local v11, "fullHistory":Z
    goto :goto_3

    .line 1393
    .end local v11    # "fullHistory":Z
    :cond_4
    const/16 v17, 0x1

    .local v17, "includeUid":Z
    goto :goto_4

    .line 1394
    .end local v17    # "includeUid":Z
    :cond_5
    const/16 v16, 0x1

    .local v16, "includeTag":Z
    goto :goto_5

    .line 1405
    .end local v16    # "includeTag":Z
    .restart local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_6
    if-eqz v10, :cond_9

    .line 1406
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1407
    .local v6, "end":J
    sub-long v4, v6, v12

    .line 1409
    .local v4, "start":J
    const-string/jumbo v2, "v1,"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v2, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1411
    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1413
    const-string/jumbo v2, "xt"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1416
    if-eqz v17, :cond_7

    .line 1417
    const-string/jumbo v2, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1420
    :cond_7
    if-eqz v16, :cond_8

    .line 1421
    const-string/jumbo v2, "tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v20

    .line 1424
    return-void

    .line 1427
    .end local v4    # "start":J
    .end local v6    # "end":J
    :cond_9
    :try_start_3
    const-string/jumbo v2, "Active interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1429
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_a

    .line 1430
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1431
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1432
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1429
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1434
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1436
    const-string/jumbo v2, "Active UID interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1438
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_b

    .line 1439
    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1440
    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1441
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1438
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1443
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1445
    const-string/jumbo v2, "Dev stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1448
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1450
    const-string/jumbo v2, "Xt stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1453
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1455
    if-eqz v17, :cond_c

    .line 1456
    const-string/jumbo v2, "UID stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1459
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1462
    :cond_c
    if-eqz v16, :cond_d

    .line 1463
    const-string/jumbo v2, "UID tag stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1466
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    monitor-exit v20

    .line 1373
    return-void

    .line 1398
    .end local v14    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    .line 1384
    .end local v10    # "checkin":Z
    .end local v19    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "ignored":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method public forceUpdate()V
    .locals 5

    .prologue
    .line 897
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 902
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    return-void

    .line 903
    :catchall_0
    move-exception v2

    .line 904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    throw v2
.end method

.method public forceUpdateIfaces()V
    .locals 5

    .prologue
    .line 884
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 887
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 889
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 883
    return-void

    .line 890
    :catchall_0
    move-exception v2

    .line 891
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_0

    .line 810
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 819
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 821
    .local v3, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 827
    new-instance v0, Landroid/net/NetworkStats;

    .line 828
    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    .line 827
    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 830
    .local v0, "dataLayer":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 831
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 832
    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 833
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 834
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v0    # "dataLayer":Landroid/net/NetworkStats;
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v2    # "i":I
    .end local v3    # "networkLayer":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v6

    .line 821
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw v6

    .line 837
    .restart local v0    # "dataLayer":Landroid/net/NetworkStats;
    .restart local v2    # "i":I
    .restart local v3    # "networkLayer":Landroid/net/NetworkStats;
    :cond_1
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 804
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 19
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .prologue
    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_0

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_0
    if-gez p3, :cond_1

    .line 852
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    :cond_1
    if-nez p2, :cond_2

    .line 855
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 858
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 859
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 860
    .local v6, "set":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    move/from16 v7, p2

    .line 860
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 863
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    .line 862
    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 846
    return-void

    .line 858
    .end local v6    # "set":I
    :catchall_0
    move-exception v2

    monitor-exit v18

    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 2

    .prologue
    .line 494
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(Ljava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public setUidForeground(IZ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .prologue
    .line 869
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MODIFY_NETWORK_ACCOUNTING"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 872
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 873
    .local v1, "set":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 874
    .local v0, "oldSet":I
    if-eq v0, v1, :cond_0

    .line 875
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setKernelCounterSet uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " set="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 868
    return-void

    .line 872
    .end local v0    # "oldSet":I
    .end local v1    # "set":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "set":I
    goto :goto_0

    .line 871
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUseTrustedTime(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1659
    sput-boolean p1, Lcom/android/server/net/NetworkStatsService;->USE_TRUESTED_TIME:Z

    .line 1658
    return-void
.end method

.method public systemReady()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 314
    iput-boolean v10, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 316
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
    const-string/jumbo v7, "NetworkStats"

    const-string/jumbo v8, "bandwidth controls disabled, unable to track stats"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 322
    :cond_0
    const-string/jumbo v7, "dev"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 323
    const-string/jumbo v7, "xt"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 324
    const-string/jumbo v7, "uid"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 325
    const-string/jumbo v7, "uid_free"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 326
    const-string/jumbo v7, "uid_tag"

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v8}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 328
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholds()V

    .line 330
    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 332
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 336
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 337
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mUidFreeRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mFreeStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 340
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 344
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v5, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v5, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "pollFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v9, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v2, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 352
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.UID_REMOVED"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    .local v3, "removedFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v3, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 357
    .local v6, "userFilter":Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 360
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 362
    .local v4, "shutdownFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "ignoreAlertFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.IGNORE_DATA_USAGE_ALERT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mIgnoreAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    :try_start_1
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 377
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 313
    return-void

    .line 330
    .end local v1    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .end local v2    # "pollFilter":Landroid/content/IntentFilter;
    .end local v3    # "removedFilter":Landroid/content/IntentFilter;
    .end local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v5    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v6    # "userFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 373
    .restart local v1    # "ignoreAlertFilter":Landroid/content/IntentFilter;
    .restart local v2    # "pollFilter":Landroid/content/IntentFilter;
    .restart local v3    # "removedFilter":Landroid/content/IntentFilter;
    .restart local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    .restart local v5    # "tetherFilter":Landroid/content/IntentFilter;
    .restart local v6    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
