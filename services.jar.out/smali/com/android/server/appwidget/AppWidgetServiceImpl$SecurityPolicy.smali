.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    .line 3166
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3251
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, p1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap1(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v1

    .line 3252
    .local v1, "packageUid":I
    if-gez v1, :cond_0

    .line 3253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3254
    const-string/jumbo v5, " for user "

    .line 3253
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3256
    :cond_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get4(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-wrap3(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 3260
    .local v0, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get6(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 3261
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_1
    monitor-exit v4

    .line 3265
    return v5

    .line 3256
    .end local v0    # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private isParentOrProfile(II)Z
    .locals 2
    .param p1, "parentId"    # I
    .param p2, "profileId"    # I

    .prologue
    const/4 v0, 0x1

    .line 3294
    if-ne p1, p2, :cond_0

    .line 3295
    return v0

    .line 3297
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileEnabled(I)Z
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 3365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3367
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3368
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 3372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3374
    const/4 v3, 0x1

    return v3

    .line 3369
    :cond_0
    const/4 v3, 0x0

    .line 3372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3369
    return v3

    .line 3371
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 3372
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3371
    throw v3
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .locals 5
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3269
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3271
    return v3

    .line 3273
    :cond_0
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3275
    return v3

    .line 3277
    :cond_1
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3279
    return v3

    .line 3281
    :cond_2
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3282
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v1, :cond_4

    .line 3283
    iget-object v1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 3284
    :cond_3
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 3288
    return v3

    .line 3290
    :cond_4
    return v4
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get1(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3233
    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    .line 3229
    const-string/jumbo v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    .line 3230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3228
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 3207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3209
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get5(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 3210
    const/16 v5, 0x1000

    .line 3209
    invoke-interface {v4, p1, v5, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 3211
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_0

    .line 3212
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3213
    const-string/jumbo v6, " not installed for user "

    .line 3212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v2

    .line 3223
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3206
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 3215
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "android.permission.BIND_REMOTEVIEWS"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3216
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3217
    const-string/jumbo v6, " in user "

    .line 3216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3217
    const-string/jumbo v6, "does not require "

    .line 3216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3218
    const-string/jumbo v6, "android.permission.BIND_REMOTEVIEWS"

    .line 3216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3222
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v4

    .line 3223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    throw v4

    .line 3223
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getEnabledGroupProfileIds(I)[I
    .locals 11
    .param p1, "userId"    # I

    .prologue
    .line 3174
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v3

    .line 3177
    .local v3, "parentId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3179
    .local v4, "identity":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v10}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3181
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3184
    const/4 v0, 0x0

    .line 3185
    .local v0, "enabledProfileCount":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 3186
    .local v7, "profileCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 3187
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3188
    add-int/lit8 v0, v0, 0x1

    .line 3186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3180
    .end local v0    # "enabledProfileCount":I
    .end local v2    # "i":I
    .end local v7    # "profileCount":I
    .end local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    .line 3181
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3180
    throw v10

    .line 3192
    .restart local v0    # "enabledProfileCount":I
    .restart local v2    # "i":I
    .restart local v7    # "profileCount":I
    .restart local v9    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    const/4 v1, 0x0

    .line 3193
    .local v1, "enabledProfileIndex":I
    new-array v8, v0, [I

    .line 3194
    .local v8, "profileIds":[I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    .line 3195
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3196
    .local v6, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3197
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    aput v10, v8, v1

    .line 3198
    add-int/lit8 v1, v1, 0x1

    .line 3194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3202
    .end local v6    # "profile":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v8
.end method

.method public getGroupParent(I)I
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 3342
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get8(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3343
    .local v0, "parentId":I
    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    .end local v0    # "parentId":I
    :goto_0
    return v0

    .restart local v0    # "parentId":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getProfileParent(I)I
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 3329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3331
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get9(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3332
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 3333
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3333
    return v3

    .line 3336
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3338
    const/16 v3, -0xa

    return v3

    .line 3335
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 3336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    throw v3
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-get2(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v1

    .line 3240
    const-string/jumbo v2, "android.permission.BIND_APPWIDGET"

    const/4 v3, 0x0

    .line 3239
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3246
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 3241
    :catch_0
    move-exception v0

    .line 3242
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3243
    const/4 v1, 0x0

    return v1
.end method

.method public isEnabledGroupProfile(I)Z
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 3169
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3170
    .local v0, "parentId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3360
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p3, :cond_0

    if-eqz p2, :cond_0

    .line 3361
    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3347
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p2, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    .prologue
    .line 3302
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3303
    .local v0, "callerId":I
    if-ne p2, v0, :cond_0

    .line 3304
    const/4 v2, 0x1

    return v2

    .line 3306
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    .line 3307
    .local v1, "parentId":I
    if-eq v1, v0, :cond_1

    .line 3308
    const/4 v2, 0x0

    return v2

    .line 3310
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3353
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-ne v0, p2, :cond_0

    .line 3354
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderWhiteListed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "profileId"    # I

    .prologue
    .line 3315
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3314
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3318
    .local v1, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v1, :cond_0

    .line 3319
    const/4 v2, 0x0

    return v2

    .line 3322
    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    move-result-object v0

    .line 3325
    .local v0, "crossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
