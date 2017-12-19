.class public Lcom/letv/tracker/agnes/Network;
.super Ljava/lang/Object;
.source "Network.java"


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

.field private blue:Lcom/letv/tracker/agnes/Bluetooth;

.field private gps:Lcom/letv/tracker/agnes/GPS;

.field private nfc:Lcom/letv/tracker/agnes/NFC;

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

.field private vpn:Lcom/letv/tracker/agnes/VPN;

.field private wifi:Lcom/letv/tracker/agnes/Wifi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Network"

    .line 16
    sput-object v0, Lcom/letv/tracker/agnes/Network;->ID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/letv/tracker/agnes/VPN;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/VPN;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->vpn:Lcom/letv/tracker/agnes/VPN;

    .line 30
    new-instance v0, Lcom/letv/tracker/agnes/Wifi;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Wifi;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->wifi:Lcom/letv/tracker/agnes/Wifi;

    .line 31
    new-instance v0, Lcom/letv/tracker/agnes/Bluetooth;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/Bluetooth;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->blue:Lcom/letv/tracker/agnes/Bluetooth;

    .line 32
    new-instance v0, Lcom/letv/tracker/agnes/NFC;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/NFC;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->nfc:Lcom/letv/tracker/agnes/NFC;

    .line 33
    new-instance v0, Lcom/letv/tracker/agnes/GPS;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/GPS;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/agnes/Network;->gps:Lcom/letv/tracker/agnes/GPS;

    .line 34
    return-void
.end method


# virtual methods
.method public addProp(Lcom/letv/tracker/enums/Key;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    invoke-static {p1}, Lcom/letv/tracker/enums/Key;->isExsited(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

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

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

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

    .line 128
    new-instance v2, Lcom/letv/agnes/service/beans/IApp;

    invoke-direct {v2}, Lcom/letv/agnes/service/beans/IApp;-><init>()V

    .line 131
    iget-object v3, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 154
    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    .line 133
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    .line 134
    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setProps(Ljava/util/Map;)V

    move v0, v1

    .line 135
    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    invoke-virtual {v2, v3}, Lcom/letv/agnes/service/beans/IApp;->setActs(Ljava/util/List;)V

    move v0, v1

    .line 146
    goto :goto_1

    .line 142
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/Action;

    .line 143
    invoke-static {v0}, Lcom/letv/tracker/service/Converter;->convertAction(Lcom/letv/tracker/msg/bean/Action;)Lcom/letv/agnes/service/beans/IAction;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/letv/agnes/service/beans/IApp;->setTime(J)V

    .line 151
    sget-object v0, Lcom/letv/tracker/agnes/Network;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/letv/agnes/service/beans/IApp;->setId(Ljava/lang/String;)V

    .line 152
    return-object v2
.end method

.method public connectMobileData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "connMobileData"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public connectService()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "conn"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public disconnectMobileData()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "disconnMobileData"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getBluetooth()Lcom/letv/tracker/agnes/Bluetooth;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->blue:Lcom/letv/tracker/agnes/Bluetooth;

    return-object v0
.end method

.method public getGPS()Lcom/letv/tracker/agnes/GPS;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->gps:Lcom/letv/tracker/agnes/GPS;

    return-object v0
.end method

.method public getNFC()Lcom/letv/tracker/agnes/NFC;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->nfc:Lcom/letv/tracker/agnes/NFC;

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
    .line 49
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getVPN()Lcom/letv/tracker/agnes/VPN;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->vpn:Lcom/letv/tracker/agnes/VPN;

    return-object v0
.end method

.method public getWifi()Lcom/letv/tracker/agnes/Wifi;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->wifi:Lcom/letv/tracker/agnes/Wifi;

    return-object v0
.end method

.method public loseService()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "disconn"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public offMobileData()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "offMobileData"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public offRomaing()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "offRomaing"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public onMobileData()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "onMobileData"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public onRomaing()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "onRomaing"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public setAPN(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    const-string/jumbo v1, "apn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setModel(Lcom/letv/tracker/enums/NetworkModel;)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/letv/tracker/agnes/Network;->props:Ljava/util/Map;

    const-string/jumbo v1, "netModel"

    invoke-virtual {p1}, Lcom/letv/tracker/enums/NetworkModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public setOperator(Lcom/letv/tracker/enums/Operator;)V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/letv/tracker/msg/bean/Action;

    const-string/jumbo v1, "setOperator"

    invoke-direct {v0, v1}, Lcom/letv/tracker/msg/bean/Action;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lcom/letv/tracker/enums/Operator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/tracker/msg/bean/Action;->setDes(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/letv/tracker/agnes/Network;->acts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method
