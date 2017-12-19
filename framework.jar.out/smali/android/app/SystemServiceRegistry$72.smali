.class final Landroid/app/SystemServiceRegistry$72;
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
        "Lcom/mediatek/perfservice/IPerfServiceWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/mediatek/perfservice/IPerfServiceWrapper;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 785
    .local v1, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    :try_start_0
    new-instance v2, Lcom/mediatek/perfservice/PerfServiceWrapper;

    invoke-direct {v2, p1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    .local v2, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    move-object v1, v2

    .line 789
    .end local v2    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    :goto_0
    return-object v1

    .line 786
    .restart local v1    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceWrapper;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$72;->createService(Landroid/app/ContextImpl;)Lcom/mediatek/perfservice/IPerfServiceWrapper;

    move-result-object v0

    return-object v0
.end method
