.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x22

.field static final TRANSACTION_acquireWifiLock:I = 0x1d

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x6

.field static final TRANSACTION_addToBlacklist:I = 0x2b

.field static final TRANSACTION_blockClient:I = 0x4d

.field static final TRANSACTION_buildWifiConfig:I = 0x27

.field static final TRANSACTION_clearBlacklist:I = 0x2c

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x42

.field static final TRANSACTION_disableNetwork:I = 0x9

.field static final TRANSACTION_disconnect:I = 0xf

.field static final TRANSACTION_doCtiaTestOff:I = 0x46

.field static final TRANSACTION_doCtiaTestOn:I = 0x45

.field static final TRANSACTION_doCtiaTestRate:I = 0x47

.field static final TRANSACTION_enableAggressiveHandover:I = 0x39

.field static final TRANSACTION_enableAutoJoinWhenAssociated:I = 0x3f

.field static final TRANSACTION_enableNetwork:I = 0x8

.field static final TRANSACTION_enableTdls:I = 0x2f

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x30

.field static final TRANSACTION_enableVerboseLogging:I = 0x37

.field static final TRANSACTION_factoryReset:I = 0x43

.field static final TRANSACTION_getAggressiveHandover:I = 0x3a

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_getBatchedScanResults:I = 0x33

.field static final TRANSACTION_getChannelList:I = 0xb

.field static final TRANSACTION_getClientIp:I = 0x4c

.field static final TRANSACTION_getConfigFile:I = 0x2e

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x12

.field static final TRANSACTION_getConnectionStatistics:I = 0x41

.field static final TRANSACTION_getCountryCode:I = 0x16

.field static final TRANSACTION_getCurrentNetwork:I = 0x44

.field static final TRANSACTION_getDhcpInfo:I = 0x1b

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x40

.field static final TRANSACTION_getFrequencyBand:I = 0x18

.field static final TRANSACTION_getHalBasedAutojoinOffload:I = 0x3e

.field static final TRANSACTION_getHotspotClients:I = 0x4b

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x5

.field static final TRANSACTION_getPPPOEInfo:I = 0x59

.field static final TRANSACTION_getPoorLinkThreshold:I = 0x54

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getScanResults:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getTestEnv:I = 0x5f

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x38

.field static final TRANSACTION_getWifiApConfiguration:I = 0x26

.field static final TRANSACTION_getWifiApEnabledState:I = 0x25

.field static final TRANSACTION_getWifiEnabledState:I = 0x14

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2d

.field static final TRANSACTION_getWifiStatus:I = 0x57

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x36

.field static final TRANSACTION_hasConnectableAp:I = 0x52

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x20

.field static final TRANSACTION_is5gBandSupported:I = 0x5c

.field static final TRANSACTION_isBatchedScanSupported:I = 0x34

.field static final TRANSACTION_isDualBandSupported:I = 0x19

.field static final TRANSACTION_isMulticastEnabled:I = 0x21

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1c

.field static final TRANSACTION_pingSupplicant:I = 0xa

.field static final TRANSACTION_pollBatchedScan:I = 0x35

.field static final TRANSACTION_reassociate:I = 0x11

.field static final TRANSACTION_reconnect:I = 0x10

.field static final TRANSACTION_registerWifiOffListener:I = 0x61

.field static final TRANSACTION_releaseMulticastLock:I = 0x23

.field static final TRANSACTION_releaseWifiLock:I = 0x1f

.field static final TRANSACTION_removeNetwork:I = 0x7

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x31

.field static final TRANSACTION_saveConfiguration:I = 0x1a

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3b

.field static final TRANSACTION_setApProbeRequestEnabled:I = 0x4f

.field static final TRANSACTION_setAutoJoinScanWhenConnected:I = 0x5e

.field static final TRANSACTION_setCountryCode:I = 0x15

.field static final TRANSACTION_setFrequencyBand:I = 0x17

.field static final TRANSACTION_setHalBasedAutojoinOffload:I = 0x3d

.field static final TRANSACTION_setHotspotOptimization:I = 0x5d

