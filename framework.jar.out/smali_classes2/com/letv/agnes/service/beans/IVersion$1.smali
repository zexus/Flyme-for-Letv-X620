.class Lcom/letv/agnes/service/beans/IVersion$1;
.super Ljava/lang/Object;
.source "IVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IVersion;
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
        "Lcom/letv/agnes/service/beans/IVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IVersion;
    .locals 6

    .prologue
    .line 95
    new-instance v0, Lcom/letv/agnes/service/beans/IVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/letv/agnes/service/beans/IVersion;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IVersion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/IVersion;
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [Lcom/letv/agnes/service/beans/IVersion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IVersion$1;->newArray(I)[Lcom/letv/agnes/service/beans/IVersion;

    move-result-object v0

    return-object v0
.end method
