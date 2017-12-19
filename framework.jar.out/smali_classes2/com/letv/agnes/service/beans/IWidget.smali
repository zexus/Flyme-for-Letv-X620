.class public Lcom/letv/agnes/service/beans/IWidget;
.super Ljava/lang/Object;
.source "IWidget.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IWidget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/letv/agnes/service/beans/IWidget$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IWidget$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IWidget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IWidget;->time:J

    .line 24
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IWidget;->id:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IWidget;->appId:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IWidget;->props:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IWidget;->time:J

    return-wide v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IWidget;->appId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IWidget;->id:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IWidget;->props:Ljava/util/Map;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IWidget;->time:J

    .line 31
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IWidget;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IWidget;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 64
    return-void
.end method
