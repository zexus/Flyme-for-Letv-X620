.class Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPhoneControlService.java"

# interfaces
.implements Lcom/letv/leui/os/phonecontrol/IPhoneControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 94
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    return-object v0
.end method

.method public retrievePhoneLockData()Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    sget-object v3, Lcom/letv/leui/os/phonecontrol/PhoneLockData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    return-object v2

    .line 144
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    goto :goto_0

    .line 147
    .end local v2    # "_result":Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    :catchall_0
    move-exception v3

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw v3
.end method

.method public stopAlarm()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    return-void

    .line 164
    :catchall_0
    move-exception v2

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v2
.end method

.method public unLockPhone(Ljava/lang/String;)Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.letv.leui.os.phonecontrol.IPhoneControlService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Lcom/letv/leui/os/phonecontrol/PhoneControlData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-object v2

    .line 120
    :cond_0
    const/4 v2, 0x0

    .local v2, "_result":Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    goto :goto_0

    .line 123
    .end local v2    # "_result":Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    :catchall_0
    move-exception v3

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    throw v3
.end method
