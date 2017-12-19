.class public Lcom/letv/tracker/agnes/NFC;
.super Ljava/lang/Object;
.source "NFC.java"


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
    const-string/jumbo v0, "NFC"

    .line 15
    sput-object v0, Lcom/letv/tracker/agnes/NFC;->ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 25
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

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

    .line 30
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    if-nez p2, :cond_2

    const-string/jumbo p2, ""

    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/IApp;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    new-instance v2, Lcom/letv/agnes/service/beans/IApp;

    invoke-direct {v2}, Lcom/letv/agnes/service/beans/IApp;-><init>()V

    .line 70
    iget-object v3, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 93
    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    .line 73
    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    move v0, v1

    .line 74
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    invoke-virtual {v2, v3}, Lcom/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    move v0, v1

    .line 85
    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 82
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 90
    sget-object v0, Lcom/letv/tracker/agnes/NFC;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 91
    return-object v2
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
    .line 37
    iget-object v0, p0, Lcom/letv/tracker/agnes/NFC;->props:Ljava/util/Map;

    return-object v0
.end method

.method public share(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "share"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public startPay()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "startPay"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "stop"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public stopPay()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "stopPay"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/letv/tracker/agnes/NFC;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
