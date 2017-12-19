.class public final Lcom/letv/tracker/agnes/VideoPlay;
.super Ljava/lang/Object;
.source "VideoPlay.java"


# instance fields
.field private acts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/tracker/msg/bean/Action;",
            ">;"
        }
    .end annotation
.end field

.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

.field private bitStream:Ljava/lang/String;

.field private caller:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private heartCount:I

.field private id:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private networkModel:Lcom/letv/tracker/enums/NetworkModel;

.field private playerVersion:Ljava/lang/String;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private station:Ljava/lang/String;

.field private type:Lcom/letv/tracker/enums/PlayType;

.field private url:Ljava/lang/String;

.field private userType:Lcom/letv/tracker/enums/UserType;

.field private videoId:Ljava/lang/String;

.field private videoLength:I

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 55
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 60
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 62
    iput-object p2, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 387
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 388
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "duration"

    .line 389
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public addAction(ILjava/lang/String;ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    new-instance v2, Lcom/letv/tracker/msg/bean/Action;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ext_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "prg"

    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "duration"

    .line 396
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    return-void

    .line 397
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 127
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public beginBuffer(ILcom/letv/tracker/enums/BufferCause;)V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "beginBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 304
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez p2, :cond_0

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 306
    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IVideoPlay;
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 414
    new-instance v2, Lcom/letv/agnes/service/beans/IVideoPlay;

    invoke-direct {v2}, Lcom/letv/agnes/service/beans/IVideoPlay;-><init>()V

    .line 417
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 423
    :goto_0
    iget v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    if-gt v3, v4, :cond_2

    .line 429
    :goto_1
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-nez v3, :cond_3

    .line 435
    :goto_2
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 441
    :goto_3
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 447
    :goto_4
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 453
    :goto_5
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 459
    :goto_6
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 465
    :goto_7
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 471
    :goto_8
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-nez v3, :cond_a

    .line 477
    :goto_9
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-nez v3, :cond_b

    .line 483
    :goto_a
    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 494
    :goto_b
    if-eqz v0, :cond_e

    .line 495
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/letv/agnes/service/beans/IVideoPlay;->setTime(J)V

    .line 496
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setId(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setAppId(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    .line 501
    :goto_c
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 504
    :goto_d
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 509
    :goto_e
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 510
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    .line 511
    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setProps(Ljava/util/Map;)V

    .line 513
    return-object v2

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setVideoId(Ljava/lang/String;)V

    .line 420
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    .line 424
    :cond_2
    iget v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setVideoLength(I)V

    .line 426
    iput v4, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    move v0, v1

    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setType(Ljava/lang/String;)V

    .line 432
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    move v0, v1

    goto :goto_2

    .line 436
    :cond_4
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getBitStream()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setStream(Ljava/lang/String;)V

    .line 438
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_3

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setUrl(Ljava/lang/String;)V

    .line 444
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_4

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setFrom(Ljava/lang/String;)V

    .line 450
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_5

    .line 454
    :cond_7
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setVersion(Ljava/lang/String;)V

    .line 456
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_6

    .line 460
    :cond_8
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setStation(Ljava/lang/String;)V

    .line 462
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_7

    .line 466
    :cond_9
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setLiveId(Ljava/lang/String;)V

    .line 468
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_8

    .line 472
    :cond_a
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/UserType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setUserType(Ljava/lang/String;)V

    .line 474
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    move v0, v1

    goto/16 :goto_9

    .line 478
    :cond_b
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getNetworkModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 480
    iput-object v5, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    move v0, v1

    goto/16 :goto_a

    .line 484
    :cond_c
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 485
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    .line 486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 490
    invoke-virtual {v2, v3}, Lcom/letv/agnes/service/beans/IVideoPlay;->setActs(Ljava/util/List;)V

    move v0, v1

    .line 491
    goto/16 :goto_b

    .line 487
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 488
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 494
    :cond_e
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    return-object v5

    .line 499
    :cond_f
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/VideoPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 502
    :cond_10
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IVideoPlay;->setWidgetId(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 506
    :cond_11
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "caller"

    iget-object v3, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e
.end method

.method public cancel(I)V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 319
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public endAD()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "endBuffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public endCload()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public endGslb()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public endMediaSource()V
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public endPhase(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 409
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext_end_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public endTheatreChain()V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method public endUserCenter()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;)V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 332
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    if-nez p2, :cond_0

    .line 336
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 334
    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failed(ILcom/letv/tracker/enums/FailedCause;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 349
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-nez p2, :cond_0

    .line 354
    :goto_0
    if-nez p3, :cond_1

    .line 357
    :goto_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 352
    invoke-virtual {p2}, Lcom/letv/tracker/enums/FailedCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "errMsg"

    .line 355
    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 341
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-nez p2, :cond_0

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 343
    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 362
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-nez p2, :cond_0

    .line 366
    :goto_0
    if-nez p3, :cond_1

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 364
    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "errMsg"

    .line 367
    invoke-virtual {v0, v1, p3}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    return-object v1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkModel()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-nez v0, :cond_0

    .line 150
    return-object v1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getStation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    if-nez v0, :cond_0

    .line 122
    return-object v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/PlayType;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    if-nez v0, :cond_0

    .line 142
    return-object v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/UserType;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoLength()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public moveTo(IILcom/letv/tracker/enums/Operation;)V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "from"

    .line 291
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "to"

    .line 292
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-nez p3, :cond_0

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void

    :cond_0
    const-string/jumbo v1, "op"

    .line 294
    invoke-virtual {p3}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause(I)V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 375
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method public resume(I)V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 381
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3

    .prologue
    .line 279
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 280
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interval"

    .line 281
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "heartCount"

    .line 282
    iget v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/VideoPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public setBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 1

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->bitStream:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCaller(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->caller:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayerVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->playerVersion:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/letv/tracker/enums/PlayType;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->type:Lcom/letv/tracker/enums/PlayType;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->url:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Lcom/letv/tracker/enums/UserType;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->userType:Lcom/letv/tracker/enums/UserType;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoLength(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/letv/tracker/agnes/VideoPlay;->videoLength:I

    return-void
.end method

.method public startAD()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_ad"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public startCload()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_cload"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method public startGslb()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_gslb"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public startMediaSource()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_media_source"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public startPhase(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 404
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext_start_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public startPlay(Lcom/letv/tracker/enums/PlayStart;)V
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 238
    if-nez p1, :cond_0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void

    :cond_0
    const-string/jumbo v1, "startType"

    .line 239
    invoke-virtual {p1}, Lcom/letv/tracker/enums/PlayStart;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startTheatreChain()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_theatre_chain"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public startUserCenter()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_user_center"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public switchBitStream(Lcom/letv/tracker/enums/StreamType;)V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 247
    if-nez p1, :cond_0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    :cond_0
    const-string/jumbo v1, "bitStream"

    .line 248
    invoke-virtual {p1}, Lcom/letv/tracker/enums/StreamType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_bitStream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 255
    if-nez p1, :cond_0

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void

    :cond_0
    const-string/jumbo v1, "bitStream"

    .line 256
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 271
    if-nez p1, :cond_0

    .line 274
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void

    :cond_0
    const-string/jumbo v1, "networkModel"

    .line 272
    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "stationId"

    .line 264
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/letv/tracker/agnes/VideoPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method
