.class public Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
.super Ljava/lang/Object;
.source "GlobalActionUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;,
        Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;,
        Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MESSAGE_CLOSE_SYSTEM_DIALOG:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "GlobalAction"

.field private static sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mScreenOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 42
    new-instance v2, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;-><init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v2, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$2;-><init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v1, "screenOffFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sInstance:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    return-object v0
.end method

.method private sendUpdates(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 138
    return-void
.end method


# virtual methods
.method protected handleCloseSystemDialog()V
    .locals 4

    .prologue
    .line 69
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 70
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 71
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .line 72
    .local v0, "cb":Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;->onCloseSystemDialog()V

    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "cb":Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;
    :cond_1
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public registerCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 121
    const-string/jumbo v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 125
    const-string/jumbo v1, "GlobalAction"

    const-string/jumbo v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return-void

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->removeCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->sendUpdates(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V

    .line 120
    return-void
.end method

.method public removeCallback(Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor$UpdateMonitorCallback;

    .prologue
    .line 107
    const-string/jumbo v1, "GlobalAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method
