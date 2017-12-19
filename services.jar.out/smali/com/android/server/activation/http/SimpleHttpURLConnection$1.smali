.class Lcom/android/server/activation/http/SimpleHttpURLConnection$1;
.super Ljava/lang/Object;
.source "SimpleHttpURLConnection.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/activation/http/SimpleHttpURLConnection;->ensuerX509TrustManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/http/SimpleHttpURLConnection;


# direct methods
.method constructor <init>(Lcom/android/server/activation/http/SimpleHttpURLConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/http/SimpleHttpURLConnection;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/server/activation/http/SimpleHttpURLConnection$1;->this$0:Lcom/android/server/activation/http/SimpleHttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 103
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method
