.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_applyRestore:I = 0x2d

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x7

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x14

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x5

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x13

.field static final TRANSACTION_cancelToast:I = 0x3

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x4

.field static final TRANSACTION_enqueueToast:I = 0x2

.field static final TRANSACTION_getActiveNotifications:I = 0xe

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x16

.field static final TRANSACTION_getAppActiveNotifications:I = 0x2e

.field static final TRANSACTION_getBackupPayload:I = 0x2c

.field static final TRANSACTION_getEffectsSuppressor:I = 0x1d

.field static final TRANSACTION_getHintsFromListener:I = 0x18

.field static final TRANSACTION_getHistoricalNotifications:I = 0xf

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x1a

.field static final TRANSACTION_getNotificationHeadsUpEnable:I = 0x39

.field static final TRANSACTION_getNotificationHeadsUpEnableMap:I = 0x3a

.field static final TRANSACTION_getNotificationOnKeyguardEnable:I = 0x36

.field static final TRANSACTION_getNotificationOnKeyguardEnableMap:I = 0x37

.field static final TRANSACTION_getNotificationPolicy:I = 0x27

.field static final TRANSACTION_getNotificationSubscript:I = 0x30

.field static final TRANSACTION_getNotificationSubscriptEnable:I = 0x33

.field static final TRANSACTION_getNotificationSubscriptEnableMap:I = 0x34

.field static final TRANSACTION_getNotificationSubscriptMap:I = 0x31

.field static final TRANSACTION_getPackagePeekable:I = 0xb

.field static final TRANSACTION_getPackagePriority:I = 0x9

.field static final TRANSACTION_getPackageVisibilityOverride:I = 0xd

.field static final TRANSACTION_getPackagesRequestingNotificationPolicyAccess:I = 0x29

.field static final TRANSACTION_getZenMode:I = 0x20

.field static final TRANSACTION_getZenModeConfig:I = 0x21

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x26

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x2a

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x1f

.field static final TRANSACTION_matchesCallFilter:I = 0x1e

.field static final TRANSACTION_notifyConditions:I = 0x24

.field static final TRANSACTION_registerListener:I = 0x10

.field static final TRANSACTION_removeAllNotifications:I = 0x12

.field static final TRANSACTION_requestHintsFromListener:I = 0x17

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x19

.field static final TRANSACTION_requestZenModeConditions:I = 0x25

.field static final TRANSACTION_setInterruptionFilter:I = 0x1c

.field static final TRANSACTION_setNotificationHeadsUpEnable:I = 0x38

.field static final TRANSACTION_setNotificationOnKeyguardEnable:I = 0x35

.field static final TRANSACTION_setNotificationPolicy:I = 0x28

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x2b

.field static final TRANSACTION_setNotificationSubscript:I = 0x2f

.field static final TRANSACTION_setNotificationSubscriptEnable:I = 0x32

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x6

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x15

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x1b

.field static final TRANSACTION_setPackagePeekable:I = 0xa

.field static final TRANSACTION_setPackagePriority:I = 0x8

.field static final TRANSACTION_setPackageVisibilityOverride:I = 0xc

.field static final TRANSACTION_setZenMode:I = 0x23

.field static final TRANSACTION_setZenModeConfig:I = 0x22

