.class Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISEMSListener.java"

# interfaces
.implements Lcom/letv/agnes/service/beans/ISEMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
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

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 89
    return-object v0
.end method

.method public handleFail(Lcom/letv/agnes/service/beans/IFailedEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 117
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 126
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 119
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/letv/agnes/service/beans/IFailedEvent;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 129
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public handleSuccess(Lcom/letv/agnes/service/beans/ISuccessEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 96
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 98
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/letv/agnes/service/beans/ISuccessEvent;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
