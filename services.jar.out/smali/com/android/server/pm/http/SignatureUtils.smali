.class public Lcom/android/server/pm/http/SignatureUtils;
.super Ljava/lang/Object;
.source "SignatureUtils.java"


# static fields
.field public static final APPKEY:Ljava/lang/String; = "ak_LeSeEZikwei5282cm"

.field public static final APPSEC:Ljava/lang/String; = "sk_owjcuuiwe83028e"

.field public static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"

.field public static final CONTENT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-Type"

.field public static final DATE_KEY:Ljava/lang/String; = "Date"

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeByte(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/android/server/pm/http/SignatureUtils;->encodeJson(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeJson(Ljava/util/Map;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    .line 71
    return-object v4

    .line 74
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .local v3, "object":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 78
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    .restart local v3    # "object":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Z)Ljava/util/Map;
    .locals 10
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p5, "isJson"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v6, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lcom/letv/leui/util/LeSignature;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "date":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 50
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/json"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v7, "Authorization"

    const-string/jumbo v8, " LETV %s %s"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "ak_LeSeEZikwei5282cm"

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const-string/jumbo v0, "sk_owjcuuiwe83028e"

    invoke-static {p4}, Lcom/android/server/pm/http/SignatureUtils;->encodeByte(Ljava/util/Map;)[B

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeSignature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    const-string/jumbo v0, "Date"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v6

    .line 53
    :cond_0
    const-string/jumbo v7, "Authorization"

    const-string/jumbo v8, " LETV %s %s"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "ak_LeSeEZikwei5282cm"

    const/4 v1, 0x0

    aput-object v0, v9, v1

    const-string/jumbo v0, "sk_owjcuuiwe83028e"

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeSignature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
