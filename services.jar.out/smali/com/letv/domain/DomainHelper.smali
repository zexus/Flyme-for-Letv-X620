.class public Lcom/letv/domain/DomainHelper;
.super Ljava/lang/Object;
.source "DomainHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/domain/DomainHelper$ResponseListener;
    }
.end annotation


# static fields
.field public static final CONNECT_REFUSED:I = -0x2

.field public static final OTHER_ERROR:I = -0x4

.field public static final SERVER_DOWN:I = -0x3

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_ERRNO:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "DomainHelper"

.field public static final TIMEOUT:I = -0x1

.field private static sHelper:Lcom/letv/domain/DomainHelper;


# instance fields
.field private mCallback:Lcom/letv/domain/DomainHelper$ResponseListener;

.field private mDeviceInfo:Lcom/letv/domain/bean/DeviceInfo;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static synthetic -get0(Lcom/letv/domain/DomainHelper;)Lcom/letv/domain/bean/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/letv/domain/DomainHelper;->mDeviceInfo:Lcom/letv/domain/bean/DeviceInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/domain/DomainHelper;Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/domain/DomainHelper;->handleErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/domain/DomainHelper;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/domain/DomainHelper;->handleSuccessResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelRequest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 143
    iput-object v1, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 140
    :cond_0
    return-void
.end method

