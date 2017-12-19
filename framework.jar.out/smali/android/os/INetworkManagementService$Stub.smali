.class public abstract Landroid/os/INetworkManagementService$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementService.java"

# interfaces
.implements Landroid/os/INetworkManagementService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/INetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/INetworkManagementService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.INetworkManagementService"

.field static final TRANSACTION_addIdleTimer:I = 0x36

.field static final TRANSACTION_addInterfaceToLocalNetwork:I = 0x57

.field static final TRANSACTION_addInterfaceToNetwork:I = 0x4d

.field static final TRANSACTION_addLegacyRouteForNetId:I = 0x4f

.field static final TRANSACTION_addRoute:I = 0xe

.field static final TRANSACTION_addVpnUidRanges:I = 0x42

.field static final TRANSACTION_allowProtect:I = 0x55

.field static final TRANSACTION_attachPppd:I = 0x21

.field static final TRANSACTION_clearDefaultNetId:I = 0x51

.field static final TRANSACTION_clearFirewallChain:I = 0x67

.field static final TRANSACTION_clearInterfaceAddresses:I = 0x6

.field static final TRANSACTION_clearIotFirewall:I = 0x6d

.field static final TRANSACTION_clearPermission:I = 0x54

.field static final TRANSACTION_clearRouteIpv6:I = 0x5f

.field static final TRANSACTION_clearSipInfo:I = 0x6c

.field static final TRANSACTION_clearSourceRouteIpv6:I = 0x61

.field static final TRANSACTION_clearVolteIotFirewall:I = 0x72

.field static final TRANSACTION_createPhysicalNetwork:I = 0x4a

.field static final TRANSACTION_createVirtualNetwork:I = 0x4b

.field static final TRANSACTION_denyProtect:I = 0x56

.field static final TRANSACTION_detachPppd:I = 0x22

.field static final TRANSACTION_disableIpv6:I = 0xa

.field static final TRANSACTION_disableNat:I = 0x1f

.field static final TRANSACTION_disableNatIpv6:I = 0x5b

.field static final TRANSACTION_disablePPPOE:I = 0x59

.field static final TRANSACTION_enableIpv6:I = 0xb

.field static final TRANSACTION_enableNat:I = 0x1e

.field static final TRANSACTION_enableNatIpv6:I = 0x5a

.field static final TRANSACTION_enableUdpForwarding:I = 0x64

.field static final TRANSACTION_flushNetworkDnsCache:I = 0x39

.field static final TRANSACTION_getDnsForwarders:I = 0x1b

.field static final TRANSACTION_getFreeflowStatsDetail:I = 0x2b

.field static final TRANSACTION_getFreeflowStatsUidDetail:I = 0x2c

.field static final TRANSACTION_getInterfaceConfig:I = 0x4

.field static final TRANSACTION_getInterfaceRxThrottle:I = 0x69

.field static final TRANSACTION_getInterfaceTxThrottle:I = 0x6a

.field static final TRANSACTION_getIpForwardingEnabled:I = 0x12

.field static final TRANSACTION_getIpv6ForwardingEnabled:I = 0x5d

.field static final TRANSACTION_getNetworkStatsDetail:I = 0x29

.field static final TRANSACTION_getNetworkStatsSummaryDev:I = 0x27

.field static final TRANSACTION_getNetworkStatsSummaryXt:I = 0x28

.field static final TRANSACTION_getNetworkStatsTethering:I = 0x2d

.field static final TRANSACTION_getNetworkStatsUidDetail:I = 0x2a

.field static final TRANSACTION_getRoutes:I = 0xd

.field static final TRANSACTION_getSipInfo:I = 0x6b

.field static final TRANSACTION_getUsbClient:I = 0x65

.field static final TRANSACTION_isBandwidthControlEnabled:I = 0x35

.field static final TRANSACTION_isClatdStarted:I = 0x46

.field static final TRANSACTION_isFirewallEnabled:I = 0x3b

.field static final TRANSACTION_isNetworkActive:I = 0x49

.field static final TRANSACTION_isTetheringStarted:I = 0x16

.field static final TRANSACTION_listInterfaces:I = 0x3

.field static final TRANSACTION_listTetheredInterfaces:I = 0x19

