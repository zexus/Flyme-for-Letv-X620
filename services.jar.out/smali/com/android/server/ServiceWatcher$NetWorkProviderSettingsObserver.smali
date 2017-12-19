.class Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkProviderSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ServiceWatcher;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method public observer()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "network_provider_package"

    .line 125
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v3, -0x1

    .line 125
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    const-string/jumbo v1, "network"

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->-get2(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get0(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "network_provider_package"

    .line 133
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->-wrap1(Lcom/android/server/ServiceWatcher;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v1, v0}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
