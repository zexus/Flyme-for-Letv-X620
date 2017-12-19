.class public Lcom/letv/domain/model/LocalDomain;
.super Ljava/lang/Object;
.source "LocalDomain.java"


# static fields
.field private static mLocalDomainMap:Ljava/util/Map;
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
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ACCOUNT:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "accounts.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->USERCENTER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "usercenter.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->DEVICE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "device.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ITV:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "api.itv.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->APIZHIFU:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "api.zhifu.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->ZHIFU:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zhifu.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->YUANXIAN:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "yuanxian.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->LOCK:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lock.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->BROWSER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "browser.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XSQUARE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xsquare.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->CALENDAR:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "calendar.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->MUSIC:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "music.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->PAY:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pay.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->OTA:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ota.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XFEEDBACK:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xfeedback.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->XPAGE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xpage.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->REMOTE:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remote.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->CONTROL:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "control.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->PUSH:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "push.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->SYNC:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sync.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    sget-object v1, Lcom/letv/domain/Service;->WALLPAPER:Lcom/letv/domain/Service;

    invoke-virtual {v1}, Lcom/letv/domain/Service;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wallpaper.scloud.letv.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainResponse(Lcom/letv/domain/bean/DeviceInfo;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "deviceInfo"    # Lcom/letv/domain/bean/DeviceInfo;

    .prologue
    const/4 v7, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getServices()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "services":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_0

    .line 48
    sget-object v7, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "key":Ljava/lang/String;
    sget-object v7, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "strings":[Ljava/lang/String;
    array-length v9, v6

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v5, v6, v8

    .line 55
    .local v5, "string":Ljava/lang/String;
    sget-object v7, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 56
    sget-object v7, Lcom/letv/domain/model/LocalDomain;->mLocalDomainMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    .line 58
    :cond_1
    const-string/jumbo v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 64
    .end local v5    # "string":Ljava/lang/String;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 65
    invoke-static {v3}, Lcom/letv/domain/utils/JsonUtils;->createJson(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 70
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :goto_3
    return-object v0

    .line 68
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-static {}, Lcom/letv/domain/utils/JsonUtils;->createErrorJson()Lorg/json/JSONObject;

    move-result-object v0

    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3
.end method