.field static final TRANSACTION_listTtys:I = 0x20

.field static final TRANSACTION_registerNetworkActivityListener:I = 0x47

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeHetCommInterface:I = 0x70

.field static final TRANSACTION_removeIdleTimer:I = 0x37

.field static final TRANSACTION_removeInterfaceAlert:I = 0x31

.field static final TRANSACTION_removeInterfaceFromLocalNetwork:I = 0x58

.field static final TRANSACTION_removeInterfaceFromNetwork:I = 0x4e

.field static final TRANSACTION_removeInterfaceQuota:I = 0x2f

.field static final TRANSACTION_removeNetwork:I = 0x4c

.field static final TRANSACTION_removeRoute:I = 0xf

.field static final TRANSACTION_removeVpnUidRanges:I = 0x43

.field static final TRANSACTION_setAccessPoint:I = 0x26

.field static final TRANSACTION_setDefaultNetId:I = 0x50

.field static final TRANSACTION_setDhcpv6Enabled:I = 0x63

.field static final TRANSACTION_setDnsForwarders:I = 0x1a

.field static final TRANSACTION_setDnsServersForNetwork:I = 0x38

.field static final TRANSACTION_setFirewallChainEnabled:I = 0x41

.field static final TRANSACTION_setFirewallEgressDestRule:I = 0x3e

.field static final TRANSACTION_setFirewallEgressProtoRule:I = 0x62

.field static final TRANSACTION_setFirewallEgressSourceRule:I = 0x3d

.field static final TRANSACTION_setFirewallEnabled:I = 0x3a

.field static final TRANSACTION_setFirewallInterfaceRule:I = 0x3c

.field static final TRANSACTION_setFirewallUidChainRule:I = 0x66

.field static final TRANSACTION_setFirewallUidRule:I = 0x3f

.field static final TRANSACTION_setFirewallUidRules:I = 0x40

.field static final TRANSACTION_setGlobalAlert:I = 0x32

.field static final TRANSACTION_setHetCommInterface:I = 0x6f

.field static final TRANSACTION_setHetCommRatio:I = 0x71

.field static final TRANSACTION_setInterfaceAlert:I = 0x30

.field static final TRANSACTION_setInterfaceConfig:I = 0x5

.field static final TRANSACTION_setInterfaceDown:I = 0x7

.field static final TRANSACTION_setInterfaceIpv6NdOffload:I = 0xc

.field static final TRANSACTION_setInterfaceIpv6PrivacyExtensions:I = 0x9

.field static final TRANSACTION_setInterfaceQuota:I = 0x2e

.field static final TRANSACTION_setInterfaceThrottle:I = 0x68

.field static final TRANSACTION_setInterfaceUp:I = 0x8

.field static final TRANSACTION_setIotFirewall:I = 0x6e

.field static final TRANSACTION_setIpForwardingEnabled:I = 0x13

.field static final TRANSACTION_setIpv6ForwardingEnabled:I = 0x5c

.field static final TRANSACTION_setMtu:I = 0x10

.field static final TRANSACTION_setNetworkPermission:I = 0x52

.field static final TRANSACTION_setPermission:I = 0x53

.field static final TRANSACTION_setRouteIpv6:I = 0x5e

.field static final TRANSACTION_setSourceRouteIpv6:I = 0x60

.field static final TRANSACTION_setUidCleartextNetworkPolicy:I = 0x34

.field static final TRANSACTION_setUidNetworkRules:I = 0x33

.field static final TRANSACTION_setVolteIotFirewall:I = 0x73

.field static final TRANSACTION_shutdown:I = 0x11

.field static final TRANSACTION_startAccessPoint:I = 0x24

.field static final TRANSACTION_startClatd:I = 0x44

.field static final TRANSACTION_startInterfaceForwarding:I = 0x1c

.field static final TRANSACTION_startTethering:I = 0x14

.field static final TRANSACTION_stopAccessPoint:I = 0x25

.field static final TRANSACTION_stopClatd:I = 0x45

.field static final TRANSACTION_stopInterfaceForwarding:I = 0x1d

.field static final TRANSACTION_stopTethering:I = 0x15

.field static final TRANSACTION_tetherInterface:I = 0x17

