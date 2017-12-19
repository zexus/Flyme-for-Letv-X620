.class public Lcom/mediatek/datashaping/DataShapingUtils;
.super Ljava/lang/Object;
.source "DataShapingUtils.java"


# static fields
.field public static final CLOSING_DELAY_BUFFER_FOR_MUSIC:J = 0x1388L

.field private static final LTE_AS_STATE_CONNECTED:Ljava/lang/String; = "connected"

.field private static final LTE_AS_STATE_IDLE:Ljava/lang/String; = "idle"

.field private static final LTE_AS_STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DataShapingUtils"

.field private static sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mClosingDelayStartTime:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private mDeviceIdleState:Z

.field private mIsClosingDelayForMusic:Z

.field private mIsMobileConnection:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 72
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 74
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 71
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/datashaping/DataShapingUtils;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/datashaping/DataShapingUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 68
    :cond_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canTurnFromLockedToOpen()Z
    .locals 11

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte()Z

    move-result v2

    .line 267
    .local v2, "isNetworkTypeLte":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isScreenOn()Z

    move-result v4

    .line 268
    .local v4, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished()Z

    move-result v5

    .line 269
    .local v5, "isSharedDefaultApnEstablished":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected()Z

    move-result v6

    .line 270
    .local v6, "isUsbConnected":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled()Z

    move-result v7

    .line 272
    .local v7, "isWifiTetheringEnabled":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isAppIdleParoleOn()Z

    move-result v0

    .line 273
    .local v0, "isAppIdleParoleOn":Z
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen] isNetworkTypeLte|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 274
    const-string/jumbo v10, " isScreenOn|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 275
    const-string/jumbo v10, " isSharedDefaultApnEstablised|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 276
    const-string/jumbo v10, " isUsbConnected|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 277
    const-string/jumbo v10, " isWifiTetheringEnabled|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 278
    const-string/jumbo v10, " isAppIdleParoleOn|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    const-string/jumbo v10, " isDeviceIdleEnable|"

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 279
    iget-boolean v10, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    .line 273
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, "isReady":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v1

    .line 287
    .local v1, "isBTStateOn":Z
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen] isBTStateOn|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 290
    .end local v1    # "isBTStateOn":Z
    :cond_1
    :goto_1
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v3

    .line 281
    .end local v3    # "isReady":Z
    :cond_2
    if-nez v5, :cond_0

    .line 282
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    .line 283
    iget-boolean v8, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    .restart local v3    # "isReady":Z
    goto :goto_0

    .end local v3    # "isReady":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isReady":Z
    goto :goto_0

    .line 288
    .restart local v1    # "isBTStateOn":Z
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getClosingDelayForMusic()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    return v0
.end method

.method public getClosingDelayStartTime()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    return-wide v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_0

    .line 258
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "UsageStats is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    return v0
.end method

.method public isBTStateOn()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 211
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_0

    .line 212
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 213
    const-string/jumbo v7, "bluetooth"

    .line 212
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    iput-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 215
    :cond_0
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_1

    .line 216
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "BluetoothManager is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v9

    .line 219
    :cond_1
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 220
    .local v4, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v4, :cond_2

    .line 221
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "BluetoothAdapter is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v9

    .line 224
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 226
    .local v5, "state":I
    const/16 v6, 0xa

    if-ne v6, v5, :cond_3

    .line 227
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "[isBTStateOn] BT is Off"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v9

    .line 231
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 233
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_4

    .line 234
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "[isBTStateOn] No bonded Devices"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return v9

    .line 239
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 240
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 241
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 242
    .local v3, "deviceType":I
    const-string/jumbo v6, "DataShapingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isBTStateOn] Connected Device = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    const-string/jumbo v8, ", DeviceType = "

    .line 242
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/16 v6, 0x404

    if-ne v6, v3, :cond_6

    .line 246
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "Connected Device is AUDIO_VIDEO_WEARABLE_HEADSET"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_6
    const/4 v6, 0x1

    return v6

    .line 252
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceType":I
    :cond_7
    return v9
.end method

.method public isBTStateOn(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    const-string/jumbo v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "[isBTStateOn] BT ACTION_ACL_CONNECTED !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v0

    return v0
.end method

.method public isLteAccessStratumConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 315
    const-string/jumbo v3, "phoneEx"

    .line 314
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 316
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 317
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[isLteAccessStratumConnected] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return v6

    .line 320
    :cond_0
    const/4 v1, 0x0

    .line 322
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getLteAccessStratumState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isLteAccessStratumConnected] state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string/jumbo v3, "connected"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    return v6

    .line 323
    .restart local v1    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isLteAccessStratumConnected] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 330
    invoke-virtual {p0, v6}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 332
    return v6

    .line 333
    :cond_2
    const-string/jumbo v3, "idle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 334
    const/4 v3, 0x0

    return v3

    .line 336
    :cond_3
    return v6
.end method

