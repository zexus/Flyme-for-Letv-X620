.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_appTransitionCancelled:I = 0x21

.field static final TRANSACTION_appTransitionPending:I = 0x20

.field static final TRANSACTION_appTransitionStarting:I = 0x22

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x1f

.field static final TRANSACTION_clearNotificationEffects:I = 0x11

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_disable2:I = 0x5

.field static final TRANSACTION_disable2ForUser:I = 0x6

.field static final TRANSACTION_disableForUser:I = 0x4

.field static final TRANSACTION_dismissKeyguardOrShowSecurityPanel:I = 0x29

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xc

.field static final TRANSACTION_getSystemLockedTask:I = 0x2b

.field static final TRANSACTION_hideDefaultAccountStatus:I = 0x25

.field static final TRANSACTION_hideRecentApps:I = 0x1c

.field static final TRANSACTION_onClearAllNotifications:I = 0x15

.field static final TRANSACTION_onNotificationActionClick:I = 0x13

.field static final TRANSACTION_onNotificationClear:I = 0x16

.field static final TRANSACTION_onNotificationClearShadow:I = 0x2d

.field static final TRANSACTION_onNotificationClick:I = 0x12

.field static final TRANSACTION_onNotificationError:I = 0x14

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final TRANSACTION_onPanelHidden:I = 0x10

.field static final TRANSACTION_onPanelRevealed:I = 0xf

.field static final TRANSACTION_preloadRecentApps:I = 0x1e

.field static final TRANSACTION_registerStatusBar:I = 0xe

.field static final TRANSACTION_removeIcon:I = 0x9

.field static final TRANSACTION_sendSystemuiKeyevent:I = 0x2c

.field static final TRANSACTION_setCurrentUser:I = 0xd

.field static final TRANSACTION_setIcon:I = 0x7

.field static final TRANSACTION_setIconVisibility:I = 0x8

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setSystemUiIconColor:I = 0x27

.field static final TRANSACTION_setSystemUiVisibility:I = 0x19

.field static final TRANSACTION_setWindowState:I = 0x1a

.field static final TRANSACTION_showDefaultAccountStatus:I = 0x24

.field static final TRANSACTION_showRecentApps:I = 0x1b

.field static final TRANSACTION_startAssist:I = 0x23

.field static final TRANSACTION_toggleRecentApps:I = 0x1d

.field static final TRANSACTION_topAppWindowChanged:I = 0xa

.field static final TRANSACTION_updateControlCenter:I = 0x28

.field static final TRANSACTION_updateStatusBarMoveUpOffset:I = 0x26

