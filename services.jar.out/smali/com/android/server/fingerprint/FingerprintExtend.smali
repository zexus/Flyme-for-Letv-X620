.class public abstract Lcom/android/server/fingerprint/FingerprintExtend;
.super Ljava/lang/Object;
.source "FingerprintExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method

.method public abstract enableFingerprint(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method

.method public abstract setDefaultMode(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
.end method

.method public abstract startTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;I)I
.end method

.method public abstract stopTakePicture(Landroid/hardware/fingerprint/IFingerprintDaemon;)I
.end method
