.class public Lcom/android/server/NetworkTimeUpdateService;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkTimeUpdateService$MyHandler;,
        Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;,
        Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;,
        Lcom/android/server/NetworkTimeUpdateService$1;,
        Lcom/android/server/NetworkTimeUpdateService$2;,
        Lcom/android/server/NetworkTimeUpdateService$3;,
        Lcom/android/server/NetworkTimeUpdateService$4;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.server.NetworkTimeUpdateService.action.POLL"

.field private static final BOOT_SYS_PROPERTY:Ljava/lang/String; = "persist.sys.first_time_boot"

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_AUTO_TIME_CHANGED:I = 0x1

.field private static final EVENT_GPS_TIME_SYNC_CHANGED:I = 0x4

.field private static final EVENT_NETWORK_CHANGED:I = 0x3

.field private static final EVENT_POLL_NETWORK_TIME:I = 0x2

.field private static final NOT_SET:J = -0x1L

.field private static POLL_REQUEST:I = 0x0

.field private static final SERVERLIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateService"

.field private static mDefaultYear:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultServer:Ljava/lang/String;

.field private mGpsHandler:Landroid/os/Handler;

.field private mGpsThread:Landroid/os/HandlerThread;

.field private mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

.field private mGpsTimerThread:Ljava/lang/Thread;

.field private mGpsToastHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mIsGpsTimeSyncRunning:Z

.field private mLastNtpFetchTime:J

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mNitzReceiver:Landroid/content/BroadcastReceiver;

.field private mNitzTimeSetTime:J

.field private mNitzZoneSetTime:J

.field private mNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPollingIntervalShorterMs:J

.field private mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

.field private mTime:Landroid/util/TrustedTime;

.field private final mTimeErrorThresholdMs:I

.field private mTryAgainCounter:I

