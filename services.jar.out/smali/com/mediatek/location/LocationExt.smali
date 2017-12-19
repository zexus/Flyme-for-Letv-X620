.class public Lcom/mediatek/location/LocationExt;
.super Ljava/lang/Object;
.source "LocationExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;,
        Lcom/mediatek/location/LocationExt$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MtkLocationExt"

.field private static final VERBOSE:Z = true

.field private static sSingleton:Lcom/mediatek/location/LocationExt;


# instance fields
.field private mAgpsInterface:Lcom/mediatek/location/C2kAgpsInterface;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFeature:Ljava/lang/String;

.field private mGnssSvStatusHolder:Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;

.field private final mGpsHandler:Landroid/os/Handler;

.field private final mGpsProvider:Lcom/android/server/location/GpsLocationProvider;

.field private mGpsTimeSyncFlag:Z

.field private mIsEmergencyCallDialed:Z

.field private mNetworkType:I

.field private mRouteNetworkType:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/location/LocationExt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/location/LocationExt;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/location/LocationExt;->mIsEmergencyCallDialed:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/net/ConnectivityManager;)V
    .locals 1
    .param p1, "gpsProvider"    # Lcom/android/server/location/GpsLocationProvider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "gpsHandler"    # Landroid/os/Handler;
    .param p4, "connMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/location/LocationExt;->mGpsTimeSyncFlag:Z

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    .line 90
    new-instance v0, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;-><init>(Lcom/mediatek/location/LocationExt;)V

    iput-object v0, p0, Lcom/mediatek/location/LocationExt;->mGnssSvStatusHolder:Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/location/LocationExt;->mNetworkType:I

    .line 92
    const-string/jumbo v0, "enableSUPL"

    iput-object v0, p0, Lcom/mediatek/location/LocationExt;->mFeature:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/mediatek/location/LocationExt$1;

    invoke-direct {v0, p0}, Lcom/mediatek/location/LocationExt$1;-><init>(Lcom/mediatek/location/LocationExt;)V

    iput-object v0, p0, Lcom/mediatek/location/LocationExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    iput-object p1, p0, Lcom/mediatek/location/LocationExt;->mGpsProvider:Lcom/android/server/location/GpsLocationProvider;

    .line 212
    iput-object p2, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    .line 213
    iput-object p3, p0, Lcom/mediatek/location/LocationExt;->mGpsHandler:Landroid/os/Handler;

    .line 214
    iput-object p4, p0, Lcom/mediatek/location/LocationExt;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 215
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->listenForBroadcasts()V

    .line 216
    new-instance v0, Lcom/mediatek/location/C2kAgpsInterface;

    invoke-direct {v0, p4}, Lcom/mediatek/location/C2kAgpsInterface;-><init>(Landroid/net/ConnectivityManager;)V

    iput-object v0, p0, Lcom/mediatek/location/LocationExt;->mAgpsInterface:Lcom/mediatek/location/C2kAgpsInterface;

    .line 210
    return-void
.end method

