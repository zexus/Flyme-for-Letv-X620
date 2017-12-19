.class public Lcom/letv/tracker/msg/bean/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private action:Ljava/lang/String;

.field private des:Ljava/lang/String;

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

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/tracker/msg/bean/Action;->timestamp:J

    .line 14
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Action;->action:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->des:Ljava/lang/String;

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
    .line 35
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Action;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/letv/tracker/msg/bean/Action;->timestamp:J

    return-wide v0
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Action;->des:Ljava/lang/String;

    .line 25
    return-void
.end method
