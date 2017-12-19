.class public Lcom/android/server/pm/http/BaseParam;
.super Ljava/lang/Object;
.source "BaseParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/BaseParam$Type;
    }
.end annotation


# instance fields
.field private final IMEI:Ljava/lang/String;

.field private final TYPE:Ljava/lang/String;

.field public baseUrl:Ljava/lang/String;

.field public headers:Ljava/util/Map;
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

.field public httpType:I

.field public isJson:Z

.field private params:Ljava/util/Map;
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "httptype"    # I
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    .line 34
    const-string/jumbo v1, "imei"

    iput-object v1, p0, Lcom/android/server/pm/http/BaseParam;->IMEI:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "type"

    iput-object v1, p0, Lcom/android/server/pm/http/BaseParam;->TYPE:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    .line 46
    iput-object p4, p0, Lcom/android/server/pm/http/BaseParam;->baseUrl:Ljava/lang/String;

    .line 47
    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/pm/http/BaseParam;->isJson:Z

    .line 49
    iget-object v0, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    const-string/jumbo v1, "imei"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget v0, p0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/http/BaseParam;->getHttpTypeStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/http/SignatureUtils;->getSignature(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/http/BaseParam;->headers:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public encodeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "baseurl"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/server/pm/http/BaseParam;->baseUrl:Ljava/lang/String;

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    return-object v4

    .line 83
    :cond_1
    const/4 v1, 0x1

    .line 84
    .local v1, "first":Z
    iget-object v6, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 86
    iget v6, p0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 87
    :cond_2
    const-string/jumbo v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_3
    const/4 v1, 0x0

    .line 93
    :goto_1
    iget-object v6, p0, Lcom/android/server/pm/http/BaseParam;->params:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 96
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    .restart local v5    # "value":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_6
    return-object v4
.end method

.method public getHttpTypeStr(I)Ljava/lang/String;
    .locals 1
    .param p1, "httpType"    # I

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 70
    const-string/jumbo v0, "GET"

    return-object v0

    .line 62
    :pswitch_0
    const-string/jumbo v0, "GET"

    return-object v0

    .line 64
    :pswitch_1
    const-string/jumbo v0, "POST"

    return-object v0

    .line 66
    :pswitch_2
    const-string/jumbo v0, "PUT"

    return-object v0

    .line 68
    :pswitch_3
    const-string/jumbo v0, "DELETE"

    return-object v0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public needSignature()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/server/pm/http/BaseParam;->headers:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/http/BaseParam;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