.method public static checkWapSuplInit(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 117
    :cond_0
    sget-object v1, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    invoke-direct {v1, p0}, Lcom/mediatek/location/LocationExt;->isWapPushLegal(Landroid/content/Intent;)Z

    move-result v0

    .line 118
    .local v0, "ret":Z
    const-string/jumbo v1, "MtkLocationExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[agps] WARNING: checkWapSuplInit ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0
.end method

.method public static deleteAidingData(Landroid/os/Bundle;I)V
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "flags"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    const-string/jumbo v0, "MtkLocationExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteAidingData extras:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private doMtkStartUsingNetwork()I
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "networkType":I
    const-string/jumbo v0, "enableSUPL"

    .line 361
    .local v0, "feature":Ljava/lang/String;
    iput v7, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    .line 364
    iget-object v4, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 363
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 367
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 369
    .local v3, "phoneNetwokrType":I
    const-string/jumbo v4, "MtkLocationExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[agps] WARNING: GpsLocationProvider  phoneNetwokrType=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    const-string/jumbo v6, "] isESUPL=["

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isESUPL()Z

    move-result v6

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    const-string/jumbo v6, "] isEmergencyCallDialed=["

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 371
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->isEmergencyCallDialed()Z

    move-result v6

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 371
    const-string/jumbo v6, "]"

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    invoke-static {}, Lcom/mediatek/location/LocationExt;->isESUPL()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 373
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->isEmergencyCallDialed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    const/16 v1, 0xf

    .line 375
    const-string/jumbo v0, "enableEmergency"

    .line 376
    const/16 v4, 0xf

    iput v4, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    .line 390
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_4

    .line 392
    :cond_1
    const-string/jumbo v4, "MtkLocationExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[agps] APN_REQUEST_FAILED: hasIccCard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->hasIccCard()Z

    move-result v6

    .line 392
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    const-string/jumbo v6, " isAirplaneModeOn="

    .line 392
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->isAirplaneModeOn()Z

    move-result v6

    .line 392
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v7

    .line 378
    :cond_2
    const/16 v1, 0xb

    .line 379
    const-string/jumbo v0, "enableIMS"

    .line 380
    const/16 v4, 0xb

    iput v4, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    goto :goto_0

    .line 382
    :cond_3
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isCtwap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 384
    const-string/jumbo v0, "enableMMS"

    .line 385
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    .line 386
    iget-object v4, p0, Lcom/mediatek/location/LocationExt;->mAgpsInterface:Lcom/mediatek/location/C2kAgpsInterface;

    invoke-virtual {v4}, Lcom/mediatek/location/C2kAgpsInterface;->requestNetwork()V

    .line 387
    const/4 v4, 0x1

    return v4

    .line 391
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/location/LocationExt;->isAirplaneModeOn()Z

    move-result v4

    .line 390
    if-nez v4, :cond_1

    .line 397
    iput v1, p0, Lcom/mediatek/location/LocationExt;->mNetworkType:I

    .line 398
    iput-object v0, p0, Lcom/mediatek/location/LocationExt;->mFeature:Ljava/lang/String;

    .line 399
    iget-object v4, p0, Lcom/mediatek/location/LocationExt;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    return v4
.end method

.method private doMtkStopUsingNetwork()V
    .locals 3

    .prologue
    .line 403
    iget v0, p0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/mediatek/location/LocationExt;->mAgpsInterface:Lcom/mediatek/location/C2kAgpsInterface;

    invoke-virtual {v0}, Lcom/mediatek/location/C2kAgpsInterface;->releaseNetwork()V

    .line 402
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/mediatek/location/LocationExt;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v1, p0, Lcom/mediatek/location/LocationExt;->mNetworkType:I

    iget-object v2, p0, Lcom/mediatek/location/LocationExt;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0
.end method

.method public static doStartUsingNetwork(Landroid/net/ConnectivityManager;ILjava/lang/String;)I
    .locals 1
    .param p0, "connMgr"    # Landroid/net/ConnectivityManager;
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, -0x1

    return v0

    .line 175
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    invoke-direct {v0}, Lcom/mediatek/location/LocationExt;->doMtkStartUsingNetwork()I

    move-result v0

    return v0
.end method

.method public static doStopUsingNetwork(Landroid/net/ConnectivityManager;ILjava/lang/String;)I
    .locals 1
    .param p0, "connMgr"    # Landroid/net/ConnectivityManager;
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const/4 v0, -0x1

    return v0

    .line 185
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    invoke-direct {v0}, Lcom/mediatek/location/LocationExt;->doMtkStopUsingNetwork()V

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public static doSystemTimeSyncByGps(IJ)V
    .locals 9
    .param p0, "flags"    # I
    .param p1, "timestamp"    # J

    .prologue
    .line 139
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 140
    :cond_0
    sget-object v1, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    iget-boolean v1, v1, Lcom/mediatek/location/LocationExt;->mGpsTimeSyncFlag:Z

    if-eqz v1, :cond_1

    .line 141
    and-int/lit8 v1, p0, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 142
    sget-object v1, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    invoke-direct {v1}, Lcom/mediatek/location/LocationExt;->getAutoGpsState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v1, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/mediatek/location/LocationExt;->mGpsTimeSyncFlag:Z

    .line 144
    const-string/jumbo v1, "MtkLocationExt"

    const-string/jumbo v4, "GPS time sync is enabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v1, "MtkLocationExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " ########## Auto-sync time with GPS: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    const-string/jumbo v5, " ########## "

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 150
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 151
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 138
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "when":J
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    const-string/jumbo v1, "MtkLocationExt"

    const-string/jumbo v4, "Auto-sync time with GPS is disabled by user settings!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v1, "MtkLocationExt"

    const-string/jumbo v4, "GPS time sync is disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAutoGpsState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "auto_time_gps"

    .line 285
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public static getGnssSvStatusHolder()Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    iget-object v0, v0, Lcom/mediatek/location/LocationExt;->mGnssSvStatusHolder:Lcom/mediatek/location/LocationExt$GnssSvStatusHolder;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/net/ConnectivityManager;)Lcom/mediatek/location/LocationExt;
    .locals 2
    .param p0, "gpsProvider"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsHandler"    # Landroid/os/Handler;
    .param p3, "connMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    const-class v1, Lcom/mediatek/location/LocationExt;

    monitor-enter v1

    .line 103
    :try_start_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 104
    new-instance v0, Lcom/mediatek/location/LocationExt;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/location/LocationExt;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;Landroid/os/Handler;Landroid/net/ConnectivityManager;)V

    sput-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    .line 106
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRouteNetworkType()I
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 167
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    iget v0, v0, Lcom/mediatek/location/LocationExt;->mRouteNetworkType:I

    return v0
