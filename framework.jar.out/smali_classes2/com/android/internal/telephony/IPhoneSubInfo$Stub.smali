.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x15

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x16

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForPhone:I = 0x3

.field static final TRANSACTION_getDeviceSvn:I = 0x5

.field static final TRANSACTION_getDeviceSvnUsingSubId:I = 0x6

.field static final TRANSACTION_getGroupIdLevel1:I = 0x9

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xa

.field static final TRANSACTION_getIccSerialNumber:I = 0xb

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xc

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x1f

.field static final TRANSACTION_getImeiForSubscriber:I = 0x4

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x1e

.field static final TRANSACTION_getIsimDomain:I = 0x1a

.field static final TRANSACTION_getIsimDomainForSubscriber:I = 0x21

.field static final TRANSACTION_getIsimGbabp:I = 0x25

.field static final TRANSACTION_getIsimGbabpForSubscriber:I = 0x26

.field static final TRANSACTION_getIsimImpi:I = 0x19

.field static final TRANSACTION_getIsimImpiForSubscriber:I = 0x20

.field static final TRANSACTION_getIsimImpu:I = 0x1b

.field static final TRANSACTION_getIsimImpuForSubscriber:I = 0x22

.field static final TRANSACTION_getIsimIst:I = 0x1c

.field static final TRANSACTION_getIsimIstForSubscriber:I = 0x23

.field static final TRANSACTION_getIsimPcscf:I = 0x1d

.field static final TRANSACTION_getIsimPcscfForSubscriber:I = 0x24

.field static final TRANSACTION_getIsimPsismsc:I = 0x2f

.field static final TRANSACTION_getIsimPsismscForSubscriber:I = 0x30

.field static final TRANSACTION_getLine1AlphaTag:I = 0xf

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x10

.field static final TRANSACTION_getLine1Number:I = 0xd

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0xe

.field static final TRANSACTION_getMncLength:I = 0x35

.field static final TRANSACTION_getMncLengthForSubscriber:I = 0x36

.field static final TRANSACTION_getMsisdn:I = 0x11

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x12

.field static final TRANSACTION_getNaiForSubscriber:I = 0x2

.field static final TRANSACTION_getSubscriberId:I = 0x7

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x8

.field static final TRANSACTION_getUsimGbabp:I = 0x2b

.field static final TRANSACTION_getUsimGbabpForSubscriber:I = 0x2c

.field static final TRANSACTION_getUsimPsismsc:I = 0x31

.field static final TRANSACTION_getUsimPsismscForSubscriber:I = 0x32

.field static final TRANSACTION_getUsimService:I = 0x29

.field static final TRANSACTION_getUsimServiceForSubscriber:I = 0x2a

.field static final TRANSACTION_getUsimSmsp:I = 0x33

.field static final TRANSACTION_getUsimSmspForSubscriber:I = 0x34

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x17

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x18

.field static final TRANSACTION_getVoiceMailNumber:I = 0x13

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x14

.field static final TRANSACTION_setIsimGbabp:I = 0x27

.field static final TRANSACTION_setIsimGbabpForSubscriber:I = 0x28

.field static final TRANSACTION_setUsimGbabp:I = 0x2d