.field static final TRANSACTION_unregisterNetworkActivityListener:I = 0x48

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_untetherInterface:I = 0x18

.field static final TRANSACTION_wifiFirmwareReload:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.os.INetworkManagementService"

    invoke-virtual {p0, p0, v0}, Landroid/os/INetworkManagementService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.os.INetworkManagementService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/INetworkManagementService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/os/INetworkManagementService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/INetworkManagementService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/INetworkManagementService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 52
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1286
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 45
    :sswitch_0
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v6, 0x1

    return v6

    .line 50
    :sswitch_1
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v24

    .line 53
    .local v24, "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v6, 0x1

    return v6

    .line 59
    .end local v24    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_2
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkManagementEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v24

    .line 62
    .restart local v24    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v6, 0x1

    return v6

    .line 68
    .end local v24    # "_arg0":Landroid/net/INetworkManagementEventObserver;
    :sswitch_3
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listInterfaces()[Ljava/lang/String;

    move-result-object v51

    .line 70
    .local v51, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 72
    const/4 v6, 0x1

    return v6

    .line 76
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v47

    .line 80
    .local v47, "_result":Landroid/net/InterfaceConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v47, :cond_0

    .line 82
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v6, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/InterfaceConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 88
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 86
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/net/InterfaceConfiguration;
    :sswitch_5
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 96
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    sget-object v6, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/InterfaceConfiguration;

    .line 102
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v6, 0x1

    return v6

    .line 100
    :cond_1
    const/16 v36, 0x0

    .local v36, "_arg1":Landroid/net/InterfaceConfiguration;
    goto :goto_1

    .line 108
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":Landroid/net/InterfaceConfiguration;
    :sswitch_6
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v6, 0x1

    return v6

    .line 117
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->setInterfaceDown(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v6, 0x1

    return v6

    .line 126
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 129
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->setInterfaceUp(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v6, 0x1

    return v6

    .line 135
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/16 v39, 0x1

    .line 140
    .local v39, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v6, 0x1

    return v6

    .line 139
    .end local v39    # "_arg1":Z
    :cond_2
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_2

    .line 146
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->disableIpv6(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v6, 0x1

    return v6

    .line 155
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 158
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->enableIpv6(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v6, 0x1

    return v6

    .line 164
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 168
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v39, 0x1

    .line 169
    .restart local v39    # "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setInterfaceIpv6NdOffload(Ljava/lang/String;Z)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v6, 0x1

    return v6

    .line 168
    .end local v39    # "_arg1":Z
    :cond_3
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_3

    .line 175
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Z
    :sswitch_d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 178
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->getRoutes(Ljava/lang/String;)[Landroid/net/RouteInfo;

    move-result-object v50

    .line 179
    .local v50, "_result":[Landroid/net/RouteInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 181
    const/4 v6, 0x1

    return v6

    .line 185
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v50    # "_result":[Landroid/net/RouteInfo;
    :sswitch_e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 189
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    sget-object v6, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/RouteInfo;

    .line 195
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->addRoute(ILandroid/net/RouteInfo;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v6, 0x1

    return v6

    .line 193
    :cond_4
    const/16 v37, 0x0

    .local v37, "_arg1":Landroid/net/RouteInfo;
    goto :goto_4

    .line 201
    .end local v12    # "_arg0":I
    .end local v37    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 205
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 206
    sget-object v6, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/RouteInfo;

    .line 211
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->removeRoute(ILandroid/net/RouteInfo;)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v6, 0x1

    return v6

    .line 209
    :cond_5
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_5

    .line 217
    .end local v12    # "_arg0":I
    .end local v37    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_10
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 222
    .local v31, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setMtu(Ljava/lang/String;I)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v6, 0x1

    return v6

    .line 228
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    :sswitch_11
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->shutdown()V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v6, 0x1

    return v6

    .line 235
    :sswitch_12
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpForwardingEnabled()Z

    move-result v49

    .line 237
    .local v49, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v49, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v6, 0x1

    return v6

    .line 238
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 243
    .end local v49    # "_result":Z
    :sswitch_13
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v28, 0x1

    .line 246
    .local v28, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpForwardingEnabled(Z)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v6, 0x1

    return v6

    .line 245
    .end local v28    # "_arg0":Z
    :cond_7
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_7

    .line 252
    .end local v28    # "_arg0":Z
    :sswitch_14
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .line 255
    .local v30, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->startTethering([Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v6, 0x1

    return v6

    .line 261
    .end local v30    # "_arg0":[Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->stopTethering()V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v6, 0x1

    return v6

    .line 268
    :sswitch_16
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isTetheringStarted()Z

    move-result v49

    .line 270
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v49, :cond_8

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v6, 0x1

    return v6

    .line 271
    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    .line 276
    .end local v49    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 279
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->tetherInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v6, 0x1

    return v6

    .line 285
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 288
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->untetherInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v6, 0x1

    return v6

    .line 294
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v51

    .line 296
    .restart local v51    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 298
    const/4 v6, 0x1

    return v6

    .line 302
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 305
    sget-object v6, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Network;

    .line 311
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v42

    .line 312
    .local v42, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    const/4 v6, 0x1

    return v6

    .line 308
    .end local v42    # "_arg1":[Ljava/lang/String;
    :cond_9
    const/16 v25, 0x0

    .local v25, "_arg0":Landroid/net/Network;
    goto :goto_9

    .line 318
    .end local v25    # "_arg0":Landroid/net/Network;
    :sswitch_1b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getDnsForwarders()[Ljava/lang/String;

    move-result-object v51

    .line 320
    .restart local v51    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 322
    const/4 v6, 0x1

    return v6

    .line 326
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 330
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v6, 0x1

    return v6

    .line 337
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 341
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 342
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v6, 0x1

    return v6

    .line 348
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 352
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 353
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v6, 0x1

    return v6

    .line 359
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 363
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 364
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->disableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v6, 0x1

    return v6

    .line 370
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->listTtys()[Ljava/lang/String;

    move-result-object v51

    .line 372
    .restart local v51    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 374
    const/4 v6, 0x1

    return v6

    .line 378
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 382
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 384
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 388
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 389
    invoke-virtual/range {v6 .. v11}, Landroid/os/INetworkManagementService$Stub;->attachPppd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v6, 0x1

    return v6

    .line 395
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 398
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->detachPppd(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v6, 0x1

    return v6

    .line 404
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 408
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 409
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->wifiFirmwareReload(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v6, 0x1

    return v6

    .line 415
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 418
    sget-object v6, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiConfiguration;

    .line 424
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 425
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/os/INetworkManagementService$Stub;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    const/4 v6, 0x1

    return v6

    .line 421
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_a
    const/16 v26, 0x0

    .local v26, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_a

    .line 431
    .end local v26    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_25
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 434
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->stopAccessPoint(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    const/4 v6, 0x1

    return v6

    .line 440
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 443
    sget-object v6, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/WifiConfiguration;

    .line 449
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 450
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Landroid/os/INetworkManagementService$Stub;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v6, 0x1

    return v6

    .line 446
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_b
    const/16 v26, 0x0

    .restart local v26    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_b

    .line 456
    .end local v26    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_27
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v48

    .line 458
    .local v48, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    if-eqz v48, :cond_c

    .line 460
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    :goto_c
    const/4 v6, 0x1

    return v6

    .line 464
    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 470
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_28
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v48

    .line 472
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v48, :cond_d

    .line 474
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 480
    :goto_d
    const/4 v6, 0x1

    return v6

    .line 478
    :cond_d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 484
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_29
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsDetail()Landroid/net/NetworkStats;

    move-result-object v48

    .line 486
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v48, :cond_e

    .line 488
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 494
    :goto_e
    const/4 v6, 0x1

    return v6

    .line 492
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 498
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_2a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 501
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v48

    .line 502
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    if-eqz v48, :cond_f

    .line 504
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 510
    :goto_f
    const/4 v6, 0x1

    return v6

    .line 508
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 514
    .end local v12    # "_arg0":I
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_2b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 517
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->getFreeflowStatsDetail(I)Landroid/net/NetworkStats;

    move-result-object v48

    .line 518
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v48, :cond_10

    .line 520
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 526
    :goto_10
    const/4 v6, 0x1

    return v6

    .line 524
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 530
    .end local v12    # "_arg0":I
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_2c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 534
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 535
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->getFreeflowStatsUidDetail(II)Landroid/net/NetworkStats;

    move-result-object v48

    .line 536
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    if-eqz v48, :cond_11

    .line 538
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 544
    :goto_11
    const/4 v6, 0x1

    return v6

    .line 542
    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 548
    .end local v12    # "_arg0":I
    .end local v31    # "_arg1":I
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_2d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v48

    .line 550
    .restart local v48    # "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v48, :cond_12

    .line 552
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    :goto_12
    const/4 v6, 0x1

    return v6

    .line 556
    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 562
    .end local v48    # "_result":Landroid/net/NetworkStats;
    :sswitch_2e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 566
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 567
    .local v34, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v6, 0x1

    return v6

    .line 573
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":J
    :sswitch_2f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 576
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    const/4 v6, 0x1

    return v6

    .line 582
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 586
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 587
    .restart local v34    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v6, 0x1

    return v6

    .line 593
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v34    # "_arg1":J
    :sswitch_31
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 596
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceAlert(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    const/4 v6, 0x1

    return v6

    .line 602
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 605
    .local v22, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setGlobalAlert(J)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v6, 0x1

    return v6

    .line 611
    .end local v22    # "_arg0":J
    :sswitch_33
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 615
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/16 v39, 0x1

    .line 616
    .restart local v39    # "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->setUidNetworkRules(IZ)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v6, 0x1

    return v6

    .line 615
    .end local v39    # "_arg1":Z
    :cond_13
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_13

    .line 622
    .end local v12    # "_arg0":I
    .end local v39    # "_arg1":Z
    :sswitch_34
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 626
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 627
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->setUidCleartextNetworkPolicy(II)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v6, 0x1

    return v6

    .line 633
    .end local v12    # "_arg0":I
    .end local v31    # "_arg1":I
    :sswitch_35
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isBandwidthControlEnabled()Z

    move-result v49

    .line 635
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    if-eqz v49, :cond_14

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    const/4 v6, 0x1

    return v6

    .line 636
    :cond_14
    const/4 v6, 0x0

    goto :goto_14

    .line 641
    .end local v49    # "_result":Z
    :sswitch_36
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 645
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 647
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 648
    .local v43, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addIdleTimer(Ljava/lang/String;II)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v6, 0x1

    return v6

    .line 654
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    .end local v43    # "_arg2":I
    :sswitch_37
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 657
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->removeIdleTimer(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v6, 0x1

    return v6

    .line 663
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 667
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v42

    .line 669
    .restart local v42    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 670
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v12, v1, v9}, Landroid/os/INetworkManagementService$Stub;->setDnsServersForNetwork(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v6, 0x1

    return v6

    .line 676
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v12    # "_arg0":I
    .end local v42    # "_arg1":[Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 679
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->flushNetworkDnsCache(I)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v6, 0x1

    return v6

    .line 685
    .end local v12    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/16 v28, 0x1

    .line 688
    .restart local v28    # "_arg0":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEnabled(Z)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v6, 0x1

    return v6

    .line 687
    .end local v28    # "_arg0":Z
    :cond_15
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_15

    .line 694
    .end local v28    # "_arg0":Z
    :sswitch_3b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isFirewallEnabled()Z

    move-result v49

    .line 696
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    if-eqz v49, :cond_16

    const/4 v6, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v6, 0x1

    return v6

    .line 697
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 702
    .end local v49    # "_result":Z
    :sswitch_3c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 706
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v39, 0x1

    .line 707
    .restart local v39    # "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v6, 0x1

    return v6

    .line 706
    .end local v39    # "_arg1":Z
    :cond_17
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_17

    .line 713
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Z
    :sswitch_3d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 717
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v39, 0x1

    .line 718
    .restart local v39    # "_arg1":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v6, 0x1

    return v6

    .line 717
    .end local v39    # "_arg1":Z
    :cond_18
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_18

    .line 724
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Z
    :sswitch_3e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 728
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 730
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v44, 0x1

    .line 731
    .local v44, "_arg2":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v44

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v6, 0x1

    return v6

    .line 730
    .end local v44    # "_arg2":Z
    :cond_19
    const/16 v44, 0x0

    .restart local v44    # "_arg2":Z
    goto :goto_19

    .line 737
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    .end local v44    # "_arg2":Z
    :sswitch_3f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 741
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 743
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 744
    .restart local v43    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRule(III)V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    const/4 v6, 0x1

    return v6

    .line 750
    .end local v12    # "_arg0":I
    .end local v31    # "_arg1":I
    .end local v43    # "_arg2":I
    :sswitch_40
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 754
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v40

    .line 756
    .local v40, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v45

    .line 757
    .local v45, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidRules(I[I[I)V

    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    const/4 v6, 0x1

    return v6

    .line 763
    .end local v12    # "_arg0":I
    .end local v40    # "_arg1":[I
    .end local v45    # "_arg2":[I
    :sswitch_41
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 767
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v39, 0x1

    .line 768
    .restart local v39    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallChainEnabled(IZ)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    const/4 v6, 0x1

    return v6

    .line 767
    .end local v39    # "_arg1":Z
    :cond_1a
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_1a

    .line 774
    .end local v12    # "_arg0":I
    .end local v39    # "_arg1":Z
    :sswitch_42
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 778
    .restart local v12    # "_arg0":I
    sget-object v6, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/net/UidRange;

    .line 779
    .local v41, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 780
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    const/4 v6, 0x1

    return v6

    .line 785
    .end local v12    # "_arg0":I
    .end local v41    # "_arg1":[Landroid/net/UidRange;
    :sswitch_43
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 789
    .restart local v12    # "_arg0":I
    sget-object v6, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/net/UidRange;

    .line 790
    .restart local v41    # "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Landroid/os/INetworkManagementService$Stub;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v6, 0x1

    return v6

    .line 796
    .end local v12    # "_arg0":I
    .end local v41    # "_arg1":[Landroid/net/UidRange;
    :sswitch_44
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 799
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->startClatd(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v6, 0x1

    return v6

    .line 805
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_45
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 808
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->stopClatd(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v6, 0x1

    return v6

    .line 814
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 817
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->isClatdStarted(Ljava/lang/String;)Z

    move-result v49

    .line 818
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v49, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v6, 0x1

    return v6

    .line 819
    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    .line 824
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":Z
    :sswitch_47
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v27

    .line 827
    .local v27, "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    const/4 v6, 0x1

    return v6

    .line 833
    .end local v27    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_48
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkActivityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkActivityListener;

    move-result-object v27

    .line 836
    .restart local v27    # "_arg0":Landroid/os/INetworkActivityListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V

    .line 837
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    const/4 v6, 0x1

    return v6

    .line 842
    .end local v27    # "_arg0":Landroid/os/INetworkActivityListener;
    :sswitch_49
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->isNetworkActive()Z

    move-result v49

    .line 844
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v49, :cond_1c

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v6, 0x1

    return v6

    .line 845
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1c

    .line 850
    .end local v49    # "_result":Z
    :sswitch_4a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 854
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 855
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/os/INetworkManagementService$Stub;->createPhysicalNetwork(ILjava/lang/String;)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    const/4 v6, 0x1

    return v6

    .line 861
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":I
    :sswitch_4b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 865
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v39, 0x1

    .line 867
    .restart local v39    # "_arg1":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v44, 0x1

    .line 868
    .restart local v44    # "_arg2":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v44

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/INetworkManagementService$Stub;->createVirtualNetwork(IZZ)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    const/4 v6, 0x1

    return v6

    .line 865
    .end local v39    # "_arg1":Z
    .end local v44    # "_arg2":Z
    :cond_1d
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_1d

    .line 867
    :cond_1e
    const/16 v44, 0x0

    .restart local v44    # "_arg2":Z
    goto :goto_1e

    .line 874
    .end local v12    # "_arg0":I
    .end local v39    # "_arg1":Z
    .end local v44    # "_arg2":Z
    :sswitch_4c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 877
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->removeNetwork(I)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    const/4 v6, 0x1

    return v6

    .line 883
    .end local v12    # "_arg0":I
    :sswitch_4d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 887
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 888
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 889
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    const/4 v6, 0x1

    return v6

    .line 894
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    :sswitch_4e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 898
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 899
    .restart local v31    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    const/4 v6, 0x1

    return v6

    .line 905
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    :sswitch_4f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 909
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 910
    sget-object v6, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/RouteInfo;

    .line 916
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 917
    .restart local v43    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v43

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/INetworkManagementService$Stub;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v6, 0x1

    return v6

    .line 913
    .end local v43    # "_arg2":I
    :cond_1f
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Landroid/net/RouteInfo;
    goto :goto_1f

    .line 923
    .end local v12    # "_arg0":I
    .end local v37    # "_arg1":Landroid/net/RouteInfo;
    :sswitch_50
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 926
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->setDefaultNetId(I)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v6, 0x1

    return v6

    .line 932
    .end local v12    # "_arg0":I
    :sswitch_51
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearDefaultNetId()V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v6, 0x1

    return v6

    .line 939
    :sswitch_52
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 943
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 944
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Landroid/os/INetworkManagementService$Stub;->setNetworkPermission(ILjava/lang/String;)V

    .line 945
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    const/4 v6, 0x1

    return v6

    .line 950
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg0":I
    :sswitch_53
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 954
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v40

    .line 955
    .restart local v40    # "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setPermission(Ljava/lang/String;[I)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v6, 0x1

    return v6

    .line 961
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":[I
    :sswitch_54
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v29

    .line 964
    .local v29, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->clearPermission([I)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    const/4 v6, 0x1

    return v6

    .line 970
    .end local v29    # "_arg0":[I
    :sswitch_55
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 973
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->allowProtect(I)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    const/4 v6, 0x1

    return v6

    .line 979
    .end local v12    # "_arg0":I
    :sswitch_56
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 982
    .restart local v12    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/INetworkManagementService$Stub;->denyProtect(I)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    const/4 v6, 0x1

    return v6

    .line 988
    .end local v12    # "_arg0":I
    :sswitch_57
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 992
    .restart local v7    # "_arg0":Ljava/lang/String;
    sget-object v6, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v38

    .line 993
    .local v38, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    const/4 v6, 0x1

    return v6

    .line 999
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v38    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :sswitch_58
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1002
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->removeInterfaceFromLocalNetwork(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    const/4 v6, 0x1

    return v6

    .line 1008
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_59
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->disablePPPOE()V

    .line 1010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    const/4 v6, 0x1

    return v6

    .line 1015
    :sswitch_5a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1019
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1020
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->enableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    const/4 v6, 0x1

    return v6

    .line 1026
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_5b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1030
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1031
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->disableNatIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    const/4 v6, 0x1

    return v6

    .line 1037
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_5c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v28, 0x1

    .line 1040
    .restart local v28    # "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/INetworkManagementService$Stub;->setIpv6ForwardingEnabled(Z)V

    .line 1041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    const/4 v6, 0x1

    return v6

    .line 1039
    .end local v28    # "_arg0":Z
    :cond_20
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_20

    .line 1046
    .end local v28    # "_arg0":Z
    :sswitch_5d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->getIpv6ForwardingEnabled()Z

    move-result v49

    .line 1048
    .restart local v49    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    if-eqz v49, :cond_21

    const/4 v6, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v6, 0x1

    return v6

    .line 1049
    :cond_21
    const/4 v6, 0x0

    goto :goto_21

    .line 1054
    .end local v49    # "_result":Z
    :sswitch_5e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1058
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1059
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->setRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v6, 0x1

    return v6

    .line 1065
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1069
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1070
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->clearRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v6, 0x1

    return v6

    .line 1076
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1080
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1081
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->setSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v6, 0x1

    return v6

    .line 1087
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1091
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1092
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/os/INetworkManagementService$Stub;->clearSourceRouteIpv6(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    const/4 v6, 0x1

    return v6

    .line 1098
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1102
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v39, 0x1

    .line 1103
    .restart local v39    # "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v1}, Landroid/os/INetworkManagementService$Stub;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v6, 0x1

    return v6

    .line 1102
    .end local v39    # "_arg1":Z
    :cond_22
    const/16 v39, 0x0

    .restart local v39    # "_arg1":Z
    goto :goto_22

    .line 1109
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v39    # "_arg1":Z
    :sswitch_63
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v28, 0x1

    .line 1113
    .restart local v28    # "_arg0":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1114
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/os/INetworkManagementService$Stub;->setDhcpv6Enabled(ZLjava/lang/String;)V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    const/4 v6, 0x1

    return v6

    .line 1111
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v28    # "_arg0":Z
    :cond_23
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_23

    .line 1120
    .end local v28    # "_arg0":Z
    :sswitch_64
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v28, 0x1

    .line 1124
    .restart local v28    # "_arg0":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1126
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1128
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1129
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/os/INetworkManagementService$Stub;->enableUdpForwarding(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v6, 0x1

    return v6

    .line 1122
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v28    # "_arg0":Z
    :cond_24
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_24

    .line 1135
    .end local v28    # "_arg0":Z
    :sswitch_65
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1138
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->getUsbClient(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    const/4 v6, 0x1

    return v6

    .line 1144
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_66
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1148
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1150
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/16 v44, 0x1

    .line 1151
    .restart local v44    # "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v44

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setFirewallUidChainRule(IIZ)V

    .line 1152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    const/4 v6, 0x1

    return v6

    .line 1150
    .end local v44    # "_arg2":Z
    :cond_25
    const/16 v44, 0x0

    .restart local v44    # "_arg2":Z
    goto :goto_25

    .line 1157
    .end local v12    # "_arg0":I
    .end local v31    # "_arg1":I
    .end local v44    # "_arg2":Z
    :sswitch_67
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1160
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->clearFirewallChain(Ljava/lang/String;)V

    .line 1161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1162
    const/4 v6, 0x1

    return v6

    .line 1166
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_68
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1170
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1172
    .restart local v31    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1173
    .restart local v43    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v43

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/INetworkManagementService$Stub;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 1174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    const/4 v6, 0x1

    return v6

    .line 1179
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v31    # "_arg1":I
    .end local v43    # "_arg2":I
    :sswitch_69
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1182
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->getInterfaceRxThrottle(Ljava/lang/String;)I

    move-result v46

    .line 1183
    .local v46, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    move-object/from16 v0, p3

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    const/4 v6, 0x1

    return v6

    .line 1189
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":I
    :sswitch_6a
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1192
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->getInterfaceTxThrottle(Ljava/lang/String;)I

    move-result v46

    .line 1193
    .restart local v46    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1194
    move-object/from16 v0, p3

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    const/4 v6, 0x1

    return v6

    .line 1199
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":I
    :sswitch_6b
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1203
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1205
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1206
    .restart local v9    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/INetworkManagementService$Stub;->getSipInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v51

    .line 1207
    .restart local v51    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1209
    const/4 v6, 0x1

    return v6

    .line 1213
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v51    # "_result":[Ljava/lang/String;
    :sswitch_6c
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1216
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->clearSipInfo(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    const/4 v6, 0x1

    return v6

    .line 1222
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_6d
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->clearIotFirewall()V

    .line 1224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    const/4 v6, 0x1

    return v6

    .line 1229
    :sswitch_6e
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->setIotFirewall()V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    const/4 v6, 0x1

    return v6

    .line 1236
    :sswitch_6f
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1240
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1242
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 1244
    .local v16, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v18

    .local v18, "_arg3":D
    move-object/from16 v13, p0

    move-object v14, v7

    move-object v15, v8

    .line 1245
    invoke-virtual/range {v13 .. v19}, Landroid/os/INetworkManagementService$Stub;->setHetCommInterface(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v6, 0x1

    return v6

    .line 1251
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":D
    .end local v18    # "_arg3":D
    :sswitch_70
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroid/os/INetworkManagementService$Stub;->removeHetCommInterface()V

    .line 1253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1254
    const/4 v6, 0x1

    return v6

    .line 1258
    :sswitch_71
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    .line 1262
    .local v20, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v32

    .line 1263
    .local v32, "_arg1":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/INetworkManagementService$Stub;->setHetCommRatio(DD)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    const/4 v6, 0x1

    return v6

    .line 1269
    .end local v20    # "_arg0":D
    .end local v32    # "_arg1":D
    :sswitch_72
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1272
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->clearVolteIotFirewall(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    const/4 v6, 0x1

    return v6

    .line 1278
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_73
    const-string/jumbo v6, "android.os.INetworkManagementService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1281
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/INetworkManagementService$Stub;->setVolteIotFirewall(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    const/4 v6, 0x1

    return v6

    .line 41
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
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