.field static final TRANSACTION_updateSystemUIWindowFlag:I = 0x2a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
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
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 50
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

    .line 541
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v6, 0x1

    return v6

    .line 48
    :sswitch_1
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    const/4 v6, 0x1

    return v6

    .line 55
    :sswitch_2
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v6, 0x1

    return v6

    .line 62
    :sswitch_3
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 66
    .local v27, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    .line 68
    .local v37, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 69
    .local v43, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v37

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v6, 0x1

    return v6

    .line 75
    .end local v27    # "_arg0":I
    .end local v37    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_arg2":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 79
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    .line 81
    .restart local v37    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 83
    .restart local v43    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 84
    .local v10, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v37

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v6, 0x1

    return v6

    .line 90
    .end local v10    # "_arg3":I
    .end local v27    # "_arg0":I
    .end local v37    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 94
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    .line 96
    .restart local v37    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 97
    .restart local v43    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v37

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v6, 0x1

    return v6

    .line 103
    .end local v27    # "_arg0":I
    .end local v37    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 107
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v37

    .line 109
    .restart local v37    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 111
    .restart local v43    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 112
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v37

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/4 v6, 0x1

    return v6

    .line 118
    .end local v10    # "_arg3":I
    .end local v27    # "_arg0":I
    .end local v37    # "_arg1":Landroid/os/IBinder;
    .end local v43    # "_arg2":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 126
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 128
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 129
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v6, 0x1

    return v6

    .line 135
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 139
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/16 v41, 0x1

    .line 140
    .local v41, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v6, 0x1

    return v6

    .line 139
    .end local v41    # "_arg1":Z
    :cond_0
    const/16 v41, 0x0

    .restart local v41    # "_arg1":Z
    goto :goto_0

    .line 146
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 149
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    const/4 v6, 0x1

    return v6

    .line 155
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v34, 0x1

    .line 158
    .local v34, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->topAppWindowChanged(Z)V

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v6, 0x1

    return v6

    .line 157
    .end local v34    # "_arg0":Z
    :cond_1
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_1

    .line 164
    .end local v34    # "_arg0":Z
    :sswitch_b
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 168
    .local v31, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 170
    .local v36, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 172
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    const/16 v48, 0x1

    .line 173
    .local v48, "_arg3":Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v36

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v9, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v6, 0x1

    return v6

    .line 172
    .end local v48    # "_arg3":Z
    :cond_2
    const/16 v48, 0x0

    .restart local v48    # "_arg3":Z
    goto :goto_2

    .line 179
    .end local v9    # "_arg2":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v36    # "_arg1":I
    .end local v48    # "_arg3":Z
    :sswitch_c
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel()V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v6, 0x1

    return v6

    .line 186
    :sswitch_d
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 189
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setCurrentUser(I)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v6, 0x1

    return v6

    .line 195
    .end local v27    # "_arg0":I
    :sswitch_e
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v33

    .line 199
    .local v33, "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    new-instance v40, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct/range {v40 .. v40}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 201
    .local v40, "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 202
    .local v46, "_arg2_length":I
    if-gez v46, :cond_3

    .line 203
    const/16 v45, 0x0

    .line 209
    :goto_3
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v47, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v40

    move-object/from16 v3, v45

    move-object/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v40, :cond_4

    .line 213
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v6, 0x1

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 220
    move-object/from16 v0, p3

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 221
    const/4 v6, 0x1

    return v6

    .line 206
    .end local v47    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_3
    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v45, v0

    .local v45, "_arg2":[I
    goto :goto_3

    .line 217
    .end local v45    # "_arg2":[I
    .restart local v47    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 225
    .end local v33    # "_arg0":Lcom/android/internal/statusbar/IStatusBar;
    .end local v40    # "_arg1":Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v46    # "_arg2_length":I
    .end local v47    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_f
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v34, 0x1

    .line 229
    .restart local v34    # "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 230
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v6, 0x1

    return v6

    .line 227
    .end local v34    # "_arg0":Z
    .end local v36    # "_arg1":I
    :cond_5
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_5

    .line 236
    .end local v34    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    .line 238
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v6, 0x1

    return v6

    .line 243
    :sswitch_11
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 250
    :sswitch_12
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 253
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v6, 0x1

    return v6

    .line 259
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 263
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 264
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;I)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v6, 0x1

    return v6

    .line 270
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_14
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 276
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 278
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 280
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 282
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 285
    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v6, 0x1

    return v6

    .line 291
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Ljava/lang/String;
    .end local v19    # "_arg6":I
    :sswitch_15
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 294
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    const/4 v6, 0x1

    return v6

    .line 300
    .end local v27    # "_arg0":I
    :sswitch_16
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 304
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 306
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 308
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 309
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v6, 0x1

    return v6

    .line 315
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_17
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 319
    .local v35, "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    sget-object v6, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v42

    check-cast v42, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 320
    .local v42, "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v6, 0x1

    return v6

    .line 326
    .end local v35    # "_arg0":[Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v42    # "_arg1":[Lcom/android/internal/statusbar/NotificationVisibility;
    :sswitch_18
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 330
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v41, 0x1

    .line 332
    .restart local v41    # "_arg1":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v44, 0x1

    .line 333
    .local v44, "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v44

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v6, 0x1

    return v6

    .line 330
    .end local v41    # "_arg1":Z
    .end local v44    # "_arg2":Z
    :cond_6
    const/16 v41, 0x0

    .restart local v41    # "_arg1":Z
    goto :goto_6

    .line 332
    :cond_7
    const/16 v44, 0x0

    .restart local v44    # "_arg2":Z
    goto :goto_7

    .line 339
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v41    # "_arg1":Z
    .end local v44    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 343
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 345
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 346
    .restart local v43    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v36

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IILjava/lang/String;)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v6, 0x1

    return v6

    .line 352
    .end local v27    # "_arg0":I
    .end local v36    # "_arg1":I
    .end local v43    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 356
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 357
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setWindowState(II)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 363
    .end local v27    # "_arg0":I
    .end local v36    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v34, 0x1

    .line 366
    .restart local v34    # "_arg0":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showRecentApps(Z)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v6, 0x1

    return v6

    .line 365
    .end local v34    # "_arg0":Z
    :cond_8
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_8

    .line 372
    .end local v34    # "_arg0":Z
    :sswitch_1c
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v34, 0x1

    .line 376
    .restart local v34    # "_arg0":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v41, 0x1

    .line 377
    .restart local v41    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideRecentApps(ZZ)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v6, 0x1

    return v6

    .line 374
    .end local v34    # "_arg0":Z
    .end local v41    # "_arg1":Z
    :cond_9
    const/16 v34, 0x0

    .restart local v34    # "_arg0":Z
    goto :goto_9

    .line 376
    :cond_a
    const/16 v41, 0x0

    .restart local v41    # "_arg1":Z
    goto :goto_a

    .line 383
    .end local v34    # "_arg0":Z
    .end local v41    # "_arg1":Z
    :sswitch_1d
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->toggleRecentApps()V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v6, 0x1

    return v6

    .line 390
    :sswitch_1e
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->preloadRecentApps()V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v6, 0x1

    return v6

    .line 397
    :sswitch_1f
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->cancelPreloadRecentApps()V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    const/4 v6, 0x1

    return v6

    .line 404
    :sswitch_20
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionPending()V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v6, 0x1

    return v6

    .line 411
    :sswitch_21
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionCancelled()V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v6, 0x1

    return v6

    .line 418
    :sswitch_22
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 422
    .local v28, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    .line 423
    .local v38, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move-wide/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->appTransitionStarting(JJ)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 429
    .end local v28    # "_arg0":J
    .end local v38    # "_arg1":J
    :sswitch_23
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 432
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    .line 437
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    const/4 v6, 0x1

    return v6

    .line 435
    :cond_b
    const/16 v30, 0x0

    .local v30, "_arg0":Landroid/os/Bundle;
    goto :goto_b

    .line 443
    .end local v30    # "_arg0":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 446
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showDefaultAccountStatus(I)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v6, 0x1

    return v6

    .line 452
    .end local v27    # "_arg0":I
    :sswitch_25
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideDefaultAccountStatus()V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v6, 0x1

    return v6

    .line 459
    :sswitch_26
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v26

    .line 462
    .local v26, "_arg0":F
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateStatusBarMoveUpOffset(F)V

    .line 463
    const/4 v6, 0x1

    return v6

    .line 467
    .end local v26    # "_arg0":F
    :sswitch_27
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 470
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiIconColor(I)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v6, 0x1

    return v6

    .line 476
    .end local v27    # "_arg0":I
    :sswitch_28
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 479
    sget-object v6, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/Message;

    .line 484
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateControlCenter(Landroid/os/Message;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v6, 0x1

    return v6

    .line 482
    :cond_c
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/os/Message;
    goto :goto_c

    .line 490
    .end local v32    # "_arg0":Landroid/os/Message;
    :sswitch_29
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->dismissKeyguardOrShowSecurityPanel()V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v6, 0x1

    return v6

    .line 497
    :sswitch_2a
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 500
    .restart local v27    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->updateSystemUIWindowFlag(I)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    const/4 v6, 0x1

    return v6

    .line 506
    .end local v27    # "_arg0":I
    :sswitch_2b
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getSystemLockedTask()Ljava/util/Map;

    move-result-object v49

    .line 508
    .local v49, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 510
    const/4 v6, 0x1

    return v6

    .line 514
    .end local v49    # "_result":Ljava/util/Map;
    :sswitch_2c
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 518
    .restart local v27    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v41, 0x1

    .line 519
    .restart local v41    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->sendSystemuiKeyevent(IZ)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v6, 0x1

    return v6

    .line 518
    .end local v41    # "_arg1":Z
    :cond_d
    const/16 v41, 0x0

    .restart local v41    # "_arg1":Z
    goto :goto_d

    .line 525
    .end local v27    # "_arg0":I
    .end local v41    # "_arg1":Z
    :sswitch_2d
    const-string/jumbo v6, "com.android.internal.statusbar.IStatusBarService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 529
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 531
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 533
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 535
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v25, 0x1

    .local v25, "_arg4":Z
    :goto_e
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    .line 536
    invoke-virtual/range {v20 .. v25}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClearShadow(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v6, 0x1

    return v6

    .line 535
    .end local v25    # "_arg4":Z
    :cond_e
    const/16 v25, 0x0

    .restart local v25    # "_arg4":Z
    goto :goto_e

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
