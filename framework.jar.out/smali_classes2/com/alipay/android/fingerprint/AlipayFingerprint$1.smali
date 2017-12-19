.class Lcom/alipay/android/fingerprint/AlipayFingerprint$1;
.super Ljava/lang/Object;
.source "AlipayFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/fingerprint/AlipayFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;


# direct methods
.method constructor <init>(Lcom/alipay/android/fingerprint/AlipayFingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/fingerprint/AlipayFingerprint;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-virtual {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->cancel()I

    .line 44
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$1;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 40
    :cond_0
    return-void
.end method
