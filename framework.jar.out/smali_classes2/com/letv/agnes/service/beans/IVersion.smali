.class public Lcom/letv/agnes/service/beans/IVersion;
.super Ljava/lang/Object;
.source "IVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private build:Ljava/lang/String;

.field private major:I

.field private minor:I

.field private patch:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/letv/agnes/service/beans/IVersion$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IVersion$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    .line 21
    iput p2, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    .line 22
    iput p3, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    .line 23
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    return v0
.end method

.method public getBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMajor(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    .line 29
    return-void
.end method

.method public setMinor(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    .line 37
    return-void
.end method

.method public setPatch(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    .line 45
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "%d.%d.%d"

    .line 74
    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "%d.%d.%d.%s"

    const/4 v1, 0x4

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->major:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->minor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/letv/agnes/service/beans/IVersion;->patch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->build:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVersion;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
