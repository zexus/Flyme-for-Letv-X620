.class public Lcom/letv/domain/utils/MD5Utils;
.super Ljava/lang/Object;
.source "MD5Utils.java"


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
    .line 29
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/letv/domain/utils/MD5Utils;->HEX_DIGITS:[C

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLjava/util/Map;)Ljava/lang/String;
    .locals 20
    .param p0, "accessKey"    # Ljava/lang/String;
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

    .prologue
    .line 85
    .local p6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/letv/domain/utils/MD5Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 86
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v18, "You MUST set access key for request!"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 89
    :cond_0
    :try_start_0
    const-string/jumbo v3, ""

    .line 90
    .local v3, "bodyMD5":Ljava/lang/String;
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 92
    const-string/jumbo v17, "MD5"

    invoke-static/range {v17 .. v17}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 93
    .local v5, "digest":Ljava/security/MessageDigest;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/letv/domain/utils/MD5Utils;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 96
    .end local v5    # "digest":Ljava/security/MessageDigest;
    :cond_1
    const-string/jumbo v11, ""

    .line 97
    .local v11, "paramString":Ljava/lang/String;
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_4

    .line 98
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    .line 99
    .local v13, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "param$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 100
    .local v9, "param":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 101
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 102
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v3    # "bodyMD5":Ljava/lang/String;
    .end local v9    # "param":Ljava/lang/String;
    .end local v10    # "param$iterator":Ljava/util/Iterator;
    .end local v11    # "paramString":Ljava/lang/String;
    .end local v13    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 119
    const-string/jumbo v17, ""

    return-object v17

    .line 105
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    .restart local v3    # "bodyMD5":Ljava/lang/String;
    .restart local v10    # "param$iterator":Ljava/util/Iterator;
    .restart local v11    # "paramString":Ljava/lang/String;
    .restart local v13    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    const-string/jumbo v17, "&"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/letv/domain/utils/MD5Utils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 107
    .end local v10    # "param$iterator":Ljava/util/Iterator;
    .end local v13    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_4
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "EEE, d MMM yyyy hh:mm:ss z"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 108
    .local v7, "fm":Ljava/text/SimpleDateFormat;
    new-instance v17, Ljava/util/Date;

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "date":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 111
    .local v15, "stringToSign":Ljava/lang/String;
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const-string/jumbo v18, "HmacSHA1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 112
    .local v14, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v17, "HmacSHA1"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 113
    .local v8, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v8, v14}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 114
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v12

    .line 115
    .local v12, "rawHmac":[B
    invoke-static {v12}, Lcom/letv/domain/utils/MD5Utils;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    return-object v17
.end method

.method public static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/lang/String;
    .locals 10
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
    .line 44
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/letv/domain/utils/MD5Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1}, Lcom/letv/domain/utils/MD5Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "You MUST set access key and secret key for the request!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 47
    :cond_1
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 51
    .local v5, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 52
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "param$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 53
    .local v2, "param":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 54
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v7, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "param$iterator":Ljava/util/Iterator;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const-string/jumbo v8, ""

    return-object v8

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    const-string/jumbo v8, "&"

    invoke-static {v5, v8}, Lcom/letv/domain/utils/MD5Utils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "paramsString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, "str2Sign":Ljava/lang/String;
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 62
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 63
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/letv/domain/utils/MD5Utils;->toHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    return-object v8
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
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
    .line 132
    .local p0, "strings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 134
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

    .line 135
    .local v1, "item":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 140
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
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
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 125
    .local v0, "b":B
    sget-object v4, Lcom/letv/domain/utils/MD5Utils;->HEX_DIGITS:[C

    and-int/lit16 v5, v0, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    sget-object v4, Lcom/letv/domain/utils/MD5Utils;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
