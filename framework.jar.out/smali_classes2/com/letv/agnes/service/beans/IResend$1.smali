.class Lcom/letv/agnes/service/beans/IResend$1;
.super Ljava/lang/Object;
.source "IResend.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IResend;
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
        "Lcom/letv/agnes/service/beans/IResend;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IResend;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/letv/agnes/service/beans/IResend;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/agnes/service/beans/IResend;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IResend$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IResend;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/IResend;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lcom/letv/agnes/service/beans/IResend;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IResend$1;->newArray(I)[Lcom/letv/agnes/service/beans/IResend;

    move-result-object v0

    return-object v0
.end method
