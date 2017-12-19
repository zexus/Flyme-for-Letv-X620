.class public abstract Lcom/mediatek/gba/GbaBaseCredential;
.super Ljava/lang/Object;
.source "GbaBaseCredential.java"


# static fields
.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field protected static final HEX_ARRAY:[C

.field private static final TAG:Ljava/lang/String; = "GbaBaseCredential"

.field protected static sContext:Landroid/content/Context;

.field protected static sIsTlsEnabled:Z

.field protected static sNafAddress:Ljava/lang/String;

.field protected static sNetwork:Landroid/net/Network;

.field protected static sPasswd:Ljava/lang/String;

.field protected static sService:Lcom/mediatek/gba/IGbaService;

.field protected static sSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 20
    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    .line 22
    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 24
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->HEX_ARRAY:[C

    .line 17
    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    .line 23
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sput-object p1, Lcom/mediatek/gba/GbaBaseCredential;->sContext:Landroid/content/Context;

    .line 49
    sput p3, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 55
    :cond_0
    sput-boolean v4, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 59
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 60
    sput-boolean v3, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 66
    :cond_1
    :goto_0
    const-string/jumbo v0, "GbaBaseCredential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nafAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 61
    :cond_2
    sget-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 62
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 63
    sput-boolean v4, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    goto :goto_0
.end method

.method public static getNafSessionKey()Lcom/mediatek/gba/NafSessionKey;
    .locals 16

    .prologue
    const/4 v15, 0x0

    .line 108
    const/4 v7, 0x0

    .line 111
    .local v7, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :try_start_0
    const-string/jumbo v12, "GbaService"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 113
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v12, "debug"

    const-string/jumbo v13, "The binder is null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v15

    .line 118
    :cond_0
    invoke-static {v0}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v12

    sput-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    :try_start_1
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 126
    .local v11, "uaId":[B
    sget-boolean v12, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    if-eqz v12, :cond_5

    .line 127
    const-string/jumbo v12, "gba.ciper.suite"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "gbaStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 130
    invoke-static {v5}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v1

    .line 132
    .local v1, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v2

    .line 134
    .local v2, "cipherSuiteCode":[B
    const/4 v12, 0x0

    aget-byte v12, v2, v12

    const/4 v13, 0x3

    aput-byte v12, v11, v13

    .line 135
    const/4 v12, 0x1

    aget-byte v12, v2, v12

    const/4 v13, 0x4

    aput-byte v12, v11, v13

    .line 142
    .end local v1    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v2    # "cipherSuiteCode":[B
    .end local v5    # "gbaStr":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    if-eqz v12, :cond_2

    .line 143
    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v13, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    invoke-interface {v12, v13}, Lcom/mediatek/gba/IGbaService;->setNetwork(Landroid/net/Network;)V

    .line 146
    :cond_2
    const-string/jumbo v12, "digest.realm"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "realm":Ljava/lang/String;
    const-string/jumbo v12, "GbaBaseCredential"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "realm:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    .line 149
    const-string/jumbo v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 150
    .local v10, "segments":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x0

    aget-object v13, v10, v13

    const-string/jumbo v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 151
    const-string/jumbo v12, "GbaBaseCredential"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NAF FQDN:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v4, 0x0

    .line 157
    .local v4, "forceRun":Z
    const-string/jumbo v12, "GbaBaseCredential"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "gba.auth: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "gba.auth"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string/jumbo v12, "401"

    const-string/jumbo v13, "gba.auth"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 159
    const/4 v4, 0x1

    .line 160
    const-string/jumbo v12, "gba.auth"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    :cond_3
    const-string/jumbo v12, "GbaBaseCredential"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "forceRun: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget v12, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    const/4 v13, -0x1

    if-ne v13, v12, :cond_7

    .line 164
    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v13, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    invoke-interface {v12, v13, v11, v4}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v7

    .line 171
    .local v7, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_2
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 172
    invoke-virtual {v7}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/IllegalStateException;

    .line 171
    if-eqz v12, :cond_4

    .line 173
    invoke-virtual {v7}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v12

    check-cast v12, Ljava/lang/IllegalStateException;

    invoke-virtual {v12}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "msg":Ljava/lang/String;
    const-string/jumbo v12, "HTTP 403 Forbidden"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 177
    const-string/jumbo v12, "GbaBaseCredential"

    const-string/jumbo v13, "GBA hit 403"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo v12, "gba.auth"

    const-string/jumbo v13, "403"

    invoke-static {v12, v13}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    .end local v4    # "forceRun":Z
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v9    # "realm":Ljava/lang/String;
    .end local v10    # "segments":[Ljava/lang/String;
    .end local v11    # "uaId":[B
    :cond_4
    :goto_3
    return-object v7

    .line 119
    .local v7, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "uaId":[B
    :cond_5
    :try_start_2
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    goto/16 :goto_1

    .line 153
    .restart local v9    # "realm":Ljava/lang/String;
    :cond_6
    return-object v15

    .line 167
    .restart local v4    # "forceRun":Z
    .restart local v10    # "segments":[Ljava/lang/String;
    :cond_7
    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v13, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 168
    sget v14, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 167
    invoke-interface {v12, v13, v11, v4, v14}, Lcom/mediatek/gba/IGbaService;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .local v7, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    goto :goto_2

    .line 181
    .end local v4    # "forceRun":Z
    .end local v7    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v9    # "realm":Ljava/lang/String;
    .end local v10    # "segments":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 182
    .end local v11    # "uaId":[B
    .local v8, "re":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string/jumbo v0, "GbaBaseCredential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GBA dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sput-object p1, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    .line 95
    :cond_0
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 86
    sput p1, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 85
    return-void
.end method

.method public setTlsEnabled(Z)V
    .locals 0
    .param p1, "tlsEnabled"    # Z

    .prologue
    .line 76
    sput-boolean p1, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 75
    return-void
.end method
