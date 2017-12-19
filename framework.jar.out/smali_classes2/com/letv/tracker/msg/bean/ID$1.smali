.class Lcom/letv/tracker/msg/bean/ID$1;
.super Ljava/lang/Object;
.source "ID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/ID;
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
        "Lcom/letv/tracker/msg/bean/ID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/tracker/msg/bean/ID;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/letv/tracker/msg/bean/ID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/ID;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/letv/tracker/msg/bean/ID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/tracker/msg/bean/ID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/tracker/msg/bean/ID;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/letv/tracker/msg/bean/ID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/letv/tracker/msg/bean/ID$1;->newArray(I)[Lcom/letv/tracker/msg/bean/ID;

    move-result-object v0

    return-object v0
.end method
