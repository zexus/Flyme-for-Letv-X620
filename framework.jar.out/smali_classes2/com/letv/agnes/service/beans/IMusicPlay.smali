.class public Lcom/letv/agnes/service/beans/IMusicPlay;
.super Ljava/lang/Object;
.source "IMusicPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/agnes/service/beans/IMusicPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private acts:Ljava/util/List;

.field private albumId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private bitStream:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private musicLength:I

.field private networkModel:Ljava/lang/String;

.field private preMusicId:Ljava/lang/String;

.field private props:Ljava/util/Map;

.field private songId:Ljava/lang/String;

.field private station:Ljava/lang/String;

.field private time:J

.field private widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/letv/agnes/service/beans/IMusicPlay$1;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IMusicPlay$1;-><init>()V

    sput-object v0, Lcom/letv/agnes/service/beans/IMusicPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->time:J

    .line 36
    iput-object p3, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    .line 41
    iput p8, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    .line 42
    iput-object p9, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    .line 43
    iput-object p10, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    .line 44
    iput-object p11, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    .line 45
    iput-object p12, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    .line 46
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    .line 48
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    return v0
.end method

.method public getActs()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicLength()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    return v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    return-object v0
.end method

.method public getPreMusicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->time:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    return-void
.end method

.method public setMusicLength(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    return-void
.end method

.method public setNetworkModel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    return-void
.end method

.method public setPreMusicId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    return-void
.end method

.method public setProps(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->time:J

    return-void
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->musicLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->station:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->networkModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 71
    iget-object v0, p0, Lcom/letv/agnes/service/beans/IMusicPlay;->acts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 72
    return-void
.end method
