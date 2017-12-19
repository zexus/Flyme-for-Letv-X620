.class public abstract Landroid/bluetooth/IBluetoothDun$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDun.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDun;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDun$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothDun"

.field static final TRANSACTION_dunDisconnect:I = 0x1

.field static final TRANSACTION_dunGetConnectedDevice:I = 0x3

.field static final TRANSACTION_dunGetState:I = 0x2

.field static final TRANSACTION_isTetheringOn:I = 0x4

.field static final TRANSACTION_setBluetoothTethering:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothDun$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDun;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothDun"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothDun;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothDun$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothDun$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->dunDisconnect()V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v5

    .line 59
    :sswitch_2
    const-string/jumbo v4, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->dunGetState()I

    move-result v1

    .line 61
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v5

    .line 67
    .end local v1    # "_result":I
    :sswitch_3
    const-string/jumbo v6, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->dunGetConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 69
    .local v2, "_result":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v2, p3, v5}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    :goto_0
    return v5

    .line 75
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 81
    .end local v2    # "_result":Landroid/bluetooth/BluetoothDevice;
    :sswitch_4
    const-string/jumbo v6, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDun$Stub;->isTetheringOn()Z

    move-result v3

    .line 83
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v5

    .line 89
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v4, "android.bluetooth.IBluetoothDun"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 92
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDun$Stub;->setBluetoothTethering(Z)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    return v5

    .line 91
    .end local v0    # "_arg0":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Z
    goto :goto_1

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
