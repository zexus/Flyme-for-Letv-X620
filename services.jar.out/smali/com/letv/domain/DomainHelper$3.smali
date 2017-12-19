.class Lcom/letv/domain/DomainHelper$3;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "DomainHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/domain/DomainHelper;->requestOverseaServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/domain/DomainHelper;


# direct methods
.method constructor <init>(Lcom/letv/domain/DomainHelper;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "this$0"    # Lcom/letv/domain/DomainHelper;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # Lorg/json/JSONObject;
    .param p6, "$anonymous4"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 102
    .local p5, "$anonymous3":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lorg/json/JSONObject;>;"
    iput-object p1, p0, Lcom/letv/domain/DomainHelper$3;->this$0:Lcom/letv/domain/DomainHelper;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/letv/domain/DomainHelper$3;->this$0:Lcom/letv/domain/DomainHelper;

    invoke-static {v0}, Lcom/letv/domain/DomainHelper;->-get0(Lcom/letv/domain/DomainHelper;)Lcom/letv/domain/bean/DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/domain/utils/NetUtils;->getRequstHeader(Lcom/letv/domain/bean/DeviceInfo;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
