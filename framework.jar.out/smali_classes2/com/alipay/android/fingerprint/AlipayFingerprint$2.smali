.class Lcom/alipay/android/fingerprint/AlipayFingerprint$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "AlipayFingerprint.java"


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
    .line 191
    iput-object p1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    .line 199
    const-string/jumbo v1, "AlipayFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationAcquired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v1, p3}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-wrap0(Lcom/alipay/android/fingerprint/AlipayFingerprint;I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "msgInfo":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 202
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get1(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v2}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 206
    return-void

    .line 208
    :cond_1
    const/16 v1, 0x3ea

    if-ne p3, v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_INPUTTING:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 198
    :cond_2
    :goto_0
    return-void

    .line 212
    :cond_3
    const/16 v1, 0x3eb

    if-ne p3, v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_INPUT_COMPLETED:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 215
    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_WAITING_FOR_INPUT:I

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v1, v2, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    goto :goto_0
.end method

.method public onAuthenticationFailed(J)V
    .locals 5
    .param p1, "deviceId"    # J

    .prologue
    .line 252
    const-string/jumbo v0, "AlipayFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationFailed deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v0}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v1}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get1(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 251
    :cond_1
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "authenticationSucceed":Z
    const-string/jumbo v2, "AlipayFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAuthenticationSucceeded deviceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v2}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get0(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    invoke-static {v3}, Lcom/alipay/android/fingerprint/AlipayFingerprint;->-get1(Lcom/alipay/android/fingerprint/AlipayFingerprint;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v2, :cond_3

    .line 229
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    sget v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->STATUS_INPUT_COMPLETED:I

    iget-object v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v4, v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    invoke-interface {v2, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onStatus(II)V

    .line 230
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    if-eqz v2, :cond_2

    if-eqz p3, :cond_2

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 232
    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myids:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    .line 233
    const/4 v0, 0x1

    .line 231
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_2
    if-nez p3, :cond_4

    .line 237
    const-string/jumbo v2, "AlipayFingerprint"

    const-string/jumbo v3, "onAuthenticationSucceeded fp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    .line 243
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 244
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v4, v4, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v5, 0x64

    invoke-interface {v2, v5, v3, v4}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 222
    :goto_2
    return-void

    .line 240
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 246
    :cond_5
    iget-object v2, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v2, v2, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v3, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v3, v3, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5, v3}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_2
.end method

.method public onEnrollResult(JIII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onError(JI)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v3, 0x0

    .line 263
    packed-switch p3, :pswitch_data_0

    .line 282
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x66

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x74

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget-object v0, v0, Lcom/alipay/android/fingerprint/AlipayFingerprint;->myidentifyListener:Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;

    iget-object v1, p0, Lcom/alipay/android/fingerprint/AlipayFingerprint$2;->this$0:Lcom/alipay/android/fingerprint/AlipayFingerprint;

    iget v1, v1, Lcom/alipay/android/fingerprint/AlipayFingerprint;->mUserData:I

    const/16 v2, 0x65

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/security/mobile/alipayauthenticatorservice/adapter/AbstractFingerprint$IdentifyListener;->onResult(III)V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onRemoved(JII)V
    .locals 0
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 287
    return-void
.end method
