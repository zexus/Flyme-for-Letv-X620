.class Lcom/letv/agnes/service/beans/IAd$1;
.super Ljava/lang/Object;
.source "IAd.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IAd;
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
        "Lcom/letv/agnes/service/beans/IAd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IAd;
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/letv/agnes/service/beans/IAd;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const-class v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/agnes/service/beans/IAd;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IAd$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IAd;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/IAd;
    .locals 1

    .prologue
    .line 62
    new-array v0, p1, [Lcom/letv/agnes/service/beans/IAd;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IAd$1;->newArray(I)[Lcom/letv/agnes/service/beans/IAd;

    move-result-object v0

    return-object v0
.end method