.field private final mTryAgainTimesMax:I


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NetworkTimeUpdateService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NetworkTimeUpdateService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/NetworkTimeUpdateService;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/NetworkTimeUpdateService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/NetworkTimeUpdateService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/NetworkTimeUpdateService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/NetworkTimeUpdateService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkTimeUpdateService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->getGpsTimeSyncState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NetworkTimeUpdateService;I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkTimeUpdateService;->onPollNetworkTime(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/16 v0, 0x7de

    sput v0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 95
    sput v2, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 134
    const-string/jumbo v1, "hshh.org"

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "2.android.pool.ntp.org"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "time-a.nist.gov"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 133
    sput-object v0, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 100
    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzZoneSetTime:J

    .line 115
    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    .line 375
    new-instance v2, Lcom/android/server/NetworkTimeUpdateService$1;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkTimeUpdateService$1;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v2, Lcom/android/server/NetworkTimeUpdateService$2;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkTimeUpdateService$2;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    iput-boolean v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 544
    new-instance v2, Lcom/android/server/NetworkTimeUpdateService$3;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkTimeUpdateService$3;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsToastHandler:Landroid/os/Handler;

    .line 551
    new-instance v2, Lcom/android/server/NetworkTimeUpdateService$4;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkTimeUpdateService$4;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 140
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    .line 142
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.NetworkTimeUpdateService.action.POLL"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/server/NetworkTimeUpdateService;->POLL_REQUEST:I

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 146
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    const v4, 0x10e0078

    .line 146
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 148
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 149
    const v4, 0x10e0079

    .line 148
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 150
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 151
    const v4, 0x10e007a

    .line 150
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 152
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    const v4, 0x10e007b

    .line 152
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 155
    const-string/jumbo v2, "NetworkTimeUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "constructor ... mPollingIntervalMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    const-string/jumbo v5, " mPollingIntervalShorterMs="

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    iget-wide v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    .line 155
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    const-string/jumbo v5, " mTryAgainTimesMax="

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    iget v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    const-string/jumbo v5, " mTimeErrorThresholdMs="

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    iget v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v2, Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getServer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v4, Lcom/android/server/NetworkTimeUpdateService;->SERVERLIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 165
    .local v1, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 139
    return-void
.end method

.method private getGpsTimeSyncState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 468
    const-string/jumbo v3, "auto_time_gps"

    .line 467
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method private isAutomaticTimeRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "auto_time"

    .line 370
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onPollNetworkTime(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    .line 256
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime start"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->isAutomaticTimeRequested()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 259
    :cond_0
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "isAutomaticTimeRequested() = True"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 262
    .local v6, "refTime":J
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPollNetworkTime before NITZ logic ... mNitzTimeSetTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 263
    const-string/jumbo v9, " refTime="

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 264
    const-string/jumbo v9, " mNitzTimeSetTime="

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 264
    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    .line 262
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 265
    const-string/jumbo v9, " mPollingIntervalMs="

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 265
    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 262
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mNitzTimeSetTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",refTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    sub-long v8, v6, v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    .line 271
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPollNetworkTime nitz used mNitzTimeSetTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; mNitzTimeSetTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzTimeSetTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "; refTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " resetAlarm 1 ..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 273
    return-void

    .line 275
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    .local v0, "currentTime":J
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPollNetworkTime after nitz logic System time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mLastNtpFetchTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", refTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    const-string/jumbo v9, ", mLastNtpFetchTime = "

    .line 276
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 276
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    const-string/jumbo v9, ", mPollingIntervalMs = "

    .line 276
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 277
    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    .line 276
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    add-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-ltz v3, :cond_8

    .line 281
    :cond_2
    :goto_0
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "Before Ntp fetch"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-ltz v3, :cond_3

    .line 285
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime force refresh NTP cache when outdated ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    rem-int v2, v3, v8

    .line 289
    .local v2, "index":I
    const-string/jumbo v8, "NetworkTimeUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mTryAgainCounter = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    const-string/jumbo v9, ";mNtpServers.size() = "

    .line 289
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    iget-object v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 289
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v9, ";index = "

    .line 289
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 291
    const-string/jumbo v9, ";mNtpServers = "

    .line 289
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 291
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 289
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    instance-of v3, v3, Landroid/util/NtpTrustedTime;

    if-eqz v3, :cond_9

    .line 294
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime start foceRefresh ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v3, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->forceRefresh()Z

    .line 297
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    check-cast v3, Landroid/util/NtpTrustedTime;

    iget-object v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mDefaultServer:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/util/NtpTrustedTime;->setServer(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime after foceRefresh ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v2    # "index":I
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    cmp-long v3, v8, v10

    if-gez v3, :cond_b

    .line 309
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime only update when NTP time is fresh ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v4

    .line 311
    .local v4, "ntp":J
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 312
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPollNetworkTime ntp = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", currentTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mLastNtpFetchTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sub-long v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gtz v3, :cond_4

    .line 317
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_a

    .line 319
    :cond_4
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_5

    .line 320
    sub-long v8, v4, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTimeErrorThresholdMs:I

    int-to-long v10, v3

    cmp-long v3, v8, v10

    if-gtz v3, :cond_5

    .line 321
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "For initial setup, rtc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_5
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ntp time to be set = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-gez v3, :cond_6

    .line 326
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime ******** SystemClock.setCurrentTimeMillis(ntp) ********"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 332
    :cond_6
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mLastNtpFetchTime:J

    .line 349
    .end local v4    # "ntp":J
    :cond_7
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime final resetAlarm ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 255
    return-void

    .line 280
    :cond_8
    const/4 v3, 0x1

    if-ne p1, v3, :cond_7

    goto/16 :goto_0

    .line 302
    .restart local v2    # "index":I
    :cond_9
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime other TrustedTime instance ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v3}, Landroid/util/TrustedTime;->forceRefresh()Z

    goto/16 :goto_1

    .line 330
    .end local v2    # "index":I
    .restart local v4    # "ntp":J
    :cond_a
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ntp time is close enough = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 335
    .end local v4    # "ntp":J
    :cond_b
    const-string/jumbo v3, "NetworkTimeUpdateService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPollNetworkTime NTP time is not fresh... mTryAgainCounter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " mTryAgainTimesMax="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 337
    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-ltz v3, :cond_c

    iget v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    iget v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainTimesMax:I

    if-gt v3, v8, :cond_d

    .line 338
    :cond_c
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime resetAlarm short ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalShorterMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    .line 346
    :goto_3
    return-void

    .line 341
    :cond_d
    const-string/jumbo v3, "NetworkTimeUpdateService"

    const-string/jumbo v8, "onPollNetworkTime clear counter resetAlarm max ..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/NetworkTimeUpdateService;->mTryAgainCounter:I

    .line 344
    iget-wide v8, p0, Lcom/android/server/NetworkTimeUpdateService;->mPollingIntervalMs:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/NetworkTimeUpdateService;->resetAlarm(J)V

    goto :goto_3
.end method

.method private registerForAlarms()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    .line 240
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService$5;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkTimeUpdateService$5;-><init>(Lcom/android/server/NetworkTimeUpdateService;)V

    .line 246
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.server.NetworkTimeUpdateService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void
.end method

.method private registerForConnectivityIntents()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    return-void
.end method

.method private registerForTelephonyIntents()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkTimeUpdateService;->mNitzReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "interval"    # J

    .prologue
    .line 359
    const-string/jumbo v4, "NetworkTimeUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAlarm ... interval= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 362
    .local v2, "now":J
    add-long v0, v2, p1

    .line 363
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/server/NetworkTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 358
    return-void
.end method


# virtual methods
.method public onGpsTimeChanged(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 498
    if-eqz p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const v1, 0x80500b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    const v1, 0x2bf20

    invoke-virtual {p0, v1, v0}, Lcom/android/server/NetworkTimeUpdateService;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public startUsingGpsWithTimeout(ILjava/lang/String;)V
    .locals 6
    .param p1, "milliseconds"    # I
    .param p2, "timeoutMsg"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    if-eqz v0, :cond_0

    .line 511
    const-string/jumbo v0, "NetworkTimeUpdateService"

    const-string/jumbo v1, "WARNING: Gps Time Sync is already run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 514
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mIsGpsTimeSyncRunning:Z

    .line 517
    const-string/jumbo v0, "NetworkTimeUpdateService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start using GPS for GPS time sync timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    const-string/jumbo v2, " timeoutMsg="

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 520
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    .line 521
    iget-object v5, p0, Lcom/android/server/NetworkTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 520
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 522
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/NetworkTimeUpdateService$6;-><init>(Lcom/android/server/NetworkTimeUpdateService;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    .line 540
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 508
    return-void
.end method

.method public systemRunning()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 172
    const-string/jumbo v6, "NetworkTimeUpdateService"

    const-string/jumbo v7, "systemRunning ... "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForTelephonyIntents()V

    .line 175
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForAlarms()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/NetworkTimeUpdateService;->registerForConnectivityIntents()V

    .line 178
    new-instance v4, Landroid/os/HandlerThread;

    const-string/jumbo v6, "NetworkTimeUpdateService"

    invoke-direct {v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v4, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v6, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 182
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 184
    new-instance v6, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v9}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    .line 185
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mSettingsObserver:Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;

    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/server/NetworkTimeUpdateService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 188
    const-string/jumbo v6, "NetworkTimeUpdateService"

    const-string/jumbo v7, "add GPS time sync handler and looper"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v7, "NetworkTimeUpdateService"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    .line 190
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v6, Lcom/android/server/NetworkTimeUpdateService$MyHandler;

    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/NetworkTimeUpdateService$MyHandler;-><init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    .line 193
    new-instance v6, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsHandler:Landroid/os/Handler;

    .line 194
    const/4 v8, 0x4

    .line 193
    invoke-direct {v6, v7, v8}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    .line 195
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mGpsTimeSyncObserver:Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;

    iget-object v7, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/server/NetworkTimeUpdateService$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    .line 199
    iget-object v6, p0, Lcom/android/server/NetworkTimeUpdateService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 200
    const v7, 0x80b0001

    .line 199
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    .line 202
    const-string/jumbo v6, "persist.sys.first_time_boot"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "tempString":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 205
    .local v2, "isFirstBoot":Z
    :goto_0
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "systemRunning ...  mDefaultYear="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  tempString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isFirstBoot="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz v2, :cond_4

    .line 208
    const-string/jumbo v6, "ro.kernel.qemu"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 210
    .local v1, "isEmulator":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 211
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isEmulator:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 203
    .end local v1    # "isEmulator":Z
    .end local v2    # "isFirstBoot":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isFirstBoot":Z
    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isEmulator":Z
    goto :goto_1

    .line 215
    :cond_2
    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "decryptState":Ljava/lang/String;
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decryptState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string/jumbo v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "trigger_restart_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    :cond_3
    new-instance v5, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 219
    .local v5, "today":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 220
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "First boot:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " with date:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget v6, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v5, v9, v10, v6}, Landroid/text/format/Time;->set(III)V

    .line 222
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set the year to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/NetworkTimeUpdateService;->mDefaultYear:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v6, "persist.sys.first_time_boot"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v6, "NetworkTimeUpdateService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "First boot: set time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 171
    .end local v0    # "decryptState":Ljava/lang/String;
    .end local v1    # "isEmulator":Z
    .end local v5    # "today":Landroid/text/format/Time;
    :cond_4
    return-void
.end method
