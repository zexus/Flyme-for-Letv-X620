.class public final Lcom/letv/tracker/agnes/MusicPlay;
.super Ljava/lang/Object;
.source "MusicPlay.java"


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

.field private albumId:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

.field private bitStream:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private heartCount:I

.field private id:Ljava/lang/String;

.field private musicLength:I

.field private networkModel:Lcom/letv/tracker/enums/NetworkModel;

.field private preMusicId:Ljava/lang/String;

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

.field private songId:Ljava/lang/String;

.field private songIdReported:Z

.field private station:Ljava/lang/String;

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 30
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 32
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 38
    iput-object p2, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    .line 42
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 240
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

    .line 241
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "duration"

    .line 242
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
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
    .line 247
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

    .line 248
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "duration"

    .line 249
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-void

    .line 250
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
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
    .line 105
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

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

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public beginBuffer(ILcom/letv/tracker/enums/BufferCause;)V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "begin_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-nez p2, :cond_0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void

    :cond_0
    const-string/jumbo v1, "cause"

    .line 195
    invoke-virtual {p2}, Lcom/letv/tracker/enums/BufferCause;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IMusicPlay;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 257
    new-instance v2, Lcom/letv/agnes/service/beans/IMusicPlay;

    invoke-direct {v2}, Lcom/letv/agnes/service/beans/IMusicPlay;-><init>()V

    .line 260
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 266
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 272
    :goto_1
    iget v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    if-gtz v3, :cond_4

    .line 278
    :goto_2
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 284
    :goto_3
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 290
    :goto_4
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 296
    :goto_5
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    if-nez v3, :cond_8

    .line 302
    :goto_6
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 308
    :goto_7
    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 319
    :goto_8
    if-eqz v0, :cond_c

    .line 320
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/letv/agnes/service/beans/IMusicPlay;->setTime(J)V

    .line 321
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setId(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setAppId(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 326
    :goto_9
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 329
    :goto_a
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->appRunId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 332
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    .line 333
    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setProps(Ljava/util/Map;)V

    .line 335
    return-object v2

    .line 260
    :cond_2
    iget-boolean v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    if-nez v3, :cond_0

    .line 261
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setSongId(Ljava/lang/String;)V

    .line 262
    iput-boolean v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    move v0, v1

    .line 263
    goto :goto_0

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setAlbumId(Ljava/lang/String;)V

    .line 268
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    move v0, v1

    .line 269
    goto :goto_1

    .line 273
    :cond_4
    iget v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setMusicLength(I)V

    const/4 v0, -0x1

    .line 274
    iput v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    move v0, v1

    .line 275
    goto :goto_2

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setBitStream(Ljava/lang/String;)V

    .line 280
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    move v0, v1

    .line 281
    goto :goto_3

    .line 285
    :cond_6
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setFrom(Ljava/lang/String;)V

    .line 286
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    move v0, v1

    .line 287
    goto :goto_4

    .line 291
    :cond_7
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setStation(Ljava/lang/String;)V

    .line 292
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    move v0, v1

    .line 293
    goto :goto_5

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setNetworkModel(Ljava/lang/String;)V

    .line 298
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    move v0, v1

    .line 299
    goto/16 :goto_6

    .line 303
    :cond_9
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setPreMusicId(Ljava/lang/String;)V

    .line 304
    iput-object v5, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    move v0, v1

    .line 305
    goto/16 :goto_7

    .line 309
    :cond_a
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 310
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 315
    invoke-virtual {v2, v3}, Lcom/letv/agnes/service/beans/IMusicPlay;->setActs(Ljava/util/List;)V

    move v0, v1

    .line 316
    goto/16 :goto_8

    .line 312
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 313
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 319
    :cond_c
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    return-object v5

    .line 324
    :cond_d
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/MusicPlay;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 327
    :cond_e
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IMusicPlay;->setWidgetId(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public cancel(I)V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "cancel"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 208
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public endBuffer()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_buffer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public endInit()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public endLoad()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "end_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public failed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "failed"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 220
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "errMsg"

    .line 221
    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "finish"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->id:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "launch"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public moveTo(II)V
    .locals 3

    .prologue
    .line 184
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "move_to"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "from"

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "to"

    .line 186
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public pause(I)V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "pause"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 228
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public resume(I)V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "resume"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 234
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public sendHeartbeat(II)V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "heartbeat"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "prg"

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "interval"

    .line 169
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "heartCount"

    .line 170
    iget v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/tracker/agnes/MusicPlay;->heartCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setBitStream(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->bitStream:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->from:Ljava/lang/String;

    return-void
.end method

.method public setMusicLength(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->musicLength:I

    return-void
.end method

.method public setNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->networkModel:Lcom/letv/tracker/enums/NetworkModel;

    return-void
.end method

.method public setPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->props:Ljava/util/Map;

    const-string/jumbo v1, "playMode"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPreMusic(Lcom/letv/tracker/agnes/MusicPlay;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/letv/tracker/agnes/MusicPlay;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->preMusicId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->songId:Ljava/lang/String;

    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/letv/tracker/agnes/MusicPlay;->station:Ljava/lang/String;

    return-void
.end method

.method public startInit()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_init"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public startLoad()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_load"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start_play"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/MusicPlay;->songIdReported:Z

    .line 140
    return-void
.end method

.method public switchBitStream(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_bit_stream"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "bitStream"

    .line 145
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public switchNetworkModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_network_model"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 159
    if-nez p1, :cond_0

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void

    :cond_0
    const-string/jumbo v1, "networkModel"

    .line 160
    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchPlayMode(Lcom/letv/tracker/enums/MusicPlayMode;)V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_play_mode"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 176
    if-nez p1, :cond_0

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void

    :cond_0
    const-string/jumbo v1, "playMode"

    .line 177
    invoke-virtual {p1}, Lcom/letv/tracker/enums/MusicPlayMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchStation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "switch_station"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "stationId"

    .line 152
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/letv/tracker/agnes/MusicPlay;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method
