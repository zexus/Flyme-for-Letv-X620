.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyguardOrShowSecurityPanel:I = 0x1e

.field static final TRANSACTION_getSystemLockedTask:I = 0x20

.field static final TRANSACTION_hideDefaultAccountStatus:I = 0x1a

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_sendSystemuiKeyevent:I = 0x21

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiIconColor:I = 0x1c

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showDefaultAccountStatus:I = 0x19

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8

.field static final TRANSACTION_updateControlCenter:I = 0x1d

.field static final TRANSACTION_updateStatusBarMoveUpOffset:I = 0x1b

.field static final TRANSACTION_updateSystemUIWindowFlag:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 19
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

    .line 353
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    .line 43
    :sswitch_0
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v18, 0x1

    return v18

    .line 48
    :sswitch_1
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 52
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_0

    .line 53
    sget-object v18, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/16 v18, 0x1

    return v18

    .line 56
    :cond_0
    const/4 v11, 0x0

    .local v11, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 64
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 67
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/16 v18, 0x1

    return v18

    .line 73
    .end local v3    # "_arg0":I
    :sswitch_3
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 78
    .local v10, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/16 v18, 0x1

    return v18

    .line 84
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_4
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/16 v18, 0x1

    return v18

    .line 91
    :sswitch_5
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/16 v18, 0x1

    return v18

    .line 98
    :sswitch_6
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/16 v18, 0x1

    return v18

    .line 105
    :sswitch_7
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 110
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/16 v18, 0x1

    return v18

    .line 116
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_8
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1

    const/4 v9, 0x1

    .line 119
    .local v9, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/16 v18, 0x1

    return v18

    .line 118
    .end local v9    # "_arg0":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_1

    .line 125
    .end local v9    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 129
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 131
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 133
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_2

    const/16 v16, 0x1

    .line 134
    .local v16, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v10, v15, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/16 v18, 0x1

    return v18

    .line 133
    .end local v16    # "_arg3":Z
    :cond_2
    const/16 v16, 0x0

    .restart local v16    # "_arg3":Z
    goto :goto_2

    .line 140
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v10    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Z
    :sswitch_a
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 145
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/16 v18, 0x1

    return v18

    .line 151
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    :sswitch_b
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/16 v18, 0x1

    return v18

    .line 158
    :sswitch_c
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    .line 160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    const/16 v18, 0x1

    return v18

    .line 165
    :sswitch_d
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 171
    .restart local v10    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 172
    .restart local v15    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v15}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    const/16 v18, 0x1

    return v18

    .line 178
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":I
    .end local v15    # "_arg2":I
    :sswitch_e
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_3

    const/4 v9, 0x1

    .line 181
    .restart local v9    # "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    const/16 v18, 0x1

    return v18

    .line 180
    .end local v9    # "_arg0":Z
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_3

    .line 187
    .end local v9    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_4

    const/4 v9, 0x1

    .line 191
    .restart local v9    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_5

    const/4 v14, 0x1

    .line 192
    .local v14, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/16 v18, 0x1

    return v18

    .line 189
    .end local v9    # "_arg0":Z
    .end local v14    # "_arg1":Z
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg0":Z
    goto :goto_4

    .line 191
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Z
    goto :goto_5

    .line 198
    .end local v9    # "_arg0":Z
    .end local v14    # "_arg1":Z
    :sswitch_10
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/16 v18, 0x1

    return v18

    .line 205
    :sswitch_11
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/16 v18, 0x1

    return v18

    .line 212
    :sswitch_12
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/16 v18, 0x1

    return v18

    .line 219
    :sswitch_13
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/16 v18, 0x1

    return v18

    .line 226
    :sswitch_14
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/16 v18, 0x1

    return v18

    .line 233
    :sswitch_15
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/16 v18, 0x1

    return v18

    .line 240
    :sswitch_16
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 244
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 245
    .local v12, "_arg1":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12, v13}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/16 v18, 0x1

    return v18

    .line 251
    .end local v4    # "_arg0":J
    .end local v12    # "_arg1":J
    :sswitch_17
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/16 v18, 0x1

    return v18

    .line 258
    :sswitch_18
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_6

    .line 261
    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 266
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    const/16 v18, 0x1

    return v18

    .line 264
    :cond_6
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/Bundle;
    goto :goto_6

    .line 272
    .end local v6    # "_arg0":Landroid/os/Bundle;
    :sswitch_19
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showDefaultAccountStatus(I)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/16 v18, 0x1

    return v18

    .line 281
    .end local v3    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideDefaultAccountStatus()V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/16 v18, 0x1

    return v18

    .line 288
    :sswitch_1b
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 291
    .local v2, "_arg0":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateStatusBarMoveUpOffset(F)V

    .line 292
    const/16 v18, 0x1

    return v18

    .line 296
    .end local v2    # "_arg0":F
    :sswitch_1c
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 299
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiIconColor(I)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/16 v18, 0x1

    return v18

    .line 305
    .end local v3    # "_arg0":I
    :sswitch_1d
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_7

    .line 308
    sget-object v18, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    .line 313
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateControlCenter(Landroid/os/Message;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/16 v18, 0x1

    return v18

    .line 311
    :cond_7
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/os/Message;
    goto :goto_7

    .line 319
    .end local v8    # "_arg0":Landroid/os/Message;
    :sswitch_1e
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyguardOrShowSecurityPanel()V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v18, 0x1

    return v18

    .line 326
    :sswitch_1f
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 329
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->updateSystemUIWindowFlag(I)V

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    const/16 v18, 0x1

    return v18

    .line 335
    .end local v3    # "_arg0":I
    :sswitch_20
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getSystemLockedTask()Ljava/util/Map;

    move-result-object v17

    .line 337
    .local v17, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 339
    const/16 v18, 0x1

    return v18

    .line 343
    .end local v17    # "_result":Ljava/util/Map;
    :sswitch_21
    const-string/jumbo v18, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_8

    const/4 v14, 0x1

    .line 348
    .restart local v14    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->sendSystemuiKeyevent(IZ)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/16 v18, 0x1

    return v18

    .line 347
    .end local v14    # "_arg1":Z
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Z
    goto :goto_8

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
