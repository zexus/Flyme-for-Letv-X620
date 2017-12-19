.class public abstract Lcom/android/ims/internal/IImsConfig$Stub;
.super Landroid/os/Binder;
.source "IImsConfig.java"

# interfaces
.implements Lcom/android/ims/internal/IImsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field static final TRANSACTION_getFeatureValue:I = 0x5

.field static final TRANSACTION_getImsCapability:I = 0xc

.field static final TRANSACTION_getProvisionedStringValue:I = 0x2

.field static final TRANSACTION_getProvisionedValue:I = 0x1

.field static final TRANSACTION_getVideoQuality:I = 0x9

.field static final TRANSACTION_getVolteProvisioned:I = 0x7

.field static final TRANSACTION_getWfcProvisioned:I = 0x8

.field static final TRANSACTION_setFeatureValue:I = 0x6

.field static final TRANSACTION_setImsCapability:I = 0xb

.field static final TRANSACTION_setProvisionedStringValue:I = 0x4

.field static final TRANSACTION_setProvisionedValue:I = 0x3

.field static final TRANSACTION_setVideoQuality:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string/jumbo v0, "com.android.ims.internal.IImsConfig"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-object v1

    .line 34
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsConfig"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsConfig;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 182
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 50
    :sswitch_0
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v15, 0x1

    return v15

    .line 55
    :sswitch_1
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedValue(I)I

    move-result v12

    .line 59
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    const/4 v15, 0x1

    return v15

    .line 65
    .end local v1    # "_arg0":I
    .end local v12    # "_result":I
    :sswitch_2
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/IImsConfig$Stub;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    const/4 v15, 0x1

    return v15

    .line 75
    .end local v1    # "_arg0":I
    .end local v13    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedValue(II)I

    move-result v12

    .line 81
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    const/4 v15, 0x1

    return v15

    .line 87
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v12    # "_result":I
    :sswitch_4
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Lcom/android/ims/internal/IImsConfig$Stub;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v12

    .line 93
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v15, 0x1

    return v15

    .line 99
    .end local v1    # "_arg0":I
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v12    # "_result":I
    :sswitch_5
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v9

    .line 106
    .local v9, "_arg2":Lcom/android/ims/ImsConfigListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v9}, Lcom/android/ims/internal/IImsConfig$Stub;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    .line 107
    const/4 v15, 0x1

    return v15

    .line 111
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v9    # "_arg2":Lcom/android/ims/ImsConfigListener;
    :sswitch_6
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 117
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 119
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v11

    .line 120
    .local v11, "_arg3":Lcom/android/ims/ImsConfigListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v8, v11}, Lcom/android/ims/internal/IImsConfig$Stub;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v15, 0x1

    return v15

    .line 126
    .end local v1    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v11    # "_arg3":Lcom/android/ims/ImsConfigListener;
    :sswitch_7
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getVolteProvisioned()Z

    move-result v14

    .line 128
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v14, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v15, 0x1

    return v15

    .line 129
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 134
    .end local v14    # "_result":Z
    :sswitch_8
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsConfig$Stub;->getWfcProvisioned()Z

    move-result v14

    .line 136
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v14, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v15, 0x1

    return v15

    .line 137
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 142
    .end local v14    # "_result":Z
    :sswitch_9
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v2

    .line 145
    .local v2, "_arg0":Lcom/android/ims/ImsConfigListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsConfig$Stub;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    .line 146
    const/4 v15, 0x1

    return v15

    .line 150
    .end local v2    # "_arg0":Lcom/android/ims/ImsConfigListener;
    :sswitch_a
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/ims/ImsConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/ImsConfigListener;

    move-result-object v5

    .line 155
    .local v5, "_arg1":Lcom/android/ims/ImsConfigListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/ims/internal/IImsConfig$Stub;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    .line 156
    const/4 v15, 0x1

    return v15

    .line 160
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Lcom/android/ims/ImsConfigListener;
    :sswitch_b
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v3, 0x1

    .line 164
    .local v3, "_arg0":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    .line 166
    .local v7, "_arg1":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v10, 0x1

    .line 167
    .local v10, "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v10}, Lcom/android/ims/internal/IImsConfig$Stub;->setImsCapability(ZZZ)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v15, 0x1

    return v15

    .line 162
    .end local v3    # "_arg0":Z
    .end local v7    # "_arg1":Z
    .end local v10    # "_arg2":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_2

    .line 164
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_3

    .line 166
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_4

    .line 173
    .end local v3    # "_arg0":Z
    .end local v7    # "_arg1":Z
    .end local v10    # "_arg2":Z
    :sswitch_c
    const-string/jumbo v15, "com.android.ims.internal.IImsConfig"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/IImsConfig$Stub;->getImsCapability(I)Z

    move-result v14

    .line 177
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v14, :cond_5

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v15, 0x1

    return v15

    .line 178
    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    .line 46
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
