.class public Lcom/letv/agnes/service/beans/IApp;
.super Ljava/lang/Object;
.source "IApp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private store:Ljava/lang/String;

.field private time:J

.field private userid:Ljava/lang/String;

.field private version:Lcom/letv/agnes/service/beans/IVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/letv/agnes/service/beans/IApp$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IApp$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/letv/agnes/service/beans/IVersion;Ljava/util/Map;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IApp;->time:J

    .line 29
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/letv/agnes/service/beans/IApp;->version:Lcom/letv/agnes/service/beans/IVersion;

    .line 33
    iput-object p7, p0, Lcom/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    .line 34
    iput-object p8, p0, Lcom/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IApp;->time:J

    return-wide v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/letv/agnes/service/beans/IVersion;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->version:Lcom/letv/agnes/service/beans/IVersion;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    return-void
.end method

.method public setStore(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IApp;->time:J

    .line 39
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setVersion(Lcom/letv/agnes/service/beans/IVersion;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IApp;->version:Lcom/letv/agnes/service/beans/IVersion;

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IApp;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->store:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->version:Lcom/letv/agnes/service/beans/IVersion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 90
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IApp;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 91
    return-void
.end method
