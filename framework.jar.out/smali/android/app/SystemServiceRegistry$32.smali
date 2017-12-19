.class final Landroid/app/SystemServiceRegistry$32;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/mediatek/search/SearchEngineManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/mediatek/search/SearchEngineManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 453
    new-instance v0, Lcom/mediatek/search/SearchEngineManager;

    invoke-direct {v0, p1}, Lcom/mediatek/search/SearchEngineManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$32;->createService(Landroid/app/ContextImpl;)Lcom/mediatek/search/SearchEngineManager;

    move-result-object v0

    return-object v0
.end method
