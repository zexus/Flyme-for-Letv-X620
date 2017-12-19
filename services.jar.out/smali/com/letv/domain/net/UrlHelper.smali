.class public Lcom/letv/domain/net/UrlHelper;
.super Ljava/lang/Object;
.source "UrlHelper.java"


# static fields
.field private static final AK:Ljava/lang/String; = "cafd31ea4e"

.field private static final DEBUG:Z = false

.field public static final HOST:Ljava/lang/String; = "serviceallot/api/v1/allot"

.field public static final OVERSEA_SERVER:Ljava/lang/String;

.field private static final SK:Ljava/lang/String; = "xx2UnfARQaU8qCZ"

.field private static sParams:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "https://cert.g.hdtv.letv.com"

    sput-object v0, Lcom/letv/domain/net/UrlHelper;->OVERSEA_SERVER:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "build"    # Landroid/net/Uri$Builder;

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lcom/letv/domain/net/UrlHelper;->sParams:Ljava/util/TreeMap;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/letv/domain/net/UrlHelper;->sParams:Ljava/util/TreeMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-virtual {p2, p0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    :cond_1
    return-void
.end method

.method private static getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 77
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 79
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 81
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 92
    .local v0, "byteArray":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v4, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 95
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 96
    const-string/jumbo v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "byteArray":[B
    .end local v3    # "i":I
    .end local v4    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 83
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "NoSuchAlgorithmException caught!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 85
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "byteArray":[B
    .restart local v3    # "i":I
    .restart local v4    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 102
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getSign()Ljava/lang/String;
    .locals 6

    .prologue
    .line 64
    const-string/jumbo v0, "cafd31ea4e"

    const-string/jumbo v1, "xx2UnfARQaU8qCZ"

    sget-object v2, Lcom/letv/domain/net/UrlHelper;->sParams:Ljava/util/TreeMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/letv/domain/utils/MD5Utils;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUrl(Lcom/letv/domain/bean/DeviceInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "deviceInfo"    # Lcom/letv/domain/bean/DeviceInfo;

    .prologue
    .line 37
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/letv/domain/net/UrlHelper;->sParams:Ljava/util/TreeMap;

    .line 38
    sget-object v1, Lcom/letv/domain/net/UrlHelper;->OVERSEA_SERVER:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 39
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "serviceallot/api/v1/allot"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    const-string/jumbo v1, "imei"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 41
    const-string/jumbo v1, "type"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 42
    const-string/jumbo v1, "services"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getServices()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 43
    const-string/jumbo v1, "ui_version"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getUi_version()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 44
    const-string/jumbo v1, "software_version"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getSoftware_version()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 45
    const-string/jumbo v1, "hardware_version"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getHardware_version()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 46
    const-string/jumbo v1, "app_name"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getApp_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 47
    const-string/jumbo v1, "app_version"

    invoke-virtual {p0}, Lcom/letv/domain/bean/DeviceInfo;->getApp_version()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 48
    const-string/jumbo v1, "_time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 49
    const-string/jumbo v1, "_ak"

    const-string/jumbo v2, "cafd31ea4e"

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 50
    const-string/jumbo v1, "_sign"

    invoke-static {}, Lcom/letv/domain/net/UrlHelper;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/letv/domain/net/UrlHelper;->addParam(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Builder;)V

    .line 51
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
