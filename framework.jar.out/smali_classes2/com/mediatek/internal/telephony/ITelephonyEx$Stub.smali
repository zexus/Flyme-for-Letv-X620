.class public abstract Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.ITelephonyEx"

.field static final TRANSACTION_broadcastIccUnlockIntent:I = 0x18

.field static final TRANSACTION_btSimapApduRequest:I = 0x11

.field static final TRANSACTION_btSimapConnectSIM:I = 0xf

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x10

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x14

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x13

.field static final TRANSACTION_btSimapResetSIM:I = 0x12

.field static final TRANSACTION_canSwitchDefaultSubId:I = 0x46

.field static final TRANSACTION_configSimSwap:I = 0x1c

.field static final TRANSACTION_finalizeService:I = 0x2f

.field static final TRANSACTION_getAdnStorageInfo:I = 0x23

.field static final TRANSACTION_getBcsmsCfgFromRuim:I = 0x3d

.field static final TRANSACTION_getCallForwardingFc:I = 0x39

.field static final TRANSACTION_getCallWaitingFc:I = 0x3a

.field static final TRANSACTION_getCapSwitchManualList:I = 0x1f

.field static final TRANSACTION_getCdmaSubscriptionActStatus:I = 0x45

.field static final TRANSACTION_getCellLocationUsingSlotId:I = 0x43

.field static final TRANSACTION_getDonotDisturbFc:I = 0x3b

.field static final TRANSACTION_getIccCardType:I = 0x6

.field static final TRANSACTION_getLastDataConnectionFailCause:I = 0x28

.field static final TRANSACTION_getLinkProperties:I = 0x29

.field static final TRANSACTION_getLocatedPlmn:I = 0x20

.field static final TRANSACTION_getLteAccessStratumState:I = 0x33

.field static final TRANSACTION_getMainCapabilityPhoneId:I = 0x2d

.field static final TRANSACTION_getMmsConfigInfo:I = 0x36

.field static final TRANSACTION_getMmsIcpInfo:I = 0x35

.field static final TRANSACTION_getMvnoMatchType:I = 0x9

.field static final TRANSACTION_getMvnoPattern:I = 0xa

.field static final TRANSACTION_getNeighboringCellInfoUsingSlotId:I = 0x44

.field static final TRANSACTION_getNetworkHideState:I = 0x21

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xd

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xb

.field static final TRANSACTION_getNetworkOperatorNameUsingSub:I = 0xc

.field static final TRANSACTION_getNetworkOperatorUsingSub:I = 0xe

.field static final TRANSACTION_getNextMessageId:I = 0x3e

.field static final TRANSACTION_getPhoneCapability:I = 0x1a

.field static final TRANSACTION_getScAddressUsingSubId:I = 0x25

.field static final TRANSACTION_getServiceState:I = 0x22

.field static final TRANSACTION_getUserCustomizedEccList:I = 0x40

.field static final TRANSACTION_getVMRetrieveFc:I = 0x3c

.field static final TRANSACTION_getWapMsgId:I = 0x3f

.field static final TRANSACTION_initializeService:I = 0x2e

.field static final TRANSACTION_isAirplanemodeAvailableNow:I = 0x27

.field static final TRANSACTION_isAppTypeSupported:I = 0x7

.field static final TRANSACTION_isCapSwitchManualEnabled:I = 0x1e

.field static final TRANSACTION_isCapabilitySwitching:I = 0x2b

.field static final TRANSACTION_isEccInProgress:I = 0x49

.field static final TRANSACTION_isFdnEnabled:I = 0x5

.field static final TRANSACTION_isImsRegistered:I = 0x4a

.field static final TRANSACTION_isInHomeNetwork:I = 0x30

.field static final TRANSACTION_isOmhCard:I = 0x38

.field static final TRANSACTION_isOmhEnable:I = 0x37

.field static final TRANSACTION_isPhbReady:I = 0x24

.field static final TRANSACTION_isRadioOffBySimManagement:I = 0x19

.field static final TRANSACTION_isSharedDefaultApn:I = 0x34

.field static final TRANSACTION_isSimSwapped:I = 0x1d

.field static final TRANSACTION_isTestIccCard:I = 0x8

.field static final TRANSACTION_isUserCustomizedEcc:I = 0x42

.field static final TRANSACTION_isVolteEnabled:I = 0x4b

.field static final TRANSACTION_isWifiCallingEnabled:I = 0x4c

.field static final TRANSACTION_queryNetworkLock:I = 0x1

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0x3

