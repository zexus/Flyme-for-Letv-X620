.class public Lcom/android/server/pm/http/SimpleHttpURLConnection;
.super Ljava/lang/Object;
.source "SimpleHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;,
        Lcom/android/server/pm/http/SimpleHttpURLConnection$1;
    }
.end annotation


# static fields
.field private static final CONNECT_HTTP_TIME_OUT:I = 0x0

.field public static final COOKIE_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"

.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final READ_HTTP_TIME_OUT:I = 0x1770

.field public static final USER_AGENT_KEY:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final RETRY_COUNT:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/android/server/pm/http/SimpleHttpURLConnection$1;

    invoke-direct {v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->RETRY_COUNT:I

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    .line 68
    invoke-static {p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "ua":Ljava/lang/String;
    const-string/jumbo v1, "User-Agent"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ua"    # Ljava/lang/String;
    .param p3, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p3, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 77
    return-void
.end method

.method public static ensureUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-static {p0}, Lcom/android/server/pm/http/SimpleHttpURLConnection$LeuiUserAgent;->-wrap0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isHttpsRequest(Ljava/lang/String;)Z
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v0, "https"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->createConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 238
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 239
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 240
    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 244
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->isHttpsRequest(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    return-object v0

    .line 248
    :cond_0
    invoke-static {}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->trustAllHosts()V

    .line 249
    return-object v0
.end method

.method private performRequest(Lcom/android/server/pm/http/UrlFactory;Ljava/util/Map;Z)Lcom/android/server/pm/http/Response;
    .locals 15
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .param p3, "lastTry"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/http/UrlFactory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/server/pm/http/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "additionalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 145
    const-string/jumbo v12, "Area"

    const-string/jumbo v13, "[HttpClient] http request error : params is null...."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v12, Lcom/android/server/pm/http/exception/MethodRequestException;

    const-string/jumbo v13, "params is null.."

    invoke-direct {v12, v13}, Lcom/android/server/pm/http/exception/MethodRequestException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 150
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/http/UrlFactory;->getUrl()Ljava/lang/String;

    move-result-object v11

    .line 153
    .local v11, "url":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, "parsedUrl":Ljava/net/URL;
    invoke-direct {p0, v8}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->openConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    .line 157
    .local v1, "connection":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v12, Lcom/android/server/pm/http/SimpleHttpURLConnection;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/http/UrlFactory;->getHeaders()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0, v12}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setRequestHttpHead(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Map;Ljava/util/Map;)V

    .line 163
    move-object/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->setConnectionParametersForRequest(Ljavax/net/ssl/HttpsURLConnection;Lcom/android/server/pm/http/UrlFactory;)V

    .line 166
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v9

    .line 169
    .local v9, "responseCode":I
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v6, "UTF-8"

    .line 171
    .local v6, "encode":Ljava/lang/String;
    :goto_0
    const/16 v12, 0xc8

    if-ne v9, v12, :cond_2

    .line 173
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 174
    .local v10, "stream":Ljava/io/InputStream;
    new-instance v12, Lcom/android/server/pm/http/Response;

    invoke-direct {v12, v9, v10, v6}, Lcom/android/server/pm/http/Response;-><init>(ILjava/io/InputStream;Ljava/lang/String;)V

    return-object v12

    .line 169
    .end local v6    # "encode":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "encode":Ljava/lang/String;
    goto :goto_0

    .line 177
    :cond_2
    const/16 v12, 0x193

    if-ne v9, v12, :cond_3

    .line 184
    new-instance v12, Lcom/android/server/pm/http/exception/SignatureException;

    const-string/jumbo v13, "signature error"

    const/16 v14, 0x193

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/http/exception/SignatureException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_0
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    :try_start_1
    const-string/jumbo v12, "Area"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[HttpClient] catch NetworkRequestException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/server/pm/http/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v3    # "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    :catchall_0
    move-exception v12

    throw v12

    .line 185
    .restart local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_3
    const/16 v12, 0x195

    if-ne v9, v12, :cond_4

    .line 191
    :try_start_2
    new-instance v12, Lcom/android/server/pm/http/exception/MethodRequestException;

    const-string/jumbo v13, "http method error"

    const/16 v14, 0x195

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/http/exception/MethodRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_2
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    .end local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_1
    move-exception v4

    .line 205
    .local v4, "e":Lcom/android/server/pm/http/exception/SignatureException;
    :try_start_3
    const-string/jumbo v12, "Area"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[HttpClient] catch SignatureException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/server/pm/http/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .end local v4    # "e":Lcom/android/server/pm/http/exception/SignatureException;
    .restart local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_4
    if-eqz p3, :cond_5

    .line 194
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ",  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "errMsg":Ljava/lang/String;
    new-instance v12, Lcom/android/server/pm/http/exception/NetworkRequestException;

    invoke-direct {v12, v7, v9}, Lcom/android/server/pm/http/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_4
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .end local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v6    # "encode":Ljava/lang/String;
    .end local v7    # "errMsg":Ljava/lang/String;
    .end local v8    # "parsedUrl":Ljava/net/URL;
    .end local v9    # "responseCode":I
    :catch_2
    move-exception v2

    .line 208
    .local v2, "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    :try_start_5
    const-string/jumbo v12, "Area"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[HttpClient] catch MethodRequestException: ."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/server/pm/http/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    throw v2

    .line 210
    .end local v2    # "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    :catch_3
    move-exception v5

    .line 211
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "Area"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[HttpClient] catch other Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v12, Lcom/android/server/pm/http/exception/NetworkRequestException;

    const-string/jumbo v13, "http Exception"

    const/16 v14, 0x6f

    invoke-direct {v12, v13, v14}, Lcom/android/server/pm/http/exception/NetworkRequestException;-><init>(Ljava/lang/String;I)V

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v6    # "encode":Ljava/lang/String;
    .restart local v8    # "parsedUrl":Ljava/net/URL;
    .restart local v9    # "responseCode":I
    :cond_5
    const/4 v12, 0x0

    return-object v12
.end method

.method private setConnectionParametersForRequest(Ljavax/net/ssl/HttpsURLConnection;Lcom/android/server/pm/http/UrlFactory;)V
    .locals 3
    .param p1, "connection"    # Ljavax/net/ssl/HttpsURLConnection;
    .param p2, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p2}, Lcom/android/server/pm/http/UrlFactory;->gethttpType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown method type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/http/UrlFactory;->gethttpType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    const-string/jumbo v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 280
    return-void

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method private setRequestHttpHead(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
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
    .line 259
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

    .line 260
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 268
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

    .line 269
    .local v2, "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    .end local v2    # "keyValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "keyValue$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private static trustAllHosts()V
    .locals 6

    .prologue
    .line 327
    const-string/jumbo v0, "trustAllHosts"

    .line 329
    .local v0, "TAG":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    new-instance v4, Lcom/android/server/pm/http/SimpleHttpURLConnection$2;

    invoke-direct {v4}, Lcom/android/server/pm/http/SimpleHttpURLConnection$2;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 346
    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string/jumbo v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 347
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 348
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v2    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addX509TrustManager(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 8
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;

    .prologue
    .line 300
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 301
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 303
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 305
    const-string/jumbo v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 306
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v5, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 308
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected createConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    return-object v0
.end method

.method public exec(Lcom/android/server/pm/http/UrlFactory;)Lcom/android/server/pm/http/Response;
    .locals 1
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->exec(Lcom/android/server/pm/http/UrlFactory;I)Lcom/android/server/pm/http/Response;

    move-result-object v0

    return-object v0
.end method

.method public exec(Lcom/android/server/pm/http/UrlFactory;I)Lcom/android/server/pm/http/Response;
    .locals 5
    .param p1, "params"    # Lcom/android/server/pm/http/UrlFactory;
    .param p2, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/http/exception/NetworkRequestException;,
            Lcom/android/server/pm/http/exception/SignatureException;,
            Lcom/android/server/pm/http/exception/MethodRequestException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "[HttpClient] execRequest params is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v4

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "response":Lcom/android/server/pm/http/Response;
    const/4 v1, 0x0

    .end local v0    # "response":Lcom/android/server/pm/http/Response;
    .local v1, "retriedCount":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/server/pm/http/SimpleHttpURLConnection;->mRequestHeaders:Ljava/util/Map;

    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->performRequest(Lcom/android/server/pm/http/UrlFactory;Ljava/util/Map;Z)Lcom/android/server/pm/http/Response;

    move-result-object v0

    .line 126
    .local v0, "response":Lcom/android/server/pm/http/Response;
    if-eqz v0, :cond_3

    .line 130
    .end local v0    # "response":Lcom/android/server/pm/http/Response;
    :cond_1
    return-object v0

    .line 122
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    .restart local v0    # "response":Lcom/android/server/pm/http/Response;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
