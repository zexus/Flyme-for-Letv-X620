.class public Lcom/letv/agnes/service/beans/IVideoPlay;
.super Ljava/lang/Object;
.source "IVideoPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IVideoPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private appId:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private networkModel:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private station:Ljava/lang/String;

.field private stream:Ljava/lang/String;

.field private time:J

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userType:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoLength:I

.field private widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/letv/agnes/service/beans/IVideoPlay$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IVideoPlay$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IVideoPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->time:J

    .line 41
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    .line 45
    iput p7, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    .line 46
    iput-object p8, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    .line 48
    iput-object p10, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    .line 49
    iput-object p11, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    .line 50
    iput-object p12, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    .line 51
    iput-object p13, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    .line 52
    iput-object p14, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setStream(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->videoLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->stream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 78
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->userType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IVideoPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 83
    return-void
.end method
