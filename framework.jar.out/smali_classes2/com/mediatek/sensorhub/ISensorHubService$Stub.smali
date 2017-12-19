.class public abstract Lcom/mediatek/sensorhub/ISensorHubService$Stub;
.super Landroid/os/Binder;
.source "ISensorHubService.java"

# interfaces
.implements Lcom/mediatek/sensorhub/ISensorHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/ISensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.sensorhub.ISensorHubService"

.field static final TRANSACTION_addConGesture:I = 0x6

.field static final TRANSACTION_cancelAction:I = 0x3

.field static final TRANSACTION_cancelConGesture:I = 0x7

.field static final TRANSACTION_enableGestureWakeup:I = 0x5

.field static final TRANSACTION_getContextList:I = 0x1

.field static final TRANSACTION_requestAction:I = 0x2

.field static final TRANSACTION_updateCondition:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/sensorhub/ISensorHubService;
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
    const-string/jumbo v1, "com.mediatek.sensorhub.ISensorHubService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/sensorhub/ISensorHubService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 45
    :sswitch_0
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v9, 0x1

    return v9

    .line 50
    :sswitch_1
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;

    move-result-object v7

    .line 52
    .local v7, "_result":Lcom/mediatek/sensorhub/ParcelableListInteger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v7, :cond_0

    .line 54
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/4 v9, 0x1

    invoke-virtual {v7, p3, v9}, Lcom/mediatek/sensorhub/ParcelableListInteger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 58
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v7    # "_result":Lcom/mediatek/sensorhub/ParcelableListInteger;
    :sswitch_2
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 67
    sget-object v9, Lcom/mediatek/sensorhub/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/Condition;

    .line 73
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 74
    sget-object v9, Lcom/mediatek/sensorhub/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/sensorhub/Action;

    .line 79
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I

    move-result v6

    .line 80
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v9, 0x1

    return v9

    .line 70
    .end local v6    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/mediatek/sensorhub/Condition;
    goto :goto_1

    .line 77
    .end local v1    # "_arg0":Lcom/mediatek/sensorhub/Condition;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg1":Lcom/mediatek/sensorhub/Action;
    goto :goto_2

    .line 86
    .end local v4    # "_arg1":Lcom/mediatek/sensorhub/Action;
    :sswitch_3
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->cancelAction(I)Z

    move-result v8

    .line 90
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v8, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    const/4 v9, 0x1

    return v9

    .line 91
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 96
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 101
    sget-object v9, Lcom/mediatek/sensorhub/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/sensorhub/Condition;

    .line 106
    :goto_4
    invoke-virtual {p0, v0, v5}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->updateCondition(ILcom/mediatek/sensorhub/Condition;)Z

    move-result v8

    .line 107
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v8, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v9, 0x1

    return v9

    .line 104
    .end local v8    # "_result":Z
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg1":Lcom/mediatek/sensorhub/Condition;
    goto :goto_4

    .line 108
    .end local v5    # "_arg1":Lcom/mediatek/sensorhub/Condition;
    .restart local v8    # "_result":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    .line 113
    .end local v0    # "_arg0":I
    .end local v8    # "_result":Z
    :sswitch_5
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    .line 116
    .local v2, "_arg0":Z
    :goto_6
    invoke-virtual {p0, v2}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->enableGestureWakeup(Z)Z

    move-result v8

    .line 117
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v8, :cond_7

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v9, 0x1

    return v9

    .line 115
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_6

    .line 118
    .restart local v8    # "_result":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_7

    .line 123
    .end local v2    # "_arg0":Z
    .end local v8    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->addConGesture(II)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v9, 0x1

    return v9

    .line 134
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_7
    const-string/jumbo v9, "com.mediatek.sensorhub.ISensorHubService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v0, v3}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;->cancelConGesture(II)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v9, 0x1

    return v9

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
