.class public Lcom/android/server/activation/http/SimpleHttpURLConnection;
.super Ljava/lang/Object;
.source "SimpleHttpURLConnection.java"


# static fields
.field public static final COOKIE_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final USER_AGENT_KEY:Ljava/lang/String; = "User-Agent"


# instance fields
.field private mRequestHeaders:Ljava/util/Map;
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

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    .line 58
    const-string/jumbo v0, "User-Agent"

    invoke-direct {p0, v0, p1}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/activation/http/SimpleHttpURLConnection;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 66
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V
    .locals 4
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/server/activation/http/RequestParam",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "request":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Lcom/android/server/activation/http/RequestParam;->getBody()[B

    move-result-object v0

    .line 347
    .local v0, "body":[B
    if-eqz v0, :cond_0

    .line 350
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 352
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 354
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {p1}, Lcom/android/server/activation/http/RequestParam;->getBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 358
    .local v1, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 360
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 362
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 343
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_0
    return-void
.end method

.method private ensuerX509TrustManager()V
    .locals 5

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 94
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Lcom/android/server/activation/http/SimpleHttpURLConnection$1;

    invoke-direct {v3, p0}, Lcom/android/server/activation/http/SimpleHttpURLConnection$1;-><init>(Lcom/android/server/activation/http/SimpleHttpURLConnection;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 110
    const/4 v4, 0x0

    .line 94
    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 111
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isHttpsRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "https"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private openConnection(Ljava/net/URL;Lcom/android/server/activation/http/RequestParam;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/server/activation/http/RequestParam",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    .local p2, "request":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 248
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lcom/android/server/activation/http/RequestParam;->getConnectTimeoutms()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 249
    invoke-virtual {p2}, Lcom/android/server/activation/http/RequestParam;->getReadTimeoutms()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 250
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 254
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->isHttpsRequest(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    return-object v0

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->ensuerX509TrustManager()V

    .line 259
    iget-object v1, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 261
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 265
    :cond_1
    return-object v0
.end method

.method private performRequest(Lcom/android/server/activation/http/RequestParam;Ljava/util/Map;Z)Lcom/android/server/activation/http/ServiceResponse;
    .locals 15
    .param p3, "lastTry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/activation/http/RequestParam",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/server/activation/http/ServiceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/activation/exception/NetworkRequestException;,
            Lcom/android/server/activation/exception/SignatureException;,
            Lcom/android/server/activation/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "request":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 159
    const-string/jumbo v12, "[SimpleHttpURLConnection] http request error : params is null...."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v12, Lcom/android/server/activation/exception/MethodRequestException;

    const-string/jumbo v13, "params is null.."

    invoke-direct {v12, v13}, Lcom/android/server/activation/exception/MethodRequestException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 163
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/activation/http/RequestParam;->getBaseUrl()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "url":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, "parsedUrl":Ljava/net/URL;
    move-object/from16 v0, p1

    invoke-direct {p0, v8, v0}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->openConnection(Ljava/net/URL;Lcom/android/server/activation/http/RequestParam;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 171
    .local v1, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/activation/http/RequestParam;->getSignatureHeaders()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->setRequestHttpHead(Ljava/net/HttpURLConnection;Ljava/util/Map;Ljava/util/Map;)V

    .line 174
    move-object/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V

    .line 177
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 180
    .local v9, "responseCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/activation/http/RequestParam;->getParamsEncoding()Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "encode":Ljava/lang/String;
    :goto_0
    const/16 v12, 0xc8

    if-ne v9, v12, :cond_2

    .line 184
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 185
    .local v10, "stream":Ljava/io/InputStream;
    new-instance v12, Lcom/android/server/activation/http/ServiceResponse;

    invoke-direct {v12, v9, v10, v6}, Lcom/android/server/activation/http/ServiceResponse;-><init>(ILjava/io/InputStream;Ljava/lang/String;)V

    return-object v12

    .line 180
    .end local v6    # "encode":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "encode":Ljava/lang/String;
    goto :goto_0

    .line 188
    :cond_2
    const/16 v12, 0x193

    if-ne v9, v12, :cond_3

    .line 195
    new-instance v12, Lcom/android/server/activation/exception/SignatureException;

    const-string/jumbo v13, "signature error"

    const/16 v14, 0x193

    invoke-direct {v12, v13, v14}, Lcom/android/server/activation/exception/SignatureException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_0
    .catch Lcom/android/server/activation/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/activation/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/activation/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_0
    move-exception v3

    .line 213
    .local v3, "e":Lcom/android/server/activation/exception/NetworkRequestException;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimpleHttpURLConnection] catch NetworkRequestException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/activation/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v3    # "e":Lcom/android/server/activation/exception/NetworkRequestException;
    :catchall_0
    move-exception v12

    throw v12

    .line 196
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_3
    const/16 v12, 0x195

    if-ne v9, v12, :cond_4

    .line 202
    :try_start_2
    new-instance v12, Lcom/android/server/activation/exception/MethodRequestException;

    const-string/jumbo v13, "http method error"

    const/16 v14, 0x195

    invoke-direct {v12, v13, v14}, Lcom/android/server/activation/exception/MethodRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_2
    .catch Lcom/android/server/activation/exception/NetworkRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/activation/exception/SignatureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/activation/exception/MethodRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_1
    move-exception v4

    .line 216
    .local v4, "e":Lcom/android/server/activation/exception/SignatureException;
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimpleHttpURLConnection] catch SignatureException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/server/activation/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local v4    # "e":Lcom/android/server/activation/exception/SignatureException;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_4
    if-eqz p3, :cond_5

    .line 205
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    .local v7, "errMsg":Ljava/lang/String;
    new-instance v12, Lcom/android/server/activation/exception/NetworkRequestException;

    invoke-direct {v12, v7, v9}, Lcom/android/server/activation/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_4
    .catch Lcom/android/server/activation/exception/NetworkRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/server/activation/exception/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/server/activation/exception/MethodRequestException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v7    # "errMsg":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_2
    move-exception v2

    .line 219
    .local v2, "e":Lcom/android/server/activation/exception/MethodRequestException;
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimpleHttpURLConnection] catch MethodRequestException: ."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/server/activation/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    throw v2

    .line 221
    .end local v2    # "e":Lcom/android/server/activation/exception/MethodRequestException;
    :catch_3
    move-exception v5

    .line 222
    .local v5, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SimpleHttpURLConnection] catch other Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/android/server/activation/util/LogHelper;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v12, Lcom/android/server/activation/exception/NetworkRequestException;

    const-string/jumbo v13, "http Exception"

    const/16 v14, 0x6f

    invoke-direct {v12, v13, v14}, Lcom/android/server/activation/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_5
    const/4 v12, 0x0

    return-object v12
.end method

.method private setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/server/activation/http/RequestParam",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    .local p2, "request":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Lcom/android/server/activation/http/RequestParam;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown method type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/activation/http/RequestParam;->getMethod()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :pswitch_0
    const-string/jumbo v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 307
    :pswitch_1
    const-string/jumbo v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_2
    const-string/jumbo v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 311
    invoke-static {p1, p2}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V

    goto :goto_0

    .line 314
    :pswitch_3
    const-string/jumbo v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 315
    invoke-static {p1, p2}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V

    goto :goto_0

    .line 318
    :pswitch_4
    const-string/jumbo v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_5
    const-string/jumbo v0, "OPTIONS"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_6
    const-string/jumbo v0, "TRACE"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_7
    const-string/jumbo v0, "PATCH"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 328
    invoke-static {p1, p2}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->addBodyIfExists(Ljava/net/HttpURLConnection;Lcom/android/server/activation/http/RequestParam;)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private setRequestHttpHead(Ljava/net/HttpURLConnection;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "signatureHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 284
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "keyValue$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    .local v2, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 273
    .end local v2    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "keyValue$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public addX509TrustManager(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 8
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 373
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 374
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 376
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 378
    const-string/jumbo v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 379
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v5, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 381
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public exec(Lcom/android/server/activation/http/RequestParam;)Lcom/android/server/activation/http/ServiceResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/activation/http/RequestParam",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/activation/http/ServiceResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/activation/exception/NetworkRequestException;,
            Lcom/android/server/activation/exception/SignatureException;,
            Lcom/android/server/activation/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    .local p1, "params":Lcom/android/server/activation/http/RequestParam;, "Lcom/android/server/activation/http/RequestParam<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x1

    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "response":Lcom/android/server/activation/http/ServiceResponse;
    invoke-virtual {p1}, Lcom/android/server/activation/http/RequestParam;->getRetryTime()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 135
    .local v1, "requestTimes":I
    const/4 v0, 0x0

    .end local v2    # "response":Lcom/android/server/activation/http/ServiceResponse;
    .local v0, "requestTime":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/activation/http/SimpleHttpURLConnection;->performRequest(Lcom/android/server/activation/http/RequestParam;Ljava/util/Map;Z)Lcom/android/server/activation/http/ServiceResponse;

    move-result-object v2

    .line 140
    .local v2, "response":Lcom/android/server/activation/http/ServiceResponse;
    if-eqz v2, :cond_2

    .line 144
    .end local v2    # "response":Lcom/android/server/activation/http/ServiceResponse;
    :cond_0
    return-object v2

    .line 136
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 135
    .restart local v2    # "response":Lcom/android/server/activation/http/ServiceResponse;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
