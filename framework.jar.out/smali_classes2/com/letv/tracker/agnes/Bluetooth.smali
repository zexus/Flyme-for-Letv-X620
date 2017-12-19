.class public Lcom/letv/tracker/agnes/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# static fields
.field private static ID:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Bluetooth"

    .line 14
    sput-object v0, Lcom/letv/tracker/agnes/Bluetooth;->ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

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

    .line 29
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public answerPhone()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "answer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IApp;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    new-instance v2, Lcom/letv/agnes/service/beans/IApp;

    invoke-direct {v2}, Lcom/letv/agnes/service/beans/IApp;-><init>()V

    .line 88
    iget-object v3, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    :goto_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 111
    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    .line 90
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    .line 91
    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    move v0, v1

    .line 92
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-virtual {v2, v3}, Lcom/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    move v0, v1

    .line 103
    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 100
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 107
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 108
    sget-object v0, Lcom/letv/tracker/agnes/Bluetooth;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 109
    return-object v2
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "conn"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "device"

    .line 46
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "did"

    .line 47
    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "disconn"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public endPlay()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "endPlay"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
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
    .line 36
    iget-object v0, p0, Lcom/letv/tracker/agnes/Bluetooth;->props:Ljava/util/Map;

    return-object v0
.end method

.method public hungUp()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "hungup"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public startPlay()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "startPlay"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public transfer(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "transfer"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "fileType"

    .line 53
    invoke-virtual {v0, v1, p2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "did"

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "size"

    .line 55
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/tracker/msg/bean/Action;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/letv/tracker/agnes/Bluetooth;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
