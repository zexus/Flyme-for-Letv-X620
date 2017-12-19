.class public Lcom/android/server/pm/http/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/http/HttpConnect$WorkHandler;,
        Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "Area"

.field private static mGson:Lcom/google/gson/Gson;


# instance fields
.field private final IMEITOAREA:I

.field private mAreaParams:Lcom/android/server/pm/http/Base;

.field mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/Base;)Lcom/android/server/pm/http/Base;
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Response;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->imeiToArea()Lcom/android/server/pm/http/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "respond"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/Class;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/pm/http/HttpConnect;->analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/http/HttpConnect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->sendSaleChangeBroadcast()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/http/HttpConnect;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->unRegisterConnectChangeReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mAreaParams:Lcom/android/server/pm/http/Base;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/http/HttpConnect;->IMEITOAREA:I

    .line 40
    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/android/server/pm/http/HttpConnect;->initWorkHandler()V

    .line 42
    return-void
.end method

.method private static analysisRespond(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "respond"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "bean":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sput-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    .line 163
    sget-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    .end local v0    # "bean":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    if-eqz v2, :cond_1

    .line 170
    sput-object v5, Lcom/android/server/pm/http/HttpConnect;->mGson:Lcom/google/gson/Gson;

    .line 173
    :cond_1
    return-object v0

    .line 165
    .restart local v0    # "bean":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[HttpHelper] analysisRespond catch exception getMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " toString()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private imeiToArea()Lcom/android/server/pm/http/Response;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 129
    new-instance v4, Lcom/android/server/pm/http/SimpleHttpURLConnection;

    iget-object v7, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/server/pm/http/SimpleHttpURLConnection;-><init>(Landroid/content/Context;)V

    .line 130
    .local v4, "hc":Lcom/android/server/pm/http/SimpleHttpURLConnection;
    new-instance v5, Lcom/android/server/pm/http/UrlFactory;

    iget-object v7, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/server/pm/http/UrlFactory;-><init>(Landroid/content/Context;)V

    .line 133
    .local v5, "params":Lcom/android/server/pm/http/UrlFactory;
    if-nez v5, :cond_0

    .line 134
    const-string/jumbo v7, "Area"

    const-string/jumbo v8, "imeiToArea : get UrlFactory : params is null "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/server/pm/http/HttpConnect;->registerConnectChangeReceiver()V

    .line 136
    return-object v9

    .line 138
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/pm/http/UrlFactory;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "getUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 140
    const-string/jumbo v7, "Area"

    const-string/jumbo v8, "imeiToArea : get UrlFactory : getUrl is null "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/server/pm/http/HttpConnect;->registerConnectChangeReceiver()V

    .line 142
    return-object v9

    .line 145
    :cond_1
    const/4 v6, 0x0

    .line 147
    .local v6, "response":Lcom/android/server/pm/http/Response;
    :try_start_0
    invoke-virtual {v4, v5}, Lcom/android/server/pm/http/SimpleHttpURLConnection;->exec(Lcom/android/server/pm/http/UrlFactory;)Lcom/android/server/pm/http/Response;
    :try_end_0
    .catch Lcom/android/server/pm/http/exception/NetworkRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/server/pm/http/exception/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/pm/http/exception/MethodRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 155
    .end local v6    # "response":Lcom/android/server/pm/http/Response;
    :goto_0
    return-object v6

    .line 152
    .restart local v6    # "response":Lcom/android/server/pm/http/Response;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    const-string/jumbo v7, "Area"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[HttpHelper] registerBusiness, MethodRequestException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/pm/http/exception/MethodRequestException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    .end local v0    # "e":Lcom/android/server/pm/http/exception/MethodRequestException;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "e":Lcom/android/server/pm/http/exception/SignatureException;
    const-string/jumbo v7, "Area"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[HttpHelper] registerBusiness, SignatureException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/pm/http/exception/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v2    # "e":Lcom/android/server/pm/http/exception/SignatureException;
    :catch_2
    move-exception v1

    .line 149
    .local v1, "e":Lcom/android/server/pm/http/exception/NetworkRequestException;
    const-string/jumbo v7, "Area"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[HttpHelper] registerBusiness, NetworkRequestException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/pm/http/exception/NetworkRequestException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWorkHandler()V
    .locals 3

    .prologue
    .line 54
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "saleareahttp"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 56
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 57
    .local v0, "mWorkLooper":Landroid/os/Looper;
    new-instance v2, Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;-><init>(Lcom/android/server/pm/http/HttpConnect;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    .line 53
    return-void
.end method

.method private sendSaleChangeBroadcast()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.LETV_ACQUIRE_SALEAREA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    const-string/jumbo v1, "Area"

    const-string/jumbo v2, "sendBroadcast ACTION_ACQUIRE_SALEAREA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private unRegisterConnectChangeReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    iput-object v2, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    const-string/jumbo v0, "Area"

    const-string/jumbo v1, "unregisterReceiver CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public registerConnectChangeReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;-><init>(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/HttpConnect$ConnectChangeReceiver;)V

    iput-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect;->mConnectChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "Area"

    const-string/jumbo v2, "registerReceiver CONNECTIVITY_CHANGE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setAreaInfo()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/http/HttpConnect;->mWorkHandler:Lcom/android/server/pm/http/HttpConnect$WorkHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    return-void
.end method
