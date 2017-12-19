.class Lcom/letv/domain/DomainHelper$2;
.super Ljava/lang/Object;
.source "DomainHelper.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


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
.method constructor <init>(Lcom/letv/domain/DomainHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/domain/DomainHelper;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/letv/domain/DomainHelper$2;->this$0:Lcom/letv/domain/DomainHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/letv/domain/DomainHelper$2;->this$0:Lcom/letv/domain/DomainHelper;

    invoke-static {v0, p1}, Lcom/letv/domain/DomainHelper;->-wrap0(Lcom/letv/domain/DomainHelper;Lcom/android/volley/VolleyError;)V

    .line 94
    return-void
.end method
