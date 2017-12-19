.class public Lcom/android/server/policy/global/GlobalActionViewMediator;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$1;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$2;,
        Lcom/android/server/policy/global/GlobalActionViewMediator$3;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final HIDE:I = 0x3

.field private static final SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GlobalAction"


# instance fields
.field private mGlobalActionDonePending:Z

.field private mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActionStart:Z

.field private mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mPM:Landroid/os/PowerManager;

.field private mSystemReady:Z

.field private mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z

    .line 72
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/policy/global/GlobalActionViewMediator$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    .line 193
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .line 207
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewMediator$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/global/GlobalActionViewMediator$3;-><init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 47
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 49
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;

    .line 52
    invoke-static {p1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .line 55
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 56
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Lcom/android/server/policy/global/GlobalActionViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/policy/global/GlobalActionViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    iput-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 57
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->onSystemReady()V

    .line 45
    return-void
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hide()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 176
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleShow()V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 148
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "ignoring handleShow because system is not ready."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 149
    return-void

    .line 151
    :cond_0
    :try_start_1
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->show()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 145
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final hideLocked()V
    .locals 3

    .prologue
    .line 164
    const-string/jumbo v1, "GlobalAction"

    const-string/jumbo v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_0

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 167
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private onSystemReady()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mSystemReady:Z

    .line 68
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateMonitor:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mUpdateCallback:Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->registerCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final hideGlobal()V
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 92
    return-void

    .line 94
    :cond_0
    :try_start_1
    const-string/jumbo v1, "GlobalAction"

    const-string/jumbo v2, "hideGlobal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 97
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isGlobalActionShowing()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    .line 112
    return-void

    .line 114
    :cond_0
    :try_start_1
    const-string/jumbo v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScreenTurnedOff("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_1

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 117
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 118
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit p0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final showGlobal(ZZ)V
    .locals 4
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 129
    const-string/jumbo v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLocked(), keyguardShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 130
    const-string/jumbo v3, ", isDeviceProvisioned: "

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->showBeforeProvisioning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->isGlobalActionShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    if-nez v1, :cond_3

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z

    .line 136
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 137
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method
