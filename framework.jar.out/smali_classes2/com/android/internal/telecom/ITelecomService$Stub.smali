.class public abstract Lcom/android/internal/telecom/ITelecomService$Stub;
.super Landroid/os/Binder;
.source "ITelecomService.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.ITelecomService"

.field static final TRANSACTION_acceptRingingCall:I = 0x1d

.field static final TRANSACTION_addNewIncomingCall:I = 0x24

.field static final TRANSACTION_addNewUnknownCall:I = 0x25

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x1e

.field static final TRANSACTION_clearAccounts:I = 0x11

.field static final TRANSACTION_enablePhoneAccount:I = 0x27

.field static final TRANSACTION_endCall:I = 0x1c

.field static final TRANSACTION_getAdnUriForPhoneAccount:I = 0x21

.field static final TRANSACTION_getAllPhoneAccountHandles:I = 0xc

.field static final TRANSACTION_getAllPhoneAccounts:I = 0xb

.field static final TRANSACTION_getAllPhoneAccountsCount:I = 0xa

.field static final TRANSACTION_getCallCapablePhoneAccounts:I = 0x6

.field static final TRANSACTION_getCallState:I = 0x1b

.field static final TRANSACTION_getCurrentTtyMode:I = 0x23

.field static final TRANSACTION_getDefaultDialerPackage:I = 0x16

.field static final TRANSACTION_getDefaultOutgoingPhoneAccount:I = 0x3

.field static final TRANSACTION_getDefaultPhoneApp:I = 0x15

.field static final TRANSACTION_getLine1Number:I = 0x14

.field static final TRANSACTION_getPhoneAccount:I = 0x9

.field static final TRANSACTION_getPhoneAccountsForPackage:I = 0x8

.field static final TRANSACTION_getPhoneAccountsSupportingScheme:I = 0x7

.field static final TRANSACTION_getSimCallManager:I = 0xd

.field static final TRANSACTION_getSimCallManagerForUser:I = 0xe

.field static final TRANSACTION_getSystemDialerPackage:I = 0x17

.field static final TRANSACTION_getUserSelectedOutgoingPhoneAccount:I = 0x4

.field static final TRANSACTION_getVideoCallCapablePhoneAccounts:I = 0x2a

.field static final TRANSACTION_getVoiceMailNumber:I = 0x13

.field static final TRANSACTION_getVolteCallCapablePhoneAccounts:I = 0x29

.field static final TRANSACTION_handlePinMmi:I = 0x1f

.field static final TRANSACTION_handlePinMmiForPhoneAccount:I = 0x20

.field static final TRANSACTION_isInCall:I = 0x19

.field static final TRANSACTION_isIncomingHidden:I = 0x2b

.field static final TRANSACTION_isRinging:I = 0x1a

.field static final TRANSACTION_isTtySupported:I = 0x22

.field static final TRANSACTION_isVoiceMailNumber:I = 0x12

.field static final TRANSACTION_notifyIncomingCallSsn:I = 0x2

.field static final TRANSACTION_placeCall:I = 0x26

.field static final TRANSACTION_registerPhoneAccount:I = 0xf

.field static final TRANSACTION_setDefaultDialer:I = 0x28

.field static final TRANSACTION_setUserSelectedOutgoingPhoneAccount:I = 0x5

.field static final TRANSACTION_showInCallScreen:I = 0x1

.field static final TRANSACTION_silenceRinger:I = 0x18

