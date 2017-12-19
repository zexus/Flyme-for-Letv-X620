.class Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkProviderModeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    .line 470
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 469
    return-void
.end method


# virtual methods
.method public observer()V
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "choose_network_provider_mode"

    .line 475
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 476
    const/4 v2, 0x0

    .line 477
    const/4 v3, -0x1

    .line 475
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 473
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 483
    const-string/jumbo v2, "choose_network_provider_mode"

    .line 482
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "mode":Ljava/lang/String;
    const-string/jumbo v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CHOOSE_NETWORK_PROVIDER_MODE change mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    const-string/jumbo v1, "baidu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 491
    const-string/jumbo v2, "network_provider_package"

    const-string/jumbo v3, "com.baidu.map.location"

    .line 490
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 492
    :cond_2
    const-string/jumbo v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/server/LocationManagerService$NetWorkProviderModeSettingsObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get1(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 494
    const-string/jumbo v2, "network_provider_package"

    const-string/jumbo v3, "com.google.android.gms"

    .line 493
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
