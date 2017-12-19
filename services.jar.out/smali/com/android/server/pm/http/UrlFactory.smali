.class public Lcom/android/server/pm/http/UrlFactory;
.super Ljava/lang/Object;
.source "UrlFactory.java"


# static fields
.field public static final salesAreaPersist:Ljava/lang/String; = "persist.sys.salesarea"


# instance fields
.field private baseParam:Lcom/android/server/pm/http/BaseParam;

.field private baseUrl:Ljava/lang/String;

.field private final serverPath:Ljava/lang/String;

.field private final serverUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "/manager/api/v1/salearea"

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->serverPath:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "https://device.g.scloud.letv.com/manager/api/v1/salearea"

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->serverUrl:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/pm/http/UrlFactory;->productParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private productParam(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v1, 0x1

    .line 51
    .local v1, "httpType":I
    const-string/jumbo v4, "2"

    .line 53
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 55
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    const-string/jumbo v5, "Area"

    const-string/jumbo v6, "get imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v5, 0x0

    return-object v5

    .line 69
    :cond_0
    const-string/jumbo v0, "https://device.g.scloud.letv.com/manager/api/v1/salearea"

    .line 70
    .local v0, "connecUrl":Ljava/lang/String;
    new-instance v5, Lcom/android/server/pm/http/BaseParam;

    const-string/jumbo v6, "/manager/api/v1/salearea"

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/android/server/pm/http/BaseParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    .line 71
    iget-object v5, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/http/BaseParam;->encodeUrl(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    iget-object v0, v0, Lcom/android/server/pm/http/BaseParam;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public gethttpType()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    iget v0, v0, Lcom/android/server/pm/http/BaseParam;->httpType:I

    return v0
.end method

.method public needSignature()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/pm/http/UrlFactory;->baseParam:Lcom/android/server/pm/http/BaseParam;

    invoke-virtual {v0}, Lcom/android/server/pm/http/BaseParam;->needSignature()Z

    move-result v0

    return v0
.end method
