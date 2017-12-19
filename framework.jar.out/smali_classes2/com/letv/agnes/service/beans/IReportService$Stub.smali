.class public abstract Lcom/letv/agnes/service/beans/IReportService$Stub;
.super Landroid/os/Binder;
.source "IReportService.java"

# interfaces
.implements Lcom/letv/agnes/service/beans/IReportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.letv.agnes.service.beans.IReportService"

.field static final TRANSACTION_addListener:I = 0xa

.field static final TRANSACTION_removeLog:I = 0x9

.field static final TRANSACTION_reportApp:I = 0x1

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_reportEvent:I = 0x2

.field static final TRANSACTION_reportLog:I = 0x6

.field static final TRANSACTION_reportMusicPlay:I = 0x4

.field static final TRANSACTION_reportResend:I = 0x8

.field static final TRANSACTION_reportVideoPlay:I = 0x3

.field static final TRANSACTION_reportWidget:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/letv/agnes/service/beans/IReportService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/letv/agnes/service/beans/IReportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 24
    :cond_1
    return-object v0

    .line 27
    :cond_2
    instance-of v1, v0, Lcom/letv/agnes/service/beans/IReportService;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lcom/letv/agnes/service/beans/IReportService;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v3

    :sswitch_1
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportApp(ILcom/letv/agnes/service/beans/IApp;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v3

    .line 52
    :cond_0
    sget-object v0, Lcom/letv/agnes/service/beans/IApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IApp;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportEvent(ILcom/letv/agnes/service/beans/IEvent;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    return v3

    .line 68
    :cond_1
    sget-object v0, Lcom/letv/agnes/service/beans/IEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IEvent;

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 79
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_2

    .line 89
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportVideoPlay(ILcom/letv/agnes/service/beans/IVideoPlay;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v3

    .line 84
    :cond_2
    sget-object v0, Lcom/letv/agnes/service/beans/IVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IVideoPlay;

    goto :goto_2

    :sswitch_4
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 95
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_3

    .line 105
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportMusicPlay(ILcom/letv/agnes/service/beans/IMusicPlay;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v3

    .line 100
    :cond_3
    sget-object v0, Lcom/letv/agnes/service/beans/IMusicPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IMusicPlay;

    goto :goto_3

    :sswitch_5
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 111
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_4

    .line 121
    :goto_4
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportError(ILcom/letv/agnes/service/beans/ISEMSError;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v3

    .line 116
    :cond_4
    sget-object v0, Lcom/letv/agnes/service/beans/ISEMSError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/ISEMSError;

    goto :goto_4

    :sswitch_6
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 127
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_5

    .line 137
    :goto_5
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportLog(ILcom/letv/agnes/service/beans/ILogFile;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v3

    .line 132
    :cond_5
    sget-object v0, Lcom/letv/agnes/service/beans/ILogFile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/ILogFile;

    goto :goto_5

    :sswitch_7
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 143
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_6

    .line 153
    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportWidget(ILcom/letv/agnes/service/beans/IWidget;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v3

    .line 148
    :cond_6
    sget-object v0, Lcom/letv/agnes/service/beans/IWidget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IWidget;

    goto :goto_6

    :sswitch_8
    const-string/jumbo v1, "com.letv.agnes.service.beans.IReportService"

    .line 159
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_7

    .line 169
    :goto_7
    invoke-virtual {p0, v1, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->reportResend(ILcom/letv/agnes/service/beans/IResend;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v3

    .line 164
    :cond_7
    sget-object v0, Lcom/letv/agnes/service/beans/IResend;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IResend;

    goto :goto_7

    :sswitch_9
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 175
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->removeLog(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v3

    :sswitch_a
    const-string/jumbo v0, "com.letv.agnes.service.beans.IReportService"

    .line 184
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/agnes/service/beans/ISEMSListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/letv/agnes/service/beans/ISEMSListener;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/letv/agnes/service/beans/IReportService$Stub;->addListener(Lcom/letv/agnes/service/beans/ISEMSListener;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v3

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
