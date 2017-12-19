.class public final Lcom/mediatek/hotknot/HotKnotActivityManager;
.super Lcom/mediatek/hotknot/IHotKnotCallback$Stub;
.source "HotKnotActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;,
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final TAG:Ljava/lang/String; = "HotKnotAdapter"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/mediatek/hotknot/HotKnotAdapter;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    .line 194
    return-void
.end method


# virtual methods
.method checkMomPermission()Z
    .locals 2

    .prologue
    .line 334
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "sub-permission.ACCESS_HOTKNOT"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 335
    invoke-static {v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->checkPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public createMessage()Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 349
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v2, :cond_0

    monitor-exit p0

    return-object v3

    .line 351
    :cond_0
    :try_start_1
    iget-object v0, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 352
    .local v0, "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    iget-object v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "message":Lcom/mediatek/hotknot/HotKnotMessage;
    monitor-exit p0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;->createHotKnotMessage()Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v1

    .line 359
    :cond_1
    return-object v1

    .line 347
    .end local v0    # "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .end local v1    # "message":Lcom/mediatek/hotknot/HotKnotMessage;
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 188
    .local v0, "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->destroy()V

    .line 190
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 186
    return-void

    .end local v0    # "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 151
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 152
    return-object v0

    .line 155
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "clientId"    # I

    .prologue
    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 179
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    .line 180
    return-object v0

    .line 183
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appState$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .line 68
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 69
    return-object v0

    .line 72
    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method declared-synchronized findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3

    .prologue
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "state$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 170
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-boolean v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 171
    return-object v0

    .line 174
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .end local v1    # "state$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    monitor-enter p0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 161
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V

    .line 163
    .restart local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 165
    return-object v0

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getClientId()I
    .locals 3

    .prologue
    .line 428
    const/4 v0, -0x1

    .line 429
    .local v0, "clientId":I
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 431
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v1, :cond_0

    .line 432
    iget v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 435
    return v0

    .line 429
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getUris()[Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 388
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v2, :cond_0

    monitor-exit p0

    return-object v11

    .line 389
    :cond_0
    :try_start_1
    iget-object v4, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 390
    .local v4, "uris":[Landroid/net/Uri;
    iget-object v0, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    monitor-exit p0

    .line 394
    if-eqz v4, :cond_1

    .line 395
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v4, v6

    .line 396
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v8, "HotKnotAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  uri.toString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "uris":[Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 399
    .restart local v0    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .restart local v4    # "uris":[Landroid/net/Uri;
    :cond_1
    const-string/jumbo v6, "HotKnotAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state.uriCallback:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eqz v0, :cond_6

    .line 402
    invoke-interface {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;->createHotKnotBeamUris()[Landroid/net/Uri;

    move-result-object v4

    .line 403
    if-eqz v4, :cond_5

    .line 404
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v3, v4, v5

    .line 405
    .restart local v3    # "uri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 406
    const-string/jumbo v5, "HotKnotAdapter"

    const-string/jumbo v6, "Uri not allowed to be null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v11

    .line 409
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string/jumbo v7, "file"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 411
    const-string/jumbo v7, "content"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 404
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 412
    :cond_4
    const-string/jumbo v5, "HotKnotAdapter"

    const-string/jumbo v6, "Uri needs to have either scheme file or scheme content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v11

    .line 418
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_5
    return-object v4

    .line 421
    :cond_6
    return-object v4
.end method

.method isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    .locals 2
    .param p1, "state"    # Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-object v1, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-object v1, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 441
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 496
    monitor-enter p0

    .line 497
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 498
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v1, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HotKnotAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->destroyActivityState(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 495
    return-void

    .line 496
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 471
    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 473
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 475
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 476
    iget-object v1, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 477
    .local v1, "token":Landroid/os/Binder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 469
    return-void

    .line 471
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 458
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "HotKnotAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_0
    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    .line 460
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 461
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 462
    .local v2, "token":Landroid/os/Binder;
    invoke-virtual {p0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 464
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 453
    return-void

    .line 456
    .end local v0    # "isRequest":Z
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 489
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 447
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 483
    return-void
.end method

.method public onHotKnotComplete(II)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 369
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 371
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v0, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    monitor-exit p0

    .line 374
    const-string/jumbo v2, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHotKnotComplete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v0, p2}, Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;->onHotKnotComplete(I)V

    .line 365
    :cond_1
    return-void

    .line 367
    .end local v0    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 77
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Application;)V

    .line 79
    .restart local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->register()V

    .line 75
    return-void
.end method

.method requestHotKnotServiceCallback(Z)V
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    iget-object v0, v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;

    if-eqz p1, :cond_0

    .end local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V

    .line 316
    return-void

    .line 323
    .restart local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 270
    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    const-string/jumbo v3, "HotKnotAdapter"

    const-string/jumbo v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 277
    :cond_0
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 279
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 280
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 281
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 283
    const-string/jumbo v4, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContent:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 267
    :cond_1
    return-void

    .line 277
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 283
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .prologue
    .line 293
    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    const-string/jumbo v3, "HotKnotAdapter"

    const-string/jumbo v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 300
    :cond_0
    monitor-enter p0

    .line 301
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 302
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 303
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 304
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 306
    const-string/jumbo v4, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContentCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 290
    :cond_1
    return-void

    .line 300
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 306
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p3, "flags"    # I

    .prologue
    .line 203
    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    const-string/jumbo v3, "HotKnotAdapter"

    const-string/jumbo v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 210
    :cond_0
    monitor-enter p0

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 212
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 213
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 214
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 215
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 218
    const-string/jumbo v4, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 200
    :cond_1
    return-void

    .line 210
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 218
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p3, "flags"    # I

    .prologue
    .line 229
    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const-string/jumbo v3, "HotKnotAdapter"

    const-string/jumbo v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 236
    :cond_0
    monitor-enter p0

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 238
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 239
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 240
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 241
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 243
    const-string/jumbo v4, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessageCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 226
    :cond_1
    return-void

    .line 236
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 243
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .prologue
    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 255
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 256
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 257
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, "isRequest":Z
    monitor-exit p0

    .line 259
    const-string/jumbo v4, "HotKnotAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOnHotKnotCompleteCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 250
    :cond_0
    return-void

    .line 253
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 259
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 86
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v1, "HotKnotAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->unregister()V

    .line 84
    return-void
.end method