.field static final TRANSACTION_setUsimGbabpForSubscriber:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 625
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 47
    :sswitch_0
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v13, 0x1

    return v13

    .line 52
    :sswitch_1
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    const/4 v13, 0x1

    return v13

    .line 62
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v13, 0x1

    return v13

    .line 74
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    const/4 v13, 0x1

    return v13

    .line 86
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 90
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    const/4 v13, 0x1

    return v13

    .line 98
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    const/4 v13, 0x1

    return v13

    .line 108
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    const/4 v13, 0x1

    return v13

    .line 120
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    const/4 v13, 0x1

    return v13

    .line 130
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    const/4 v13, 0x1

    return v13

    .line 142
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    const/4 v13, 0x1

    return v13

    .line 152
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 158
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    const/4 v13, 0x1

    return v13

    .line 164
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    const/4 v13, 0x1

    return v13

    .line 174
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 180
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    const/4 v13, 0x1

    return v13

    .line 186
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    const/4 v13, 0x1

    return v13

    .line 196
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 202
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    const/4 v13, 0x1

    return v13

    .line 208
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 212
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    const/4 v13, 0x1

    return v13

    .line 218
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 224
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    const/4 v13, 0x1

    return v13

    .line 230
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    const/4 v13, 0x1

    return v13

    .line 240
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 245
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 246
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    const/4 v13, 0x1

    return v13

    .line 252
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 256
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    const/4 v13, 0x1

    return v13

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    const/4 v13, 0x1

    return v13

    .line 274
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v9

    .line 276
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    const/4 v13, 0x1

    return v13

    .line 282
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 286
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    const/4 v13, 0x1

    return v13

    .line 292
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 296
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    const/4 v13, 0x1

    return v13

    .line 302
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    const/4 v13, 0x1

    return v13

    .line 314
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v9

    .line 316
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    const/4 v13, 0x1

    return v13

    .line 322
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v9

    .line 324
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    const/4 v13, 0x1

    return v13

    .line 330
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 334
    const/4 v13, 0x1

    return v13

    .line 338
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    move-result-object v9

    .line 340
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    const/4 v13, 0x1

    return v13

    .line 346
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v12

    .line 348
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 350
    const/4 v13, 0x1

    return v13

    .line 354
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 357
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 358
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    const/4 v13, 0x1

    return v13

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v7}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 372
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    const/4 v13, 0x1

    return v13

    .line 378
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpiForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 382
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    const/4 v13, 0x1

    return v13

    .line 388
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomainForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 392
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    const/4 v13, 0x1

    return v13

    .line 398
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpuForSubscriber(I)[Ljava/lang/String;

    move-result-object v12

    .line 402
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 404
    const/4 v13, 0x1

    return v13

    .line 408
    .end local v1    # "_arg0":I
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 411
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIstForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 412
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    const/4 v13, 0x1

    return v13

    .line 418
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 421
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscfForSubscriber(I)[Ljava/lang/String;

    move-result-object v12

    .line 422
    .restart local v12    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 424
    const/4 v13, 0x1

    return v13

    .line 428
    .end local v1    # "_arg0":I
    .end local v12    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimGbabp()Ljava/lang/String;

    move-result-object v9

    .line 430
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    const/4 v13, 0x1

    return v13

    .line 436
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 440
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    const/4 v13, 0x1

    return v13

    .line 446
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    .line 451
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 456
    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v13, 0x1

    return v13

    .line 454
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/os/Message;
    goto :goto_0

    .line 462
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Message;
    :sswitch_28
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 466
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 468
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_1

    .line 469
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 474
    :goto_1
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setIsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    const/4 v13, 0x1

    return v13

    .line 472
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg2":Landroid/os/Message;
    goto :goto_1

    .line 480
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/Message;
    :sswitch_29
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimService(I)Z

    move-result v10

    .line 484
    .local v10, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v10, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v13, 0x1

    return v13

    .line 485
    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    .line 490
    .end local v1    # "_arg0":I
    .end local v10    # "_result":Z
    :sswitch_2a
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 494
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 495
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimServiceForSubscriber(II)Z

    move-result v10

    .line 496
    .restart local v10    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    if-eqz v10, :cond_3

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    const/4 v13, 0x1

    return v13

    .line 497
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 502
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_2b
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimGbabp()Ljava/lang/String;

    move-result-object v9

    .line 504
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    const/4 v13, 0x1

    return v13

    .line 510
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 513
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimGbabpForSubscriber(I)Ljava/lang/String;

    move-result-object v9

    .line 514
    .restart local v9    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    const/4 v13, 0x1

    return v13

    .line 520
    .end local v1    # "_arg0":I
    .end local v9    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 524
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    .line 525
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 530
    :goto_4
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v13, 0x1

    return v13

    .line 528
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Message;
    goto :goto_4

    .line 536
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/Message;
    :sswitch_2e
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 542
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    .line 543
    sget-object v13, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 548
    :goto_5
    invoke-virtual {p0, v1, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setUsimGbabpForSubscriber(ILjava/lang/String;Landroid/os/Message;)V

    .line 549
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    const/4 v13, 0x1

    return v13

    .line 546
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg2":Landroid/os/Message;
    goto :goto_5

    .line 554
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/os/Message;
    :sswitch_2f
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPsismsc()[B

    move-result-object v11

    .line 556
    .local v11, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 558
    const/4 v13, 0x1

    return v13

    .line 562
    .end local v11    # "_result":[B
    :sswitch_30
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 565
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPsismscForSubscriber(I)[B

    move-result-object v11

    .line 566
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 568
    const/4 v13, 0x1

    return v13

    .line 572
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_31
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimPsismsc()[B

    move-result-object v11

    .line 574
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 576
    const/4 v13, 0x1

    return v13

    .line 580
    .end local v11    # "_result":[B
    :sswitch_32
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 583
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimPsismscForSubscriber(I)[B

    move-result-object v11

    .line 584
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 586
    const/4 v13, 0x1

    return v13

    .line 590
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_33
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimSmsp()[B

    move-result-object v11

    .line 592
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 594
    const/4 v13, 0x1

    return v13

    .line 598
    .end local v11    # "_result":[B
    :sswitch_34
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUsimSmspForSubscriber(I)[B

    move-result-object v11

    .line 602
    .restart local v11    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 604
    const/4 v13, 0x1

    return v13

    .line 608
    .end local v1    # "_arg0":I
    .end local v11    # "_result":[B
    :sswitch_35
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMncLength()I

    move-result v8

    .line 610
    .local v8, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v13, 0x1

    return v13

    .line 616
    .end local v8    # "_result":I
    :sswitch_36
    const-string/jumbo v13, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 619
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMncLengthForSubscriber(I)I

    move-result v8

    .line 620
    .restart local v8    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v13, 0x1

    return v13

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
