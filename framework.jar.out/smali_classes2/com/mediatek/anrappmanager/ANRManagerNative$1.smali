.class Lcom/mediatek/anrappmanager/ANRManagerNative$1;
.super Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;
.source "ANRManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrappmanager/ANRManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton",
        "<",
        "Lcom/mediatek/anrappmanager/IANRManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/mediatek/anrappmanager/IANRManager;
    .locals 2

    .prologue
    .line 77
    # getter for: Lcom/mediatek/anrappmanager/ANRManagerNative;->mFramework:Lcom/mediatek/anrappmanager/IFrameworks;
    invoke-static {}, Lcom/mediatek/anrappmanager/ANRManagerNative;->access$000()Lcom/mediatek/anrappmanager/IFrameworks;

    move-result-object v0

    const-string/jumbo v1, "anrmanager"

    invoke-interface {v0, v1}, Lcom/mediatek/anrappmanager/IFrameworks;->serviceManagerGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/mediatek/anrappmanager/ANRManagerNative;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/anrappmanager/ANRManagerNative$1;->create()Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v0

    return-object v0
.end method
