.class Lcom/letv/agnes/service/beans/IWidget$1;
.super Ljava/lang/Object;
.source "IWidget.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/agnes/service/beans/IWidget;
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
        "Lcom/letv/agnes/service/beans/IWidget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IWidget;
    .locals 7

    .prologue
    .line 69
    new-instance v1, Lcom/letv/agnes/service/beans/IWidget;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/letv/agnes/service/beans/IWidget;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IWidget$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/agnes/service/beans/IWidget;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/agnes/service/beans/IWidget;
    .locals 1

    .prologue
    .line 74
    new-array v0, p1, [Lcom/letv/agnes/service/beans/IWidget;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/letv/agnes/service/beans/IWidget$1;->newArray(I)[Lcom/letv/agnes/service/beans/IWidget;

    move-result-object v0

    return-object v0
.end method
