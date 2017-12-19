.class public Lcom/letv/tracker/service/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;
    .locals 7

    .prologue
    .line 16
    new-instance v1, Lcom/letv/agnes/service/beans/IAction;

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getDes()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Action;->getProps()Ljava/util/Map;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/letv/agnes/service/beans/IAction;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method public static convertInnerID(Lcom/letv/agnes/service/beans/InnerID;)Lcom/letv/tracker/msg/bean/ID;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/letv/tracker/msg/bean/ID;

    invoke-virtual {p0}, Lcom/letv/agnes/service/beans/InnerID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/ID;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertVersion(Lcom/letv/tracker/msg/bean/Version;)Lcom/letv/agnes/service/beans/IVersion;
    .locals 6

    .prologue
    .line 20
    new-instance v0, Lcom/letv/agnes/service/beans/IVersion;

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getMajor()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getMinor()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getPatch()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getBuild()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/Version;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/letv/agnes/service/beans/IVersion;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
