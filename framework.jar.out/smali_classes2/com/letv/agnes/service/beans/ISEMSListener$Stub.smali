.class public abstract Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
.super Landroid/os/Binder;
.source "ISEMSListener.java"

# interfaces
.implements Lcom/letv/agnes/service/beans/ISEMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/ISEMSListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.agnes.service.beans.ISEMSListener"

.field static final TRANSACTION_handleFail:I = 0x2

.field static final TRANSACTION_handleSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/agnes/service/beans/ISEMSListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 24
    :cond_1
    return-object v0

    .line 27
    :cond_2
    instance-of v1, v0, Lcom/letv/agnes/service/beans/ISEMSListener;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/letv/agnes/service/beans/ISEMSListener;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.ISEMSListener"

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    :sswitch_1
    const-string/jumbo v1, "com.letv.agnes.service.beans.ISEMSListener"

    .line 47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    .line 55
    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub;->handleSuccess(Lcom/letv/agnes/service/beans/ISuccessEvent;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v2

    .line 50
    :cond_0
    sget-object v0, Lcom/letv/agnes/service/beans/ISuccessEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/ISuccessEvent;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.letv.agnes.service.beans.ISEMSListener"

    .line 61
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :goto_1
    invoke-virtual {p0, v0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub;->handleFail(Lcom/letv/agnes/service/beans/IFailedEvent;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v2

    .line 64
    :cond_1
    sget-object v0, Lcom/letv/agnes/service/beans/IFailedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IFailedEvent;

    goto :goto_1

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
