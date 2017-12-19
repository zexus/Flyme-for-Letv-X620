.class Lcom/letv/agnes/service/beans/ISuccessEvent$1;
.super Ljava/lang/Object;
.source "ISuccessEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/ISuccessEvent;
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
        "Lcom/letv/agnes/service/beans/ISuccessEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/ISuccessEvent;
    .locals 5

    .prologue
    .line 73
    new-instance v1, Lcom/letv/agnes/service/beans/ISuccessEvent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lcom/letv/agnes/service/beans/InnerID;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/InnerID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/letv/agnes/service/beans/ISuccessEvent;-><init>(Ljava/lang/String;Lcom/letv/agnes/service/beans/InnerID;II)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/ISuccessEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/ISuccessEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/ISuccessEvent;
    .locals 1

    .prologue
    .line 78
    new-array v0, p1, [Lcom/letv/agnes/service/beans/ISuccessEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/ISuccessEvent$1;->newArray(I)[Lcom/letv/agnes/service/beans/ISuccessEvent;

    move-result-object v0

    return-object v0
.end method
