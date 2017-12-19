.class public final Lcom/letv/tracker/agnes/App;
.super Ljava/lang/Object;
.source "App.java"


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

.field private appStore:Lcom/letv/tracker/enums/AppStore;

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

.field private runId:Ljava/lang/String;

.field private storeHolder:Z

.field private userHolder:Z

.field private userId:Ljava/lang/String;

.field private version:Lcom/letv/tracker/msg/bean/Version;


# direct methods
.method constructor <init>(Lcom/letv/tracker/enums/AppType;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 86
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 49
    invoke-virtual {p1}, Lcom/letv/tracker/enums/AppType;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/letv/tracker/enums/LeUIApp;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 86
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 55
    invoke-virtual {p1}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 86
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lcom/letv/tracker/enums/AppType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    .line 40
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/letv/tracker/enums/LeUIApp;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/Version;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    .line 33
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

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

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addStats(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stats_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    return-void
.end method

.method public addStats(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 171
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR:stats_"

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

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stats_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IApp;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    new-instance v3, Lcom/letv/agnes/service/beans/IApp;

    invoke-direct {v3}, Lcom/letv/agnes/service/beans/IApp;-><init>()V

    .line 313
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    if-nez v0, :cond_1

    move v0, v1

    .line 319
    :goto_0
    iget-boolean v4, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    if-nez v4, :cond_2

    .line 325
    :goto_1
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    :goto_2
    if-eqz v0, :cond_5

    .line 337
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 338
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/Version;->hasRequiredFields()Z

    move-result v0

    if-nez v0, :cond_6

    .line 344
    :goto_3
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string/jumbo v1, "app_run_id"

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    .line 347
    invoke-virtual {v3, v0}, Lcom/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    .line 349
    return-object v3

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/letv/agnes/service/beans/IApp;->setUserid(Ljava/lang/String;)V

    .line 316
    iput-boolean v1, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    move v0, v2

    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getAppStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/letv/agnes/service/beans/IApp;->setStore(Ljava/lang/String;)V

    .line 322
    iput-boolean v1, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    move v0, v2

    goto :goto_1

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 332
    invoke-virtual {v3, v1}, Lcom/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    move v0, v2

    .line 333
    goto :goto_2

    .line 329
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 330
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 336
    :cond_5
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 351
    return-object v0

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertVersion(Lcom/letv/tracker/msg/bean/Version;)Lcom/letv/agnes/service/beans/IVersion;

    move-result-object v0

    .line 341
    invoke-virtual {v3, v0}, Lcom/letv/agnes/service/beans/IApp;->setVersion(Lcom/letv/agnes/service/beans/IVersion;)V

    goto :goto_3
.end method

.method public createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;
    .locals 4

    .prologue
    .line 274
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Lcom/letv/tracker/enums/EventType;)V

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;)Lcom/letv/tracker/agnes/Event;
    .locals 6

    .prologue
    .line 285
    invoke-static {p1}, Lcom/letv/tracker/enums/EventType;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Lcom/letv/tracker/agnes/Event;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public createMusicPlay()Lcom/letv/tracker/agnes/MusicPlay;
    .locals 4

    .prologue
    .line 306
    new-instance v0, Lcom/letv/tracker/agnes/MusicPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/agnes/MusicPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    return-object v0
.end method

.method public createVideoPlay()Lcom/letv/tracker/agnes/VideoPlay;
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lcom/letv/tracker/agnes/VideoPlay;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/agnes/VideoPlay;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;)V

    return-object v0
.end method

.method public createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;
    .locals 4

    .prologue
    .line 293
    new-instance v0, Lcom/letv/tracker/agnes/Widget;

    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/letv/tracker/agnes/Widget;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/letv/tracker/msg/bean/Version;Ljava/lang/String;)V

    return-object v0
.end method

.method public deactive()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public deactive(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "deactive"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "exit"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public getAppStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    invoke-virtual {v0}, Lcom/letv/tracker/enums/AppStore;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->id:Ljava/lang/String;

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
    .line 188
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getRunId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->runId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/letv/tracker/msg/bean/Version;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->version:Lcom/letv/tracker/msg/bean/Version;

    return-object v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "login"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, p1}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "logout"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/letv/tracker/agnes/App;->getSignedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/App;->setSignedUserId(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public ready()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "ready"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "run"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/letv/tracker/agnes/App;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public setAppStore(Lcom/letv/tracker/enums/AppStore;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->appStore:Lcom/letv/tracker/enums/AppStore;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->storeHolder:Z

    .line 125
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string/jumbo v1, "channel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSignedUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/letv/tracker/agnes/App;->userId:Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_0

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/App;->userHolder:Z

    goto :goto_0
.end method

.method public setStartFrom(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string/jumbo v1, "startFrom"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTriggerSource(Lcom/letv/tracker/enums/TriggerSourceType;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/letv/tracker/agnes/App;->props:Ljava/util/Map;

    const-string/jumbo v1, "agnes_triggersource"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/TriggerSourceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method