.field static final TRANSACTION_setPoorLinkProfilingOn:I = 0x56

.field static final TRANSACTION_setPoorLinkThreshold:I = 0x55

.field static final TRANSACTION_setPowerSavingMode:I = 0x58

.field static final TRANSACTION_setTxPower:I = 0x49

.field static final TRANSACTION_setTxPowerEnabled:I = 0x48

.field static final TRANSACTION_setWifiApConfiguration:I = 0x28

.field static final TRANSACTION_setWifiApEnabled:I = 0x24

.field static final TRANSACTION_setWifiDisabled:I = 0x60

.field static final TRANSACTION_setWifiEnabled:I = 0x13

.field static final TRANSACTION_setWifiEnabledForIPO:I = 0x50

.field static final TRANSACTION_setWoWlanMagicMode:I = 0x5b

.field static final TRANSACTION_setWoWlanNormalMode:I = 0x5a

.field static final TRANSACTION_startApWps:I = 0x4a

.field static final TRANSACTION_startLocationRestrictedScan:I = 0xd

.field static final TRANSACTION_startScan:I = 0xc

.field static final TRANSACTION_startWifi:I = 0x29

.field static final TRANSACTION_stopBatchedScan:I = 0x32

.field static final TRANSACTION_stopWifi:I = 0x2a

.field static final TRANSACTION_suspendNotification:I = 0x51

.field static final TRANSACTION_syncGetConnectingNetworkId:I = 0x53

.field static final TRANSACTION_unblockClient:I = 0x4e

