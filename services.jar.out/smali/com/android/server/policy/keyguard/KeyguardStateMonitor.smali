.class public Lcom/android/server/policy/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private mCurrentUserId:I

.field private volatile mInputRestricted:Z

.field private volatile mIsAnthTheftEnabled:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mRemoteControlSecure:Z

.field private volatile mSimSecure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 44
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mRemoteControlSecure:Z

    .line 55
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I

    .line 58
    :try_start_0
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardStateMonitor"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUser()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mRemoteControlSecure:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return v0
.end method

.method public onAntiTheftStateChanged(Z)V
    .locals 3
    .param p1, "antiTheftEnabled"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    .line 108
    const-string/jumbo v0, "KeyguardStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wenxiang:onAntiTheftStateChanged() - mIsAnthTheftEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    iget-boolean v2, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .locals 0
    .param p1, "inputRestricted"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 100
    return-void
.end method

.method public onRemoteControlSecureChanged(Z)V
    .locals 0
    .param p1, "remoteControlSecure"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mRemoteControlSecure:Z

    .line 87
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 77
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .locals 0
    .param p1, "simSecure"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 82
    return-void
.end method

.method public declared-synchronized setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 92
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 91
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
