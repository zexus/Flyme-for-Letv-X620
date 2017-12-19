.class public Lcom/letv/tracker/msg/bean/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# instance fields
.field private id:Ljava/lang/String;

.field private len:I

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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/Ad;->props:Ljava/util/Map;

    .line 8
    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Ad;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Ad;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/letv/tracker/msg/bean/Ad;->len:I

    return v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/Ad;->props:Ljava/util/Map;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/Ad;->id:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setLength(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/letv/tracker/msg/bean/Ad;->len:I

    .line 24
    return-void
.end method
