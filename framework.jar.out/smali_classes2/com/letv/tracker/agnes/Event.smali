.class public final Lcom/letv/tracker/agnes/Event;
.super Ljava/lang/Object;
.source "Event.java"


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

.field private pushId:Ljava/lang/String;

.field private result:Lcom/letv/tracker/enums/EventResult;

.field private timestamp:J

.field private widgetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Lcom/letv/tracker/enums/EventType;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 14
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 16
    invoke-virtual {p4}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 18
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 22
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 24
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 26
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Lcom/letv/tracker/enums/EventType;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 32
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 33
    invoke-virtual {p5}, Lcom/letv/tracker/enums/EventType;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 35
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    .line 41
    iput-object p4, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    .line 44
    iput-object p2, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

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

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IEvent;
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/letv/agnes/service/beans/IEvent;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/IEvent;-><init>()V

    .line 134
    iget-wide v2, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/letv/agnes/service/beans/IEvent;->setTime(J)V

    .line 135
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setId(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setAppId(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setWidgetId(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setPushId(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setResult(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string/jumbo v2, "app_run_id"

    iget-object v3, p0, Lcom/letv/tracker/agnes/Event;->appRunId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/IEvent;->setProps(Ljava/util/Map;)V

    .line 146
    return-object v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string/jumbo v2, "app_version"

    invoke-virtual {p0}, Lcom/letv/tracker/agnes/Event;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->appVer:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->id:Ljava/lang/String;

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
    .line 129
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    if-nez v0, :cond_0

    .line 104
    return-object v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/EventResult;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/letv/tracker/agnes/Event;->timestamp:J

    return-wide v0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public setOperationMethod(Lcom/letv/tracker/enums/Operation;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string/jumbo v1, "op"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->pushId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setResult(Lcom/letv/tracker/enums/EventResult;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/letv/tracker/agnes/Event;->result:Lcom/letv/tracker/enums/EventResult;

    .line 98
    return-void
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/letv/tracker/agnes/Event;->props:Ljava/util/Map;

    const-string/jumbo v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