.end method

.method private hasIccCard()Z
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 347
    .local v0, "tpMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    return v1

    .line 350
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 355
    const-string/jumbo v3, "airplane_mode_on"

    .line 354
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCtwap()Z
    .locals 1

    .prologue
    .line 203
    const-string/jumbo v0, "/data/agps_supl/ctwap"

    invoke-static {v0}, Lcom/mediatek/location/LocationExt;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isESUPL()Z
    .locals 1

    .prologue
    .line 199
    const-string/jumbo v0, "/data/agps_supl/isESUPL"

    invoke-static {v0}, Lcom/mediatek/location/LocationExt;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallDialed()Z
    .locals 1

    .prologue
    .line 340
    const-string/jumbo v0, "/data/agps_supl/isEmergencyCallDialed"

    invoke-static {v0}, Lcom/mediatek/location/LocationExt;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-boolean v0, p0, Lcom/mediatek/location/LocationExt;->mIsEmergencyCallDialed:Z

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isWapPushLegal(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v5, "application/vnd.omaloc-supl-init"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 257
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 258
    const-string/jumbo v5, "MtkLocationExt"

    const-string/jumbo v6, "[agps] ERR: wspBundle is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v8

    .line 252
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v5, "MtkLocationExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[agps] ERR: content type is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 253
    const-string/jumbo v7, "], but we expect [application/vnd.omaloc-supl-init]"

    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v8

    .line 261
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v5, "wspHeaders"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 262
    .local v4, "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_2

    .line 263
    const-string/jumbo v5, "MtkLocationExt"

    const-string/jumbo v6, "[agps] ERR: wspHeader is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v8

    .line 266
    :cond_2
    const-string/jumbo v5, "X-Wap-Application-Id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "appId":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 268
    const-string/jumbo v5, "MtkLocationExt"

    const-string/jumbo v6, "[agps] ERR: appId(X-Wap-Application-Id) is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v8

    .line 271
    :cond_3
    const-string/jumbo v5, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 272
    const-string/jumbo v5, "MtkLocationExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[agps] ERR: appId is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 273
    const-string/jumbo v7, "], but we expect [x-oma-application:ulp.ua]"

    .line 272
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return v8

    .line 276
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 277
    .end local v0    # "appId":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    return v8
.end method

.method private listenForBroadcasts()V
    .locals 5

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/mediatek/location/LocationExt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/location/LocationExt;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/location/LocationExt;->mGpsHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 219
    return-void
.end method

.method public static setGpsTimeSyncFlag(Z)Z
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 128
    invoke-static {}, Lcom/mediatek/location/LocationExt;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    sget-object v0, Lcom/mediatek/location/LocationExt;->sSingleton:Lcom/mediatek/location/LocationExt;

    iput-boolean p0, v0, Lcom/mediatek/location/LocationExt;->mGpsTimeSyncFlag:Z

    .line 130
    const-string/jumbo v0, "MtkLocationExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGpsTimeSyncFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return p0
.end method

.method public static startNavigating(Z)V
    .locals 1
    .param p0, "singleShot"    # Z

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/location/LocationExt;->setGpsTimeSyncFlag(Z)Z

    .line 134
    return-void
.end method