.field static final TRANSACTION_unregisterWifiOffListener:I = 0x62

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 45
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 1074
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v44

    return v44

    .line 48
    :sswitch_0
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/16 v44, 0x1

    return v44

    .line 53
    :sswitch_1
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v28

    .line 55
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/16 v44, 0x1

    return v44

    .line 61
    .end local v28    # "_result":I
    :sswitch_2
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v32

    .line 63
    .local v32, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v32, :cond_0

    .line 65
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/16 v44, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_0
    const/16 v44, 0x1

    return v44

    .line 69
    :cond_0
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v32    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v42

    .line 77
    .local v42, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    const/16 v44, 0x1

    return v44

    .line 83
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_4
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v42

    .line 85
    .restart local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    const/16 v44, 0x1

    return v44

    .line 91
    .end local v42    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1

    .line 94
    sget-object v44, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 99
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 100
    .local v33, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v33, :cond_2

    .line 102
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/16 v44, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_2
    const/16 v44, 0x1

    return v44

    .line 97
    .end local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_1

    .line 106
    .end local v7    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 112
    .end local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_6
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_3

    .line 115
    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 120
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v28

    .line 121
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/16 v44, 0x1

    return v44

    .line 118
    .end local v28    # "_result":I
    :cond_3
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_3

    .line 127
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v43

    .line 131
    .local v43, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v43, :cond_4

    const/16 v44, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/16 v44, 0x1

    return v44

    .line 132
    :cond_4
    const/16 v44, 0x0

    goto :goto_4

    .line 137
    .end local v4    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_8
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_5

    const/16 v21, 0x1

    .line 142
    .local v21, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v43

    .line 143
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v43, :cond_6

    const/16 v44, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/16 v44, 0x1

    return v44

    .line 141
    .end local v21    # "_arg1":Z
    .end local v43    # "_result":Z
    :cond_5
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_5

    .line 144
    .restart local v43    # "_result":Z
    :cond_6
    const/16 v44, 0x0

    goto :goto_6

    .line 149
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Z
    .end local v43    # "_result":Z
    :sswitch_9
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v43

    .line 153
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v43, :cond_7

    const/16 v44, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/16 v44, 0x1

    return v44

    .line 154
    :cond_7
    const/16 v44, 0x0

    goto :goto_7

    .line 159
    .end local v4    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v43

    .line 161
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v43, :cond_8

    const/16 v44, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/16 v44, 0x1

    return v44

    .line 162
    :cond_8
    const/16 v44, 0x0

    goto :goto_8

    .line 167
    .end local v43    # "_result":Z
    :sswitch_b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v41

    .line 169
    .local v41, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 171
    const/16 v44, 0x1

    return v44

    .line 175
    .end local v41    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_9

    .line 178
    sget-object v44, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    .line 184
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_a

    .line 185
    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    .line 190
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/16 v44, 0x1

    return v44

    .line 181
    :cond_9
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_9

    .line 188
    .end local v8    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_a
    const/16 v19, 0x0

    .local v19, "_arg1":Landroid/os/WorkSource;
    goto :goto_a

    .line 196
    .end local v19    # "_arg1":Landroid/os/WorkSource;
    :sswitch_d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_b

    .line 199
    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/WorkSource;

    .line 204
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->startLocationRestrictedScan(Landroid/os/WorkSource;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/16 v44, 0x1

    return v44

    .line 202
    :cond_b
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/os/WorkSource;
    goto :goto_b

    .line 210
    .end local v12    # "_arg0":Landroid/os/WorkSource;
    :sswitch_e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v40

    .line 214
    .local v40, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 216
    const/16 v44, 0x1

    return v44

    .line 220
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/16 v44, 0x1

    return v44

    .line 227
    :sswitch_10
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/16 v44, 0x1

    return v44

    .line 234
    :sswitch_11
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/16 v44, 0x1

    return v44

    .line 241
    :sswitch_12
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v35

    .line 243
    .local v35, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v35, :cond_c

    .line 245
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/16 v44, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    :goto_c
    const/16 v44, 0x1

    return v44

    .line 249
    :cond_c
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 255
    .end local v35    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_13
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_d

    const/4 v14, 0x1

    .line 258
    .local v14, "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v43

    .line 259
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v43, :cond_e

    const/16 v44, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/16 v44, 0x1

    return v44

    .line 257
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_d
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_d

    .line 260
    .restart local v43    # "_result":Z
    :cond_e
    const/16 v44, 0x0

    goto :goto_e

    .line 265
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_14
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v28

    .line 267
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/16 v44, 0x1

    return v44

    .line 273
    .end local v28    # "_result":I
    :sswitch_15
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 277
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_f

    const/16 v21, 0x1

    .line 278
    .restart local v21    # "_arg1":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/16 v44, 0x1

    return v44

    .line 277
    .end local v21    # "_arg1":Z
    :cond_f
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_f

    .line 284
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_16
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v37

    .line 286
    .local v37, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/16 v44, 0x1

    return v44

    .line 292
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 296
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_10

    const/16 v21, 0x1

    .line 297
    .restart local v21    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/16 v44, 0x1

    return v44

    .line 296
    .end local v21    # "_arg1":Z
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_10

    .line 303
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Z
    :sswitch_18
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v28

    .line 305
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/16 v44, 0x1

    return v44

    .line 311
    .end local v28    # "_result":I
    :sswitch_19
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v43

    .line 313
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v43, :cond_11

    const/16 v44, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/16 v44, 0x1

    return v44

    .line 314
    :cond_11
    const/16 v44, 0x0

    goto :goto_11

    .line 319
    .end local v43    # "_result":Z
    :sswitch_1a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v43

    .line 321
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v43, :cond_12

    const/16 v44, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/16 v44, 0x1

    return v44

    .line 322
    :cond_12
    const/16 v44, 0x0

    goto :goto_12

    .line 327
    .end local v43    # "_result":Z
    :sswitch_1b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v29

    .line 329
    .local v29, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    if-eqz v29, :cond_13

    .line 331
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/16 v44, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    :goto_13
    const/16 v44, 0x1

    return v44

    .line 335
    :cond_13
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 341
    .end local v29    # "_result":Landroid/net/DhcpInfo;
    :sswitch_1c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v43

    .line 343
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v43, :cond_14

    const/16 v44, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/16 v44, 0x1

    return v44

    .line 344
    :cond_14
    const/16 v44, 0x0

    goto :goto_14

    .line 349
    .end local v43    # "_result":Z
    :sswitch_1d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 353
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 355
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 357
    .local v23, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_15

    .line 358
    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/WorkSource;

    .line 363
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    invoke-virtual {v0, v11, v15, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v43

    .line 364
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    if-eqz v43, :cond_16

    const/16 v44, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/16 v44, 0x1

    return v44

    .line 361
    .end local v43    # "_result":Z
    :cond_15
    const/16 v25, 0x0

    .local v25, "_arg3":Landroid/os/WorkSource;
    goto :goto_15

    .line 365
    .end local v25    # "_arg3":Landroid/os/WorkSource;
    .restart local v43    # "_result":Z
    :cond_16
    const/16 v44, 0x0

    goto :goto_16

    .line 370
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v15    # "_arg1":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_1e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 374
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_17

    .line 375
    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/WorkSource;

    .line 380
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/16 v44, 0x1

    return v44

    .line 378
    :cond_17
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Landroid/os/WorkSource;
    goto :goto_17

    .line 386
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 389
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v43

    .line 390
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v43, :cond_18

    const/16 v44, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/16 v44, 0x1

    return v44

    .line 391
    :cond_18
    const/16 v44, 0x0

    goto :goto_18

    .line 396
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v43    # "_result":Z
    :sswitch_20
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/16 v44, 0x1

    return v44

    .line 403
    :sswitch_21
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v43

    .line 405
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v43, :cond_19

    const/16 v44, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/16 v44, 0x1

    return v44

    .line 406
    :cond_19
    const/16 v44, 0x0

    goto :goto_19

    .line 411
    .end local v43    # "_result":Z
    :sswitch_22
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 415
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 416
    .local v20, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    const/16 v44, 0x1

    return v44

    .line 422
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/16 v44, 0x1

    return v44

    .line 429
    :sswitch_24
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1a

    .line 432
    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 438
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1b

    const/16 v21, 0x1

    .line 439
    .restart local v21    # "_arg1":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/16 v44, 0x1

    return v44

    .line 435
    .end local v21    # "_arg1":Z
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1a

    .line 438
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_1b

    .line 445
    .end local v21    # "_arg1":Z
    :sswitch_25
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v28

    .line 447
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    const/16 v44, 0x1

    return v44

    .line 453
    .end local v28    # "_result":I
    :sswitch_26
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 455
    .restart local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v33, :cond_1c

    .line 457
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/16 v44, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_1c
    const/16 v44, 0x1

    return v44

    .line 461
    :cond_1c
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    .line 467
    .end local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 471
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 473
    .restart local v20    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v24

    .line 474
    .local v24, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v33

    .line 475
    .restart local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    if-eqz v33, :cond_1d

    .line 477
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/16 v44, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 483
    :goto_1d
    const/16 v44, 0x1

    return v44

    .line 481
    :cond_1d
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 487
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg2":[B
    .end local v33    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_28
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1e

    .line 490
    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 495
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/16 v44, 0x1

    return v44

    .line 493
    :cond_1e
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1e

    .line 501
    .end local v9    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_29
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    .line 503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    const/16 v44, 0x1

    return v44

    .line 508
    :sswitch_2a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/16 v44, 0x1

    return v44

    .line 515
    :sswitch_2b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 518
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/16 v44, 0x1

    return v44

    .line 524
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/16 v44, 0x1

    return v44

    .line 531
    :sswitch_2d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v36

    .line 533
    .local v36, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    if-eqz v36, :cond_1f

    .line 535
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    const/16 v44, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    :goto_1f
    const/16 v44, 0x1

    return v44

    .line 539
    :cond_1f
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 545
    .end local v36    # "_result":Landroid/os/Messenger;
    :sswitch_2e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v37

    .line 547
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/16 v44, 0x1

    return v44

    .line 553
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 557
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_20

    const/16 v21, 0x1

    .line 558
    .restart local v21    # "_arg1":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/16 v44, 0x1

    return v44

    .line 557
    .end local v21    # "_arg1":Z
    :cond_20
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_20

    .line 564
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_30
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 568
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_21

    const/16 v21, 0x1

    .line 569
    .restart local v21    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/16 v44, 0x1

    return v44

    .line 568
    .end local v21    # "_arg1":Z
    :cond_21
    const/16 v21, 0x0

    .restart local v21    # "_arg1":Z
    goto :goto_21

    .line 575
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Z
    :sswitch_31
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_22

    .line 578
    sget-object v44, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/BatchedScanSettings;

    .line 584
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 586
    .local v18, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_23

    .line 587
    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/WorkSource;

    .line 592
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v43

    .line 593
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v43, :cond_24

    const/16 v44, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/16 v44, 0x1

    return v44

    .line 581
    .end local v18    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_result":Z
    :cond_22
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_22

    .line 590
    .end local v5    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    .restart local v18    # "_arg1":Landroid/os/IBinder;
    :cond_23
    const/16 v22, 0x0

    .local v22, "_arg2":Landroid/os/WorkSource;
    goto :goto_23

    .line 594
    .end local v22    # "_arg2":Landroid/os/WorkSource;
    .restart local v43    # "_result":Z
    :cond_24
    const/16 v44, 0x0

    goto :goto_24

    .line 599
    .end local v18    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_result":Z
    :sswitch_32
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_25

    .line 602
    sget-object v44, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/BatchedScanSettings;

    .line 607
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    const/16 v44, 0x1

    return v44

    .line 605
    :cond_25
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    goto :goto_25

    .line 613
    .end local v5    # "_arg0":Landroid/net/wifi/BatchedScanSettings;
    :sswitch_33
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 616
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v38

    .line 617
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 619
    const/16 v44, 0x1

    return v44

    .line 623
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/BatchedScanResult;>;"
    :sswitch_34
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v43

    .line 625
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    if-eqz v43, :cond_26

    const/16 v44, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    const/16 v44, 0x1

    return v44

    .line 626
    :cond_26
    const/16 v44, 0x0

    goto :goto_26

    .line 631
    .end local v43    # "_result":Z
    :sswitch_35
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/16 v44, 0x1

    return v44

    .line 638
    :sswitch_36
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 641
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v37

    .line 642
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    const/16 v44, 0x1

    return v44

    .line 648
    .end local v4    # "_arg0":I
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 651
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/16 v44, 0x1

    return v44

    .line 657
    .end local v4    # "_arg0":I
    :sswitch_38
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v28

    .line 659
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/16 v44, 0x1

    return v44

    .line 665
    .end local v28    # "_result":I
    :sswitch_39
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 668
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    const/16 v44, 0x1

    return v44

    .line 674
    .end local v4    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v28

    .line 676
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/16 v44, 0x1

    return v44

    .line 682
    .end local v28    # "_result":I
    :sswitch_3b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 685
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/16 v44, 0x1

    return v44

    .line 691
    .end local v4    # "_arg0":I
    :sswitch_3c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v28

    .line 693
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/16 v44, 0x1

    return v44

    .line 699
    .end local v28    # "_result":I
    :sswitch_3d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 702
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setHalBasedAutojoinOffload(I)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/16 v44, 0x1

    return v44

    .line 708
    .end local v4    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHalBasedAutojoinOffload()I

    move-result v28

    .line 710
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/16 v44, 0x1

    return v44

    .line 716
    .end local v28    # "_result":I
    :sswitch_3f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_27

    const/4 v14, 0x1

    .line 719
    .restart local v14    # "_arg0":Z
    :goto_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->enableAutoJoinWhenAssociated(Z)Z

    move-result v43

    .line 720
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    if-eqz v43, :cond_28

    const/16 v44, 0x1

    :goto_28
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 722
    const/16 v44, 0x1

    return v44

    .line 718
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_27
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_27

    .line 721
    .restart local v43    # "_result":Z
    :cond_28
    const/16 v44, 0x0

    goto :goto_28

    .line 726
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_40
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v43

    .line 728
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    if-eqz v43, :cond_29

    const/16 v44, 0x1

    :goto_29
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/16 v44, 0x1

    return v44

    .line 729
    :cond_29
    const/16 v44, 0x0

    goto :goto_29

    .line 734
    .end local v43    # "_result":Z
    :sswitch_41
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v34

    .line 736
    .local v34, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v34, :cond_2a

    .line 738
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    const/16 v44, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 744
    :goto_2a
    const/16 v44, 0x1

    return v44

    .line 742
    :cond_2a
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 748
    .end local v34    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_42
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 751
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    const/16 v44, 0x1

    return v44

    .line 757
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/16 v44, 0x1

    return v44

    .line 764
    :sswitch_44
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v30

    .line 766
    .local v30, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    if-eqz v30, :cond_2b

    .line 768
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/16 v44, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    :goto_2b
    const/16 v44, 0x1

    return v44

    .line 772
    :cond_2b
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 778
    .end local v30    # "_result":Landroid/net/Network;
    :sswitch_45
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 781
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOn(Ljava/lang/String;)Z

    move-result v43

    .line 782
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    if-eqz v43, :cond_2c

    const/16 v44, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    const/16 v44, 0x1

    return v44

    .line 783
    :cond_2c
    const/16 v44, 0x0

    goto :goto_2c

    .line 788
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_46
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 791
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestOff(Ljava/lang/String;)Z

    move-result v43

    .line 792
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    if-eqz v43, :cond_2d

    const/16 v44, 0x1

    :goto_2d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    const/16 v44, 0x1

    return v44

    .line 793
    :cond_2d
    const/16 v44, 0x0

    goto :goto_2d

    .line 798
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v43    # "_result":Z
    :sswitch_47
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 801
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->doCtiaTestRate(I)Z

    move-result v43

    .line 802
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    if-eqz v43, :cond_2e

    const/16 v44, 0x1

    :goto_2e
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    const/16 v44, 0x1

    return v44

    .line 803
    :cond_2e
    const/16 v44, 0x0

    goto :goto_2e

    .line 808
    .end local v4    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_48
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_2f

    const/4 v14, 0x1

    .line 811
    .restart local v14    # "_arg0":Z
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setTxPowerEnabled(Z)Z

    move-result v43

    .line 812
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    if-eqz v43, :cond_30

    const/16 v44, 0x1

    :goto_30
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    const/16 v44, 0x1

    return v44

    .line 810
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_2f
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_2f

    .line 813
    .restart local v43    # "_result":Z
    :cond_30
    const/16 v44, 0x0

    goto :goto_30

    .line 818
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_49
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 821
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setTxPower(I)Z

    move-result v43

    .line 822
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    if-eqz v43, :cond_31

    const/16 v44, 0x1

    :goto_31
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    const/16 v44, 0x1

    return v44

    .line 823
    :cond_31
    const/16 v44, 0x0

    goto :goto_31

    .line 828
    .end local v4    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_4a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_32

    .line 831
    sget-object v44, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WpsInfo;

    .line 836
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->startApWps(Landroid/net/wifi/WpsInfo;)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    const/16 v44, 0x1

    return v44

    .line 834
    :cond_32
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/net/wifi/WpsInfo;
    goto :goto_32

    .line 842
    .end local v10    # "_arg0":Landroid/net/wifi/WpsInfo;
    :sswitch_4b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotClients()Ljava/util/List;

    move-result-object v39

    .line 844
    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 846
    const/16 v44, 0x1

    return v44

    .line 850
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/HotspotClient;>;"
    :sswitch_4c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 853
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 854
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    const/16 v44, 0x1

    return v44

    .line 860
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_33

    .line 863
    sget-object v44, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/HotspotClient;

    .line 868
    :goto_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/wifi/IWifiManager$Stub;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v43

    .line 869
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v43, :cond_34

    const/16 v44, 0x1

    :goto_34
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    const/16 v44, 0x1

    return v44

    .line 866
    .end local v43    # "_result":Z
    :cond_33
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_33

    .line 870
    .end local v6    # "_arg0":Landroid/net/wifi/HotspotClient;
    .restart local v43    # "_result":Z
    :cond_34
    const/16 v44, 0x0

    goto :goto_34

    .line 875
    .end local v43    # "_result":Z
    :sswitch_4e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_35

    .line 878
    sget-object v44, Landroid/net/wifi/HotspotClient;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/HotspotClient;

    .line 883
    :goto_35
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/wifi/IWifiManager$Stub;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    move-result v43

    .line 884
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    if-eqz v43, :cond_36

    const/16 v44, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/16 v44, 0x1

    return v44

    .line 881
    .end local v43    # "_result":Z
    :cond_35
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/net/wifi/HotspotClient;
    goto :goto_35

    .line 885
    .end local v6    # "_arg0":Landroid/net/wifi/HotspotClient;
    .restart local v43    # "_result":Z
    :cond_36
    const/16 v44, 0x0

    goto :goto_36

    .line 890
    .end local v43    # "_result":Z
    :sswitch_4f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_37

    const/4 v14, 0x1

    .line 893
    .restart local v14    # "_arg0":Z
    :goto_37
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setApProbeRequestEnabled(Z)Z

    move-result v43

    .line 894
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    if-eqz v43, :cond_38

    const/16 v44, 0x1

    :goto_38
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    const/16 v44, 0x1

    return v44

    .line 892
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_37
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_37

    .line 895
    .restart local v43    # "_result":Z
    :cond_38
    const/16 v44, 0x0

    goto :goto_38

    .line 900
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_50
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_39

    const/4 v14, 0x1

    .line 903
    .restart local v14    # "_arg0":Z
    :goto_39
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabledForIPO(Z)Z

    move-result v43

    .line 904
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v43, :cond_3a

    const/16 v44, 0x1

    :goto_3a
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/16 v44, 0x1

    return v44

    .line 902
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_39
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_39

    .line 905
    .restart local v43    # "_result":Z
    :cond_3a
    const/16 v44, 0x0

    goto :goto_3a

    .line 910
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_51
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 913
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->suspendNotification(I)V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    const/16 v44, 0x1

    return v44

    .line 919
    .end local v4    # "_arg0":I
    :sswitch_52
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->hasConnectableAp()Z

    move-result v43

    .line 921
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v43, :cond_3b

    const/16 v44, 0x1

    :goto_3b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/16 v44, 0x1

    return v44

    .line 922
    :cond_3b
    const/16 v44, 0x0

    goto :goto_3b

    .line 927
    .end local v43    # "_result":Z
    :sswitch_53
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->syncGetConnectingNetworkId()I

    move-result v28

    .line 929
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/16 v44, 0x1

    return v44

    .line 935
    .end local v28    # "_result":I
    :sswitch_54
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_3c

    const/4 v14, 0x1

    .line 938
    .restart local v14    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getPoorLinkThreshold(Z)D

    move-result-wide v26

    .line 939
    .local v26, "_result":D
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 941
    const/16 v44, 0x1

    return v44

    .line 937
    .end local v14    # "_arg0":Z
    .end local v26    # "_result":D
    :cond_3c
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_3c

    .line 945
    .end local v14    # "_arg0":Z
    :sswitch_55
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 949
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 950
    .local v16, "_arg1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v13, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkThreshold(Ljava/lang/String;D)Z

    move-result v43

    .line 951
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v43, :cond_3d

    const/16 v44, 0x1

    :goto_3d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/16 v44, 0x1

    return v44

    .line 952
    :cond_3d
    const/16 v44, 0x0

    goto :goto_3d

    .line 957
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":D
    .end local v43    # "_result":Z
    :sswitch_56
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_3e

    const/4 v14, 0x1

    .line 960
    .restart local v14    # "_arg0":Z
    :goto_3e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setPoorLinkProfilingOn(Z)V

    .line 961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    const/16 v44, 0x1

    return v44

    .line 959
    .end local v14    # "_arg0":Z
    :cond_3e
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_3e

    .line 966
    .end local v14    # "_arg0":Z
    :sswitch_57
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiStatus()Ljava/lang/String;

    move-result-object v37

    .line 968
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 970
    const/16 v44, 0x1

    return v44

    .line 974
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_58
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_3f

    const/4 v14, 0x1

    .line 977
    .restart local v14    # "_arg0":Z
    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setPowerSavingMode(Z)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    const/16 v44, 0x1

    return v44

    .line 976
    .end local v14    # "_arg0":Z
    :cond_3f
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_3f

    .line 983
    .end local v14    # "_arg0":Z
    :sswitch_59
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v31

    .line 985
    .local v31, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    if-eqz v31, :cond_40

    .line 987
    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 988
    const/16 v44, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 993
    :goto_40
    const/16 v44, 0x1

    return v44

    .line 991
    :cond_40
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    .line 997
    .end local v31    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_5a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanNormalMode()Z

    move-result v43

    .line 999
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1000
    if-eqz v43, :cond_41

    const/16 v44, 0x1

    :goto_41
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    const/16 v44, 0x1

    return v44

    .line 1000
    :cond_41
    const/16 v44, 0x0

    goto :goto_41

    .line 1005
    .end local v43    # "_result":Z
    :sswitch_5b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWoWlanMagicMode()Z

    move-result v43

    .line 1007
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    if-eqz v43, :cond_42

    const/16 v44, 0x1

    :goto_42
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/16 v44, 0x1

    return v44

    .line 1008
    :cond_42
    const/16 v44, 0x0

    goto :goto_42

    .line 1013
    .end local v43    # "_result":Z
    :sswitch_5c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->is5gBandSupported()Z

    move-result v43

    .line 1015
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    if-eqz v43, :cond_43

    const/16 v44, 0x1

    :goto_43
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/16 v44, 0x1

    return v44

    .line 1016
    :cond_43
    const/16 v44, 0x0

    goto :goto_43

    .line 1021
    .end local v43    # "_result":Z
    :sswitch_5d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_44

    const/4 v14, 0x1

    .line 1024
    .restart local v14    # "_arg0":Z
    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotOptimization(Z)Z

    move-result v43

    .line 1025
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    if-eqz v43, :cond_45

    const/16 v44, 0x1

    :goto_45
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/16 v44, 0x1

    return v44

    .line 1023
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_44
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_44

    .line 1026
    .restart local v43    # "_result":Z
    :cond_45
    const/16 v44, 0x0

    goto :goto_45

    .line 1031
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_5e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_46

    const/4 v14, 0x1

    .line 1034
    .restart local v14    # "_arg0":Z
    :goto_46
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setAutoJoinScanWhenConnected(Z)Z

    move-result v43

    .line 1035
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    if-eqz v43, :cond_47

    const/16 v44, 0x1

    :goto_47
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/16 v44, 0x1

    return v44

    .line 1033
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :cond_46
    const/4 v14, 0x0

    .restart local v14    # "_arg0":Z
    goto :goto_46

    .line 1036
    .restart local v43    # "_result":Z
    :cond_47
    const/16 v44, 0x0

    goto :goto_47

    .line 1041
    .end local v14    # "_arg0":Z
    .end local v43    # "_result":Z
    :sswitch_5f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1044
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getTestEnv(I)Ljava/lang/String;

    move-result-object v37

    .line 1045
    .restart local v37    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    const/16 v44, 0x1

    return v44

    .line 1051
    .end local v4    # "_arg0":I
    .end local v37    # "_result":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1054
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisabled(I)Z

    move-result v43

    .line 1055
    .restart local v43    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    if-eqz v43, :cond_48

    const/16 v44, 0x1

    :goto_48
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/16 v44, 0x1

    return v44

    .line 1056
    :cond_48
    const/16 v44, 0x0

    goto :goto_48

    .line 1061
    .end local v4    # "_arg0":I
    .end local v43    # "_result":Z
    :sswitch_61
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->registerWifiOffListener()V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    const/16 v44, 0x1

    return v44

    .line 1068
    :sswitch_62
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->unregisterWifiOffListener()V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    const/16 v44, 0x1

    return v44

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
