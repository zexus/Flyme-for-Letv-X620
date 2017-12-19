.class public Lcom/letv/agnes/service/beans/IAction;
.super Ljava/lang/Object;
.source "IAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/letv/agnes/service/beans/IAction$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IAction$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IAction;->timestamp:J

    .line 23
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IAction;->timestamp:J

    return-wide v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IAction;->timestamp:J

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IAction;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->des:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IAction;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 63
    return-void
.end method
