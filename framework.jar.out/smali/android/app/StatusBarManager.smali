.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final CC_MUSIC_TYPE:I = 0x0

.field public static final CC_VIDEO_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE2_MASK:I = 0x1

.field public static final DISABLE2_NONE:I = 0x0

.field public static final DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x3ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final NAVIGATION_HINT_IME_SHOWN:I = 0x2

.field public static final STATUS_ALWAYS_ASK:I = -0x64

.field public static final STATUS_OTHER_ACCOUNTS:I = -0x61

.field public static final STATUS_SIP:I = -0x63

.field public static final STATUS_SMS_AUTO:I = -0x62

.field private static final TAG:Ljava/lang/String; = "StatusBarManager"

.field public static final WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final WINDOW_STATE_HIDDEN:I = 0x2

.field public static final WINDOW_STATE_HIDING:I = 0x1

.field public static final WINDOW_STATE_SHOWING:I = 0x0

.field public static final WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 118
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 125
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static windowStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 250
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "WINDOW_STATE_HIDING"

    return-object v0

    .line 251
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "WINDOW_STATE_HIDDEN"

    return-object v0

    .line 252
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo v0, "WINDOW_STATE_SHOWING"

    return-object v0

    .line 253
    :cond_2
    const-string/jumbo v0, "WINDOW_STATE_UNKNOWN"

    return-object v0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 3

    .prologue
    .line 186
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 187
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    return-void

    .line 190
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 138
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 139
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 140
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    return-void

    .line 142
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable2(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 157
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 158
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    return-void

    .line 160
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public dismissKeyguardOrShowSecurityPanel()V
    .locals 3

    .prologue
    .line 347
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 348
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 349
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->dismissKeyguardOrShowSecurityPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_0
    return-void

    .line 351
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 353
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 172
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 173
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_0
    return-void

    .line 175
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 3

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 202
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 203
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    return-void

    .line 205
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSystemLockedTask()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 365
    .local v1, "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 366
    .local v2, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 367
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->getSystemLockedTask()Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 373
    .end local v1    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-object v1

    .line 369
    .restart local v1    # "mMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hideDefaultAccountStatus()V
    .locals 6

    .prologue
    .line 289
    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "StatusBarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hide SIM indicator from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 293
    .local v2, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 294
    iget-object v3, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideDefaultAccountStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    return-void

    .line 296
    .end local v2    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "StatusBarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hide SIM indicator from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " occurs exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 227
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    return-void

    .line 230
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendSystemuiKeyevent(IZ)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "isLongPress"    # Z

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 381
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 382
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->sendSystemuiKeyevent(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    return-void

    .line 384
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 214
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    return-void

    .line 218
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    .line 220
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 238
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 239
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    return-void

    .line 242
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public showDefaultAccountStatus(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 268
    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "StatusBarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show SIM indicator from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 272
    .local v2, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_0

    .line 273
    invoke-interface {v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showDefaultAccountStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    return-void

    .line 275
    .end local v2    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "StatusBarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show SIM indicator from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " occurs exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateControlCenter(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 330
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 331
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateControlCenter(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    return-void

    .line 334
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public updateStatusBarMoveUpOffset(F)V
    .locals 3
    .param p1, "offset"    # F

    .prologue
    .line 313
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 314
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 315
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateStatusBarMoveUpOffset(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    return-void

    .line 317
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