.method public isLteAccessStratumConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 295
    if-nez p1, :cond_0

    .line 297
    return v4

    .line 299
    :cond_0
    const-string/jumbo v1, "lteAccessStratumState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "lteAsState":Ljava/lang/String;
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isLteAccessStratumConnectedIntent] lteAsState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string/jumbo v1, "connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    return v4

    .line 303
    :cond_1
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p0, v4}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 306
    return v4

    .line 307
    :cond_2
    const-string/jumbo v1, "idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    const/4 v1, 0x0

    return v1

    .line 310
    :cond_3
    return v4
.end method

.method public isMusicActive()Z
    .locals 4

    .prologue
    .line 407
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 411
    .local v0, "isMusicActive":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isMusicActive] isMusicActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v0
.end method

.method public isNetworkTypeLte()Z
    .locals 3

    .prologue
    .line 166
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isNetworkTypeLte] mCurrentNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkTypeLte(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 175
    if-nez p1, :cond_0

    .line 176
    return v4

    .line 178
    :cond_0
    const-string/jumbo v1, "psNetworkType"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "networkType":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isNetworkTypeLteIntent] networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 182
    const/4 v1, 0x1

    return v1

    .line 184
    :cond_1
    return v4
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    .line 112
    :cond_0
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isScreenOn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isSharedDefaultApnEstablished()Z
    .locals 6

    .prologue
    .line 341
    const-string/jumbo v3, "phoneEx"

    .line 340
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 342
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 343
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[isSharedDefaultApnEstablished] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x1

    return v3

    .line 347
    :cond_0
    const/4 v0, 0x1

    .line 349
    .local v0, "isEstablished":Z
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isSharedDefaultApn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 353
    .end local v0    # "isEstablished":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSharedDefaultApnEstablished]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v0

    .line 350
    .restart local v0    # "isEstablished":Z
    :catch_0
    move-exception v1

    .line 351
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSharedDefaultApnEstablished] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSharedDefaultApnEstablished(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 358
    if-nez p1, :cond_0

    .line 360
    return v2

    .line 362
    :cond_0
    const-string/jumbo v1, "sharedDefaultApn"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 364
    .local v0, "isSharedDefaultApn":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isSharedDefaultApnEstablishedIntent]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0
.end method

.method public isUsbConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 147
    :cond_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isUsbConnected] isUsbConneted: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0

    :cond_2
    move v1, v2

    .line 148
    goto :goto_1
.end method

.method public isUsbConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    return v4

    .line 155
    :cond_0
    const-string/jumbo v1, "connected"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 156
    .local v0, "isUsbConnected":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isUsbConnectedIntent] isUsbConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string/jumbo v1, "connected"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    :cond_0
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isWifiTetheringEnabled] isWifiApEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 125
    if-nez p1, :cond_0

    .line 126
    return v4

    .line 128
    :cond_0
    const-string/jumbo v1, "wifi_state"

    .line 129
    const/16 v2, 0xb

    .line 128
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "state":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isWifiTetheringEnabledIntent] state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 132
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 133
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_2
    return v4
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iput v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 434
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 435
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 438
    const/4 v0, 0x1

    const v1, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    .line 439
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 431
    return-void
.end method

.method public setClosingDelayForMusic(Z)V
    .locals 0
    .param p1, "isClosingDelay"    # Z

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 415
    return-void
.end method

.method public setClosingDelayStartTime(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 424
    iput-wide p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 423
    return-void
.end method

.method public setCurrentNetworkType(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    const-string/jumbo v1, "psNetworkType"

    .line 103
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "networkType":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setCurrentNetworkTypeIntent] networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 98
    return-void
.end method

.method public setDeviceIdleState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    .line 443
    return-void
.end method

.method public setLteAccessStratumReport(Z)Z
    .locals 6
    .param p1, "isEnable"    # Z

    .prologue
    .line 388
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v3, "phoneEx"

    .line 389
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 391
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 392
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[setLteAccessStratumReport] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v3, 0x0

    return v3

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteAccessStratumReport(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 401
    .end local v0    # "isSuccess":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v0

    .line 398
    .restart local v0    # "isSuccess":Z
    :catch_0
    move-exception v1

    .line 399
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLteAsReport()V
    .locals 6

    .prologue
    .line 78
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 80
    const-string/jumbo v4, "connectivity"

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 83
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, -0x1

    .line 84
    .local v2, "networkType":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 87
    :cond_1
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 88
    .local v0, "isMobile":Z
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAsReport] current network isMobile|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    const-string/jumbo v5, " mIsMobileConnection|"

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    iget-boolean v5, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eq v0, v3, :cond_2

    .line 91
    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 92
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eqz v3, :cond_2

    .line 93
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 77
    :cond_2
    return-void
.end method

.method public setLteUplinkDataTransfer(ZI)Z
    .locals 6
    .param p1, "isOn"    # Z
    .param p2, "safeTimer"    # I

    .prologue
    .line 369
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] isOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string/jumbo v3, "phoneEx"

    .line 370
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 372
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 373
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[setLteUplinkDataTransfer] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v3, 0x0

    return v3

    .line 376
    :cond_0
    const/4 v0, 0x0

    .line 378
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteUplinkDataTransfer(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 382
    .end local v0    # "isSuccess":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return v0

    .line 379
    .restart local v0    # "isSuccess":Z
    :catch_0
    move-exception v1

    .line 380
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
