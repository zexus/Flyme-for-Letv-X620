.class public final Lcom/letv/tracker/agnes/Widget;
.super Ljava/lang/Object;
.source "Widget.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appRunId:Ljava/lang/String;

.field private appVer:Lcom/letv/tracker/msg/bean/Version;

.field private id:Ljava/lang/String;

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


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 14
    iput-object p1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 16
    iput-object p4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

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

    .line 67
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IWidget;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Lcom/letv/agnes/service/beans/IWidget;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IWidget;-><init>()V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/letv/agnes/service/beans/IWidget;->setTime(J)V

    .line 123
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IWidget;->setId(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IWidget;->setAppId(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string/jumbo v2, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    .line 131
    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IWidget;->setProps(Ljava/util/Map;)V

    .line 133
    return-object v0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    const-string/jumbo v2, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Widget;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;
    .locals 6

    .prologue
    .line 89
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Lcom/letv/tracker/enums/EventType;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;
    .locals 7

    .prologue
    .line 100
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ERR:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createMusicPlay()Lcom/letv/tracker/agnes/MusicPlay;
    .locals 5

    .prologue
    .line 117
    new-instance v0, Lcom/letv/tracker/agnes/MusicPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/MusicPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public createVideoPlay()Lcom/letv/tracker/agnes/VideoPlay;
    .locals 5

    .prologue
    .line 113
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/Widget;->appRunId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    iget-object v4, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->id:Ljava/lang/String;

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
    .line 79
    iget-object v0, p0, Lcom/letv/tracker/agnes/Widget;->props:Ljava/util/Map;

    return-object v0
.end method
