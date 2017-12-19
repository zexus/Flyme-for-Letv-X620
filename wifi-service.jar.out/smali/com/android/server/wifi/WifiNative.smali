.class public Lcom/android/server/wifi/WifiNative;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNative$MonitorThread;,
        Lcom/android/server/wifi/WifiNative$ScanCapabilities;,
        Lcom/android/server/wifi/WifiNative$ChannelSettings;,
        Lcom/android/server/wifi/WifiNative$BucketSettings;,
        Lcom/android/server/wifi/WifiNative$ScanSettings;,
        Lcom/android/server/wifi/WifiNative$ScanEventHandler;,
        Lcom/android/server/wifi/WifiNative$HotlistEventHandler;,
        Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;,
        Lcom/android/server/wifi/WifiNative$RttEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsEventHandler;,
        Lcom/android/server/wifi/WifiNative$TdlsStatus;,
        Lcom/android/server/wifi/WifiNative$TdlsCapabilities;,
        Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;,
        Lcom/android/server/wifi/WifiNative$RingBufferStatus;,
        Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;,
        Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;,
        Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;,
        Lcom/android/server/wifi/WifiNative$AccessPoint;
    }
.end annotation


# static fields
.field static final BLUETOOTH_COEXISTENCE_MODE_DISABLED:I = 0x1

.field static final BLUETOOTH_COEXISTENCE_MODE_ENABLED:I = 0x0

.field static final BLUETOOTH_COEXISTENCE_MODE_SENSE:I = 0x2

.field private static DBG:Z = false

.field private static final DEFAULT_GROUP_OWNER_INTENT:I = 0x6

.field private static final DELIMITER_STR:Ljava/lang/String; = "===="

.field private static final EID_EXTENDED_CAPS:I = 0x7f

.field private static final EID_HT_OPERATION:I = 0x3d

.field private static final EID_VHT_OPERATION:I = 0xc0

.field private static final END_STR:Ljava/lang/String; = "####"

.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field static final SCAN_WITHOUT_CONNECTION_SETUP:I = 0x1

.field static final SCAN_WITH_CONNECTION_SETUP:I = 0x2

.field private static final SSID_STR:Ljava/lang/String; = "ssid="

.field private static final STOP_HAL_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiNative-HAL"

.field private static WIFI_SCAN_BUFFER_FULL:I

.field private static WIFI_SCAN_COMPLETE:I