.field static final TRANSACTION_unregisterListener:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/INotificationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 38
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 754
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 43
    :sswitch_0
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x1

    return v3

    .line 48
    :sswitch_1
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 53
    .local v17, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v3, 0x1

    return v3

    .line 59
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_2
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v18

    .line 65
    .local v18, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 66
    .local v25, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v3, 0x1

    return v3

    .line 72
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Landroid/app/ITransientNotification;
    .end local v25    # "_arg2":I
    :sswitch_3
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v18

    .line 77
    .restart local v18    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v3, 0x1

    return v3

    .line 83
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Landroid/app/ITransientNotification;
    :sswitch_4
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 87
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 93
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification;

    .line 100
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v9

    .line 102
    .local v9, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg6":I
    move-object/from16 v3, p0

    .line 103
    invoke-virtual/range {v3 .. v10}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 106
    const/4 v3, 0x1

    return v3

    .line 97
    .end local v9    # "_arg5":[I
    .end local v10    # "_arg6":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "_arg4":Landroid/app/Notification;
    goto :goto_0

    .line 110
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":Landroid/app/Notification;
    :sswitch_5
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 116
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 118
    .restart local v25    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 119
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1, v7}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v3, 0x1

    return v3

    .line 125
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v25    # "_arg2":I
    :sswitch_6
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 131
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/16 v26, 0x1

    .line 132
    .local v26, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v3, 0x1

    return v3

    .line 131
    .end local v26    # "_arg2":Z
    :cond_1
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Z
    goto :goto_1

    .line 138
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v26    # "_arg2":Z
    :sswitch_7
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 143
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v34

    .line 144
    .local v34, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v34, :cond_2

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v3, 0x1

    return v3

    .line 145
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 150
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v34    # "_result":Z
    :sswitch_8
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 156
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 157
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackagePriority(Ljava/lang/String;II)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v3, 0x1

    return v3

    .line 163
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v25    # "_arg2":I
    :sswitch_9
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 168
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackagePriority(Ljava/lang/String;I)I

    move-result v28

    .line 169
    .local v28, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v3, 0x1

    return v3

    .line 175
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_result":I
    :sswitch_a
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 181
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v26, 0x1

    .line 182
    .restart local v26    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackagePeekable(Ljava/lang/String;IZ)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v3, 0x1

    return v3

    .line 181
    .end local v26    # "_arg2":Z
    :cond_3
    const/16 v26, 0x0

    .restart local v26    # "_arg2":Z
    goto :goto_3

    .line 188
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v26    # "_arg2":Z
    :sswitch_b
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 192
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 193
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v34

    .line 194
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v34, :cond_4

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    const/4 v3, 0x1

    return v3

    .line 195
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 200
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v34    # "_result":Z
    :sswitch_c
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 206
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 207
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->setPackageVisibilityOverride(Ljava/lang/String;II)V

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    const/4 v3, 0x1

    return v3

    .line 213
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v25    # "_arg2":I
    :sswitch_d
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 218
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v28

    .line 219
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v3, 0x1

    return v3

    .line 225
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v28    # "_result":I
    :sswitch_e
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 228
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v36

    .line 229
    .local v36, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 231
    const/4 v3, 0x1

    return v3

    .line 235
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_f
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 240
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v36

    .line 241
    .restart local v36    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 243
    const/4 v3, 0x1

    return v3

    .line 247
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v36    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_10
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 251
    .local v14, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ComponentName;

    .line 258
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 259
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v3, 0x1

    return v3

    .line 255
    .end local v25    # "_arg2":I
    :cond_5
    const/16 v20, 0x0

    .local v20, "_arg1":Landroid/content/ComponentName;
    goto :goto_5

    .line 265
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v20    # "_arg1":Landroid/content/ComponentName;
    :sswitch_11
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 269
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 270
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v3, 0x1

    return v3

    .line 276
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_12
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 280
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 281
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->removeAllNotifications(Ljava/lang/String;I)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v3, 0x1

    return v3

    .line 287
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_13
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 291
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v24

    .line 292
    .local v24, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    const/4 v3, 0x1

    return v3

    .line 298
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 302
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 307
    .restart local v7    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5, v6, v7}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    const/4 v3, 0x1

    return v3

    .line 313
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":I
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_15
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 317
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v24

    .line 318
    .restart local v24    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v3, 0x1

    return v3

    .line 324
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 328
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v24

    .line 330
    .restart local v24    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 331
    .restart local v25    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v14, v1, v2}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v31

    .line 332
    .local v31, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v31, :cond_6

    .line 334
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 340
    :goto_6
    const/4 v3, 0x1

    return v3

    .line 338
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 344
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v24    # "_arg1":[Ljava/lang/String;
    .end local v25    # "_arg2":I
    .end local v31    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_17
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 348
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 349
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v3, 0x1

    return v3

    .line 355
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_18
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 358
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v28

    .line 359
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    const/4 v3, 0x1

    return v3

    .line 365
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_result":I
    :sswitch_19
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 369
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 370
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v3, 0x1

    return v3

    .line 376
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1a
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 379
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v28

    .line 380
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v3, 0x1

    return v3

    .line 386
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_result":I
    :sswitch_1b
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v14

    .line 390
    .restart local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 391
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v3, 0x1

    return v3

    .line 397
    .end local v14    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v17    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 402
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    .line 403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    const/4 v3, 0x1

    return v3

    .line 408
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_1d
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v30

    .line 410
    .local v30, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v30, :cond_7

    .line 412
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    const/4 v3, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    :goto_7
    const/4 v3, 0x1

    return v3

    .line 416
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 422
    .end local v30    # "_result":Landroid/content/ComponentName;
    :sswitch_1e
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 425
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 430
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v34

    .line 431
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v34, :cond_9

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v3, 0x1

    return v3

    .line 428
    .end local v34    # "_result":Z
    :cond_8
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/os/Bundle;
    goto :goto_8

    .line 432
    .end local v12    # "_arg0":Landroid/os/Bundle;
    .restart local v34    # "_result":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_9

    .line 437
    .end local v34    # "_result":Z
    :sswitch_1f
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 440
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v34

    .line 441
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v34, :cond_a

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    const/4 v3, 0x1

    return v3

    .line 442
    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    .line 447
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_20
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v28

    .line 449
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v3, 0x1

    return v3

    .line 455
    .end local v28    # "_result":I
    :sswitch_21
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v32

    .line 457
    .local v32, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    if-eqz v32, :cond_b

    .line 459
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    const/4 v3, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 465
    :goto_b
    const/4 v3, 0x1

    return v3

    .line 463
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 469
    .end local v32    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_22
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    .line 472
    sget-object v3, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/notification/ZenModeConfig;

    .line 478
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 479
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Landroid/app/INotificationManager$Stub;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)Z

    move-result v34

    .line 480
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v34, :cond_d

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v3, 0x1

    return v3

    .line 475
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :cond_c
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/service/notification/ZenModeConfig;
    goto :goto_c

    .line 481
    .end local v15    # "_arg0":Landroid/service/notification/ZenModeConfig;
    .restart local v5    # "_arg1":Ljava/lang/String;
    .restart local v34    # "_result":Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_d

    .line 486
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_23
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 490
    .local v11, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    .line 491
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 497
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 498
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1, v6}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 499
    const/4 v3, 0x1

    return v3

    .line 494
    .end local v6    # "_arg2":Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    .local v21, "_arg1":Landroid/net/Uri;
    goto :goto_e

    .line 503
    .end local v11    # "_arg0":I
    .end local v21    # "_arg1":Landroid/net/Uri;
    :sswitch_24
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 507
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v22

    .line 509
    .local v22, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v3, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Landroid/service/notification/Condition;

    .line 510
    .local v27, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    .line 511
    const/4 v3, 0x1

    return v3

    .line 515
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v27    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_25
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/IConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionListener;

    move-result-object v13

    .line 519
    .local v13, "_arg0":Landroid/service/notification/IConditionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 520
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V

    .line 521
    const/4 v3, 0x1

    return v3

    .line 525
    .end local v13    # "_arg0":Landroid/service/notification/IConditionListener;
    .end local v17    # "_arg1":I
    :sswitch_26
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 528
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v34

    .line 529
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v34, :cond_f

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v3, 0x1

    return v3

    .line 530
    :cond_f
    const/4 v3, 0x0

    goto :goto_f

    .line 535
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_27
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 538
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v29

    .line 539
    .local v29, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    if-eqz v29, :cond_10

    .line 541
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v3, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 547
    :goto_10
    const/4 v3, 0x1

    return v3

    .line 545
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 551
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v29    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_28
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 555
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 556
    sget-object v3, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager$Policy;

    .line 561
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v3, 0x1

    return v3

    .line 559
    :cond_11
    const/16 v19, 0x0

    .local v19, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_11

    .line 567
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_29
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getPackagesRequestingNotificationPolicyAccess()[Ljava/lang/String;

    move-result-object v37

    .line 569
    .local v37, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 571
    const/4 v3, 0x1

    return v3

    .line 575
    .end local v37    # "_result":[Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 578
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v34

    .line 579
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    if-eqz v34, :cond_12

    const/4 v3, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v3, 0x1

    return v3

    .line 580
    :cond_12
    const/4 v3, 0x0

    goto :goto_12

    .line 585
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v34    # "_result":Z
    :sswitch_2b
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 589
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/16 v23, 0x1

    .line 590
    .local v23, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v3, 0x1

    return v3

    .line 589
    .end local v23    # "_arg1":Z
    :cond_13
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_13

    .line 596
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    :sswitch_2c
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 599
    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v35

    .line 600
    .local v35, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 602
    const/4 v3, 0x1

    return v3

    .line 606
    .end local v11    # "_arg0":I
    .end local v35    # "_result":[B
    :sswitch_2d
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 610
    .local v16, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 611
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    const/4 v3, 0x1

    return v3

    .line 617
    .end local v16    # "_arg0":[B
    .end local v17    # "_arg1":I
    :sswitch_2e
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 621
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 622
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v31

    .line 623
    .restart local v31    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v31, :cond_14

    .line 625
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v3, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 631
    :goto_14
    const/4 v3, 0x1

    return v3

    .line 629
    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 635
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v31    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2f
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 639
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 640
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationSubscript(Ljava/lang/String;I)Z

    move-result v34

    .line 641
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v34, :cond_15

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v3, 0x1

    return v3

    .line 642
    :cond_15
    const/4 v3, 0x0

    goto :goto_15

    .line 647
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v34    # "_result":Z
    :sswitch_30
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 650
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/INotificationManager$Stub;->getNotificationSubscript(Ljava/lang/String;)I

    move-result v28

    .line 651
    .restart local v28    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v3, 0x1

    return v3

    .line 657
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v28    # "_result":I
    :sswitch_31
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getNotificationSubscriptMap()Ljava/util/Map;

    move-result-object v33

    .line 659
    .local v33, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 661
    const/4 v3, 0x1

    return v3

    .line 665
    .end local v33    # "_result":Ljava/util/Map;
    :sswitch_32
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 669
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_16

    const/16 v23, 0x1

    .line 670
    .restart local v23    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationSubscriptEnable(Ljava/lang/String;Z)V

    .line 671
    const/4 v3, 0x1

    return v3

    .line 669
    .end local v23    # "_arg1":Z
    :cond_16
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_16

    .line 675
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    :sswitch_33
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 679
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_17

    const/16 v23, 0x1

    .line 680
    .restart local v23    # "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getNotificationSubscriptEnable(Ljava/lang/String;Z)Z

    move-result v34

    .line 681
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    if-eqz v34, :cond_18

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    const/4 v3, 0x1

    return v3

    .line 679
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :cond_17
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_17

    .line 682
    .restart local v34    # "_result":Z
    :cond_18
    const/4 v3, 0x0

    goto :goto_18

    .line 687
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :sswitch_34
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getNotificationSubscriptEnableMap()Ljava/util/Map;

    move-result-object v33

    .line 689
    .restart local v33    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 691
    const/4 v3, 0x1

    return v3

    .line 695
    .end local v33    # "_result":Ljava/util/Map;
    :sswitch_35
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 699
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_19

    const/16 v23, 0x1

    .line 700
    .restart local v23    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationOnKeyguardEnable(Ljava/lang/String;Z)V

    .line 701
    const/4 v3, 0x1

    return v3

    .line 699
    .end local v23    # "_arg1":Z
    :cond_19
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_19

    .line 705
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    :sswitch_36
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 709
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v23, 0x1

    .line 710
    .restart local v23    # "_arg1":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getNotificationOnKeyguardEnable(Ljava/lang/String;Z)Z

    move-result v34

    .line 711
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v34, :cond_1b

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v3, 0x1

    return v3

    .line 709
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_1a

    .line 712
    .restart local v34    # "_result":Z
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1b

    .line 717
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :sswitch_37
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getNotificationOnKeyguardEnableMap()Ljava/util/Map;

    move-result-object v33

    .line 719
    .restart local v33    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 721
    const/4 v3, 0x1

    return v3

    .line 725
    .end local v33    # "_result":Ljava/util/Map;
    :sswitch_38
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 729
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v23, 0x1

    .line 730
    .restart local v23    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->setNotificationHeadsUpEnable(Ljava/lang/String;Z)V

    .line 731
    const/4 v3, 0x1

    return v3

    .line 729
    .end local v23    # "_arg1":Z
    :cond_1c
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_1c

    .line 735
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    :sswitch_39
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 739
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v23, 0x1

    .line 740
    .restart local v23    # "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/app/INotificationManager$Stub;->getNotificationHeadsUpEnable(Ljava/lang/String;Z)Z

    move-result v34

    .line 741
    .restart local v34    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v34, :cond_1e

    const/4 v3, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v3, 0x1

    return v3

    .line 739
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :cond_1d
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Z
    goto :goto_1d

    .line 742
    .restart local v34    # "_result":Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1e

    .line 747
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v23    # "_arg1":Z
    .end local v34    # "_result":Z
    :sswitch_3a
    const-string/jumbo v3, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getNotificationHeadsUpEnableMap()Ljava/util/Map;

    move-result-object v33

    .line 749
    .restart local v33    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 751
    const/4 v3, 0x1

    return v3

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
