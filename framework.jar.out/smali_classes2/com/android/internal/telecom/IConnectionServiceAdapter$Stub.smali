.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xd

.field static final TRANSACTION_addExistingConnection:I = 0x19

.field static final TRANSACTION_handleCreateConferenceComplete:I = 0x24

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_notifyAccountChanged:I = 0x21

.field static final TRANSACTION_notifyActionFailed:I = 0x1c

.field static final TRANSACTION_notifyCdmaCallAccepted:I = 0x20

.field static final TRANSACTION_notifyConnectionLost:I = 0x1b

.field static final TRANSACTION_notifyIncomingInfoUpdate:I = 0x1f

.field static final TRANSACTION_notifyNumberUpdate:I = 0x1e

.field static final TRANSACTION_notifySSNotificationToast:I = 0x1d

.field static final TRANSACTION_notifyVtStatusInfo:I = 0x22

.field static final TRANSACTION_onCallForwardSsn:I = 0x6

.field static final TRANSACTION_onPostDialChar:I = 0x10

.field static final TRANSACTION_onPostDialWait:I = 0xf

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x11

.field static final TRANSACTION_removeCall:I = 0xe

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x16

.field static final TRANSACTION_setAlerting:I = 0x5

.field static final TRANSACTION_setCallerDisplayName:I = 0x17

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xc

.field static final TRANSACTION_setConferenceableConnections:I = 0x18

.field static final TRANSACTION_setConnectionCapabilities:I = 0xa

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x7

.field static final TRANSACTION_setExtras:I = 0x1a

.field static final TRANSACTION_setIsConferenced:I = 0xb

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x14

.field static final TRANSACTION_setOnHold:I = 0x8

.field static final TRANSACTION_setRingbackRequested:I = 0x9

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x15

.field static final TRANSACTION_setVideoProvider:I = 0x12

.field static final TRANSACTION_setVideoState:I = 0x13

.field static final TRANSACTION_updateExtras:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
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
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 26
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

    .line 469
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 49
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    return v2

    .line 54
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telecom/ConnectionRequest;

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    sget-object v2, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/ParcelableConnection;

    .line 71
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 72
    const/4 v2, 0x1

    return v2

    .line 62
    :cond_0
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_0

    .line 69
    .end local v13    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_1
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_1

    .line 76
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg2":Landroid/telecom/ParcelableConnection;
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;)V

    .line 80
    const/4 v2, 0x1

    return v2

    .line 84
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 92
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    return v2

    .line 100
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAlerting(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x1

    return v2

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onCallForwardSsn()V

    .line 110
    const/4 v2, 0x1

    return v2

    .line 114
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    sget-object v2, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/DisconnectCause;

    .line 124
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 125
    const/4 v2, 0x1

    return v2

    .line 122
    :cond_2
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_2

    .line 129
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/telecom/DisconnectCause;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x1

    return v2

    .line 137
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v22, 0x1

    .line 142
    .local v22, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;Z)V

    .line 143
    const/4 v2, 0x1

    return v2

    .line 141
    .end local v22    # "_arg1":Z
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "_arg1":Z
    goto :goto_3

    .line 147
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Z
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;I)V

    .line 153
    const/4 v2, 0x1

    return v2

    .line 157
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 162
    .local v20, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x1

    return v2

    .line 167
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    return v2

    .line 175
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 180
    sget-object v2, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/ParcelableConference;

    .line 185
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 186
    const/4 v2, 0x1

    return v2

    .line 183
    :cond_4
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_4

    .line 190
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_arg1":Landroid/telecom/ParcelableConference;
    :sswitch_e
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x1

    return v2

    .line 198
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 203
    .restart local v20    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v2, 0x1

    return v2

    .line 208
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v10, v2

    .line 213
    .local v10, "_arg1":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;C)V

    .line 214
    const/4 v2, 0x1

    return v2

    .line 218
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":C
    :sswitch_11
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v9

    .line 221
    .local v9, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    .line 222
    const/4 v2, 0x1

    return v2

    .line 226
    .end local v9    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    :sswitch_12
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v19

    .line 231
    .local v19, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    .line 232
    const/4 v2, 0x1

    return v2

    .line 236
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    :sswitch_13
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 241
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;I)V

    .line 242
    const/4 v2, 0x1

    return v2

    .line 246
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_14
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 250
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v22, 0x1

    .line 251
    .restart local v22    # "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;Z)V

    .line 252
    const/4 v2, 0x1

    return v2

    .line 250
    .end local v22    # "_arg1":Z
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "_arg1":Z
    goto :goto_5

    .line 256
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 261
    sget-object v2, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telecom/StatusHints;

    .line 266
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    .line 267
    const/4 v2, 0x1

    return v2

    .line 264
    :cond_6
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_6

    .line 271
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Landroid/telecom/StatusHints;
    :sswitch_16
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 276
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 282
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 283
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 284
    const/4 v2, 0x1

    return v2

    .line 279
    .end local v5    # "_arg2":I
    :cond_7
    const/4 v11, 0x0

    .local v11, "_arg1":Landroid/net/Uri;
    goto :goto_7

    .line 288
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v11    # "_arg1":Landroid/net/Uri;
    :sswitch_17
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 292
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 294
    .restart local v20    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 295
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    const/4 v2, 0x1

    return v2

    .line 300
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 304
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v21

    .line 305
    .local v21, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 306
    const/4 v2, 0x1

    return v2

    .line 310
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_19
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 315
    sget-object v2, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telecom/ParcelableConnection;

    .line 320
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 321
    const/4 v2, 0x1

    return v2

    .line 318
    :cond_8
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_8

    .line 325
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Landroid/telecom/ParcelableConnection;
    :sswitch_1a
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 330
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 335
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 336
    const/4 v2, 0x1

    return v2

    .line 333
    :cond_9
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/os/Bundle;
    goto :goto_9

    .line 340
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyConnectionLost(Ljava/lang/String;)V

    .line 344
    const/4 v2, 0x1

    return v2

    .line 348
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyActionFailed(Ljava/lang/String;I)V

    .line 354
    const/4 v2, 0x1

    return v2

    .line 358
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 366
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 368
    .local v6, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg5":I
    move-object/from16 v2, p0

    .line 371
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V

    .line 372
    const/4 v2, 0x1

    return v2

    .line 376
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":I
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":I
    :sswitch_1e
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 381
    .restart local v20    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x1

    return v2

    .line 386
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 392
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 394
    .local v25, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 395
    .restart local v6    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v4, v1, v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V

    .line 396
    const/4 v2, 0x1

    return v2

    .line 400
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v6    # "_arg3":I
    .end local v25    # "_arg2":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyCdmaCallAccepted(Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x1

    return v2

    .line 408
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 413
    sget-object v2, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telecom/PhoneAccountHandle;

    .line 418
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 419
    const/4 v2, 0x1

    return v2

    .line 416
    :cond_a
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/telecom/PhoneAccountHandle;
    goto :goto_a

    .line 423
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    :sswitch_22
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 427
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 428
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->notifyVtStatusInfo(Ljava/lang/String;I)V

    .line 429
    const/4 v2, 0x1

    return v2

    .line 433
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_23
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 438
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 443
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    const/4 v2, 0x1

    return v2

    .line 441
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    .line 448
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 452
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    .line 453
    sget-object v2, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telecom/ConnectionRequest;

    .line 459
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    .line 460
    sget-object v2, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telecom/ParcelableConference;

    .line 465
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 466
    const/4 v2, 0x1

    return v2

    .line 456
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_c

    .line 463
    .end local v13    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_d
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/telecom/ParcelableConference;
    goto :goto_d

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
