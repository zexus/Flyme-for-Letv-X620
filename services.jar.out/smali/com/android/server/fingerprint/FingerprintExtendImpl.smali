.class public Lcom/android/server/fingerprint/FingerprintExtendImpl;
.super Lcom/android/server/fingerprint/FingerprintExtend;
.source "FingerprintExtendImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintExtend;-><init>()V

    return-void
.end method


# virtual methods
.method public disableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->disableFingerprint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "disableFingerprint failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public enableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enableFingerprint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "enableFingerprint failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public setDefaultMode(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
    .locals 4
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "mode"    # I

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setDefaultMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "setDefaultMode failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public startTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "userId"    # I

    .prologue
    .line 19
    if-eqz p1, :cond_0

    .line 21
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->startTakePicture(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "startTakePicture failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public stopTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
    .locals 3
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->stopTakePicture()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "stopTakePicture failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
