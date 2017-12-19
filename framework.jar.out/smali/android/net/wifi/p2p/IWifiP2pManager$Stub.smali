.class public abstract Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field static final TRANSACTION_fastConnectAsGo:I = 0x5

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getP2pHandoverSelectToken:I = 0x9

.field static final TRANSACTION_getP2pStateMachineMessenger:I = 0x2

.field static final TRANSACTION_getPeerIpAddress:I = 0x7

.field static final TRANSACTION_setCrossMountIE:I = 0x8

.field static final TRANSACTION_setMiracastMode:I = 0x3

.field static final TRANSACTION_setMiracastModeEx:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;
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
    const-string/jumbo v1, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 47
    :sswitch_0
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v10, 0x1

    return v10

    .line 52
    :sswitch_1
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v7

    .line 54
    .local v7, "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v7, :cond_0

    .line 56
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 60
    :cond_0
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v7    # "_result":Landroid/os/Messenger;
    :sswitch_2
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v7

    .line 68
    .restart local v7    # "_result":Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v7, :cond_1

    .line 70
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 74
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 80
    .end local v7    # "_result":Landroid/os/Messenger;
    :sswitch_3
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setMiracastMode(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v10, 0x1

    return v10

    .line 89
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 94
    .local v4, "_arg1":I
    invoke-virtual {p0, v0, v4}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setMiracastModeEx(II)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v10, 0x1

    return v10

    .line 100
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 103
    sget-object v10, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    .line 108
    :goto_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->fastConnectAsGo(Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;)Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;

    move-result-object v6

    .line 109
    .local v6, "_result":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v6, :cond_3

    .line 111
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v10, 0x1

    invoke-virtual {v6, p3, v10}, Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_3
    const/4 v10, 0x1

    return v10

    .line 106
    .end local v6    # "_result":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    goto :goto_2

    .line 115
    .end local v1    # "_arg0":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    .restart local v6    # "_result":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 121
    .end local v6    # "_result":Landroid/net/wifi/p2p/fastconnect/WifiP2pFastConnectInfo;
    :sswitch_6
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    const/4 v10, 0x1

    return v10

    .line 129
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    .restart local v8    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    const/4 v10, 0x1

    return v10

    .line 139
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    .line 143
    .local v3, "_arg0":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v5}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setCrossMountIE(ZLjava/lang/String;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v10, 0x1

    return v10

    .line 141
    .end local v3    # "_arg0":Z
    .end local v5    # "_arg1":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Z
    goto :goto_4

    .line 150
    .end local v3    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v10, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getP2pHandoverSelectToken()[B

    move-result-object v9

    .line 152
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 154
    const/4 v10, 0x1

    return v10

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
