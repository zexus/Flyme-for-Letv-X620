.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .locals 30
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 42
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v18, 0x0

    .line 45
    .local v18, "serverDate":J
    const-wide/16 v10, 0x0

    .line 46
    .local v10, "lastModified":J
    const-wide/16 v20, 0x0

    .line 47
    .local v20, "serverExpires":J
    const-wide/16 v22, 0x0

    .line 48
    .local v22, "softExpire":J
    const-wide/16 v4, 0x0

    .line 49
    .local v4, "finalExpire":J
    const-wide/16 v12, 0x0

    .line 50
    .local v12, "maxAge":J
    const-wide/16 v24, 0x0

    .line 51
    .local v24, "staleWhileRevalidate":J
    const/4 v6, 0x0

    .line 52
    .local v6, "hasCacheControl":Z
    const/4 v14, 0x0

    .line 54
    .local v14, "mustRevalidate":Z
    const/4 v15, 0x0

    .line 57
    .local v15, "serverEtag":Ljava/lang/String;
    const-string/jumbo v28, "Date"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 58
    .local v7, "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 59
    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v18

    .line 62
    :cond_0
    const-string/jumbo v28, "Cache-Control"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "headerValue":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 63
    .restart local v7    # "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 64
    const/4 v6, 0x1

    .line 65
    const-string/jumbo v28, ","

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 66
    .local v27, "tokens":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_7

    .line 67
    aget-object v28, v27, v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 68
    .local v26, "token":Ljava/lang/String;
    const-string/jumbo v28, "no-cache"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1

    const-string/jumbo v28, "no-store"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 69
    :cond_1
    const/16 v28, 0x0

    return-object v28

    .line 70
    :cond_2
    const-string/jumbo v28, "max-age="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 72
    const/16 v28, 0x8

    :try_start_0
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v12

    .line 66
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 75
    :cond_4
    const-string/jumbo v28, "stale-while-revalidate="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 77
    const/16 v28, 0x17

    :try_start_1
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v24

    goto :goto_1

    .line 80
    :cond_5
    const-string/jumbo v28, "must-revalidate"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    const-string/jumbo v28, "proxy-revalidate"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 81
    :cond_6
    const/4 v14, 0x1

    goto :goto_1

    .line 86
    .end local v9    # "i":I
    .end local v26    # "token":Ljava/lang/String;
    .end local v27    # "tokens":[Ljava/lang/String;
    :cond_7
    const-string/jumbo v28, "Expires"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "headerValue":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 87
    .restart local v7    # "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 88
    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v20

    .line 91
    :cond_8
    const-string/jumbo v28, "Last-Modified"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "headerValue":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 92
    .restart local v7    # "headerValue":Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 93
    invoke-static {v7}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v10

    .line 96
    :cond_9
    const-string/jumbo v28, "ETag"

    move-object/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "serverEtag":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 100
    .local v15, "serverEtag":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 101
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v12

    add-long v22, v16, v28

    .line 102
    if-eqz v14, :cond_b

    .line 103
    move-wide/from16 v4, v22

    .line 111
    :cond_a
    :goto_2
    new-instance v3, Lcom/android/volley/Cache$Entry;

    invoke-direct {v3}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 112
    .local v3, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v3, Lcom/android/volley/Cache$Entry;->data:[B

    .line 113
    iput-object v15, v3, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 114
    move-wide/from16 v0, v22

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 115
    iput-wide v4, v3, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 116
    move-wide/from16 v0, v18

    iput-wide v0, v3, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 117
    iput-wide v10, v3, Lcom/android/volley/Cache$Entry;->lastModified:J

    .line 118
    iput-object v8, v3, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    .line 120
    return-object v3

    .line 104
    .end local v3    # "entry":Lcom/android/volley/Cache$Entry;
    :cond_b
    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    add-long v4, v22, v28

    goto :goto_2

    .line 105
    :cond_c
    const-wide/16 v28, 0x0

    cmp-long v28, v18, v28

    if-lez v28, :cond_a

    cmp-long v28, v20, v18

    if-ltz v28, :cond_a

    .line 107
    sub-long v28, v20, v18

    add-long v22, v16, v28

    .line 108
    move-wide/from16 v4, v22

    goto :goto_2

    .line 78
    .restart local v9    # "i":I
    .local v15, "serverEtag":Ljava/lang/String;
    .restart local v26    # "token":Ljava/lang/String;
    .restart local v27    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCharset(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 149
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 151
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v4, 0x1

    aget-object v4, v2, v4

    return-object v4

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v2, 0x0

    return-wide v2
.end method
