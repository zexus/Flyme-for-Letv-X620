.class Lcom/letv/agnes/service/beans/ILogFile$1;
.super Ljava/lang/Object;
.source "ILogFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/ILogFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/letv/agnes/service/beans/ILogFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/ILogFile;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/letv/agnes/service/beans/ILogFile;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/agnes/service/beans/ILogFile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/ILogFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/ILogFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/ILogFile;
    .locals 1

    .prologue
    .line 66
    new-array v0, p1, [Lcom/letv/agnes/service/beans/ILogFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/ILogFile$1;->newArray(I)[Lcom/letv/agnes/service/beans/ILogFile;

    move-result-object v0

    return-object v0
.end method