.field private static mFwMemoryDump:[B

.field private static final mLocalLog:Landroid/util/LocalLog;

.field static final mLock:Ljava/lang/Object;

.field private static sCmdId:I

.field private static sHotlistCmdId:I

.field private static sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

.field private static sLogCmdId:I

.field private static sP2p0Index:I

.field private static sPnoCmdId:I

.field private static sRttCmdId:I

.field private static sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

.field private static sScanCmdId:I

.field private static sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field private static sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

.field private static sSignificantWifiChangeCmdId:I

.field private static sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

.field private static sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

.field private static sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

.field private static sWifiHalHandle:J

.field private static sWifiIfaceHandles:[J

.field private static sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

.field private static sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

.field private static sWlan0Index:I


# instance fields
.field private mDisconnectCalled:Z

.field public final mInterfaceName:Ljava/lang/String;

.field public final mInterfacePrefix:Ljava/lang/String;

.field mIsGBKMapping:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/WifiNative$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendOptEnabled:Z

.field private final mTAG:Ljava/lang/String;

.field public mUtf8LikeGbkEncoding:Z


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    return-wide v0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->waitForHalEventNative()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 71
    sput-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    .line 106
    const-string/jumbo v0, "wifi-service"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->registerNatives()I

    .line 172
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    .line 1376
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    .line 1377
    sput-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    .line 1378
    sput v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1379
    sput v3, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I

    .line 1537
    sput v2, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I

    .line 1538
    const/4 v0, 0x1

    sput v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    .line 1711
    sput v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 1805
    sput v2, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 2188
    sput-object v4, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2200
    sput v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2405
    sput v2, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    .line 96
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mDisconnectCalled:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiNative;->mUtf8LikeGbkEncoding:Z

    .line 154
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WifiNative-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "p2p0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    .line 153
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private addGBKMapping(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "isGBK"    # Z
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2929
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2930
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addGBKMapping null detected, bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    return-void

    .line 2933
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifi/WifiNative;->getIsGBKFromMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2934
    new-instance v0, Lcom/android/server/wifi/WifiNative$AccessPoint;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/wifi/WifiNative$AccessPoint;-><init>(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2935
    .local v0, "ap":Lcom/android/server/wifi/WifiNative$AccessPoint;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "put bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isGBK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    .end local v0    # "ap":Lcom/android/server/wifi/WifiNative$AccessPoint;
    :goto_0
    return-void

    .line 2938
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v2, "mapping already exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized cancelRtt([Landroid/net/wifi/RttManager$RttParams;)Z
    .locals 5
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2007
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2008
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2009
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 2010
    return v4

    .line 2013
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 2015
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->cancelRangeRequestNative(II[Landroid/net/wifi/RttManager$RttParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2016
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 2017
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "RTT cancel Request Successfully"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2018
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2020
    :cond_1
    :try_start_5
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "RTT cancel Request failed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    .line 2021
    return v4

    :cond_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v1

    .line 2024
    return v4

    .line 2007
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v2

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private changeGbkBytesToUtfString([B)Ljava/lang/String;
    .locals 5
    .param p1, "gbkBytes"    # [B

    .prologue
    .line 3210
    const/4 v1, 0x0

    .line 3213
    .local v1, "utf8":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3215
    .local v2, "utf8":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    .end local v1    # "utf8":Ljava/lang/String;
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3219
    .end local v2    # "utf8":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3216
    .restart local v1    # "utf8":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3217
    .end local v1    # "utf8":Ljava/lang/String;
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 3216
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "utf8":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v1, v2

    .end local v2    # "utf8":Ljava/lang/String;
    .local v1, "utf8":Ljava/lang/String;
    goto :goto_1
.end method

.method private native closeSupplicantConnectionNative()V
.end method

.method private native connectToSupplicantNative()Z
.end method

.method private constructByteToUTF8String([BII)Ljava/lang/String;
    .locals 5
    .param p1, "byteArray"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 3057
    const/4 v1, 0x0

    .line 3058
    .local v1, "ret":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 3060
    .local v3, "slice":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "ret":Ljava/lang/String;
    move-object v1, v2

    .line 3064
    .end local v1    # "ret":Ljava/lang/String;
    .end local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3061
    .restart local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3062
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static createWifiSsid([B)Landroid/net/wifi/WifiSsid;
    .locals 4
    .param p0, "rawSsid"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1551
    invoke-static {p0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 1553
    .local v0, "ssidHexString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1554
    return-object v3

    .line 1557
    :cond_0
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1559
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    return-object v1
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doBoolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 216
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 217
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 219
    .local v1, "result":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 220
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 221
    return v1

    .line 215
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private native doBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private doBooleanCommandWithoutLogging(Ljava/lang/String;)Z
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 226
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doBooleanCommandWithoutLogging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 229
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z

    move-result v1

    .line 230
    .local v1, "result":Z
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 231
    return v1

    .line 227
    .end local v0    # "cmdId":I
    .end local v1    # "result":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private doByteArrayCommand(Ljava/lang/String;)[B
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doByteArray: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 286
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 287
    .local v0, "cmdId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "toLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommandNative(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 285
    .end local v0    # "cmdId":I
    .end local v1    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private native doByteArrayCommandNative(Ljava/lang/String;)[B
.end method

.method private doIntCommand(Ljava/lang/String;)I
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doInt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 238
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 239
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 242
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "   returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v4

    .line 243
    return v1

    .line 237
    .end local v0    # "cmdId":I
    .end local v1    # "result":I
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private native doIntCommandNative(Ljava/lang/String;)I
.end method

.method private doStringCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_0

    .line 250
    const-string/jumbo v3, "GET_NETWORK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doString: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 255
    :try_start_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    .line 256
    .local v0, "cmdId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "toLog":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 259
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v5, "doStringCommandNative no result"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v4

    .line 266
    return-object v1

    .line 261
    :cond_2
    :try_start_1
    const-string/jumbo v3, "STATUS-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 264
    :cond_3
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "   returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, " "

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    .end local v0    # "cmdId":I
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "toLog":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private native doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo v0, "GET_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doString: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 278
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enableDisableTdls(ZLjava/lang/String;Lcom/android/server/wifi/WifiNative$TdlsEventHandler;)Z
    .locals 3
    .param p0, "enable"    # Z
    .param p1, "macAdd"    # Ljava/lang/String;
    .param p2, "tdlsCallBack"    # Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2120
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2121
    :try_start_1
    sput-object p2, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    .line 2122
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0, p1}, Lcom/android/server/wifi/WifiNative;->enableDisableTdlsNative(IZLjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    .line 2120
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native enableDisableTdlsNative(IZLjava/lang/String;)Z
.end method

.method private encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3237
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3238
    .local v0, "tmp":Ljava/lang/String;
    const-string/jumbo v1, "%x"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "GBK"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private encodeSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 3232
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3233
    .local v0, "tmp":Ljava/lang/String;
    const-string/jumbo v1, "%x"

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private findByteArray([B[BI)I
    .locals 6
    .param p1, "source"    # [B
    .param p2, "match"    # [B
    .param p3, "start_pos"    # I

    .prologue
    const/4 v5, -0x1

    .line 3025
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3026
    :cond_0
    return v5

    .line 3027
    :cond_1
    array-length v4, p1

    if-eqz v4, :cond_2

    array-length v4, p2

    if-nez v4, :cond_3

    .line 3028
    :cond_2
    return v5

    .line 3029
    :cond_3
    array-length v4, p1

    if-lt p3, v4, :cond_4

    .line 3030
    return v5

    .line 3032
    :cond_4
    const/4 v2, -0x1

    .line 3033
    .local v2, "ret":I
    const/4 v3, 0x0

    .line 3034
    .local v3, "spos":I
    const/4 v1, 0x0

    .line 3035
    .local v1, "mpos":I
    aget-byte v0, p2, v1

    .line 3036
    .local v0, "m":B
    move v3, p3

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_8

    .line 3037
    aget-byte v4, p1, v3

    if-ne v0, v4, :cond_7

    .line 3039
    if-nez v1, :cond_6

    .line 3040
    move v2, v3

    .line 3044
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 3045
    aget-byte v0, p2, v1

    .line 3036
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3042
    :cond_6
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 3043
    return v2

    .line 3047
    :cond_7
    const/4 v2, -0x1

    .line 3048
    const/4 v1, 0x0

    .line 3049
    aget-byte v0, p2, v1

    goto :goto_1

    .line 3052
    :cond_8
    return v2
.end method

.method private getBssidFromScanResult([BII)Ljava/lang/String;
    .locals 7
    .param p1, "byteArray"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 3070
    const-string/jumbo v0, "\nbssid="

    .line 3071
    .local v0, "BSSID_STR":Ljava/lang/String;
    const/16 v2, 0x11

    .line 3072
    .local v2, "bssidLength":I
    const-string/jumbo v1, ""

    .line 3073
    .local v1, "bssid":Ljava/lang/String;
    const-string/jumbo v6, "\nbssid="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/wifi/WifiNative;->findByteArray([B[BI)I

    move-result v4

    .line 3075
    .local v4, "pos":I
    const-string/jumbo v6, "\nbssid="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 3076
    .local v3, "bssidStart":I
    add-int/lit8 v6, v3, 0x11

    invoke-static {p1, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 3077
    .local v5, "slice":[B
    new-instance v1, Ljava/lang/String;

    .end local v1    # "bssid":Ljava/lang/String;
    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 3079
    .restart local v1    # "bssid":Ljava/lang/String;
    return-object v1
.end method

.method public static declared-synchronized getChannelsForBand(I)[I
    .locals 3
    .param p0, "band"    # I

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2045
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2046
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2047
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getChannelsForBandNative(II)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2049
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2045
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getChannelsForBandNative(II)[I
.end method

.method public static declared-synchronized getDriverVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2267
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2268
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getDriverVersionNative(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 2271
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-object v0

    .line 2267
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getDriverVersionNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getFirmwareVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2279
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2280
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getFirmwareVersionNative(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 2283
    :cond_0
    :try_start_3
    const-string/jumbo v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return-object v0

    .line 2279
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getFirmwareVersionNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getFwMemoryDump()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 2340
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2341
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2342
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v1}, Lcom/android/server/wifi/WifiNative;->getFwMemoryDumpNative(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2343
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    .line 2344
    .local v0, "fwMemoryDump":[B
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 2345
    return-object v0

    .end local v0    # "fwMemoryDump":[B
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    .line 2347
    return-object v4

    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    .line 2351
    return-object v4

    .line 2340
    .restart local v0    # "fwMemoryDump":[B
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native getFwMemoryDumpNative(I)Z
.end method

.method public static declared-synchronized getInterfaceName(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    const-class v0, Lcom/android/server/wifi/WifiNative;

    monitor-enter v0

    .line 1470
    :try_start_0
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native getInterfaceNameNative(I)Ljava/lang/String;
.end method

.method public static declared-synchronized getInterfaces()I
    .locals 9

    .prologue
    const-class v5, Lcom/android/server/wifi/WifiNative;

    monitor-enter v5

    .line 1442
    :try_start_0
    sget-object v6, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1443
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1444
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    if-nez v4, :cond_3

    .line 1445
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfacesNative()I

    move-result v2

    .line 1446
    .local v2, "num":I
    const/4 v3, 0x0

    .line 1447
    .local v3, "wifi_num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1448
    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getInterfaceNameNative(I)Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "WifiNative-HAL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "interface["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string/jumbo v4, "wlan0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1451
    sput v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1452
    add-int/lit8 v3, v3, 0x1

    .line 1447
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    :cond_1
    const-string/jumbo v4, "p2p0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1454
    sput v0, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1455
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    .line 1458
    return v3

    .line 1460
    .end local v0    # "i":I
    .end local v2    # "num":I
    .end local v3    # "wifi_num":I
    :cond_3
    :try_start_3
    sget-object v4, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    array-length v4, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    return v4

    :cond_4
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1463
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 1442
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v6

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static native getInterfacesNative()I
.end method

.method private getIsGBKFromMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2916
    const/4 v1, 0x0

    .line 2917
    .local v1, "isGBK":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2918
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiNative$AccessPoint;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative$AccessPoint;->getEncodedSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2919
    sget-boolean v2, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIsGBKFromMapping bssid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", ssid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2920
    const-string/jumbo v4, ", getEncodedSsid()"

    .line 2919
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2920
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiNative$AccessPoint;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative$AccessPoint;->getEncodedSsid()Ljava/lang/String;

    move-result-object v2

    .line 2919
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiNative$AccessPoint;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiNative$AccessPoint;->isGBK()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2925
    .end local v1    # "isGBK":Ljava/lang/Boolean;
    :cond_1
    return-object v1

    .line 2917
    .restart local v1    # "isGBK":Ljava/lang/Boolean;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLocalLog()Landroid/util/LocalLog;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method private static getNewCmdIdLocked()I
    .locals 2

    .prologue
    .line 182
    sget v0, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sCmdId:I

    return v0
.end method

.method public static declared-synchronized getRingBufferData(Ljava/lang/String;)Z
    .locals 3
    .param p0, "ringName"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2320
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2321
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2322
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getRingBufferDataNative(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2324
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2320
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getRingBufferDataNative(ILjava/lang/String;)Z
.end method

.method public static declared-synchronized getRingBufferStatus()[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2309
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2310
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2311
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2313
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2309
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getRingBufferStatusNative(I)[Lcom/android/server/wifi/WifiNative$RingBufferStatus;
.end method

.method public static declared-synchronized getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2089
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2090
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2093
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2089
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getRttCapabilitiesNative(I)Landroid/net/wifi/RttManager$RttCapabilities;
.end method

.method public static declared-synchronized getScanCapabilities(Lcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    .locals 3
    .param p0, "capabilities"    # Lcom/android/server/wifi/WifiNative$ScanCapabilities;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1484
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1485
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1484
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getScanCapabilitiesNative(ILcom/android/server/wifi/WifiNative$ScanCapabilities;)Z
.end method

.method public static declared-synchronized getScanResults(Z)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 3
    .param p0, "flush"    # Z

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1791
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1792
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1793
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1795
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 1791
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;
.end method

.method public static declared-synchronized getSupportedFeatureSet()I
    .locals 4

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1954
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1955
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedFeatureSetNative(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    .line 1958
    :cond_0
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "Failing getSupportedFeatureset because HAL isn\'t started"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1959
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 1954
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native getSupportedFeatureSetNative(I)I
.end method

.method public static declared-synchronized getSupportedLoggerFeatureSet()I
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2235
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2236
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getSupportedLoggerFeatureSetNative(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2239
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2235
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getSupportedLoggerFeatureSetNative(I)I
.end method

.method public static declared-synchronized getTdlsCapabilities()Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2159
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2160
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2163
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2159
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getTdlsCapabilitiesNative(I)Lcom/android/server/wifi/WifiNative$TdlsCapabilities;
.end method

.method public static declared-synchronized getTdlsStatus(Ljava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    .locals 3
    .param p0, "macAdd"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2136
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2137
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2140
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 2136
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getTdlsStatusNative(ILjava/lang/String;)Lcom/android/server/wifi/WifiNative$TdlsStatus;
.end method

.method public static declared-synchronized getWifiLinkLayerStats(Ljava/lang/String;)Landroid/net/wifi/WifiLinkLayerStats;
    .locals 4
    .param p0, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1933
    if-nez p0, :cond_0

    monitor-exit v1

    return-object v3

    .line 1934
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1935
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1936
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 1938
    return-object v3

    .line 1934
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getWifiLinkLayerStatsNative(I)Landroid/net/wifi/WifiLinkLayerStats;
.end method

.method private isASCII(B)Z
    .locals 2
    .param p1, "b"    # B

    .prologue
    const/4 v1, 0x0

    .line 3172
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_0

    .line 3173
    const/4 v0, 0x1

    return v0

    .line 3175
    :cond_0
    return v1
.end method

.method public static native isDriverLoaded()Z
.end method

.method private isGBK([B)Z
    .locals 3
    .param p1, "chBytes"    # [B

    .prologue
    const/4 v2, 0x1

    .line 3089
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->isNotUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3090
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "is not utf8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_0
    return v2

    .line 3093
    :cond_1
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "is utf8 format"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mUtf8LikeGbkEncoding:Z

    if-eqz v0, :cond_5

    .line 3097
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->isUtf8LikeGbk([B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3098
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "is utf8-like GBK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    :cond_3
    return v2

    .line 3101
    :cond_4
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "is truly utf8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private isGBK([BII)Z
    .locals 2
    .param p1, "byteArray"    # [B
    .param p2, "ssidStartPos"    # I
    .param p3, "ssidEndPos"    # I

    .prologue
    .line 3084
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 3085
    .local v0, "subArray":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->isGBK([B)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized isGetChannelsForBandSupported()Z
    .locals 3

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2056
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2057
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupportedNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2060
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2056
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native isGetChannelsForBandSupportedNative()Z
.end method

.method public static isHalStarted()Z
    .locals 4

    .prologue
    .line 1437
    sget-wide v0, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotUtf8([B)Z
    .locals 8
    .param p1, "input"    # [B

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3108
    const/4 v3, 0x0

    .line 3110
    .local v3, "nBytes":I
    const/4 v2, 0x1

    .line 3111
    .local v2, "isAllAscii":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_9

    .line 3112
    aget-byte v0, p1, v1

    .line 3113
    .local v0, "chr":B
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 3114
    const/4 v2, 0x0

    .line 3116
    :cond_0
    if-nez v3, :cond_7

    .line 3117
    and-int/lit16 v4, v0, 0xff

    if-lt v4, v7, :cond_1

    .line 3118
    const/4 v4, -0x4

    if-lt v0, v4, :cond_2

    const/4 v4, -0x3

    if-gt v0, v4, :cond_2

    .line 3119
    const/4 v3, 0x6

    .line 3131
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 3111
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3120
    :cond_2
    const/4 v4, -0x8

    if-lt v0, v4, :cond_3

    .line 3121
    const/4 v3, 0x5

    goto :goto_1

    .line 3122
    :cond_3
    const/16 v4, -0x10

    if-lt v0, v4, :cond_4

    .line 3123
    const/4 v3, 0x4

    goto :goto_1

    .line 3124
    :cond_4
    const/16 v4, -0x20

    if-lt v0, v4, :cond_5

    .line 3125
    const/4 v3, 0x3

    goto :goto_1

    .line 3126
    :cond_5
    const/16 v4, -0x40

    if-lt v0, v4, :cond_6

    .line 3127
    const/4 v3, 0x2

    goto :goto_1

    .line 3129
    :cond_6
    return v6

    .line 3134
    :cond_7
    and-int/lit16 v4, v0, 0xc0

    if-eq v4, v7, :cond_8

    .line 3135
    return v6

    .line 3137
    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 3141
    .end local v0    # "chr":B
    :cond_9
    if-lez v3, :cond_b

    .line 3142
    if-eqz v2, :cond_a

    .line 3143
    return v5

    .line 3145
    :cond_a
    return v6

    .line 3147
    :cond_b
    return v5
.end method

.method private isUtf8LikeGbk([B)Z
    .locals 6
    .param p1, "chBytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 3151
    const/4 v2, 0x0

    .line 3152
    .local v2, "isExistGBK":Z
    const/4 v1, 0x0

    .line 3153
    .local v1, "isExistASCII":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 3154
    array-length v3, p1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 3155
    aget-byte v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiNative;->isWordUtf8LikeGBK(BB)Z

    move-result v3

    .line 3154
    if-eqz v3, :cond_0

    .line 3156
    const/4 v2, 0x1

    .line 3157
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3158
    :cond_0
    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->isASCII(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3159
    const/4 v1, 0x1

    .line 3160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3162
    :cond_1
    return v5

    .line 3165
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 3166
    return v5

    .line 3168
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private isWordUtf8LikeGBK(BB)Z
    .locals 4
    .param p1, "head"    # B
    .param p2, "tail"    # B

    .prologue
    const/16 v3, 0x80

    .line 3179
    and-int/lit16 v0, p1, 0xff

    .line 3180
    .local v0, "iHead":I
    and-int/lit16 v1, p2, 0xff

    .line 3181
    .local v1, "iTail":I
    const/16 v2, 0xc0

    if-lt v0, v2, :cond_2

    const/16 v2, 0xd0

    if-gt v0, v2, :cond_2

    if-lt v1, v3, :cond_1

    .line 3182
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 3181
    :goto_0
    return v2

    .line 3182
    :cond_1
    if-lt v1, v3, :cond_2

    const/16 v2, 0xbf

    if-le v1, v2, :cond_0

    .line 3183
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static native killSupplicant(Z)Z
.end method

.method public static native loadDriver()Z
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method private logDbg(Ljava/lang/String;)V
    .locals 8
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 419
    .local v0, "now":J
    const-string/jumbo v3, "[%,d us] "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "ts":Ljava/lang/String;
    const-string/jumbo v3, "WifiNative: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    const-string/jumbo v5, " - "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 422
    const-string/jumbo v5, " - "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 423
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 423
    const-string/jumbo v5, " - "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 424
    const-string/jumbo v5, " - "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 425
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method

.method static declared-synchronized onFullScanResult(ILandroid/net/wifi/ScanResult;[B)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "result"    # Landroid/net/wifi/ScanResult;
    .param p2, "bytes"    # [B

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1700
    :try_start_0
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got a full scan results event, ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1701
    const-string/jumbo v3, "num = "

    .line 1700
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1701
    array-length v3, p2

    .line 1700
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 1704
    return-void

    .line 1706
    :cond_1
    :try_start_1
    const-string/jumbo v0, " onFullScanResult "

    invoke-static {p1, p2, v0}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V

    .line 1708
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onFullScanResult(Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1699
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onHotlistApFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1848
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1849
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_1

    .line 1851
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApFound([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1847
    return-void

    .line 1854
    :cond_1
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "Ignoring hotlist AP found event"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1848
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onHotlistApLost(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1861
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1862
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_1

    .line 1864
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$HotlistEventHandler;->onHotlistApLost([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1860
    return-void

    .line 1867
    :cond_1
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "Ignoring hotlist AP lost event"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1861
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onPnoNetworkFound(I[Landroid/net/wifi/ScanResult;)V
    .locals 5
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 2431
    if-nez p1, :cond_0

    .line 2432
    :try_start_0
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v3, "onPnoNetworkFound null results"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    .line 2433
    return-void

    .line 2436
    :cond_0
    :try_start_1
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiNative.onPnoNetworkFound result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2441
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPnoNetworkFound SSID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2442
    const-string/jumbo v4, " "

    .line 2441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2442
    aget-object v4, p1, v0

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 2441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2442
    const-string/jumbo v4, " "

    .line 2441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2442
    aget-object v4, p1, v0

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2441
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    aget-object v1, p1, v0

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->bytes:[B

    const-string/jumbo v4, "onPnoNetworkFound "

    invoke-static {v1, v3, v4}, Lcom/android/server/wifi/WifiNative;->populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V

    .line 2445
    aget-object v1, p1, v0

    aget-object v3, p1, v0

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2447
    :cond_1
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2448
    :try_start_2
    sget v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    if-eqz v1, :cond_2

    .line 2449
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    invoke-interface {v1, p1}, Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    .line 2429
    return-void

    .line 2452
    :cond_2
    :try_start_4
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v4, "Ignoring Pno Network found event"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2447
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V
    .locals 1
    .param p0, "status"    # Lcom/android/server/wifi/WifiNative$RingBufferStatus;
    .param p1, "buffer"    # [B

    .prologue
    .line 2191
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-eqz v0, :cond_0

    .line 2192
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onRingBufferData(Lcom/android/server/wifi/WifiNative$RingBufferStatus;[B)V

    .line 2190
    :cond_0
    return-void
.end method

.method private static declared-synchronized onRttResults(I[Landroid/net/wifi/RttManager$RttResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/RttManager$RttResult;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1973
    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-ne p0, v0, :cond_0

    .line 1974
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rtt results"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$RttEventHandler;->onRttResults([Landroid/net/wifi/RttManager$RttResult;)V

    .line 1976
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1972
    return-void

    .line 1978
    :cond_0
    :try_start_1
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RTT Received event for unknown cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onScanResultsAvailable(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1531
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 1532
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanResultsAvailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1530
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onScanStatus(I)V
    .locals 2
    .param p0, "status"    # I

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1541
    :try_start_0
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_BUFFER_FULL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    .line 1540
    return-void

    .line 1543
    :cond_1
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->WIFI_SCAN_COMPLETE:I

    if-ne p0, v0, :cond_0

    .line 1544
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v0, :cond_0

    .line 1545
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized onSignificantWifiChange(I[Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p0, "id"    # I
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1921
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1922
    :try_start_1
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v0, :cond_0

    .line 1923
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    invoke-interface {v0, p1}, Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;->onChangesFound([Landroid/net/wifi/ScanResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1920
    return-void

    .line 1926
    :cond_0
    :try_start_3
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "Ignoring significant wifi change"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1921
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized onTdlsStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p0, "macAddr"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2169
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2170
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2172
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sTdlsEventHandler:Lcom/android/server/wifi/WifiNative$TdlsEventHandler;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wifi/WifiNative$TdlsEventHandler;->onTdlsStatus(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2173
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static onWifiAlert([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "errorCode"    # I

    .prologue
    .line 2196
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    if-eqz v0, :cond_0

    .line 2197
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    invoke-interface {v0, p1, p0}, Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;->onWifiAlert(I[B)V

    .line 2195
    :cond_0
    return-void
.end method

.method private static onWifiFwMemoryAvailable([B)V
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    .line 2331
    sput-object p0, Lcom/android/server/wifi/WifiNative;->mFwMemoryDump:[B

    .line 2332
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    .line 2333
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiFwMemoryAvailable is called and buffer length is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2334
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 2333
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_0
    return-void

    .line 2334
    :cond_1
    array-length v0, p0

    goto :goto_0
.end method

.method private p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1238
    if-nez p1, :cond_0

    return-object v7

    .line 1240
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1241
    .local v1, "peerInfo":Ljava/lang/String;
    if-nez v1, :cond_1

    return-object v7

    .line 1242
    :cond_1
    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, "tokens":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1245
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v3, v4

    .line 1246
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1247
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1248
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 1252
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    :cond_2
    return-object v7

    .line 1249
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    aget-object v4, v0, v4

    return-object v4

    .line 1245
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private parseScanResultInByteArray([B)Ljava/lang/String;
    .locals 19
    .param p1, "byteArray"    # [B

    .prologue
    .line 2960
    const-string/jumbo v9, "\nssid="

    .line 2961
    .local v9, "newLineSSID_STR":Ljava/lang/String;
    const-string/jumbo v7, "\n===="

    .line 2962
    .local v7, "newLineDELIMITER_STR":Ljava/lang/String;
    const-string/jumbo v8, "\n####"

    .line 2963
    .local v8, "newLineEND_STR":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 2964
    .local v13, "ssidStrBytes":[B
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2965
    .local v3, "delimiterStrBytes":[B
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2967
    .local v5, "endStrBytes":[B
    const-string/jumbo v10, ""

    .line 2968
    .local v10, "ret":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "scan result len: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v12, 0x0

    .line 2970
    .local v12, "ssidStartPos":I
    const/4 v11, 0x0

    .line 2971
    .local v11, "ssidEndPos":I
    :cond_0
    :goto_0
    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v12, v0, :cond_2

    .line 2972
    :cond_1
    move v14, v12

    .line 2974
    .local v14, "start":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v12}, Lcom/android/server/wifi/WifiNative;->findByteArray([B[BI)I

    move-result v12

    .line 2977
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    .line 3021
    .end local v14    # "start":I
    :cond_2
    return-object v10

    .line 2980
    .restart local v14    # "start":I
    :cond_3
    array-length v0, v13

    move/from16 v16, v0

    add-int v12, v12, v16

    .line 2981
    move v4, v12

    .line 2983
    .local v4, "end":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/wifi/WifiNative;->constructByteToUTF8String([BII)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2986
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/wifi/WifiNative;->getBssidFromScanResult([BII)Ljava/lang/String;

    move-result-object v2

    .line 2989
    .local v2, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lcom/android/server/wifi/WifiNative;->findByteArray([B[BI)I

    move-result v11

    .line 2991
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_4

    .line 2993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lcom/android/server/wifi/WifiNative;->findByteArray([B[BI)I

    move-result v11

    .line 2997
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_2

    .line 3002
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/server/wifi/WifiNative;->isGBK([BII)Z

    move-result v6

    .line 3004
    .local v6, "isSsidGBK":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11, v6}, Lcom/android/server/wifi/WifiNative;->ssidTransToUtf8([BIIZ)Ljava/lang/String;

    move-result-object v15

    .line 3006
    .local v15, "utf8":Ljava/lang/String;
    sget-boolean v16, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "utf8: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3010
    array-length v0, v3

    move/from16 v16, v0

    add-int v12, v11, v16

    .line 3011
    move v14, v11

    .line 3012
    move v4, v12

    .line 3014
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/wifi/WifiNative;->constructByteToUTF8String([BII)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3017
    if-eqz v6, :cond_0

    .line 3018
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v15}, Lcom/android/server/wifi/WifiNative;->addGBKMapping(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseSsidInByteArray([B)Ljava/lang/String;
    .locals 4
    .param p1, "chBytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 2907
    if-nez p1, :cond_0

    .line 2908
    return-object v2

    .line 2910
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->trimByteArray([B)[B

    move-result-object v1

    .line 2911
    .local v1, "trim":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/wifi/WifiNative;->ssidTransToUtf8([BII)Ljava/lang/String;

    move-result-object v0

    .line 2912
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized pauseScan()V
    .locals 5

    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 1758
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1759
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1760
    sget v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v1, :cond_0

    .line 1761
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v4, "Pausing scan"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->getScanResultsNative(IZ)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v0

    .line 1763
    .local v0, "scanData":[Landroid/net/wifi/WifiScanner$ScanData;
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 1764
    const/4 v1, 0x0

    sput v1, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 1765
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v1, v0}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanPaused([Landroid/net/wifi/WifiScanner$ScanData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 1757
    return-void

    .line 1758
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static populateScanResult(Landroid/net/wifi/ScanResult;[BLjava/lang/String;)V
    .locals 21
    .param p0, "result"    # Landroid/net/wifi/ScanResult;
    .param p1, "bytes"    # [B
    .param p2, "dbg"    # Ljava/lang/String;

    .prologue
    .line 1591
    const/4 v15, 0x0

    .line 1592
    .local v15, "num":I
    if-nez p1, :cond_0

    return-void

    .line 1593
    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    .line 1594
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 1595
    aget-byte v18, p1, v9

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1596
    .local v17, "type":I
    add-int/lit8 v18, v9, 0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff

    .line 1597
    .local v14, "len":I
    add-int v18, v9, v14

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1598
    const-string/jumbo v18, "WifiNative-HAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "bad length "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " of IE "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string/jumbo v18, "WifiNative-HAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "ignoring the rest of the IEs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    .end local v14    # "len":I
    .end local v17    # "type":I
    :cond_2
    const/16 v16, 0x0

    .line 1609
    .local v16, "secondChanelOffset":I
    const/4 v6, 0x0

    .line 1610
    .local v6, "channelMode":B
    const/4 v4, 0x0

    .line 1611
    .local v4, "centerFreqIndex1":B
    const/4 v5, 0x0

    .line 1613
    .local v5, "centerFreqIndex2":B
    const/4 v12, 0x0

    .line 1615
    .local v12, "is80211McRTTResponder":Z
    new-array v8, v15, [Landroid/net/wifi/ScanResult$InformationElement;

    .line 1616
    .local v8, "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    const/4 v9, 0x0

    const/4 v10, 0x0

    .end local v4    # "centerFreqIndex1":B
    .end local v5    # "centerFreqIndex2":B
    .end local v6    # "channelMode":B
    .local v10, "index":I
    :goto_1
    if-ge v9, v15, :cond_c

    .line 1617
    aget-byte v18, p1, v10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 1618
    .restart local v17    # "type":I
    add-int/lit8 v18, v10, 0x1

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff

    .line 1619
    .restart local v14    # "len":I
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v18, :cond_3

    const-string/jumbo v18, "WifiNative-HAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", len = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_3
    new-instance v7, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v7}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 1621
    .local v7, "elem":Landroid/net/wifi/ScanResult$InformationElement;
    move/from16 v0, v17

    iput v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 1622
    new-array v0, v14, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1623
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v14, :cond_6

    .line 1624
    iget-object v0, v7, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v18, v0

    add-int v19, v10, v13

    add-int/lit8 v19, v19, 0x2

    aget-byte v19, p1, v19

    aput-byte v19, v18, v13

    .line 1623
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1602
    .end local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v8    # "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    .end local v10    # "index":I
    .end local v12    # "is80211McRTTResponder":Z
    .end local v13    # "j":I
    .end local v16    # "secondChanelOffset":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 1603
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v18, :cond_5

    const-string/jumbo v18, "WifiNative-HAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "bytes["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1604
    const-string/jumbo v20, "next = "

    .line 1603
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1604
    add-int v20, v9, v14

    add-int/lit8 v20, v20, 0x2

    .line 1603
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_5
    add-int/lit8 v18, v14, 0x2

    add-int v9, v9, v18

    goto/16 :goto_0

    .line 1626
    .restart local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v8    # "elements":[Landroid/net/wifi/ScanResult$InformationElement;
    .restart local v10    # "index":I
    .restart local v12    # "is80211McRTTResponder":Z
    .restart local v13    # "j":I
    .restart local v16    # "secondChanelOffset":I
    :cond_6
    aput-object v7, v8, v9

    .line 1627
    add-int/lit8 v11, v10, 0x2

    .line 1628
    .local v11, "inforStart":I
    add-int/lit8 v18, v14, 0x2

    add-int v10, v10, v18

    .line 1630
    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1631
    add-int/lit8 v18, v11, 0x1

    aget-byte v18, p1, v18

    and-int/lit8 v16, v18, 0x3

    .line 1616
    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1632
    :cond_8
    const/16 v18, 0xc0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1633
    aget-byte v6, p1, v11

    .line 1634
    .local v6, "channelMode":B
    add-int/lit8 v18, v11, 0x1

    aget-byte v4, p1, v18

    .line 1635
    .local v4, "centerFreqIndex1":B
    add-int/lit8 v18, v11, 0x2

    aget-byte v5, p1, v18

    .local v5, "centerFreqIndex2":B
    goto :goto_3

    .line 1636
    .end local v4    # "centerFreqIndex1":B
    .end local v5    # "centerFreqIndex2":B
    .end local v6    # "channelMode":B
    :cond_9
    const/16 v18, 0x7f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1640
    const/16 v18, 0x9

    move/from16 v0, v18

    if-ge v14, v0, :cond_a

    .line 1641
    const/4 v12, 0x0

    goto :goto_3

    .line 1643
    :cond_a
    add-int/lit8 v18, v11, 0x8

    aget-byte v18, p1, v18

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_b

    .line 1644
    const/4 v12, 0x1

    goto :goto_3

    .line 1646
    :cond_b
    const/4 v12, 0x0

    goto :goto_3

    .line 1652
    .end local v7    # "elem":Landroid/net/wifi/ScanResult$InformationElement;
    .end local v11    # "inforStart":I
    .end local v13    # "j":I
    .end local v14    # "len":I
    .end local v17    # "type":I
    :cond_c
    if-eqz v12, :cond_e

    .line 1653
    const-wide/16 v18, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/ScanResult;->setFlag(J)V

    .line 1659
    :goto_4
    if-eqz v6, :cond_10

    .line 1661
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1664
    add-int/lit8 v18, v4, -0x24

    mul-int/lit8 v18, v18, 0x5

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x143c

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1666
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_f

    .line 1667
    add-int/lit8 v18, v5, -0x24

    mul-int/lit8 v18, v18, 0x5

    move/from16 v0, v18

    add-int/lit16 v0, v0, 0x143c

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1689
    :goto_5
    sget-boolean v18, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v18, :cond_d

    .line 1690
    const-string/jumbo v19, "WifiNative-HAL"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "SSID: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, " ChannelWidth is: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1691
    const-string/jumbo v20, " PrimaryFreq: "

    .line 1690
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v20, v0

    .line 1690
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1691
    const-string/jumbo v20, " mCenterfreq0: "

    .line 1690
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    move/from16 v20, v0

    .line 1690
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1692
    const-string/jumbo v20, " mCenterfreq1: "

    .line 1690
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1692
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    move/from16 v20, v0

    .line 1690
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1692
    if-eqz v12, :cond_14

    .line 1693
    const-string/jumbo v18, "Support RTT reponder: "

    .line 1690
    :goto_6
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_d
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 1590
    return-void

    .line 1655
    :cond_e
    const-wide/16 v18, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/ScanResult;->clearFlag(J)V

    goto/16 :goto_4

    .line 1669
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    goto/16 :goto_5

    .line 1673
    :cond_10
    if-eqz v16, :cond_13

    .line 1674
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1675
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 1676
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1687
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    goto/16 :goto_5

    .line 1677
    :cond_11
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1678
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x14

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    goto :goto_7

    .line 1680
    :cond_12
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1681
    const-string/jumbo v18, "WifiNative-HAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": Error on secondChanelOffset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1684
    :cond_13
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1685
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    goto :goto_7

    .line 1693
    :cond_14
    const-string/jumbo v18, "Do not support RTT responder"

    goto/16 :goto_6
.end method

.method private static native registerNatives()I
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 3223
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3224
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3225
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 3226
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3228
    :cond_0
    return-object p1
.end method

.method private static native requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
.end method

.method public static declared-synchronized requestRtt([Landroid/net/wifi/RttManager$RttParams;Lcom/android/server/wifi/WifiNative$RttEventHandler;)Z
    .locals 5
    .param p0, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1989
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1990
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1991
    sget v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    if-eqz v0, :cond_0

    .line 1992
    const-string/jumbo v0, "TAG"

    const-string/jumbo v3, "Last one is still under measurement!"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1993
    return v4

    .line 1995
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    .line 1997
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sRttEventHandler:Lcom/android/server/wifi/WifiNative$RttEventHandler;

    .line 1998
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "native issue RTT request"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sRttCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->requestRangeNative(II[Landroid/net/wifi/RttManager$RttParams;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v1

    .line 2001
    return v4

    .line 1989
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetHotlist()V
    .locals 4

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1836
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1837
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1838
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    if-eqz v0, :cond_0

    .line 1839
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->resetHotlistNative(II)Z

    .line 1840
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 1841
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1835
    return-void

    .line 1836
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native resetHotlistNative(II)Z
.end method

.method public static declared-synchronized resetLogHandler()Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2246
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2247
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2248
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    if-ne v0, v3, :cond_0

    .line 2249
    const-string/jumbo v0, "WifiNative-HAL"

    const-string/jumbo v3, "Can not reset handler Before set any handler"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 2250
    return v4

    .line 2252
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .line 2253
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->resetLogHandlerNative(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2255
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v1

    .line 2257
    return v4

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    .line 2260
    return v4

    .line 2246
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native resetLogHandlerNative(II)Z
.end method

.method public static declared-synchronized restartScan()V
    .locals 6

    .prologue
    const-class v3, Lcom/android/server/wifi/WifiNative;

    monitor-enter v3

    .line 1772
    :try_start_0
    sget-object v4, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1773
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1774
    sget v2, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    if-eqz v2, :cond_0

    .line 1775
    const-string/jumbo v2, "WifiNative-HAL"

    const-string/jumbo v5, "Restarting scan"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1777
    .local v0, "handler":Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1778
    .local v1, "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    sget-object v5, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-static {v2, v5}, Lcom/android/server/wifi/WifiNative;->startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1779
    sget-object v2, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    invoke-interface {v2}, Lcom/android/server/wifi/WifiNative$ScanEventHandler;->onScanRestarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    .line 1771
    return-void

    .line 1782
    :cond_1
    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1783
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1772
    .end local v1    # "settings":Lcom/android/server/wifi/WifiNative$ScanSettings;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setBssidBlacklist([Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;

    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, "size":I
    if-eqz p0, :cond_0

    .line 2503
    :try_start_0
    array-length v0, p0

    .line 2505
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBssidBlacklist cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2508
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2509
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2510
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v1, v4, p0}, Lcom/android/server/wifi/WifiNative;->setBssidBlacklistNative(II[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return v1

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2512
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 2507
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native setBssidBlacklistNative(II[Ljava/lang/String;)Z
.end method

.method public static declared-synchronized setCountryCodeHal(Ljava/lang/String;)Z
    .locals 3
    .param p0, "CountryCode"    # Ljava/lang/String;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2100
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2101
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2102
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setCountryCodeHalNative(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2104
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2100
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setCountryCodeHalNative(ILjava/lang/String;)Z
.end method

.method public static declared-synchronized setDfsFlag(Z)Z
    .locals 3
    .param p0, "dfsOn"    # Z

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2067
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2068
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2069
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setDfsFlagNative(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2071
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2067
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setDfsFlagNative(IZ)Z
.end method

.method public static declared-synchronized setHotlist(Landroid/net/wifi/WifiScanner$HotlistSettings;Lcom/android/server/wifi/WifiNative$HotlistEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1814
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1815
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    sget v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1817
    return v4

    .line 1819
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    .line 1822
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;

    .line 1823
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sHotlistCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1824
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sHotlistEventHandler:Lcom/android/server/wifi/WifiNative$HotlistEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    .line 1825
    return v4

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1828
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    .line 1830
    return v4

    .line 1814
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setHotlistNative(IILandroid/net/wifi/WifiScanner$HotlistSettings;)Z
.end method

.method public static declared-synchronized setLazyRoam(ZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
    .locals 4
    .param p0, "enabled"    # Z
    .param p1, "params"    # Lcom/android/server/wifi/WifiNative$WifiLazyRoamParams;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2487
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2488
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2490
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v0, v3, p0, p1}, Lcom/android/server/wifi/WifiNative;->setLazyRoamNative(IIZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2492
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2487
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setLazyRoamNative(IIZLcom/android/server/wifi/WifiNative$WifiLazyRoamParams;)Z
.end method

.method public static declared-synchronized setLoggingEventHandler(Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;)Z
    .locals 6
    .param p0, "handler"    # Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;

    .prologue
    const/4 v5, 0x0

    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 2203
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2204
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2205
    sget v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2206
    .local v0, "oldId":I
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    .line 2207
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiNative;->setLoggingEventHandlerNative(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2208
    sput v0, Lcom/android/server/wifi/WifiNative;->sLogCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 2209
    return v5

    .line 2211
    :cond_0
    :try_start_3
    sput-object p0, Lcom/android/server/wifi/WifiNative;->sWifiLoggerEventHandler:Lcom/android/server/wifi/WifiNative$WifiLoggerEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2212
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .end local v0    # "oldId":I
    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v2

    .line 2214
    return v5

    .line 2203
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native setLoggingEventHandlerNative(II)Z
.end method

.method private native setNetworkVariableCommand(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static declared-synchronized setPnoList([Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;)Z
    .locals 4
    .param p0, "list"    # [Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2411
    :try_start_0
    const-string/jumbo v0, "WifiNative-HAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPnoList cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2414
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2418
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;

    .line 2419
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->setPnoListNative(II[Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2420
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2424
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/android/server/wifi/WifiNative;->sWifiPnoEventHandler:Lcom/android/server/wifi/WifiNative$WifiPnoEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2425
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2413
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setPnoListNative(II[Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;)Z
.end method

.method public static declared-synchronized setScanningMacOui([B)Z
    .locals 3
    .param p0, "oui"    # [B

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2032
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2033
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2034
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p0}, Lcom/android/server/wifi/WifiNative;->setScanningMacOuiNative(I[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2036
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 2032
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setScanningMacOuiNative(I[B)Z
.end method

.method public static setSsid([BLandroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p0, "rawSsid"    # [B
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x0

    .line 1581
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 1582
    :cond_0
    return v1

    .line 1581
    :cond_1
    if-eqz p1, :cond_0

    .line 1585
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->ssidConvert([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1586
    invoke-static {p0}, Lcom/android/server/wifi/WifiNative;->createWifiSsid([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1587
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized setSsidWhitelist([Ljava/lang/String;)Z
    .locals 5
    .param p0, "list"    # [Ljava/lang/String;

    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 2520
    const/4 v0, 0x0

    .line 2521
    .local v0, "size":I
    if-eqz p0, :cond_0

    .line 2522
    :try_start_0
    array-length v0, p0

    .line 2524
    :cond_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSsidWhitelist cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2527
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2528
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v1

    sput v1, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    .line 2530
    sget v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v4, Lcom/android/server/wifi/WifiNative;->sPnoCmdId:I

    invoke-static {v1, v4, p0}, Lcom/android/server/wifi/WifiNative;->setSsidWhitelistNative(II[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return v1

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2532
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 2526
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native setSsidWhitelistNative(II[Ljava/lang/String;)Z
.end method

.method public static native setTxPower(I)Z
.end method

.method public static native setTxPowerEnabled(Z)Z
.end method

.method public static declared-synchronized setWifiLinkLayerStats(Ljava/lang/String;I)V
    .locals 3
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "enable"    # I

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1944
    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    .line 1945
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1946
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiNative;->setWifiLinkLayerStatsNative(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1943
    return-void

    .line 1945
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setWifiLinkLayerStatsNative(II)V
.end method

.method public static ssidConvert([B)Ljava/lang/String;
    .locals 5
    .param p0, "rawSsid"    # [B

    .prologue
    .line 1565
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 1567
    .local v2, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1568
    .local v1, "decoded":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1573
    .end local v1    # "decoded":Ljava/nio/CharBuffer;
    :goto_0
    if-nez v3, :cond_0

    .line 1574
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1577
    :cond_0
    return-object v3

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    .local v0, "cce":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    .local v3, "ssid":Ljava/lang/String;
    goto :goto_0
.end method

.method private ssidTransToUtf8([BII)Ljava/lang/String;
    .locals 3
    .param p1, "scanResultBytes"    # [B
    .param p2, "ssidStartPos"    # I
    .param p3, "ssidEndPos"    # I

    .prologue
    .line 3205
    const/4 v1, 0x0

    .line 3206
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNative;->isGBK([BII)Z

    move-result v0

    .line 3207
    .local v0, "isGbk":Z
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wifi/WifiNative;->ssidTransToUtf8([BIIZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ssidTransToUtf8([BIIZ)Ljava/lang/String;
    .locals 7
    .param p1, "scanResultBytes"    # [B
    .param p2, "ssidStartPos"    # I
    .param p3, "ssidEndPos"    # I
    .param p4, "isGBK"    # Z

    .prologue
    .line 3188
    const/4 v1, 0x0

    .line 3189
    .local v1, "ret":Ljava/lang/String;
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 3190
    .local v3, "subArray":[B
    sget-boolean v4, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isGBK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_0
    if-nez p4, :cond_1

    .line 3193
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .local v2, "ret":Ljava/lang/String;
    move-object v1, v2

    .line 3200
    .end local v1    # "ret":Ljava/lang/String;
    .end local v2    # "ret":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 3195
    .restart local v1    # "ret":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiNative;->changeGbkBytesToUtfString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 3197
    .local v1, "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3198
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized startHal()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-class v4, Lcom/android/server/wifi/WifiNative;

    monitor-enter v4

    .line 1396
    :try_start_0
    const-string/jumbo v0, "startHal stack: "

    .line 1397
    .local v0, "debugLog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1398
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    .line 1399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1404
    sget-object v5, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1405
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->startHalNative()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getInterfaces()I

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 1406
    new-instance v3, Lcom/android/server/wifi/WifiNative$MonitorThread;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/server/wifi/WifiNative$MonitorThread;-><init>(Lcom/android/server/wifi/WifiNative$MonitorThread;)V

    sput-object v3, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    .line 1407
    sget-object v3, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiNative$MonitorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1408
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 1410
    :cond_1
    :try_start_3
    sget-boolean v3, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v6, "Could not start hal"

    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1411
    :cond_2
    const-string/jumbo v3, "WifiNative-HAL"

    const-string/jumbo v6, "Could not start hal"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v4

    .line 1412
    return v7

    .line 1404
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static native startHalNative()Z
.end method

.method public static native startLogging(I)Z
.end method

.method public static declared-synchronized startLoggingRingBuffer(IIIILjava/lang/String;)Z
    .locals 8
    .param p0, "verboseLevel"    # I
    .param p1, "flags"    # I
    .param p2, "maxInterval"    # I
    .param p3, "minDataSize"    # I
    .param p4, "ringName"    # Ljava/lang/String;

    .prologue
    const-class v6, Lcom/android/server/wifi/WifiNative;

    monitor-enter v6

    .line 2223
    :try_start_0
    sget-object v7, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2224
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wifi/WifiNative;->startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    return v0

    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2228
    const/4 v0, 0x0

    monitor-exit v6

    return v0

    .line 2223
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static native startLoggingRingBufferNative(IIIIILjava/lang/String;)Z
.end method

.method public static declared-synchronized startScan(Lcom/android/server/wifi/WifiNative$ScanSettings;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Lcom/android/server/wifi/WifiNative$ScanSettings;
    .param p1, "eventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1717
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1718
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1720
    sget v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    if-eqz v0, :cond_1

    .line 1721
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopScan()V

    .line 1726
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    .line 1728
    sput-object p0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1729
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1731
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1732
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1733
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1734
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1735
    return v4

    .line 1722
    :cond_1
    :try_start_3
    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1738
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v1

    .line 1740
    return v4

    .line 1717
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native startScanNative(IILcom/android/server/wifi/WifiNative$ScanSettings;)Z
.end method

.method public static native startSupplicant(Z)Z
.end method

.method public static declared-synchronized stopHal()V
    .locals 6

    .prologue
    const-class v2, Lcom/android/server/wifi/WifiNative;

    monitor-enter v2

    .line 1418
    :try_start_0
    sget-object v3, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1419
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1420
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->stopHalNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1422
    :try_start_2
    sget-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wifi/WifiNative$MonitorThread;->join(J)V

    .line 1423
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v4, "HAL event thread stopped successfully"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1427
    .local v0, "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v1, 0x0

    :try_start_3
    sput-object v1, Lcom/android/server/wifi/WifiNative;->sThread:Lcom/android/server/wifi/WifiNative$MonitorThread;

    .line 1428
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/wifi/WifiNative;->sWifiHalHandle:J

    .line 1429
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/wifi/WifiNative;->sWifiIfaceHandles:[J

    .line 1430
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    .line 1431
    const/4 v1, -0x1

    sput v1, Lcom/android/server/wifi/WifiNative;->sP2p0Index:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    .line 1417
    return-void

    .line 1424
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 1425
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string/jumbo v1, "WifiNative-HAL"

    const-string/jumbo v4, "Could not stop HAL cleanly"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1418
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native stopHalNative()V
.end method

.method public static declared-synchronized stopScan()V
    .locals 4

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1747
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1748
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->stopScanNative(II)Z

    .line 1750
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanSettings:Lcom/android/server/wifi/WifiNative$ScanSettings;

    .line 1751
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 1752
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1745
    return-void

    .line 1747
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native stopScanNative(II)Z
.end method

.method public static declared-synchronized toggleInterface(I)Z
    .locals 4
    .param p0, "on"    # I

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 2078
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2079
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wifi/WifiNative;->toggleInterfaceNative(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 2082
    return v3

    .line 2078
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native toggleInterfaceNative(I)Z
.end method

.method public static declared-synchronized trackSignificantWifiChange(Landroid/net/wifi/WifiScanner$WifiChangeSettings;Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;)Z
    .locals 5
    .param p0, "settings"    # Landroid/net/wifi/WifiScanner$WifiChangeSettings;
    .param p1, "handler"    # Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .prologue
    const/4 v4, 0x0

    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1886
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1887
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1888
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1889
    return v4

    .line 1891
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getNewCmdIdLocked()I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 1894
    sput-object p1, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;

    .line 1895
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sScanCmdId:I

    invoke-static {v0, v3, p0}, Lcom/android/server/wifi/WifiNative;->trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1896
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v1

    .line 1897
    return v4

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1900
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_2
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    .line 1902
    return v4

    .line 1886
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native trackSignificantWifiChangeNative(IILandroid/net/wifi/WifiScanner$WifiChangeSettings;)Z
.end method

.method private trimByteArray([B)[B
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 2949
    const/4 v0, 0x0

    .line 2950
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2951
    aget-byte v1, p1, v0

    if-nez v1, :cond_2

    .line 2955
    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimByteArray, i: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    return-object v1

    .line 2950
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static native unloadDriver()Z
.end method

.method static declared-synchronized untrackSignificantWifiChange()V
    .locals 4

    .prologue
    const-class v1, Lcom/android/server/wifi/WifiNative;

    monitor-enter v1

    .line 1909
    :try_start_0
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1910
    :try_start_1
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    sget v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    if-eqz v0, :cond_0

    .line 1912
    sget v0, Lcom/android/server/wifi/WifiNative;->sWlan0Index:I

    sget v3, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNative;->untrackSignificantWifiChangeNative(II)Z

    .line 1913
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeCmdId:I

    .line 1914
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNative;->sSignificantWifiChangeHandler:Lcom/android/server/wifi/WifiNative$SignificantWifiChangeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1908
    return-void

    .line 1909
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native untrackSignificantWifiChangeNative(II)Z
.end method

.method private native waitForEventInByteArrayNative(Ljava/lang/String;)[B
.end method

.method private native waitForEventNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native waitForHalEventNative()V
.end method


# virtual methods
.method public addNetwork()I
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNetwork, mInterfaceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v1, "p2p0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ADD_NETWORK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommandNative(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 358
    :cond_0
    const-string/jumbo v0, "ADD_NETWORK"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 751
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BLACKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blockClientCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER STA-BLOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bssFlush()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v1, "p2p0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " BSS_FLUSH 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 831
    return-void

    .line 834
    :cond_0
    const-string/jumbo v0, "BSS_FLUSH 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 827
    return-void
.end method

.method public cancelWps()Z
    .locals 1

    .prologue
    .line 914
    const-string/jumbo v0, "WPS_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearBlacklist()Z
    .locals 1

    .prologue
    .line 756
    const-string/jumbo v0, "BLACKLIST clear"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearGBKMapping()V
    .locals 2

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v1, "clearGBKMapping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mIsGBKMapping:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2942
    return-void
.end method

.method public closeSupplicantConnection()V
    .locals 3

    .prologue
    .line 198
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "closeSupplicantConnection"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->closeSupplicantConnectionNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 197
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public connectToSupplicant()Z
    .locals 3

    .prologue
    .line 191
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfacePrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "connectToSupplicant"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->localLog(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNative;->connectToSupplicantNative()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 439
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "disableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DISABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mDisconnectCalled:Z

    .line 463
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DISCONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 464
    :cond_0
    const-string/jumbo v0, "DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doCtiaTestOff(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2673
    const-string/jumbo v0, "scan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2674
    const-string/jumbo v1, "roam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2673
    or-int/2addr v0, v1

    .line 2675
    const-string/jumbo v1, "cam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2673
    or-int/2addr v0, v1

    .line 2676
    const-string/jumbo v1, "bcn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2673
    or-int/2addr v0, v1

    .line 2677
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2673
    or-int/2addr v0, v1

    .line 2678
    const-string/jumbo v1, "fifo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2673
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER smt-test-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2680
    :cond_0
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2681
    const-string/jumbo v0, "DRIVER smt-test-off"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2683
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doCtiaTestOff wrong cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const/4 v0, 0x0

    return v0
.end method

.method public doCtiaTestOn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2657
    const-string/jumbo v0, "scan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2658
    const-string/jumbo v1, "roam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    or-int/2addr v0, v1

    .line 2659
    const-string/jumbo v1, "cam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    or-int/2addr v0, v1

    .line 2660
    const-string/jumbo v1, "bcn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    or-int/2addr v0, v1

    .line 2661
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    or-int/2addr v0, v1

    .line 2662
    const-string/jumbo v1, "fifo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2657
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER smt-test-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2664
    :cond_0
    const-string/jumbo v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    const-string/jumbo v0, "DRIVER smt-test-on"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doCtiaTestOn wrong cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    const/4 v0, 0x0

    return v0
.end method

.method public doCtiaTestRate(I)Z
    .locals 2
    .param p1, "rate"    # I

    .prologue
    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER smt-rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public doCustomCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableAutoConnect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 790
    const-string/jumbo v0, "STA_AUTOCONNECT 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 788
    :goto_0
    return-void

    .line 792
    :cond_0
    const-string/jumbo v0, "STA_AUTOCONNECT 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public enableBackgroundScan(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 780
    if-eqz p1, :cond_0

    .line 781
    const-string/jumbo v1, "SET pno 1"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 785
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 783
    .end local v0    # "ret":Z
    :cond_0
    const-string/jumbo v1, "SET pno 0"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 429
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enableNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    const-string/jumbo v1, " disableOthers="

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 431
    :cond_0
    if-eqz p2, :cond_1

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ENABLE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableSaveConfig()V
    .locals 1

    .prologue
    .line 743
    const-string/jumbo v0, "SET update_config 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 742
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 165
    if-lez p1, :cond_0

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    .line 164
    :goto_0
    return-void

    .line 168
    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    goto :goto_0
.end method

.method public fetchAnqp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "subtypes"    # Ljava/lang/String;

    .prologue
    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ANQP_GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBatchedScanResults()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    const-string/jumbo v1, "DRIVER WLS_BATCHING GET"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 621
    .local v0, "byteArray":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisconnectFlag()Z
    .locals 1

    .prologue
    .line 2729
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mDisconnectCalled:Z

    return v0
.end method

.method public getFreqCapability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const-string/jumbo v0, "GET_CAPABILITY freq"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCapability(Ljava/lang/String;)I
    .locals 9
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, "gc":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v1

    .line 1215
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiNative;->p2pPeer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1216
    .local v3, "peerInfo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    .line 1218
    :cond_1
    const-string/jumbo v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1219
    .local v5, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    array-length v7, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v4, v5, v6

    .line 1220
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v8, "group_capab="

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1221
    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1222
    .local v2, "nameValue":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 1230
    .end local v2    # "nameValue":[Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_2
    return v1

    .line 1224
    .restart local v2    # "nameValue":[Ljava/lang/String;
    .restart local v4    # "token":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1

    .line 1219
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "nameValue":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 485
    const-string/jumbo v2, "DRIVER MACADDR"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2

    .line 490
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 401
    :cond_0
    const-string/jumbo v2, "ssid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "ssidString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GET_NETWORK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 404
    .local v0, "ssidByteArray":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "ssidString":Ljava/lang/String;
    return-object v1

    .line 409
    .end local v0    # "ssidByteArray":[B
    .end local v1    # "ssidString":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GET_NETWORK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNfcConfigToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2808
    const-string/jumbo v0, "WPS_NFC_CONFIGURATION_TOKEN NDEF"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1358
    const-string/jumbo v0, "NFC_GET_HANDOVER_REQ NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverSelect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1362
    const-string/jumbo v0, "NFC_GET_HANDOVER_SEL NDEF P2P-CR"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcHandoverToken(Z)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 2830
    if-eqz p1, :cond_0

    .line 2831
    const-string/jumbo v0, "NFC_GET_HANDOVER_REQ NDEF WPS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2833
    :cond_0
    const-string/jumbo v0, "NFC_GET_HANDOVER_SEL NDEF WPS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNfcWpsConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_NFC_CONFIG_TOKEN WPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticHandoverSelectToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2857
    const-string/jumbo v0, "P2P_NFC_SELECT_TOKEN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestEnv(I)Ljava/lang/String;
    .locals 3
    .param p1, "channel"    # I

    .prologue
    const/4 v2, -0x1

    .line 2898
    if-ge p1, v2, :cond_0

    .line 2899
    const/4 v0, 0x0

    return-object v0

    .line 2901
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER CH_ENV_GET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v2, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initiatorReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "selectMessage"    # Ljava/lang/String;

    .prologue
    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_REPORT_HANDOVER INIT P2P 00 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public listNetworks()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v2, "p2p0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string/jumbo v1, "LIST_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 333
    :cond_0
    const-string/jumbo v1, "LIST_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 334
    .local v0, "byteArray":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public listNetworks(I)Ljava/lang/String;
    .locals 3
    .param p1, "last_id"    # I

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v2, "p2p0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LIST_NETWORKS LAST_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LIST_NETWORKS LAST_ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 346
    .local v0, "byteArray":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nfcRxHandoverToken(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "request"    # Z

    .prologue
    .line 2838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2839
    const/4 v0, 0x0

    return v0

    .line 2841
    :cond_0
    if-eqz p2, :cond_1

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_RX_HANDOVER_REQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2844
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_RX_HANDOVER_SEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pAutoChannel(I)I
    .locals 2
    .param p1, "enable"    # I

    .prologue
    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable_channel_selection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doIntCommand(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p2pBeamPlus(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2580
    if-nez p1, :cond_1

    .line 2581
    const-string/jumbo v0, "DRIVER BEAMPLUS_STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2582
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2583
    const-string/jumbo v0, "DRIVER BEAMPLUS_START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public p2pBeamPlusGO(I)V
    .locals 1
    .param p1, "reserve"    # I

    .prologue
    .line 2572
    if-nez p1, :cond_1

    .line 2573
    const-string/jumbo v0, "DRIVER BEAMPLUS_GO_RESERVE_END"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 2571
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2575
    const-string/jumbo v0, "DRIVER BEAMPLUS_GO_RESERVE_START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public p2pCancelConnect()Z
    .locals 1

    .prologue
    .line 1114
    const-string/jumbo v0, "P2P_CANCEL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pConnect(Landroid/net/wifi/p2p/WifiP2pConfig;Z)Ljava/lang/String;
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;
    .param p2, "joinExistingGroup"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1056
    if-nez p1, :cond_0

    return-object v7

    .line 1057
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 1059
    .local v6, "wps":Landroid/net/wifi/WpsInfo;
    iget-object v7, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    iget v7, v6, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v7, :pswitch_data_0

    .line 1084
    :goto_0
    iget v7, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    .line 1085
    const-string/jumbo v7, "persistent"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    :cond_1
    if-eqz p2, :cond_4

    .line 1089
    const-string/jumbo v7, "join"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pConfig;->getPreferOperFreq()I

    move-result v3

    .line 1102
    .local v3, "preferOperFreq":I
    const/4 v7, -0x1

    if-eq v7, v3, :cond_2

    .line 1103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "freq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_2
    const-string/jumbo v1, "P2P_CONNECT "

    .line 1108
    .local v1, "command":Ljava/lang/String;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1063
    .end local v1    # "command":Ljava/lang/String;
    .end local v3    # "preferOperFreq":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s$iterator":Ljava/util/Iterator;
    :pswitch_0
    const-string/jumbo v7, "pbc"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1066
    :pswitch_1
    iget-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1067
    const-string/jumbo v7, "pin"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    :goto_3
    const-string/jumbo v7, "display"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    :cond_3
    iget-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1074
    :pswitch_2
    iget-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    const-string/jumbo v7, "keypad"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1078
    :pswitch_3
    iget-object v7, v6, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    const-string/jumbo v7, "label"

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1093
    :cond_4
    iget v2, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 1094
    .local v2, "groupOwnerIntent":I
    if-ltz v2, :cond_5

    const/16 v7, 0xf

    if-le v2, v7, :cond_6

    .line 1095
    :cond_5
    const/4 v2, 0x6

    .line 1097
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "go_intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1110
    .end local v2    # "groupOwnerIntent":I
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v3    # "preferOperFreq":I
    .restart local v5    # "s$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public p2pExtListen(ZII)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "period"    # I
    .param p3, "interval"    # I

    .prologue
    .line 1021
    if-eqz p1, :cond_0

    if-ge p3, p2, :cond_0

    .line 1022
    const/4 v0, 0x0

    return v0

    .line 1024
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_EXT_LISTEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1025
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1025
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public p2pFind()Z
    .locals 1

    .prologue
    .line 995
    const-string/jumbo v0, "P2P_FIND type=progressive"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFind(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 999
    if-gtz p1, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pFind()Z

    move-result v0

    return v0

    .line 1002
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_FIND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " type=progressive"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pFlush()Z
    .locals 1

    .prologue
    .line 1050
    const-string/jumbo v0, "P2P_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGetDeviceAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1184
    const-string/jumbo v5, "WifiNative-HAL"

    const-string/jumbo v6, "p2pGetDeviceAddress"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v2, 0x0

    .line 1191
    .local v2, "status":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1192
    :try_start_0
    const-string/jumbo v5, "STATUS"

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "status":Ljava/lang/String;
    monitor-exit v6

    .line 1195
    const-string/jumbo v1, ""

    .line 1196
    .local v1, "result":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1197
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1198
    .local v4, "tokens":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 1199
    .local v3, "token":Ljava/lang/String;
    const-string/jumbo v7, "p2p_device_address="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1200
    const-string/jumbo v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, "nameValue":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1208
    .end local v0    # "nameValue":[Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokens":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "WifiNative-HAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "p2pGetDeviceAddress returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-object v1

    .line 1191
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1203
    .restart local v0    # "nameValue":[Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .local v2, "status":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    aget-object v1, v0, v7

    .line 1198
    .end local v0    # "nameValue":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public p2pGetDeviceCapa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2555
    const-string/jumbo v0, "DRIVER p2p_get_cap p2p_dev_capa"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1179
    const-string/jumbo v0, "oper_ssid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGetVendorElems(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2539
    const-string/jumbo v0, "vendor_elems"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiNative;->p2pGetParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGoGetSta(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2607
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v1, "p2p0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "STA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "STA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pGroupAdd(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_GROUP_ADD persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupAdd(Z)Z
    .locals 1
    .param p1, "persistent"    # Z

    .prologue
    .line 1136
    if-eqz p1, :cond_0

    .line 1137
    const-string/jumbo v0, "P2P_GROUP_ADD persistent"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1139
    :cond_0
    const-string/jumbo v0, "P2P_GROUP_ADD"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pGroupRemove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 1147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1148
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1149
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_GROUP_REMOVE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public p2pInvite(Landroid/net/wifi/p2p/WifiP2pGroup;Ljava/lang/String;)Z
    .locals 2
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1161
    :cond_0
    if-nez p1, :cond_1

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1164
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1165
    const-string/jumbo v1, " peer="

    .line 1164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1165
    const-string/jumbo v1, " go_dev_addr="

    .line 1164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1165
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pLinkStatics(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/lang/String;

    .prologue
    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER GET_STA_STATISTICS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pListen()Z
    .locals 1

    .prologue
    .line 1010
    const-string/jumbo v0, "P2P_LISTEN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pListen(I)Z
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 1014
    if-gtz p1, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->p2pListen()Z

    move-result v0

    return v0

    .line 1017
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_LISTEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pNfcConnectWithOob(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "joinExistingGroup"    # Z

    .prologue
    .line 2812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    const/4 v0, 0x0

    return v0

    .line 2815
    :cond_0
    if-eqz p2, :cond_1

    .line 2816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " oob join"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2818
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " oob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pNfcInvite(Ljava/lang/String;)Z
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 2823
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2824
    const/4 v0, 0x0

    return v0

    .line 2826
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE group=p2p0 peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pPeer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PEER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pProvisionDiscovery(Landroid/net/wifi/p2p/WifiP2pConfig;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .prologue
    const/4 v1, 0x0

    .line 1118
    if-nez p1, :cond_0

    return v1

    .line 1120
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v0, v0, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v0, :pswitch_data_0

    .line 1132
    return v1

    .line 1122
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pbc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1125
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " keypad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1128
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_PROV_DISC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p2pReinvoke(ILjava/lang/String;)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v1

    .line 1173
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->bssFlush()V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_INVITE persistent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pReject(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_REJECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pRemoveClient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " P2P_REMOVE_CLIENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscCancelReq(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_SERV_DISC_CANCEL_REQ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pServDiscReq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 1318
    const-string/jumbo v0, "P2P_SERV_DISC_REQ"

    .line 1319
    .local v0, "command":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1322
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public p2pServiceAdd(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 5
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    .line 1276
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1277
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_ADD"

    .line 1278
    .local v0, "command":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1280
    const/4 v3, 0x0

    return v3

    .line 1283
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public p2pServiceDel(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)Z
    .locals 8
    .param p1, "servInfo"    # Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1291
    invoke-virtual {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;->getSupplicantQueryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1292
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v0, "P2P_SERVICE_DEL "

    .line 1294
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "data":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1296
    return v6

    .line 1298
    :cond_1
    const-string/jumbo v4, "upnp"

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1307
    return v6

    .line 1300
    :cond_2
    const-string/jumbo v4, "bonjour"

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_3
    return v6

    .line 1310
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    return v7
.end method

.method public p2pServiceFlush()Z
    .locals 1

    .prologue
    .line 1314
    const-string/jumbo v0, "P2P_SERVICE_FLUSH"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetAllocateIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "clientIp"    # Ljava/lang/String;
    .param p2, "subMask"    # Ljava/lang/String;
    .param p3, "goIp"    # Ljava/lang/String;

    .prologue
    .line 2849
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2850
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2852
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "p2p_set_allocate_ip client_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sub_mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " go_ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetBssid(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v1, "p2p0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2590
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " SET_NETWORK "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2591
    const-string/jumbo v2, " bssid "

    .line 2590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2589
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2594
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bssid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p2pSetCCMode(I)Ljava/lang/String;
    .locals 2
    .param p1, "ccMode"    # I

    .prologue
    .line 2551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER p2p_use_mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pSetChannel(II)Z
    .locals 5
    .param p1, "lc"    # I
    .param p2, "oc"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1029
    if-lt p1, v4, :cond_0

    const/16 v1, 0xb

    if-gt p1, v1, :cond_0

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "P2P_SET listen_channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    return v3

    .line 1033
    :cond_0
    if-eqz p1, :cond_1

    .line 1034
    return v3

    .line 1037
    :cond_1
    if-lt p2, v4, :cond_3

    const/16 v1, 0xa5

    if-gt p2, v1, :cond_3

    .line 1038
    const/16 v1, 0xe

    if-gt p2, v1, :cond_2

    const/16 v1, 0x967

    :goto_0
    mul-int/lit8 v2, p2, 0x5

    add-int v0, v1, v2

    .line 1039
    .local v0, "freq":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "P2P_SET disallow_freq 1000-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1040
    add-int/lit8 v2, v0, -0x5

    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1040
    const-string/jumbo v2, ","

    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1040
    add-int/lit8 v2, v0, 0x5

    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1040
    const-string/jumbo v2, "-6000"

    .line 1039
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1038
    .end local v0    # "freq":I
    :cond_2
    const/16 v1, 0x1388

    goto :goto_0

    .line 1041
    :cond_3
    if-nez p2, :cond_4

    .line 1043
    const-string/jumbo v1, "P2P_SET disallow_freq \"\""

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 1046
    :cond_4
    return v3
.end method

.method public p2pSetDeviceCapa(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "strDecimal"    # Ljava/lang/String;

    .prologue
    .line 2559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER p2p_set_cap p2p_dev_capa "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p2pStopFind()Z
    .locals 1

    .prologue
    .line 1006
    const-string/jumbo v0, "P2P_STOP_FIND"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ping()Z
    .locals 2

    .prologue
    .line 293
    const-string/jumbo v1, "PING"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "pong":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "PONG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pktcntPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    const-string/jumbo v0, "PKTCNT_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "REASSOCIATE "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 457
    :cond_0
    const-string/jumbo v0, "REASSOCIATE"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNative;->mDisconnectCalled:Z

    .line 451
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RECONNECT "

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 452
    :cond_0
    const-string/jumbo v0, "RECONNECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "REMOVE_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public responderReportNfcHandover(Ljava/lang/String;)Z
    .locals 2
    .param p1, "requestMessage"    # Ljava/lang/String;

    .prologue
    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NFC_REPORT_HANDOVER RESP P2P "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " 00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveConfig()Z
    .locals 1

    .prologue
    .line 747
    const-string/jumbo v0, "SAVE_CONFIG"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scan(ILjava/lang/String;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "freqList"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 307
    if-nez p2, :cond_0

    const-string/jumbo v0, "SCAN TYPE=ONLY"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCAN TYPE=ONLY freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 309
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 310
    if-nez p2, :cond_2

    const-string/jumbo v0, "SCAN"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 311
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCAN freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 313
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid scan type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BSS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanResults(I)Ljava/lang/String;
    .locals 4
    .param p1, "sid"    # I

    .prologue
    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, "scanResult":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BSS RANGE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "- MASK=0x29d87"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 535
    .local v0, "byteArray":[B
    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseScanResultInByteArray([B)Ljava/lang/String;

    move-result-object v1

    .line 538
    .end local v1    # "scanResult":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public selectNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 444
    sget-boolean v0, Lcom/android/server/wifi/WifiNative;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectNetwork nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->logDbg(Ljava/lang/String;)V

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlwaysScanState(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER SETALWAYSSCANSTATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setApProbeRequestEnabledCommand(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cfg_ap wps_test "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBand(I)Z
    .locals 3
    .param p1, "band"    # I

    .prologue
    .line 705
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 706
    const-string/jumbo v0, "5G"

    .line 711
    .local v0, "bandstr":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET SETBAND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 707
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 708
    const-string/jumbo v0, "2G"

    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0

    .line 710
    .end local v0    # "bandstr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "AUTO"

    .restart local v0    # "bandstr":Ljava/lang/String;
    goto :goto_0
.end method

.method public setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;)Ljava/lang/String;
    .locals 7
    .param p1, "settings"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    const v6, 0x7fffffff

    .line 594
    if-nez p1, :cond_0

    .line 595
    const-string/jumbo v4, "DRIVER WLS_BATCHING STOP"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 597
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DRIVER WLS_BATCHING SET SCANFREQ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "cmd":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MSCAN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    if-eq v4, v6, :cond_1

    .line 600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " BESTN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 602
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 611
    :cond_2
    :goto_0
    iget v4, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    if-eq v4, v6, :cond_3

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " RTT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 603
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CHANNEL=<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    const/4 v3, 0x0

    .line 605
    .local v3, "i":I
    iget-object v4, p1, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    .local v0, "channel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v3, :cond_5

    const-string/jumbo v4, ","

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 606
    :cond_5
    const-string/jumbo v4, ""

    goto :goto_2

    .line 609
    .end local v0    # "channel":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setBluetoothCoexistenceMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER BTCOEXMODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBluetoothCoexistenceScanMode(Z)Z
    .locals 1
    .param p1, "setCoexScanMode"    # Z

    .prologue
    .line 735
    if-eqz p1, :cond_0

    .line 736
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 738
    :cond_0
    const-string/jumbo v0, "DRIVER BTCOEXSCAN-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBssExpireAge(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BSS_EXPIRE_AGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBssExpireCount(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 2725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BSS_EXPIRE_COUNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConcurrencyPriority(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "P2P_SET conc_pref "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConfigMethods(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cfg"    # Ljava/lang/String;

    .prologue
    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET config_methods "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCountryCode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 772
    if-eqz p1, :cond_0

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER COUNTRY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 775
    :cond_0
    const-string/jumbo v0, "DRIVER COUNTRY"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET device_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeviceType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET device_type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setExternalSim(Z)Z
    .locals 5
    .param p1, "external"    # Z

    .prologue
    .line 887
    sget-object v2, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 888
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "1"

    .line 889
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "WifiNative-HAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting external_sim to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET external_sim "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 888
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 887
    .end local v0    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setHotspotOptimization(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 2885
    if-eqz p1, :cond_0

    .line 2886
    const-string/jumbo v0, "DRIVER set_chip greenAp 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2888
    :cond_0
    const-string/jumbo v0, "DRIVER set_chip greenAp 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setManufacturer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET manufacturer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMaxClientNumCommand(I)Z
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cfg_ap max_sta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER MIRACAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1334
    return-void
.end method

.method public setMiracastMode(II)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "freq"    # I

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER MIRACAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 1340
    return-void
.end method

.method public setModelName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET model_name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setModelNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET model_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    const-string/jumbo v2, "p2p0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "prefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "SET_NETWORK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 367
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "psk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    const-string/jumbo v1, "password"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 367
    if-eqz v1, :cond_4

    .line 369
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET_NETWORK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandWithoutLogging(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 371
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET_NETWORK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNetworkVariable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "bssid"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    .line 378
    :cond_1
    const-string/jumbo v2, "ssid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "isGBK":Ljava/lang/Boolean;
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiNative;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "ssid":Ljava/lang/String;
    invoke-direct {p0, p4, v1}, Lcom/android/server/wifi/WifiNative;->getIsGBKFromMapping(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 382
    .local v0, "isGBK":Ljava/lang/Boolean;
    if-nez v0, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    const-string/jumbo v3, "this networkId is not exist in the mapping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiNative;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 393
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiNative;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "netId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isGBK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v0    # "isGBK":Ljava/lang/Boolean;
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SET_NETWORK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 387
    .restart local v0    # "isGBK":Ljava/lang/Boolean;
    .restart local v1    # "ssid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiNative;->encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 390
    :cond_4
    invoke-direct {p0, p3}, Lcom/android/server/wifi/WifiNative;->encodeSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public setP2pGroupIdle(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 955
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " SET p2p_group_idle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setP2pPowerSave(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 969
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 970
    if-eqz p2, :cond_0

    .line 971
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_SET ps 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 973
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " P2P_SET ps 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setP2pPowerSaveMtk(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER p2p_set_power_save "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setP2pSsidPostfix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET p2p_ssid_postfix "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPersistentReconnect(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 918
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 919
    .local v0, "value":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SET persistent_reconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 918
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public setPoorlinkRssi(D)Z
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 2872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER POORLINK_RSSI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPoorlinkSpeed(D)Z
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER POORLINK_LINKSPEED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPowerSave(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 961
    if-eqz p1, :cond_0

    .line 962
    const-string/jumbo v0, "SET ps 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 960
    :goto_0
    return-void

    .line 964
    :cond_0
    const-string/jumbo v0, "SET ps 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setScanInterval(I)V
    .locals 2
    .param p1, "scanInterval"    # I

    .prologue
    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCAN_INTERVAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 796
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET serial_number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSupplicantLogLevel(Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LOG_LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setSuspendOptimizations(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNative;->mSuspendOptEnabled:Z

    .line 763
    const-string/jumbo v0, "native"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "do suspend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-eqz p1, :cond_0

    .line 765
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 1"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 767
    :cond_0
    const-string/jumbo v0, "DRIVER SETSUSPENDMODE 0"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdDeviceInfo(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WFD_SUBELEM_SET 0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWfdEnable(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SET wifi_display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setWfdExtCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 2568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WFD_SUBELEM_SET 7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWoWlanMagicModeCommand()Z
    .locals 1

    .prologue
    .line 2867
    const-string/jumbo v0, "DRIVER_WOWLAN_MAGIC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWoWlanNormalModeCommand()Z
    .locals 1

    .prologue
    .line 2863
    const-string/jumbo v0, "DRIVER_WOWLAN_NORMAL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public signalPoll()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    const-string/jumbo v0, "SIGNAL_POLL"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandWithoutLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public simAuthResponse(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .prologue
    .line 896
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CTRL-RSP-SIM-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public simIdentityResponse(ILjava/lang/String;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 902
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CTRL-RSP-IDENTITY-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 902
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startApWpsCheckPinCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_CHECK_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startApWpsPbcCommand()Z
    .locals 1

    .prologue
    .line 2693
    const-string/jumbo v0, "WPS_PBC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startApWpsWithPinFromDeviceCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startDriver()Z
    .locals 1

    .prologue
    .line 626
    const-string/jumbo v0, "DRIVER START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 659
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 659
    if-eqz v0, :cond_0

    .line 661
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 659
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 679
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string/jumbo v0, "DRIVER RXFILTER-REMOVE 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 679
    if-eqz v0, :cond_0

    .line 681
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTdls(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "macAddr"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 801
    if-eqz p2, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TDLS_DISCOVER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TDLS_SETUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    .line 800
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TDLS_TEARDOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public startWpsEr()Z
    .locals 1

    .prologue
    .line 2740
    const-string/jumbo v0, "WPS_ER_START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsErPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 2766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2767
    const/4 v0, 0x0

    return v0

    .line 2769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_PBC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsErPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2752
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2753
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2755
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsErPinAny(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2760
    const/4 v0, 0x0

    return v0

    .line 2762
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    const-string/jumbo v0, "WPS_PBC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 841
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PBC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 846
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 847
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PBC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 850
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PBC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    const-string/jumbo v0, "WPS_PIN any"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 872
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startWpsPinDisplay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 877
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 878
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 881
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 877
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 856
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 857
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_PIN any "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 861
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 862
    :cond_0
    sget-object v1, Lcom/android/server/wifi/WifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IFNAME="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " WPS_PIN any "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommandNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startWpsRegModify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "ssid"    # Ljava/lang/String;
    .param p4, "auth"    # Ljava/lang/String;
    .param p5, "encr"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/lang/String;

    .prologue
    .line 2744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2745
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2744
    if-nez v0, :cond_0

    .line 2745
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2744
    if-eqz v0, :cond_1

    .line 2746
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2748
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_REG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsRegistrar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 909
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 910
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_REG "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiNative;->status(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public status(Z)Ljava/lang/String;
    .locals 2
    .param p1, "noEvents"    # Z

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 475
    const-string/jumbo v1, "STATUS-NO_EVENTS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .line 479
    .local v0, "status":[B
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    .end local v0    # "status":[B
    :cond_0
    const-string/jumbo v1, "STATUS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->doByteArrayCommand(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "status":[B
    goto :goto_0
.end method

.method public stopDriver()Z
    .locals 1

    .prologue
    .line 630
    const-string/jumbo v0, "DRIVER STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stopFilteringMulticastV4Packets()Z
    .locals 1

    .prologue
    .line 669
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 2"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 669
    if-eqz v0, :cond_0

    .line 671
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopFilteringMulticastV6Packets()Z
    .locals 1

    .prologue
    .line 689
    const-string/jumbo v0, "DRIVER RXFILTER-STOP"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string/jumbo v0, "DRIVER RXFILTER-ADD 3"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 689
    if-eqz v0, :cond_0

    .line 691
    const-string/jumbo v0, "DRIVER RXFILTER-START"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    .line 689
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopSupplicant()Z
    .locals 1

    .prologue
    .line 324
    const-string/jumbo v0, "TERMINATE"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unblockClientCommand(Ljava/lang/String;)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DRIVER STA-UNBLOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public vendorIEAdd(ILjava/lang/String;)Z
    .locals 2
    .param p1, "frameId"    # I
    .param p2, "hex"    # Ljava/lang/String;

    .prologue
    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " VENDOR_ELEM_ADD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2637
    const-string/jumbo v1, " "

    .line 2636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public vendorIEGet(I)Ljava/lang/String;
    .locals 2
    .param p1, "frameId"    # I

    .prologue
    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " VENDOR_ELEM_GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vendorIERemove(ILjava/lang/String;)Z
    .locals 2
    .param p1, "frameId"    # I
    .param p2, "hex"    # Ljava/lang/String;

    .prologue
    .line 2647
    if-nez p2, :cond_0

    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " VENDOR_ELEM_REMOVE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2649
    const-string/jumbo v1, " *"

    .line 2648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2651
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IFNAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " VENDOR_ELEM_REMOVE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2652
    const-string/jumbo v1, " "

    .line 2651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public waitForEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative;->mInterfaceName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiNative;->waitForEventInByteArrayNative(Ljava/lang/String;)[B

    move-result-object v0

    .line 209
    .local v0, "event":[B
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->parseSsidInByteArray([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wifiLinkStatics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2603
    const-string/jumbo v0, "DRIVER GET_STA_LINK_DETECT"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wpsErLearn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_LEARN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wpsErNfcConfigToken(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ndef"    # Z
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 2789
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    const/4 v0, 0x0

    return-object v0

    .line 2792
    :cond_0
    if-eqz p1, :cond_1

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_NFC_CONFIG_TOKEN NDEF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_ER_NFC_CONFIG_TOKEN WPS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wpsNfc()Z
    .locals 1

    .prologue
    .line 2781
    const-string/jumbo v0, "WPS_NFC"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wpsNfcCfgKeyType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_NFC_CFG pubkey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wpsNfcTagRead(Ljava/lang/String;)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 2785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WPS_NFC_TAG_READ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public wpsNfcToken(Z)Ljava/lang/String;
    .locals 1
    .param p1, "ndef"    # Z

    .prologue
    .line 2773
    if-eqz p1, :cond_0

    .line 2774
    const-string/jumbo v0, "WPS_NFC_TOKEN NDEF"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2776
    :cond_0
    const-string/jumbo v0, "WPS_NFC_TOKEN WPS"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNative;->doStringCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
