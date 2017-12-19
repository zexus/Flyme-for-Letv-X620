.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_0

    .line 64
    return-object v1

    .line 67
    :cond_0
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 68
    .local v0, "in":Landroid/app/IApplicationThread;
    if-eqz v0, :cond_1

    .line 69
    return-object v0

    .line 72
    :cond_1
    new-instance v1, Landroid/app/ApplicationThreadProxy;

    invoke-direct {v1, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 750
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 128
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
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 745
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 85
    :pswitch_1
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 87
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 88
    .local v7, "finished":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 89
    .local v8, "userLeaving":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 90
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_2
    move-object/from16 v5, p0

    .line 91
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 92
    const/4 v5, 0x1

    return v5

    .line 87
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "finished":Z
    goto :goto_0

    .line 88
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "userLeaving":Z
    goto :goto_1

    .line 90
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "dontReport":Z
    goto :goto_2

    .line 97
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :pswitch_2
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 99
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v123, 0x1

    .line 100
    .local v123, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 101
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v123

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 102
    const/4 v5, 0x1

    return v5

    .line 99
    .end local v9    # "configChanges":I
    .end local v123    # "show":Z
    :cond_3
    const/16 v123, 0x0

    .restart local v123    # "show":Z
    goto :goto_3

    .line 107
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v123    # "show":Z
    :pswitch_3
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 109
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v123, 0x1

    .line 110
    .restart local v123    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v123

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 111
    const/4 v5, 0x1

    return v5

    .line 109
    .end local v123    # "show":Z
    :cond_4
    const/16 v123, 0x0

    .restart local v123    # "show":Z
    goto :goto_4

    .line 116
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v123    # "show":Z
    :pswitch_4
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 118
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v124, 0x1

    .line 120
    .local v124, "sleeping":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v120, 0x1

    .line 122
    .local v120, "screenOn":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v124

    move/from16 v2, v120

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;ZZ)V

    .line 123
    const/4 v5, 0x1

    return v5

    .line 118
    .end local v120    # "screenOn":Z
    .end local v124    # "sleeping":Z
    :cond_5
    const/16 v124, 0x0

    .restart local v124    # "sleeping":Z
    goto :goto_5

    .line 120
    :cond_6
    const/16 v120, 0x0

    .restart local v120    # "screenOn":Z
    goto :goto_6

    .line 128
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v120    # "screenOn":Z
    .end local v124    # "sleeping":Z
    :pswitch_5
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 130
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 131
    .local v13, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v14, 0x1

    .line 132
    .local v14, "isForward":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 134
    .local v15, "reasonFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .local v16, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v11, p0

    move-object v12, v6

    .line 136
    invoke-virtual/range {v11 .. v16}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZILandroid/os/Bundle;)V

    .line 137
    const/4 v5, 0x1

    return v5

    .line 131
    .end local v14    # "isForward":Z
    .end local v15    # "reasonFlags":I
    .end local v16    # "resumeArgs":Landroid/os/Bundle;
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "isForward":Z
    goto :goto_7

    .line 142
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v13    # "procState":I
    .end local v14    # "isForward":Z
    :pswitch_6
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 144
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 145
    .local v30, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 146
    const/4 v5, 0x1

    return v5

    .line 151
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 153
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 154
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 155
    .local v20, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ActivityInfo;

    .line 156
    .local v21, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/res/Configuration;

    .line 157
    .local v22, "curConfig":Landroid/content/res/Configuration;
    const/16 v23, 0x0

    .line 158
    .local v23, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 159
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    .line 161
    :cond_8
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 162
    .local v24, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 164
    .local v25, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 163
    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v26

    .line 165
    .local v26, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 166
    .restart local v13    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v28

    .line 167
    .local v28, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v29

    .line 168
    .local v29, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 169
    .restart local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 170
    .local v31, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v32, 0x1

    .line 171
    .local v32, "notResumed":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v14, 0x1

    .line 172
    .restart local v14    # "isForward":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 173
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ProfilerInfo;

    :goto_a
    move-object/from16 v17, p0

    move-object/from16 v19, v6

    move/from16 v27, v13

    move/from16 v33, v14

    .line 174
    invoke-virtual/range {v17 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 177
    const/4 v5, 0x1

    return v5

    .line 170
    .end local v14    # "isForward":Z
    .end local v32    # "notResumed":Z
    :cond_9
    const/16 v32, 0x0

    .restart local v32    # "notResumed":Z
    goto :goto_8

    .line 171
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "isForward":Z
    goto :goto_9

    .line 173
    :cond_b
    const/16 v34, 0x0

    .local v34, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_a

    .line 182
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v13    # "procState":I
    .end local v14    # "isForward":Z
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "ident":I
    .end local v21    # "info":Landroid/content/pm/ActivityInfo;
    .end local v22    # "curConfig":Landroid/content/res/Configuration;
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v25    # "referrer":Ljava/lang/String;
    .end local v26    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v28    # "state":Landroid/os/Bundle;
    .end local v29    # "persistentState":Landroid/os/PersistableBundle;
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "notResumed":Z
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    :pswitch_8
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 184
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v30

    .line 185
    .restart local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 186
    .restart local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 187
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v32, 0x1

    .line 188
    .restart local v32    # "notResumed":Z
    :goto_b
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 189
    .local v41, "config":Landroid/content/res/Configuration;
    const/16 v23, 0x0

    .line 190
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 191
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    :cond_c
    move-object/from16 v35, p0

    move-object/from16 v36, v6

    move-object/from16 v37, v30

    move-object/from16 v38, v31

    move/from16 v39, v9

    move/from16 v40, v32

    move-object/from16 v42, v23

    .line 193
    invoke-virtual/range {v35 .. v42}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 194
    const/4 v5, 0x1

    return v5

    .line 187
    .end local v32    # "notResumed":Z
    .end local v41    # "config":Landroid/content/res/Configuration;
    :cond_d
    const/16 v32, 0x0

    .restart local v32    # "notResumed":Z
    goto :goto_b

    .line 199
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v30    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "notResumed":Z
    :pswitch_9
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    .line 201
    .restart local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 202
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 203
    const/4 v5, 0x1

    return v5

    .line 208
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v31    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 210
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v98, 0x1

    .line 211
    .local v98, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 212
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 213
    const/4 v5, 0x1

    return v5

    .line 210
    .end local v9    # "configChanges":I
    .end local v98    # "finishing":Z
    :cond_e
    const/16 v98, 0x0

    .restart local v98    # "finishing":Z
    goto :goto_c

    .line 218
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v98    # "finishing":Z
    :pswitch_b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 220
    .restart local v18    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ActivityInfo;

    .line 221
    .restart local v21    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 222
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 223
    .local v46, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v47

    .line 224
    .local v47, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v48

    .line 225
    .local v48, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v49, 0x1

    .line 226
    .local v49, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 227
    .local v50, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .local v51, "processState":I
    move-object/from16 v42, p0

    move-object/from16 v43, v18

    move-object/from16 v44, v21

    move-object/from16 v45, v24

    .line 228
    invoke-virtual/range {v42 .. v51}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 230
    const/4 v5, 0x1

    return v5

    .line 225
    .end local v49    # "sync":Z
    .end local v50    # "sendingUser":I
    .end local v51    # "processState":I
    :cond_f
    const/16 v49, 0x0

    .restart local v49    # "sync":Z
    goto :goto_d

    .line 234
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v21    # "info":Landroid/content/pm/ActivityInfo;
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v46    # "resultCode":I
    .end local v47    # "resultData":Ljava/lang/String;
    .end local v48    # "resultExtras":Landroid/os/Bundle;
    .end local v49    # "sync":Z
    :pswitch_c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 236
    .local v36, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/pm/ServiceInfo;

    .line 237
    .local v101, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 238
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 239
    .restart local v51    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v101

    move-object/from16 v3, v24

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 240
    const/4 v5, 0x1

    return v5

    .line 244
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v51    # "processState":I
    .end local v101    # "info":Landroid/content/pm/ServiceInfo;
    :pswitch_d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 246
    .restart local v36    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 247
    .restart local v18    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v117, 0x1

    .line 248
    .local v117, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 249
    .restart local v51    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    move/from16 v3, v117

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 250
    const/4 v5, 0x1

    return v5

    .line 247
    .end local v51    # "processState":I
    .end local v117    # "rebind":Z
    :cond_10
    const/16 v117, 0x0

    .restart local v117    # "rebind":Z
    goto :goto_e

    .line 254
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v117    # "rebind":Z
    :pswitch_e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 256
    .restart local v36    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 257
    .restart local v18    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 258
    const/4 v5, 0x1

    return v5

    .line 263
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 265
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v37, 0x1

    .line 266
    .local v37, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 267
    .local v38, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 269
    .local v39, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 270
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    :goto_10
    move-object/from16 v35, p0

    .line 274
    invoke-virtual/range {v35 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 275
    const/4 v5, 0x1

    return v5

    .line 265
    .end local v37    # "taskRemoved":Z
    .end local v38    # "startId":I
    .end local v39    # "fl":I
    :cond_11
    const/16 v37, 0x0

    .restart local v37    # "taskRemoved":Z
    goto :goto_f

    .line 272
    .restart local v38    # "startId":I
    .restart local v39    # "fl":I
    :cond_12
    const/16 v40, 0x0

    .local v40, "args":Landroid/content/Intent;
    goto :goto_10

    .line 280
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v37    # "taskRemoved":Z
    .end local v38    # "startId":I
    .end local v39    # "fl":I
    .end local v40    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 282
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 283
    const/4 v5, 0x1

    return v5

    .line 288
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 291
    .local v53, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/pm/ApplicationInfo;

    .line 293
    .local v54, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v55

    .line 294
    .local v55, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 295
    new-instance v56, Landroid/content/ComponentName;

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 296
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 297
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ProfilerInfo;

    .line 298
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v58

    .line 299
    .local v58, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 300
    .local v91, "binder":Landroid/os/IBinder;
    invoke-static/range {v91 .. v91}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v59

    .line 301
    .local v59, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 303
    invoke-static/range {v91 .. v91}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v60

    .line 304
    .local v60, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 305
    .local v61, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v62, 0x1

    .line 306
    .local v62, "openGlTrace":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v63, 0x1

    .line 307
    .local v63, "restrictedBackupMode":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v64, 0x1

    .line 308
    .local v64, "persistent":Z
    :goto_15
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 309
    .restart local v41    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 310
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v67

    .line 311
    .local v67, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .local v68, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v52, p0

    move-object/from16 v57, v34

    move-object/from16 v65, v41

    move-object/from16 v66, v24

    .line 312
    invoke-virtual/range {v52 .. v68}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 315
    const/4 v5, 0x1

    return v5

    .line 295
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v41    # "config":Landroid/content/res/Configuration;
    .end local v58    # "testArgs":Landroid/os/Bundle;
    .end local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v61    # "testMode":I
    .end local v62    # "openGlTrace":Z
    .end local v63    # "restrictedBackupMode":Z
    .end local v64    # "persistent":Z
    .end local v67    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v68    # "coreSettings":Landroid/os/Bundle;
    .end local v91    # "binder":Landroid/os/IBinder;
    :cond_13
    const/16 v56, 0x0

    .local v56, "testName":Landroid/content/ComponentName;
    goto :goto_11

    .line 297
    .end local v56    # "testName":Landroid/content/ComponentName;
    :cond_14
    const/16 v34, 0x0

    .restart local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_12

    .line 305
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v58    # "testArgs":Landroid/os/Bundle;
    .restart local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v61    # "testMode":I
    .restart local v91    # "binder":Landroid/os/IBinder;
    :cond_15
    const/16 v62, 0x0

    .restart local v62    # "openGlTrace":Z
    goto :goto_13

    .line 306
    :cond_16
    const/16 v63, 0x0

    .restart local v63    # "restrictedBackupMode":Z
    goto :goto_14

    .line 307
    :cond_17
    const/16 v64, 0x0

    .restart local v64    # "persistent":Z
    goto :goto_15

    .line 320
    .end local v53    # "packageName":Ljava/lang/String;
    .end local v54    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v55    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v58    # "testArgs":Landroid/os/Bundle;
    .end local v59    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v60    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v61    # "testMode":I
    .end local v62    # "openGlTrace":Z
    .end local v63    # "restrictedBackupMode":Z
    .end local v64    # "persistent":Z
    .end local v91    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 322
    const/4 v5, 0x1

    return v5

    .line 327
    :pswitch_13
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 329
    const/4 v5, 0x1

    return v5

    .line 334
    :pswitch_14
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/res/Configuration;

    .line 336
    .restart local v41    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    const/4 v5, 0x1

    return v5

    .line 341
    .end local v41    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 343
    const/4 v5, 0x1

    return v5

    .line 347
    :pswitch_16
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 349
    const/4 v5, 0x1

    return v5

    .line 353
    :pswitch_17
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    .line 355
    .local v116, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .line 356
    .local v111, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 357
    .local v96, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/net/Uri;

    .line 358
    .local v107, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v111

    move-object/from16 v3, v96

    move-object/from16 v4, v107

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    const/4 v5, 0x1

    return v5

    .line 363
    .end local v96    # "exclList":Ljava/lang/String;
    .end local v107    # "pacFileUrl":Landroid/net/Uri;
    .end local v111    # "port":Ljava/lang/String;
    .end local v116    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 369
    :pswitch_19
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 371
    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 372
    .local v121, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 373
    .local v84, "args":[Ljava/lang/String;
    if-eqz v97, :cond_18

    .line 374
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v84

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 376
    :try_start_0
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_18
    :goto_16
    const/4 v5, 0x1

    return v5

    .line 377
    :catch_0
    move-exception v94

    .local v94, "e":Ljava/io/IOException;
    goto :goto_16

    .line 384
    .end local v84    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 386
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v121

    .line 387
    .restart local v121    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 388
    .restart local v84    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_19

    .line 389
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v84

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 391
    :try_start_1
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    :cond_19
    :goto_17
    const/4 v5, 0x1

    return v5

    .line 392
    :catch_1
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 399
    .end local v84    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 400
    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v70

    .line 402
    .local v70, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Intent;

    .line 403
    .restart local v18    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 404
    .restart local v46    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 405
    .local v73, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v74

    .line 406
    .local v74, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v75, 0x1

    .line 407
    .local v75, "ordered":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v76, 0x1

    .line 408
    .local v76, "sticky":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 409
    .restart local v50    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .restart local v51    # "processState":I
    move-object/from16 v69, p0

    move-object/from16 v71, v18

    move/from16 v72, v46

    move/from16 v77, v50

    move/from16 v78, v51

    .line 410
    invoke-virtual/range {v69 .. v78}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 412
    const/4 v5, 0x1

    return v5

    .line 406
    .end local v50    # "sendingUser":I
    .end local v51    # "processState":I
    .end local v75    # "ordered":Z
    .end local v76    # "sticky":Z
    :cond_1a
    const/16 v75, 0x0

    .restart local v75    # "ordered":Z
    goto :goto_18

    .line 407
    :cond_1b
    const/16 v76, 0x0

    .restart local v76    # "sticky":Z
    goto :goto_19

    .line 417
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v46    # "resultCode":I
    .end local v70    # "receiver":Landroid/content/IIntentReceiver;
    .end local v73    # "dataStr":Ljava/lang/String;
    .end local v74    # "extras":Landroid/os/Bundle;
    .end local v75    # "ordered":Z
    .end local v76    # "sticky":Z
    :pswitch_1c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 419
    const/4 v5, 0x1

    return v5

    .line 424
    :pswitch_1d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 426
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v23, 0x0

    .line 427
    .restart local v23    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 428
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v23, Landroid/content/res/Configuration;

    .line 430
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 431
    const/4 v5, 0x1

    return v5

    .line 436
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v125, 0x1

    .line 438
    .local v125, "start":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 439
    .local v113, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 440
    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/ProfilerInfo;

    .line 441
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v125

    move-object/from16 v2, v34

    move/from16 v3, v113

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 442
    const/4 v5, 0x1

    return v5

    .line 437
    .end local v113    # "profileType":I
    .end local v125    # "start":Z
    :cond_1d
    const/16 v125, 0x0

    .restart local v125    # "start":Z
    goto :goto_1a

    .line 440
    .restart local v113    # "profileType":I
    :cond_1e
    const/16 v34, 0x0

    .restart local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_1b

    .line 447
    .end local v34    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v113    # "profileType":I
    .end local v125    # "start":Z
    :pswitch_1f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 449
    .local v100, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 450
    const/4 v5, 0x1

    return v5

    .line 455
    .end local v100    # "group":I
    :pswitch_20
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 457
    .local v87, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 458
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 459
    .local v90, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v24

    move/from16 v3, v90

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 460
    const/4 v5, 0x1

    return v5

    .line 465
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v90    # "backupMode":I
    :pswitch_21
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/content/pm/ApplicationInfo;

    .line 467
    .restart local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/res/CompatibilityInfo;

    .line 468
    .restart local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 469
    const/4 v5, 0x1

    return v5

    .line 474
    .end local v24    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v87    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_22
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 476
    .local v92, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v108

    .line 477
    .local v108, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v92

    move-object/from16 v2, v108

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 478
    const/4 v5, 0x1

    return v5

    .line 483
    .end local v92    # "cmd":I
    .end local v108    # "packages":[Ljava/lang/String;
    :pswitch_23
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 485
    .local v105, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 486
    const/4 v5, 0x1

    return v5

    .line 491
    .end local v105    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    const/16 v104, 0x1

    .line 493
    .local v104, "managed":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 494
    .local v109, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 495
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/ParcelFileDescriptor;

    .line 496
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v104

    move-object/from16 v2, v109

    move-object/from16 v3, v97

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 497
    const/4 v5, 0x1

    return v5

    .line 492
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :cond_1f
    const/16 v104, 0x0

    .restart local v104    # "managed":Z
    goto :goto_1c

    .line 495
    .restart local v109    # "path":Ljava/lang/String;
    :cond_20
    const/16 v97, 0x0

    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1d

    .line 501
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v104    # "managed":Z
    .end local v109    # "path":Ljava/lang/String;
    :pswitch_25
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 503
    .local v97, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v85

    .line 504
    .local v85, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v112

    .line 505
    .local v112, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 506
    .restart local v84    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_21

    .line 507
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v112

    move-object/from16 v3, v84

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 509
    :try_start_2
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 513
    :cond_21
    :goto_1e
    const/4 v5, 0x1

    return v5

    .line 510
    :catch_2
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_1e

    .line 517
    .end local v84    # "args":[Ljava/lang/String;
    .end local v85    # "activity":Landroid/os/IBinder;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v122

    .line 519
    .local v122, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 520
    const/4 v5, 0x1

    return v5

    .line 524
    .end local v122    # "settings":Landroid/os/Bundle;
    :pswitch_27
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 526
    .local v110, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/res/CompatibilityInfo;

    .line 527
    .local v93, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v93

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 528
    const/4 v5, 0x1

    return v5

    .line 532
    .end local v93    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v110    # "pkg":Ljava/lang/String;
    :pswitch_28
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v103

    .line 534
    .local v103, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 535
    const/4 v5, 0x1

    return v5

    .line 540
    .end local v103    # "level":I
    :pswitch_29
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 542
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/os/Debug$MemoryInfo;

    .line 543
    .local v79, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v80, 0x1

    .line 544
    .local v80, "checkin":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v81, 0x1

    .line 545
    .local v81, "dumpInfo":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v82, 0x1

    .line 546
    .local v82, "dumpDalvik":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v83, 0x1

    .line 547
    .local v83, "dumpSummaryOnly":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 548
    .restart local v84    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_22

    .line 550
    :try_start_3
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v78

    move-object/from16 v77, p0

    invoke-virtual/range {v77 .. v84}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 554
    :try_start_4
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 560
    :cond_22
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v5, 0x1

    return v5

    .line 543
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v83    # "dumpSummaryOnly":Z
    .end local v84    # "args":[Ljava/lang/String;
    :cond_23
    const/16 v80, 0x0

    .restart local v80    # "checkin":Z
    goto :goto_1f

    .line 544
    :cond_24
    const/16 v81, 0x0

    .restart local v81    # "dumpInfo":Z
    goto :goto_20

    .line 545
    :cond_25
    const/16 v82, 0x0

    .restart local v82    # "dumpDalvik":Z
    goto :goto_21

    .line 546
    :cond_26
    const/16 v83, 0x0

    .restart local v83    # "dumpSummaryOnly":Z
    goto :goto_22

    .line 555
    .restart local v84    # "args":[Ljava/lang/String;
    :catch_3
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 552
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 554
    :try_start_5
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 552
    :goto_24
    throw v5

    .line 555
    :catch_4
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 566
    .end local v79    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v80    # "checkin":Z
    .end local v81    # "dumpInfo":Z
    .end local v82    # "dumpDalvik":Z
    .end local v83    # "dumpSummaryOnly":Z
    .end local v84    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2a
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 568
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 569
    .restart local v84    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_27

    .line 571
    :try_start_6
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 574
    :try_start_7
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 580
    :cond_27
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v5, 0x1

    return v5

    .line 575
    :catch_5
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_25

    .line 572
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 574
    :try_start_8
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 572
    :goto_26
    throw v5

    .line 575
    :catch_6
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_26

    .line 586
    .end local v84    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v97

    .line 588
    .restart local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v84

    .line 589
    .restart local v84    # "args":[Ljava/lang/String;
    if-eqz v97, :cond_28

    .line 591
    :try_start_9
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 594
    :try_start_a
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 600
    :cond_28
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    const/4 v5, 0x1

    return v5

    .line 595
    :catch_7
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_27

    .line 592
    .end local v94    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    .line 594
    :try_start_b
    invoke-virtual/range {v97 .. v97}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 592
    :goto_28
    throw v5

    .line 595
    :catch_8
    move-exception v94

    .restart local v94    # "e":Ljava/io/IOException;
    goto :goto_28

    .line 606
    .end local v84    # "args":[Ljava/lang/String;
    .end local v94    # "e":Ljava/io/IOException;
    .end local v97    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .line 608
    .local v115, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v5, 0x1

    return v5

    .line 615
    .end local v115    # "provider":Landroid/os/IBinder;
    :pswitch_2d
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v86

    .line 617
    .local v86, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .line 618
    .local v118, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .line 619
    .local v119, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v118

    move/from16 v3, v119

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v5, 0x1

    return v5

    .line 626
    .end local v86    # "activityToken":Landroid/os/IBinder;
    .end local v118    # "requestToken":Landroid/os/IBinder;
    .end local v119    # "requestType":I
    :pswitch_2e
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 628
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_29

    const/16 v127, 0x1

    .line 629
    .local v127, "timeout":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v127

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    const/4 v5, 0x1

    return v5

    .line 628
    .end local v127    # "timeout":Z
    :cond_29
    const/16 v127, 0x0

    .restart local v127    # "timeout":Z
    goto :goto_29

    .line 636
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v127    # "timeout":Z
    :pswitch_2f
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 638
    .restart local v36    # "token":Landroid/os/IBinder;
    new-instance v106, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v106

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 639
    .local v106, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v5, 0x1

    return v5

    .line 646
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v106    # "options":Landroid/app/ActivityOptions;
    :pswitch_30
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v126

    .line 648
    .local v126, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v5, 0x1

    return v5

    .line 655
    .end local v126    # "state":I
    :pswitch_31
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ProviderInfo;

    .line 657
    .local v114, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v5, 0x1

    return v5

    .line 664
    .end local v114    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_32
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v102

    .line 666
    .local v102, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v102

    if-ne v0, v5, :cond_2a

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    const/4 v5, 0x1

    return v5

    .line 666
    :cond_2a
    const/4 v5, 0x0

    goto :goto_2a

    .line 673
    .end local v102    # "is24Hour":B
    :pswitch_33
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 675
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v5, 0x1

    return v5

    .line 682
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 684
    .restart local v36    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2b

    const/16 v95, 0x1

    .line 685
    .local v95, "enabled":Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v95

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    const/4 v5, 0x1

    return v5

    .line 684
    .end local v95    # "enabled":Z
    :cond_2b
    const/16 v95, 0x0

    .restart local v95    # "enabled":Z
    goto :goto_2b

    .line 692
    .end local v36    # "token":Landroid/os/IBinder;
    .end local v95    # "enabled":Z
    :pswitch_35
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 694
    .restart local v36    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    const/4 v5, 0x1

    return v5

    .line 701
    .end local v36    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v99

    .line 703
    .local v99, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 708
    .end local v99    # "firstPacket":[B
    :pswitch_37
    const-string/jumbo v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v88, 0x1

    .line 710
    .local v88, "arg0":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 711
    .local v89, "arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v88

    move-object/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->enableActivityThreadLog(ZLjava/lang/String;)V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v5, 0x1

    return v5

    .line 709
    .end local v88    # "arg0":Z
    .end local v89    # "arg1":Ljava/lang/String;
    :cond_2c
    const/16 v88, 0x0

    .restart local v88    # "arg0":Z
    goto :goto_2c

    .line 720
    .end local v88    # "arg0":Z
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpMessageHistory()V

    .line 722
    const/4 v5, 0x1

    return v5

    .line 730
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpAllMessageHistory()V

    .line 732
    const/4 v5, 0x1

    return v5

    .line 739
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->enableLooperLog()V

    .line 740
    const/4 v5, 0x1

    return v5

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_2f
        :pswitch_13
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_16
        :pswitch_17
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
    .end packed-switch
.end method