.method private declared-synchronized handleErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "message":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v1, "Unknown Error."

    .line 134
    .local v1, "errorMessage":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/letv/domain/net/VolleyErrorHelper;->getMessageCode(Ljava/lang/Object;)I

    move-result v0

    .line 135
    .local v0, "code":I
    const-string/jumbo v3, "DomainHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/letv/domain/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/letv/domain/DomainHelper;->mCallback:Lcom/letv/domain/DomainHelper$ResponseListener;

    invoke-interface {v3, v0, v1}, Lcom/letv/domain/DomainHelper$ResponseListener;->onErrorResponse(ILjava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/letv/domain/DomainHelper;->cancelRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 131
    return-void

    .line 133
    .end local v0    # "code":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .restart local v1    # "errorMessage":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "errorMessage":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized handleSuccessResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-static {p1}, Lcom/letv/domain/utils/JsonUtils;->parse(Lorg/json/JSONObject;)Lcom/letv/domain/bean/ResponseInfo;

    move-result-object v0

    .line 120
    .local v0, "responseInfo":Lcom/letv/domain/bean/ResponseInfo;
    invoke-virtual {v0}, Lcom/letv/domain/bean/ResponseInfo;->getErrno()I

    move-result v2

    const/16 v3, 0x2710

    if-ne v3, v2, :cond_0

    .line 121
    const-string/jumbo v2, "DomainHelper"

    const-string/jumbo v3, "success"

    invoke-static {v2, v3}, Lcom/letv/domain/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/letv/domain/DomainHelper;->mCallback:Lcom/letv/domain/DomainHelper$ResponseListener;

    invoke-virtual {v0}, Lcom/letv/domain/bean/ResponseInfo;->getData()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/letv/domain/DomainHelper$ResponseListener;->onResponse(ILorg/json/JSONObject;)V

    .line 123
    invoke-direct {p0}, Lcom/letv/domain/DomainHelper;->cancelRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 118
    return-void

    .line 125
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-virtual {v0}, Lcom/letv/domain/bean/ResponseInfo;->getErrmsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "volleyError":Lcom/android/volley/VolleyError;
    invoke-direct {p0, v1}, Lcom/letv/domain/DomainHelper;->handleErrorResponse(Lcom/android/volley/VolleyError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "responseInfo":Lcom/letv/domain/bean/ResponseInfo;
    .end local v1    # "volleyError":Lcom/android/volley/VolleyError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static requestDomainAddress(Landroid/content/Context;Lcom/letv/domain/DomainHelper$ResponseListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/letv/domain/DomainHelper$ResponseListener;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/letv/domain/DomainHelper;->requestDomainAddress(Landroid/content/Context;Lcom/letv/domain/DomainRequest;Lcom/letv/domain/DomainHelper$ResponseListener;)V

    .line 72
    return-void
.end method

.method public static requestDomainAddress(Landroid/content/Context;Lcom/letv/domain/DomainRequest;Lcom/letv/domain/DomainHelper$ResponseListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/letv/domain/DomainRequest;
    .param p2, "callback"    # Lcom/letv/domain/DomainHelper$ResponseListener;

    .prologue
    .line 46
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/letv/domain/DomainHelper;

    invoke-direct {v1}, Lcom/letv/domain/DomainHelper;-><init>()V

    sput-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    .line 50
    :cond_0
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    iget-object v1, v1, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_1

    .line 51
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    iget-object v1, v1, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 54
    :cond_1
    invoke-static {p0, p1}, Lcom/letv/domain/utils/DeviceInfoFactory;->getDefaultDeviceInfo(Landroid/content/Context;Lcom/letv/domain/DomainRequest;)Lcom/letv/domain/bean/DeviceInfo;

    move-result-object v0

    .line 55
    .local v0, "deviceInfo":Lcom/letv/domain/bean/DeviceInfo;
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    iput-object v0, v1, Lcom/letv/domain/DomainHelper;->mDeviceInfo:Lcom/letv/domain/bean/DeviceInfo;

    .line 56
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    iput-object p2, v1, Lcom/letv/domain/DomainHelper;->mCallback:Lcom/letv/domain/DomainHelper$ResponseListener;

    .line 58
    invoke-virtual {v0}, Lcom/letv/domain/bean/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 59
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    new-instance v2, Lcom/android/volley/VolleyError;

    const-string/jumbo v3, "obtain imei failure."

    invoke-direct {v2, v3}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/letv/domain/DomainHelper;->handleErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 60
    return-void

    .line 63
    :cond_2
    invoke-virtual {v0}, Lcom/letv/domain/bean/DeviceInfo;->isOversea()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DomainHelper"

    invoke-static {v1}, Lcom/letv/domain/utils/DebugUtils;->isDebugMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    :cond_3
    const-string/jumbo v1, "DomainHelper"

    const-string/jumbo v2, "request oversea"

    invoke-static {v1, v2}, Lcom/letv/domain/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    invoke-direct {v1}, Lcom/letv/domain/DomainHelper;->requestOverseaServer()V

    .line 45
    :goto_0
    return-void

    .line 67
    :cond_4
    const-string/jumbo v1, "DomainHelper"

    const-string/jumbo v2, "request home"

    invoke-static {v1, v2}, Lcom/letv/domain/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/letv/domain/DomainHelper;->sHelper:Lcom/letv/domain/DomainHelper;

    invoke-direct {v1}, Lcom/letv/domain/DomainHelper;->requestHomeServer()V

    goto :goto_0
.end method

.method private requestHomeServer()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/letv/domain/DomainHelper;->mDeviceInfo:Lcom/letv/domain/bean/DeviceInfo;

    invoke-static {v1}, Lcom/letv/domain/model/LocalDomain;->obtainResponse(Lcom/letv/domain/bean/DeviceInfo;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/letv/domain/DomainHelper;->handleSuccessResponse(Lorg/json/JSONObject;)V

    .line 113
    return-void
.end method

.method private requestOverseaServer()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_0

    .line 79
    new-instance v8, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v8}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 80
    .local v8, "stack":Lcom/android/volley/toolbox/HttpStack;
    new-instance v7, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v7, v8}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 81
    .local v7, "network":Lcom/android/volley/Network;
    new-instance v1, Lcom/android/volley/RequestQueue;

    new-instance v9, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v9}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    const/4 v10, 0x1

    invoke-direct {v1, v9, v7, v10}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object v1, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 82
    iget-object v1, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->start()V

    .line 85
    .end local v7    # "network":Lcom/android/volley/Network;
    .end local v8    # "stack":Lcom/android/volley/toolbox/HttpStack;
    :cond_0
    new-instance v5, Lcom/letv/domain/DomainHelper$1;

    invoke-direct {v5, p0}, Lcom/letv/domain/DomainHelper$1;-><init>(Lcom/letv/domain/DomainHelper;)V

    .line 92
    .local v5, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    new-instance v6, Lcom/letv/domain/DomainHelper$2;

    invoke-direct {v6, p0}, Lcom/letv/domain/DomainHelper$2;-><init>(Lcom/letv/domain/DomainHelper;)V

    .line 99
    .local v6, "errorListener":Lcom/android/volley/Response$ErrorListener;
    iget-object v1, p0, Lcom/letv/domain/DomainHelper;->mDeviceInfo:Lcom/letv/domain/bean/DeviceInfo;

    invoke-static {v1}, Lcom/letv/domain/net/UrlHelper;->getUrl(Lcom/letv/domain/bean/DeviceInfo;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "url":Ljava/lang/String;
    const-string/jumbo v1, "DomainHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/letv/domain/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/letv/domain/net/HTTPSTrustManager;->allowAllSSL()V

    .line 102
    new-instance v0, Lcom/letv/domain/DomainHelper$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/letv/domain/DomainHelper$3;-><init>(Lcom/letv/domain/DomainHelper;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 108
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 110
    iget-object v1, p0, Lcom/letv/domain/DomainHelper;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 76
    return-void
.end method