.field static final TRANSACTION_unregisterPhoneAccount:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "com.android.internal.telecom.ITelecomService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;
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
    const-string/jumbo v1, "com.android.internal.telecom.ITelecomService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/internal/telecom/ITelecomService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ITelecomService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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

    .line 596
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 47
    :sswitch_0
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v22, 0x1

    return v22

    .line 52
    :sswitch_1
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_0

    const/4 v8, 0x1

    .line 56
    .local v8, "_arg0":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 57
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->showInCallScreen(ZLjava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/16 v22, 0x1

    return v22

    .line 54
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_0

    .line 63
    .end local v8    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->notifyIncomingCallSsn()V

    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/16 v22, 0x1

    return v22

    .line 70
    :sswitch_3
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 75
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .line 76
    .local v17, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v17, :cond_1

    .line 78
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_1
    const/16 v22, 0x1

    return v22

    .line 82
    :cond_1
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 88
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_4
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .line 90
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v17, :cond_2

    .line 92
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    :goto_2
    const/16 v22, 0x1

    return v22

    .line 96
    :cond_2
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 102
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_5
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3

    .line 105
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 110
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/16 v22, 0x1

    return v22

    .line 108
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_3

    .line 116
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_6
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    const/4 v8, 0x1

    .line 120
    .restart local v8    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 121
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallCapablePhoneAccounts(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 122
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 124
    const/16 v22, 0x1

    return v22

    .line 118
    .end local v8    # "_arg0":Z
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_4

    .line 128
    .end local v8    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 132
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 133
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 134
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 136
    const/16 v22, 0x1

    return v22

    .line 140
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_8
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccountsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 144
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    const/16 v22, 0x1

    return v22

    .line 150
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_9
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_5

    .line 153
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 158
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v16

    .line 159
    .local v16, "_result":Landroid/telecom/PhoneAccount;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v16, :cond_6

    .line 161
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/16 v22, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    :goto_6
    const/16 v22, 0x1

    return v22

    .line 156
    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_5

    .line 165
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v16    # "_result":Landroid/telecom/PhoneAccount;
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 171
    .end local v16    # "_result":Landroid/telecom/PhoneAccount;
    :sswitch_a
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountsCount()I

    move-result v13

    .line 173
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    const/16 v22, 0x1

    return v22

    .line 179
    .end local v13    # "_result":I
    :sswitch_b
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v19

    .line 181
    .local v19, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 183
    const/16 v22, 0x1

    return v22

    .line 187
    .end local v19    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccount;>;"
    :sswitch_c
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v20

    .line 189
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 191
    const/16 v22, 0x1

    return v22

    .line 195
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_d
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .line 197
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v17, :cond_7

    .line 199
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 205
    :goto_7
    const/16 v22, 0x1

    return v22

    .line 203
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 209
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_e
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 212
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSimCallManagerForUser(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    .line 213
    .restart local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v17, :cond_8

    .line 215
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 221
    :goto_8
    const/16 v22, 0x1

    return v22

    .line 219
    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 225
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Landroid/telecom/PhoneAccountHandle;
    :sswitch_f
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_9

    .line 228
    sget-object v22, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccount;

    .line 233
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telecom/ITelecomService$Stub;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/16 v22, 0x1

    return v22

    .line 231
    :cond_9
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_9

    .line 239
    .end local v5    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_10
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    .line 242
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 247
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telecom/ITelecomService$Stub;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/16 v22, 0x1

    return v22

    .line 245
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_a

    .line 253
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_11
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->clearAccounts(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/16 v22, 0x1

    return v22

    .line 262
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    .line 265
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 271
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 273
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 274
    .local v12, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 275
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v21, :cond_c

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/16 v22, 0x1

    return v22

    .line 268
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_b

    .line 276
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v21    # "_result":Z
    :cond_c
    const/16 v22, 0x0

    goto :goto_c

    .line 281
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_13
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    .line 284
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 290
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 291
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    const/16 v22, 0x1

    return v22

    .line 287
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_d

    .line 298
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_14
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    .line 301
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 307
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 308
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 309
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    const/16 v22, 0x1

    return v22

    .line 304
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v18    # "_result":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_e

    .line 315
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :sswitch_15
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v14

    .line 317
    .local v14, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v14, :cond_f

    .line 319
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 325
    :goto_f
    const/16 v22, 0x1

    return v22

    .line 323
    :cond_f
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 329
    .end local v14    # "_result":Landroid/content/ComponentName;
    :sswitch_16
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v18

    .line 331
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    const/16 v22, 0x1

    return v22

    .line 337
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v18

    .line 339
    .restart local v18    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    const/16 v22, 0x1

    return v22

    .line 345
    .end local v18    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 348
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->silenceRinger(Ljava/lang/String;)Z

    move-result v21

    .line 349
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v21, :cond_10

    const/16 v22, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/16 v22, 0x1

    return v22

    .line 350
    :cond_10
    const/16 v22, 0x0

    goto :goto_10

    .line 355
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_19
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 358
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isInCall(Ljava/lang/String;)Z

    move-result v21

    .line 359
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v21, :cond_11

    const/16 v22, 0x1

    :goto_11
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/16 v22, 0x1

    return v22

    .line 360
    :cond_11
    const/16 v22, 0x0

    goto :goto_11

    .line 365
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 368
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v21

    .line 369
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v21, :cond_12

    const/16 v22, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/16 v22, 0x1

    return v22

    .line 370
    :cond_12
    const/16 v22, 0x0

    goto :goto_12

    .line 375
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_1b
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCallState()I

    move-result v13

    .line 377
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    const/16 v22, 0x1

    return v22

    .line 383
    .end local v13    # "_result":I
    :sswitch_1c
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->endCall()Z

    move-result v21

    .line 385
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v21, :cond_13

    const/16 v22, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/16 v22, 0x1

    return v22

    .line 386
    :cond_13
    const/16 v22, 0x0

    goto :goto_13

    .line 391
    .end local v21    # "_result":Z
    :sswitch_1d
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->acceptRingingCall()V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    const/16 v22, 0x1

    return v22

    .line 398
    :sswitch_1e
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 401
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->cancelMissedCallsNotification(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/16 v22, 0x1

    return v22

    .line 407
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 411
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 412
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 413
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    if-eqz v21, :cond_14

    const/16 v22, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/16 v22, 0x1

    return v22

    .line 414
    :cond_14
    const/16 v22, 0x0

    goto :goto_14

    .line 419
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_20
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_15

    .line 422
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 428
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 430
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 431
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 432
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    if-eqz v21, :cond_16

    const/16 v22, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    const/16 v22, 0x1

    return v22

    .line 425
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_15

    .line 433
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v12    # "_arg2":Ljava/lang/String;
    .restart local v21    # "_result":Z
    :cond_16
    const/16 v22, 0x0

    goto :goto_16

    .line 438
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg2":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_21
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_17

    .line 441
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 447
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 448
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/android/internal/telecom/ITelecomService$Stub;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 449
    .local v15, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v15, :cond_18

    .line 451
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    :goto_18
    const/16 v22, 0x1

    return v22

    .line 444
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :cond_17
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_17

    .line 455
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v10    # "_arg1":Ljava/lang/String;
    .restart local v15    # "_result":Landroid/net/Uri;
    :cond_18
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 461
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v15    # "_result":Landroid/net/Uri;
    :sswitch_22
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 464
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->isTtySupported(Ljava/lang/String;)Z

    move-result v21

    .line 465
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v21, :cond_19

    const/16 v22, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/16 v22, 0x1

    return v22

    .line 466
    :cond_19
    const/16 v22, 0x0

    goto :goto_19

    .line 471
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_23
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 474
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->getCurrentTtyMode(Ljava/lang/String;)I

    move-result v13

    .line 475
    .restart local v13    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/16 v22, 0x1

    return v22

    .line 481
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v13    # "_result":I
    :sswitch_24
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1a

    .line 484
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 490
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1b

    .line 491
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 496
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/16 v22, 0x1

    return v22

    .line 487
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1a

    .line 494
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1b
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_1b

    .line 502
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_25
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1c

    .line 505
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 511
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1d

    .line 512
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 517
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lcom/android/internal/telecom/ITelecomService$Stub;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/16 v22, 0x1

    return v22

    .line 508
    :cond_1c
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_1c

    .line 515
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_1d
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1d

    .line 523
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_26
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1e

    .line 526
    sget-object v22, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 532
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1f

    .line 533
    sget-object v22, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 539
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 540
    .restart local v12    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v12}, Lcom/android/internal/telecom/ITelecomService$Stub;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/16 v22, 0x1

    return v22

    .line 529
    .end local v12    # "_arg2":Ljava/lang/String;
    :cond_1e
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/net/Uri;
    goto :goto_1e

    .line 536
    .end local v4    # "_arg0":Landroid/net/Uri;
    :cond_1f
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Landroid/os/Bundle;
    goto :goto_1f

    .line 546
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_20

    .line 549
    sget-object v22, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 555
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_21

    const/4 v11, 0x1

    .line 556
    .local v11, "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/android/internal/telecom/ITelecomService$Stub;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z

    move-result v21

    .line 557
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v21, :cond_22

    const/16 v22, 0x1

    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/16 v22, 0x1

    return v22

    .line 552
    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :cond_20
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_20

    .line 555
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    :cond_21
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_21

    .line 558
    .restart local v21    # "_result":Z
    :cond_22
    const/16 v22, 0x0

    goto :goto_22

    .line 563
    .end local v11    # "_arg1":Z
    .end local v21    # "_result":Z
    :sswitch_28
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 566
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telecom/ITelecomService$Stub;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v21

    .line 567
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v21, :cond_23

    const/16 v22, 0x1

    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/16 v22, 0x1

    return v22

    .line 568
    :cond_23
    const/16 v22, 0x0

    goto :goto_23

    .line 573
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_29
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVolteCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v20

    .line 575
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 577
    const/16 v22, 0x1

    return v22

    .line 581
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_2a
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->getVideoCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v20

    .line 583
    .restart local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 585
    const/16 v22, 0x1

    return v22

    .line 589
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    :sswitch_2b
    const-string/jumbo v22, "com.android.internal.telecom.ITelecomService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/ITelecomService$Stub;->isIncomingHidden()Z

    move-result v21

    .line 591
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v21, :cond_24

    const/16 v22, 0x1

    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/16 v22, 0x1

    return v22

    .line 592
    :cond_24
    const/16 v22, 0x0

    goto :goto_24

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
