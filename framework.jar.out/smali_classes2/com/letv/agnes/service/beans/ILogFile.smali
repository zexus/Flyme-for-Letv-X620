.class public Lcom/letv/agnes/service/beans/ILogFile;
.super Ljava/lang/Object;
.source "ILogFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/ILogFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private offset:I

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/letv/agnes/service/beans/ILogFile$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/ILogFile$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/ILogFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ILogFile;->id:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/letv/agnes/service/beans/ILogFile;->offset:I

    .line 19
    iput-object p3, p0, Lcom/letv/agnes/service/beans/ILogFile;->path:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->offset:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ILogFile;->id:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/letv/agnes/service/beans/ILogFile;->offset:I

    .line 32
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/letv/agnes/service/beans/ILogFile;->path:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/letv/agnes/service/beans/ILogFile;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return-void
.end method