.field static final TRANSACTION_setDefaultSubIdForAll:I = 0x47

.field static final TRANSACTION_setEccInProgress:I = 0x48

.field static final TRANSACTION_setLine1Number:I = 0x4

.field static final TRANSACTION_setLteAccessStratumReport:I = 0x31

.field static final TRANSACTION_setLteUplinkDataTransfer:I = 0x32

.field static final TRANSACTION_setPhoneCapability:I = 0x1b

.field static final TRANSACTION_setRadioCapability:I = 0x2a

.field static final TRANSACTION_setScAddressUsingSubId:I = 0x26

.field static final TRANSACTION_setTrmForPhone:I = 0x2c

.field static final TRANSACTION_simAkaAuthentication:I = 0x15

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x16

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x17

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2

.field static final TRANSACTION_updateUserCustomizedEccList:I = 0x41


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 32
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 926
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v31

    return v31

    .line 49
    :sswitch_0
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/16 v31, 0x1

    return v31

    .line 54
    :sswitch_1
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 59
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v22

    .line 60
    .local v22, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v22, :cond_0

    .line 62
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    const/16 v31, 0x1

    return v31

    .line 66
    :cond_0
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v20

    .line 78
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/16 v31, 0x1

    return v31

    .line 84
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_3
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_1

    const/4 v12, 0x1

    .line 89
    .local v12, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/16 v31, 0x1

    return v31

    .line 88
    .end local v12    # "_arg1":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_1

    .line 95
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 101
    .restart local v11    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 102
    .local v17, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v11, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLine1Number(ILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 103
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/16 v31, 0x1

    return v31

    .line 109
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v20    # "_result":I
    :sswitch_5
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v27

    .line 113
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v27, :cond_2

    const/16 v31, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v31, 0x1

    return v31

    .line 114
    :cond_2
    const/16 v31, 0x0

    goto :goto_2

    .line 119
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_6
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v25

    .line 123
    .local v25, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    const/16 v31, 0x1

    return v31

    .line 129
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 134
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v27

    .line 135
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v27, :cond_3

    const/16 v31, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/16 v31, 0x1

    return v31

    .line 136
    :cond_3
    const/16 v31, 0x0

    goto :goto_3

    .line 141
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_8
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v27

    .line 145
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v27, :cond_4

    const/16 v31, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v31, 0x1

    return v31

    .line 146
    :cond_4
    const/16 v31, 0x0

    goto :goto_4

    .line 151
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_9
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v25

    .line 155
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    const/16 v31, 0x1

    return v31

    .line 161
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 165
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 166
    .restart local v11    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 167
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    const/16 v31, 0x1

    return v31

    .line 173
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 176
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v25

    .line 177
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    const/16 v31, 0x1

    return v31

    .line 183
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameUsingSub(I)Ljava/lang/String;

    move-result-object v25

    .line 187
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    const/16 v31, 0x1

    return v31

    .line 193
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v25

    .line 197
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    const/16 v31, 0x1

    return v31

    .line 203
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorUsingSub(I)Ljava/lang/String;

    move-result-object v25

    .line 207
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    const/16 v31, 0x1

    return v31

    .line 213
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .restart local v3    # "_arg0":I
    new-instance v10, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 218
    .local v10, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v20

    .line 219
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    if-eqz v10, :cond_5

    .line 222
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    :goto_5
    const/16 v31, 0x1

    return v31

    .line 226
    :cond_5
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 232
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v20    # "_result":I
    :sswitch_10
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapDisconnectSIM()I

    move-result v20

    .line 234
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/16 v31, 0x1

    return v31

    .line 240
    .end local v20    # "_result":I
    :sswitch_11
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 246
    .restart local v11    # "_arg1":Ljava/lang/String;
    new-instance v15, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v15}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 247
    .local v15, "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v15}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v20

    .line 248
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    if-eqz v15, :cond_6

    .line 251
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_6
    const/16 v31, 0x1

    return v31

    .line 255
    :cond_6
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 261
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v20    # "_result":I
    :sswitch_12
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .restart local v3    # "_arg0":I
    new-instance v10, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 266
    .restart local v10    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v20

    .line 267
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    if-eqz v10, :cond_7

    .line 270
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 276
    :goto_7
    const/16 v31, 0x1

    return v31

    .line 274
    :cond_7
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 280
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v20    # "_result":I
    :sswitch_13
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 284
    .restart local v3    # "_arg0":I
    new-instance v10, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v10}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 285
    .restart local v10    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v20

    .line 286
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    if-eqz v10, :cond_8

    .line 289
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v10, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    :goto_8
    const/16 v31, 0x1

    return v31

    .line 293
    :cond_8
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 299
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v20    # "_result":I
    :sswitch_14
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOffSIM()I

    move-result v20

    .line 301
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/16 v31, 0x1

    return v31

    .line 307
    .end local v20    # "_result":I
    :sswitch_15
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 311
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 313
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 315
    .local v18, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 316
    .local v19, "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v9, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v28

    .line 317
    .local v28, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 319
    const/16 v31, 0x1

    return v31

    .line 323
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":[B
    .end local v28    # "_result":[B
    :sswitch_16
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 327
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 329
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 331
    .restart local v18    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 332
    .restart local v19    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v9, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v28

    .line 333
    .restart local v28    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 335
    const/16 v31, 0x1

    return v31

    .line 339
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":[B
    .end local v28    # "_result":[B
    :sswitch_17
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 345
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 347
    .restart local v18    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    .line 348
    .restart local v19    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v9, v1, v2}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v28

    .line 349
    .restart local v28    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 351
    const/16 v31, 0x1

    return v31

    .line 355
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v18    # "_arg2":[B
    .end local v19    # "_arg3":[B
    .end local v28    # "_result":[B
    :sswitch_18
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 358
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->broadcastIccUnlockIntent(I)Z

    move-result v27

    .line 359
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v27, :cond_9

    const/16 v31, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/16 v31, 0x1

    return v31

    .line 360
    :cond_9
    const/16 v31, 0x0

    goto :goto_9

    .line 365
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_19
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v27

    .line 369
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v27, :cond_a

    const/16 v31, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/16 v31, 0x1

    return v31

    .line 370
    :cond_a
    const/16 v31, 0x0

    goto :goto_a

    .line 375
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_1a
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getPhoneCapability(I)I

    move-result v20

    .line 379
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/16 v31, 0x1

    return v31

    .line 385
    .end local v3    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_1b
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 389
    .local v7, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 390
    .local v13, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setPhoneCapability([I[I)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/16 v31, 0x1

    return v31

    .line 396
    .end local v7    # "_arg0":[I
    .end local v13    # "_arg1":[I
    :sswitch_1c
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_b

    const/4 v6, 0x1

    .line 399
    .local v6, "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->configSimSwap(Z)Z

    move-result v27

    .line 400
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v27, :cond_c

    const/16 v31, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/16 v31, 0x1

    return v31

    .line 398
    .end local v6    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_b

    .line 401
    .restart local v27    # "_result":Z
    :cond_c
    const/16 v31, 0x0

    goto :goto_c

    .line 406
    .end local v6    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_1d
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSimSwapped()Z

    move-result v27

    .line 408
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v27, :cond_d

    const/16 v31, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/16 v31, 0x1

    return v31

    .line 409
    :cond_d
    const/16 v31, 0x0

    goto :goto_d

    .line 414
    .end local v27    # "_result":Z
    :sswitch_1e
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapSwitchManualEnabled()Z

    move-result v27

    .line 416
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    if-eqz v27, :cond_e

    const/16 v31, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/16 v31, 0x1

    return v31

    .line 417
    :cond_e
    const/16 v31, 0x0

    goto :goto_e

    .line 422
    .end local v27    # "_result":Z
    :sswitch_1f
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCapSwitchManualList()[Ljava/lang/String;

    move-result-object v30

    .line 424
    .local v30, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 426
    const/16 v31, 0x1

    return v31

    .line 430
    .end local v30    # "_result":[Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v25

    .line 434
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    const/16 v31, 0x1

    return v31

    .line 440
    .end local v3    # "_arg0":I
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkHideState(I)I

    move-result v20

    .line 444
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/16 v31, 0x1

    return v31

    .line 450
    .end local v3    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_22
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 453
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v22

    .line 454
    .restart local v22    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v22, :cond_f

    .line 456
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    :goto_f
    const/16 v31, 0x1

    return v31

    .line 460
    :cond_f
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 466
    .end local v3    # "_arg0":I
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_23
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 469
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v29

    .line 470
    .local v29, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 472
    const/16 v31, 0x1

    return v31

    .line 476
    .end local v3    # "_arg0":I
    .end local v29    # "_result":[I
    :sswitch_24
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isPhbReady(I)Z

    move-result v27

    .line 480
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v27, :cond_10

    const/16 v31, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/16 v31, 0x1

    return v31

    .line 481
    :cond_10
    const/16 v31, 0x0

    goto :goto_10

    .line 486
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_25
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getScAddressUsingSubId(I)Landroid/os/Bundle;

    move-result-object v22

    .line 490
    .restart local v22    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v22, :cond_11

    .line 492
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 498
    :goto_11
    const/16 v31, 0x1

    return v31

    .line 496
    :cond_11
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 502
    .end local v3    # "_arg0":I
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 506
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 507
    .restart local v11    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setScAddressUsingSubId(ILjava/lang/String;)Z

    move-result v27

    .line 508
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v27, :cond_12

    const/16 v31, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/16 v31, 0x1

    return v31

    .line 509
    :cond_12
    const/16 v31, 0x0

    goto :goto_12

    .line 514
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_27
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAirplanemodeAvailableNow()Z

    move-result v27

    .line 516
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v27, :cond_13

    const/16 v31, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    const/16 v31, 0x1

    return v31

    .line 517
    :cond_13
    const/16 v31, 0x0

    goto :goto_13

    .line 522
    .end local v27    # "_result":Z
    :sswitch_28
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 526
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 527
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v20

    .line 528
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/16 v31, 0x1

    return v31

    .line 534
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v20    # "_result":I
    :sswitch_29
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 538
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 539
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;

    move-result-object v21

    .line 540
    .local v21, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v21, :cond_14

    .line 542
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/16 v31, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 548
    :goto_14
    const/16 v31, 0x1

    return v31

    .line 546
    :cond_14
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 552
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg1":I
    .end local v21    # "_result":Landroid/net/LinkProperties;
    :sswitch_2a
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    sget-object v31, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/telephony/RadioAccessFamily;

    .line 555
    .local v8, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v27

    .line 556
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v27, :cond_15

    const/16 v31, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/16 v31, 0x1

    return v31

    .line 557
    :cond_15
    const/16 v31, 0x0

    goto :goto_15

    .line 562
    .end local v8    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v27    # "_result":Z
    :sswitch_2b
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v27

    .line 564
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v27, :cond_16

    const/16 v31, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/16 v31, 0x1

    return v31

    .line 565
    :cond_16
    const/16 v31, 0x0

    goto :goto_16

    .line 570
    .end local v27    # "_result":Z
    :sswitch_2c
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 574
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 575
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setTrmForPhone(II)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/16 v31, 0x1

    return v31

    .line 581
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    :sswitch_2d
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMainCapabilityPhoneId()I

    move-result v20

    .line 583
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/16 v31, 0x1

    return v31

    .line 589
    .end local v20    # "_result":I
    :sswitch_2e
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 592
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->initializeService(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/16 v31, 0x1

    return v31

    .line 598
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 601
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->finalizeService(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    const/16 v31, 0x1

    return v31

    .line 607
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 610
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v27

    .line 611
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    if-eqz v27, :cond_17

    const/16 v31, 0x1

    :goto_17
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    const/16 v31, 0x1

    return v31

    .line 612
    :cond_17
    const/16 v31, 0x0

    goto :goto_17

    .line 617
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_31
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_18

    const/4 v6, 0x1

    .line 620
    .restart local v6    # "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLteAccessStratumReport(Z)Z

    move-result v27

    .line 621
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    if-eqz v27, :cond_19

    const/16 v31, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/16 v31, 0x1

    return v31

    .line 619
    .end local v6    # "_arg0":Z
    .end local v27    # "_result":Z
    :cond_18
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_18

    .line 622
    .restart local v27    # "_result":Z
    :cond_19
    const/16 v31, 0x0

    goto :goto_19

    .line 627
    .end local v6    # "_arg0":Z
    .end local v27    # "_result":Z
    :sswitch_32
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_1a

    const/4 v6, 0x1

    .line 631
    .restart local v6    # "_arg0":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 632
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLteUplinkDataTransfer(ZI)Z

    move-result v27

    .line 633
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v27, :cond_1b

    const/16 v31, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    const/16 v31, 0x1

    return v31

    .line 629
    .end local v6    # "_arg0":Z
    .end local v9    # "_arg1":I
    .end local v27    # "_result":Z
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_1a

    .line 634
    .restart local v9    # "_arg1":I
    .restart local v27    # "_result":Z
    :cond_1b
    const/16 v31, 0x0

    goto :goto_1b

    .line 639
    .end local v6    # "_arg0":Z
    .end local v9    # "_arg1":I
    .end local v27    # "_result":Z
    :sswitch_33
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLteAccessStratumState()Ljava/lang/String;

    move-result-object v25

    .line 641
    .restart local v25    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    const/16 v31, 0x1

    return v31

    .line 647
    .end local v25    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSharedDefaultApn()Z

    move-result v27

    .line 649
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    if-eqz v27, :cond_1c

    const/16 v31, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    const/16 v31, 0x1

    return v31

    .line 650
    :cond_1c
    const/16 v31, 0x0

    goto :goto_1c

    .line 655
    .end local v27    # "_result":Z
    :sswitch_35
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 658
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMmsIcpInfo(I)Lcom/mediatek/internal/telephony/MmsIcpInfo;

    move-result-object v24

    .line 659
    .local v24, "_result":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    if-eqz v24, :cond_1d

    .line 661
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MmsIcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 667
    :goto_1d
    const/16 v31, 0x1

    return v31

    .line 665
    :cond_1d
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 671
    .end local v3    # "_arg0":I
    .end local v24    # "_result":Lcom/mediatek/internal/telephony/MmsIcpInfo;
    :sswitch_36
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 674
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMmsConfigInfo(I)Lcom/mediatek/internal/telephony/MmsConfigInfo;

    move-result-object v23

    .line 675
    .local v23, "_result":Lcom/mediatek/internal/telephony/MmsConfigInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    if-eqz v23, :cond_1e

    .line 677
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/internal/telephony/MmsConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 683
    :goto_1e
    const/16 v31, 0x1

    return v31

    .line 681
    :cond_1e
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 687
    .end local v3    # "_arg0":I
    .end local v23    # "_result":Lcom/mediatek/internal/telephony/MmsConfigInfo;
    :sswitch_37
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isOmhEnable(I)Z

    move-result v27

    .line 691
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v27, :cond_1f

    const/16 v31, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    const/16 v31, 0x1

    return v31

    .line 692
    :cond_1f
    const/16 v31, 0x0

    goto :goto_1f

    .line 697
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_38
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 700
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isOmhCard(I)Z

    move-result v27

    .line 701
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    if-eqz v27, :cond_20

    const/16 v31, 0x1

    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    const/16 v31, 0x1

    return v31

    .line 702
    :cond_20
    const/16 v31, 0x0

    goto :goto_20

    .line 707
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_39
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 711
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 712
    .restart local v9    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCallForwardingFc(II)[I

    move-result-object v29

    .line 713
    .restart local v29    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 715
    const/16 v31, 0x1

    return v31

    .line 719
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v29    # "_result":[I
    :sswitch_3a
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 722
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCallWaitingFc(I)[I

    move-result-object v29

    .line 723
    .restart local v29    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 725
    const/16 v31, 0x1

    return v31

    .line 729
    .end local v3    # "_arg0":I
    .end local v29    # "_result":[I
    :sswitch_3b
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 732
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getDonotDisturbFc(I)[I

    move-result-object v29

    .line 733
    .restart local v29    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 735
    const/16 v31, 0x1

    return v31

    .line 739
    .end local v3    # "_arg0":I
    .end local v29    # "_result":[I
    :sswitch_3c
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 742
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getVMRetrieveFc(I)[I

    move-result-object v29

    .line 743
    .restart local v29    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 745
    const/16 v31, 0x1

    return v31

    .line 749
    .end local v3    # "_arg0":I
    .end local v29    # "_result":[I
    :sswitch_3d
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 753
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 755
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 756
    .local v14, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v14}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getBcsmsCfgFromRuim(III)I

    move-result v20

    .line 757
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/16 v31, 0x1

    return v31

    .line 763
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v20    # "_result":I
    :sswitch_3e
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 766
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNextMessageId(I)I

    move-result v20

    .line 767
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/16 v31, 0x1

    return v31

    .line 773
    .end local v3    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_3f
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 776
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getWapMsgId(I)I

    move-result v20

    .line 777
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/16 v31, 0x1

    return v31

    .line 783
    .end local v3    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_40
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getUserCustomizedEccList()Landroid/os/Bundle;

    move-result-object v22

    .line 785
    .restart local v22    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v22, :cond_21

    .line 787
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 793
    :goto_21
    const/16 v31, 0x1

    return v31

    .line 791
    :cond_21
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 797
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_41
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_22

    .line 800
    sget-object v31, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 805
    :goto_22
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->updateUserCustomizedEccList(Landroid/os/Bundle;)Z

    move-result v27

    .line 806
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    if-eqz v27, :cond_23

    const/16 v31, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    const/16 v31, 0x1

    return v31

    .line 803
    .end local v27    # "_result":Z
    :cond_22
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/os/Bundle;
    goto :goto_22

    .line 807
    .end local v4    # "_arg0":Landroid/os/Bundle;
    .restart local v27    # "_result":Z
    :cond_23
    const/16 v31, 0x0

    goto :goto_23

    .line 812
    .end local v27    # "_result":Z
    :sswitch_42
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isUserCustomizedEcc(Ljava/lang/String;)Z

    move-result v27

    .line 816
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v27, :cond_24

    const/16 v31, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/16 v31, 0x1

    return v31

    .line 817
    :cond_24
    const/16 v31, 0x0

    goto :goto_24

    .line 822
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_result":Z
    :sswitch_43
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 825
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCellLocationUsingSlotId(I)Landroid/os/Bundle;

    move-result-object v22

    .line 826
    .restart local v22    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    if-eqz v22, :cond_25

    .line 828
    const/16 v31, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/16 v31, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_25
    const/16 v31, 0x1

    return v31

    .line 832
    :cond_25
    const/16 v31, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 838
    .end local v3    # "_arg0":I
    .end local v22    # "_result":Landroid/os/Bundle;
    :sswitch_44
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 841
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNeighboringCellInfoUsingSlotId(I)Ljava/util/List;

    move-result-object v26

    .line 842
    .local v26, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 844
    const/16 v31, 0x1

    return v31

    .line 848
    .end local v3    # "_arg0":I
    .end local v26    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_45
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 851
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCdmaSubscriptionActStatus(I)I

    move-result v20

    .line 852
    .restart local v20    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/16 v31, 0x1

    return v31

    .line 858
    .end local v3    # "_arg0":I
    .end local v20    # "_result":I
    :sswitch_46
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->canSwitchDefaultSubId()Z

    move-result v27

    .line 860
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    if-eqz v27, :cond_26

    const/16 v31, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/16 v31, 0x1

    return v31

    .line 861
    :cond_26
    const/16 v31, 0x0

    goto :goto_26

    .line 866
    .end local v27    # "_result":Z
    :sswitch_47
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 870
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 872
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;

    move-result-object v16

    .line 873
    .local v16, "_arg2":Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v9, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setDefaultSubIdForAll(IILcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;)Z

    move-result v27

    .line 874
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    if-eqz v27, :cond_27

    const/16 v31, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 876
    const/16 v31, 0x1

    return v31

    .line 875
    :cond_27
    const/16 v31, 0x0

    goto :goto_27

    .line 880
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":Lcom/mediatek/internal/telephony/ISetDefaultSubResultCallback;
    .end local v27    # "_result":Z
    :sswitch_48
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    if-eqz v31, :cond_28

    const/4 v6, 0x1

    .line 883
    .restart local v6    # "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setEccInProgress(Z)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/16 v31, 0x1

    return v31

    .line 882
    .end local v6    # "_arg0":Z
    :cond_28
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_28

    .line 889
    .end local v6    # "_arg0":Z
    :sswitch_49
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isEccInProgress()Z

    move-result v27

    .line 891
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    if-eqz v27, :cond_29

    const/16 v31, 0x1

    :goto_29
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    const/16 v31, 0x1

    return v31

    .line 892
    :cond_29
    const/16 v31, 0x0

    goto :goto_29

    .line 897
    .end local v27    # "_result":Z
    :sswitch_4a
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 900
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isImsRegistered(I)Z

    move-result v27

    .line 901
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    if-eqz v27, :cond_2a

    const/16 v31, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/16 v31, 0x1

    return v31

    .line 902
    :cond_2a
    const/16 v31, 0x0

    goto :goto_2a

    .line 907
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_4b
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 910
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isVolteEnabled(I)Z

    move-result v27

    .line 911
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v27, :cond_2b

    const/16 v31, 0x1

    :goto_2b
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/16 v31, 0x1

    return v31

    .line 912
    :cond_2b
    const/16 v31, 0x0

    goto :goto_2b

    .line 917
    .end local v3    # "_arg0":I
    .end local v27    # "_result":Z
    :sswitch_4c
    const-string/jumbo v31, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 920
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isWifiCallingEnabled(I)Z

    move-result v27

    .line 921
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v27, :cond_2c

    const/16 v31, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/16 v31, 0x1

    return v31

    .line 922
    :cond_2c
    const/16 v31, 0x0

    goto :goto_2c

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
