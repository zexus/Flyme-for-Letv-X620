.class public Lcom/letv/agnes/service/beans/IAd;
.super Ljava/lang/Object;
.source "IAd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private len:I

.field private props:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/letv/agnes/service/beans/IAd$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IAd$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IAd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAd;->id:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/letv/agnes/service/beans/IAd;->len:I

    .line 23
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IAd;->props:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAd;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/letv/agnes/service/beans/IAd;->len:I

    return v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAd;->props:Ljava/util/Map;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAd;->id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLength(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/letv/agnes/service/beans/IAd;->len:I

    .line 36
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAd;->props:Ljava/util/Map;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAd;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/letv/agnes/service/beans/IAd;->len:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAd;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 52
    return-void
.end method
