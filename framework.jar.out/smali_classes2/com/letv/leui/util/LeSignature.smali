.class public Lcom/letv/leui/util/LeSignature;
.super Ljava/lang/Object;
.source "LeSignature.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final KEY_AK:Ljava/lang/String; = "_ak"

.field private static final KEY_TIME:Ljava/lang/String; = "_time"

.field private static final PARAMS_SEP:Ljava/lang/String; = "&"

.field private static final REQUEST_CHARSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeSignature;->HEX_DIGITS:[C

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 184
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, d MMM yyyy hh:mm:ss z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 185
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLjava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "secretKey"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # [B
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[BJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    .local p6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p4, p5}, Lcom/letv/leui/util/LeSignature;->formatDate(J)Ljava/lang/String;

    move-result-object v4

    .local v4, "date":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 121
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/util/LeSignature;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .param p0, "secretKey"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # [B
    .param p4, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/letv/leui/util/LeSignature;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 141
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "You MUST set access key for request!"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 145
    :cond_0
    :try_start_0
    const-string/jumbo v1, ""

    .line 146
    .local v1, "bodyMD5":Ljava/lang/String;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v14, v0

    if-eqz v14, :cond_1

    .line 148
    const-string/jumbo v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 149
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 150
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    invoke-static {v14}, Lcom/letv/leui/util/LeSignature;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 152
    .end local v2    # "digest":Ljava/security/MessageDigest;
    :cond_1
    const-string/jumbo v8, ""

    .line 153
    .local v8, "paramString":Ljava/lang/String;
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 154
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 155
    .local v10, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "param$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 156
    .local v6, "param":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 157
    .local v13, "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 158
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    .end local v1    # "bodyMD5":Ljava/lang/String;
    .end local v6    # "param":Ljava/lang/String;
    .end local v7    # "param$iterator":Ljava/util/Iterator;
    .end local v8    # "paramString":Ljava/lang/String;
    .end local v10    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 171
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 175
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string/jumbo v14, ""

    return-object v14

    .line 161
    .restart local v1    # "bodyMD5":Ljava/lang/String;
    .restart local v7    # "param$iterator":Ljava/util/Iterator;
    .restart local v8    # "paramString":Ljava/lang/String;
    .restart local v10    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v14, "&"

    invoke-static {v10, v14}, Lcom/letv/leui/util/LeSignature;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 164
    .end local v7    # "param$iterator":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "stringToSign":Ljava/lang/String;
    new-instance v11, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const-string/jumbo v15, "HmacSHA1"

    invoke-direct {v11, v14, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    .local v11, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v14, "HmacSHA1"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 167
    .local v5, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v5, v11}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 168
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v5, v14}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v9

    .line 169
    .local v9, "rawHmac":[B
    invoke-static {v9}, Lcom/letv/leui/util/LeSignature;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    return-object v14

    .line 172
    .end local v1    # "bodyMD5":Ljava/lang/String;
    .end local v5    # "mac":Ljavax/crypto/Mac;
    .end local v8    # "paramString":Ljava/lang/String;
    .end local v9    # "rawHmac":[B
    .end local v11    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v12    # "stringToSign":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 173
    .local v3, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v3}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/lang/String;
    .locals 13
    .param p0, "accessKey"    # Ljava/lang/String;
    .param p1, "secretKey"    # Ljava/lang/String;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/letv/leui/util/LeSignature;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/letv/leui/util/LeSignature;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "You MUST set access key and secret key for the request!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 68
    :cond_1
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 72
    .local v6, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v9, "_time"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 73
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "_time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_2
    const-string/jumbo v9, "_ak"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "_ak="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {p0, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 81
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "param$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "param":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 83
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "UTF-8"

    invoke-static {v8, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 95
    .end local v3    # "param":Ljava/lang/String;
    .end local v4    # "param$iterator":Ljava/util/Iterator;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 100
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string/jumbo v9, ""

    return-object v9

    .line 89
    :cond_5
    :try_start_1
    const-string/jumbo v9, "&"

    invoke-static {v6, v9}, Lcom/letv/leui/util/LeSignature;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "paramsString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "str2Sign":Ljava/lang/String;
    const-string/jumbo v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 93
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-static {v9}, Lcom/letv/leui/util/LeSignature;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    return-object v9

    .line 97
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "paramsString":Ljava/lang/String;
    .end local v7    # "str2Sign":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 98
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "strings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 40
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "item":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 47
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 49
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 31
    .local v0, "b":B
    sget-object v4, Lcom/letv/leui/util/LeSignature;->HEX_DIGITS:[C

    and-int/lit16 v5, v0, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    sget-object v4, Lcom/letv/leui/util/LeSignature;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
