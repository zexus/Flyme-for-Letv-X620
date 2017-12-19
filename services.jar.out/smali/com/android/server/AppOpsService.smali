.class public Lcom/android/server/AppOpsService;
.super Lcom/android/internal/app/IAppOpsService$Stub;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsService$UidState;,
        Lcom/android/server/AppOpsService$Ops;,
        Lcom/android/server/AppOpsService$Op;,
        Lcom/android/server/AppOpsService$Callback;,
        Lcom/android/server/AppOpsService$ClientState;,
        Lcom/android/server/AppOpsService$Restriction;,
        Lcom/android/server/AppOpsService$AskRunnable;,
        Lcom/android/server/AppOpsService$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEFAULT_POLICY_FILE:Ljava/lang/String; = "/system/etc/appops_policy.xml"

.field static final INIT_SYSTEM_BLACK_APPS:I = 0x2

.field static final SHOW_PERMISSION_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "AppOps"

.field static final WRITE_DELAY:J = 0x1b7740L


# instance fields
.field apps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field blackApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstInit:Z

.field isAboard:Z

.field isCTA:Z

.field final mAudioRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$Restriction;",
            ">;>;"
        }
    .end annotation
.end field

.field final mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mFastWriteScheduled:Z

.field final mFile:Landroid/util/AtomicFile;

.field final mHandler:Landroid/os/Handler;

.field final mLooper:Landroid/os/Looper;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mOpModeWatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOpRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final mPackageModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mPolicy:Lcom/android/server/AppOpsPolicy;

.field final mStrictEnable:Z

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsService$UidState;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteRunner:Ljava/lang/Runnable;

.field mWriteScheduled:Z

.field ownHandler:Landroid/os/Handler;

.field pm:Landroid/content/pm/PackageManager;

.field rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .locals 5
    .param p1, "storagePath"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsService$Stub;-><init>()V

    .line 110
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 117
    new-instance v2, Lcom/android/server/AppOpsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/AppOpsService$1;-><init>(Lcom/android/server/AppOpsService;)V

    iput-object v2, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    .line 138
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    .line 140
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    .line 203
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 202
    iput-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    .line 205
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 204
    iput-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    .line 207
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 206
    iput-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    .line 209
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 208
    iput-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    .line 232
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    .line 279
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->firstInit:Z

    .line 280
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    .line 281
    iput-object p2, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    .line 283
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    .line 284
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v1

    const-string/jumbo v2, "appops_aboard"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->isAboard:Z

    .line 285
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAvailableFeatures()Landroid/util/ArrayMap;

    move-result-object v1

    const-string/jumbo v2, "safe_show_phone_and_sms_permisson_detail"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->isCTA:Z

    .line 286
    sget-object v1, Landroid/app/AppOpsUtils;->SYSTEM_BLACK_APPS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsService;->blackApps:Ljava/util/List;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    .line 288
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "AppOps"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 290
    new-instance v1, Lcom/android/server/AppOpsService$2;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/AppOpsService$2;-><init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/AppOpsService;->ownHandler:Landroid/os/Handler;

    .line 306
    iget-object v1, p0, Lcom/android/server/AppOpsService;->ownHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    iget-object v1, p0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/AppOpsService;->blackApps:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    .line 311
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 278
    return-void
.end method

.method private static addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "op"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/AppOpsService$Callback;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local p3, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez p3, :cond_0

    .line 830
    return-object p0

    .line 832
    :cond_0
    if-nez p0, :cond_1

    .line 833
    new-instance p0, Ljava/util/HashMap;

    .end local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 835
    .restart local p0    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_1
    const/4 v1, 0x0

    .line 836
    .local v1, "duplicate":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 837
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 838
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 839
    .local v6, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v6, :cond_4

    .line 840
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .restart local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {p0, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 853
    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 843
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 844
    .local v5, "reportCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 845
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 846
    .local v4, "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_5

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 847
    const/4 v1, 0x1

    .line 848
    goto :goto_1

    .line 844
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 856
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v3    # "j":I
    .end local v4    # "report":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "reportCount":I
    .end local v6    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_6
    return-object p0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    .line 2309
    new-instance v6, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    invoke-direct {v6}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;-><init>()V

    .line 2310
    .local v6, "request":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    iget-object v7, p0, Lcom/android/server/AppOpsService;->ownHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/AppOpsService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AppOpsService$AskRunnable;-><init>(Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/AppOpsService$Op;Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2311
    return-object v6
.end method

.method private checkRestrictionLocked(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1117
    .local v1, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-eqz v1, :cond_0

    .line 1118
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Restriction;

    .line 1119
    .local v0, "r":Lcom/android/server/AppOpsService$Restriction;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1123
    .end local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1120
    .restart local v0    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_1
    iget v2, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    return v2
.end method

.method private checkSystemUid(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 2256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2257
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2258
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must by called by the system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2255
    :cond_0
    return-void
.end method

.method private collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "pkgOps"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AppOpsService$Ops;",
            "[I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    const/4 v12, 0x0

    .line 554
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez p2, :cond_1

    .line 555
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 557
    invoke-virtual {p1, v11}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 558
    .local v0, "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_0

    if-eqz v12, :cond_0

    .line 559
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 560
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 561
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 559
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    .end local v11    # "j":I
    .local v12, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_1
    const/4 v11, 0x0

    .end local v12    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v11    # "j":I
    :goto_1
    array-length v1, p2

    if-ge v11, v1, :cond_4

    .line 565
    aget v1, p2, v11

    invoke-virtual {p1, v1}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    .line 566
    .restart local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    if-eqz v0, :cond_3

    .line 567
    if-nez v12, :cond_2

    .line 568
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 570
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v12, :cond_3

    .line 571
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    iget v2, v0, Lcom/android/server/AppOpsService$Op;->op:I

    iget v3, v0, Lcom/android/server/AppOpsService$Op;->mode:I

    iget-wide v4, v0, Lcom/android/server/AppOpsService$Op;->time:J

    .line 572
    iget-wide v6, v0, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    iget v8, v0, Lcom/android/server/AppOpsService$Op;->duration:I

    iget v9, v0, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 573
    iget-object v10, v0, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 571
    invoke-direct/range {v1 .. v10}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIILjava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 577
    .end local v0    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    return-object v12
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1987
    const-string/jumbo v0, "AppOps service (appops) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1988
    const-string/jumbo v0, "  [-h] [CMD]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1989
    const-string/jumbo v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v0, "Commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    const-string/jumbo v0, "  write-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1992
    const-string/jumbo v0, "    Immediately write pending changes to storage."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1993
    const-string/jumbo v0, "  read-settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    const-string/jumbo v0, "    Read the last written settings, replacing current state in RAM."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    return-void
.end method

.method private getDefaultMode(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 2297
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->isAboard:Z

    if-eqz v1, :cond_0

    .line 2298
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    .line 2304
    .local v0, "mode":I
    :goto_0
    return v0

    .line 2299
    .end local v0    # "mode":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->isCTA:Z

    if-eqz v1, :cond_1

    .line 2300
    invoke-static {p1, v2, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZZ)I

    move-result v0

    .restart local v0    # "mode":I
    goto :goto_0

    .line 2302
    .end local v0    # "mode":I
    :cond_1
    invoke-static {p1, v2}, Landroid/app/AppOpsManager;->opToDefaultMode(IZ)I

    move-result v0

    .restart local v0    # "mode":I
    goto :goto_0
.end method

.method private getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1608
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 1609
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 1610
    return-object v1

    .line 1612
    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    return-object v1
.end method

.method private getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;
    .locals 6
    .param p1, "ops"    # Lcom/android/server/AppOpsService$Ops;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1616
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1617
    const/4 v1, 0x0

    .line 1619
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1620
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_3

    .line 1621
    if-nez p3, :cond_0

    .line 1642
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1622
    return-object v4

    .line 1624
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1625
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1627
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/android/server/AppOpsService$Ops;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/AppOpsService$Op;

    move-object v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1628
    if-nez v1, :cond_2

    .line 1629
    if-nez p3, :cond_1

    .line 1637
    :try_start_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1638
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1642
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1630
    return-object v4

    .line 1632
    :cond_1
    :try_start_4
    new-instance v2, Lcom/android/server/AppOpsService$Op;

    iget-object v3, p1, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v3, v3, Lcom/android/server/AppOpsService$UidState;->uid:I

    iget-object v4, p1, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v5

    invoke-direct {v2, v3, v4, p2, v5}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1633
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    :try_start_5
    invoke-virtual {p1, p2, v2}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v2

    .line 1637
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1638
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1642
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1644
    if-eqz p3, :cond_4

    .line 1645
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 1647
    :cond_4
    return-object v1

    .line 1636
    :catchall_0
    move-exception v3

    .line 1637
    :goto_0
    :try_start_7
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1638
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1636
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1641
    .end local v1    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_1
    move-exception v3

    .line 1642
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1641
    throw v3

    .line 1636
    .restart local v2    # "op":Lcom/android/server/AppOpsService$Op;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .restart local v1    # "op":Lcom/android/server/AppOpsService$Op;
    goto :goto_0
.end method

.method private getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1491
    if-nez p1, :cond_1

    .line 1492
    const-string/jumbo p2, "root"

    .line 1496
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    return-object v0

    .line 1493
    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    .line 1494
    const-string/jumbo p2, "com.android.shell"

    goto :goto_0
.end method

.method private getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;
    .locals 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 1500
    move/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v10

    .line 1501
    .local v10, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v10, :cond_0

    .line 1502
    const/4 v11, 0x0

    return-object v11

    .line 1504
    :cond_0
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1506
    :try_start_0
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_3

    .line 1507
    if-nez p3, :cond_1

    .line 1508
    const/4 v11, 0x0

    .line 1525
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1508
    return-object v11

    .line 1510
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1511
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1513
    :try_start_2
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_2

    .line 1514
    if-nez p3, :cond_2

    .line 1520
    :try_start_3
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1521
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1515
    const/4 v11, 0x0

    .line 1525
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1515
    return-object v11

    .line 1518
    :cond_2
    :try_start_4
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    iput-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1520
    :try_start_5
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1521
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1525
    :cond_3
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1527
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1528
    const/4 v7, 0x0

    .line 1530
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_6
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    move-object v7, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1531
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_c

    .line 1532
    if-nez p3, :cond_4

    .line 1533
    const/4 v11, 0x0

    .line 1586
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1533
    return-object v11

    .line 1519
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v11

    .line 1520
    :try_start_7
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1521
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1519
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1524
    :catchall_1
    move-exception v11

    .line 1525
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1524
    throw v11

    .line 1535
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_4
    :try_start_8
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1536
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1538
    :try_start_9
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/android/server/AppOpsService$Ops;

    move-object v7, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1539
    if-nez v7, :cond_b

    .line 1540
    if-nez p3, :cond_5

    .line 1581
    :try_start_a
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1582
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1541
    const/4 v11, 0x0

    .line 1586
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1541
    return-object v11

    .line 1543
    :cond_5
    const/4 v6, 0x0

    .line 1546
    .local v6, "isPrivileged":Z
    if-eqz p1, :cond_a

    .line 1547
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-wide v4

    .line 1549
    .local v4, "ident":J
    const/4 v9, -0x1

    .line 1551
    .local v9, "pkgUid":I
    :try_start_c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 1552
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const/4 v13, 0x0

    .line 1551
    move-object/from16 v0, p2

    invoke-interface {v11, v0, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1553
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_8

    .line 1554
    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1555
    iget v11, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_7

    const/4 v6, 0x1

    .line 1566
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :goto_0
    if-eq v9, p1, :cond_9

    .line 1569
    :try_start_d
    const-string/jumbo v11, "AppOps"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad call: specified package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1570
    const-string/jumbo v13, " under uid "

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1570
    const-string/jumbo v13, " but it is really "

    .line 1569
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1574
    :try_start_e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1581
    :try_start_f
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1582
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1571
    const/4 v11, 0x0

    .line 1586
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1571
    return-object v11

    .line 1555
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 1558
    :cond_8
    :try_start_10
    const-string/jumbo v11, "media"

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v11

    if-eqz v11, :cond_6

    .line 1559
    const/16 v9, 0x3f5

    .line 1560
    const/4 v6, 0x0

    goto :goto_0

    .line 1563
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 1564
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_11
    const-string/jumbo v11, "AppOps"

    const-string/jumbo v12, "Could not contact PackageManager"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_0

    .line 1573
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v11

    .line 1574
    :try_start_12
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1573
    throw v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 1580
    .end local v4    # "ident":J
    .end local v6    # "isPrivileged":Z
    .end local v9    # "pkgUid":I
    :catchall_3
    move-exception v11

    .line 1581
    :goto_1
    :try_start_13
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1582
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1580
    throw v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1585
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_4
    move-exception v11

    .line 1586
    iget-object v12, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1585
    throw v11

    .line 1574
    .restart local v4    # "ident":J
    .restart local v6    # "isPrivileged":Z
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v9    # "pkgUid":I
    :cond_9
    :try_start_14
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    .end local v4    # "ident":J
    .end local v9    # "pkgUid":I
    :cond_a
    new-instance v8, Lcom/android/server/AppOpsService$Ops;

    move-object/from16 v0, p2

    invoke-direct {v8, v0, v10, v6}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 1578
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .local v8, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_15
    iget-object v11, v10, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    move-object v7, v8

    .line 1581
    .end local v6    # "isPrivileged":Z
    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_b
    :try_start_16
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1582
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1586
    :cond_c
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1588
    return-object v7

    .line 1580
    .end local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v6    # "isPrivileged":Z
    .restart local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_5
    move-exception v11

    move-object v7, v8

    .end local v8    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v7    # "ops":Lcom/android/server/AppOpsService$Ops;
    goto :goto_1
.end method

.method private static getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 2263
    const/4 v1, 0x0

    .line 2265
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2269
    .end local v1    # "packageNames":[Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 2270
    sget-object v2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v2

    .line 2272
    :cond_0
    return-object v1

    .line 2266
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1460
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1461
    const/4 v1, 0x0

    .line 1463
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1464
    .local v1, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v1, :cond_3

    .line 1465
    if-nez p2, :cond_0

    .line 1485
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1466
    return-object v4

    .line 1468
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1469
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1471
    :try_start_2
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    move-object v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1472
    if-nez v1, :cond_2

    .line 1473
    if-nez p2, :cond_1

    .line 1480
    :try_start_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1481
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1485
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1474
    return-object v4

    .line 1476
    :cond_1
    :try_start_4
    new-instance v2, Lcom/android/server/AppOpsService$UidState;

    invoke-direct {v2, p1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1477
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v2

    .line 1480
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    :try_start_6
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1481
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1485
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1487
    return-object v1

    .line 1479
    :catchall_0
    move-exception v3

    .line 1480
    :goto_0
    :try_start_7
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1481
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1479
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1484
    .end local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_1
    move-exception v3

    .line 1485
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1484
    throw v3

    .line 1479
    .restart local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v1    # "uidState":Lcom/android/server/AppOpsService$UidState;
    goto :goto_0
.end method

.method private initBgAppWhite()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 448
    iget-object v8, p0, Lcom/android/server/AppOpsService;->pm:Landroid/content/pm/PackageManager;

    const-string/jumbo v9, "TRUST_BG_APP"

    const-string/jumbo v10, "FeatureTypeWhite"

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 449
    .local v2, "featureMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 451
    const/16 v8, 0x4c

    :try_start_0
    invoke-static {v8}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 452
    .local v0, "code":I
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 453
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/AppOpsService;->pm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 454
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 455
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v9, 0x1

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v6

    .line 456
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    const/4 v8, 0x1

    invoke-direct {p0, v6, v0, v8}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v5

    .line 457
    .local v5, "op":Lcom/android/server/AppOpsService$Op;
    iget v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I

    if-ne v11, v8, :cond_0

    .line 458
    const/4 v8, 0x0

    iput v8, v5, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "code":I
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 447
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method

.method private initBlackWhite(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "defaultVal"    # I

    .prologue
    .line 414
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v9, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "found":Z
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 418
    .local v0, "code":I
    iget-object v9, p0, Lcom/android/server/AppOpsService;->pm:Landroid/content/pm/PackageManager;

    sget-object v10, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10, p3}, Landroid/content/pm/PackageManager;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 420
    .local v2, "featureMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 421
    const/4 v8, -0x1

    .line 422
    .local v8, "tmpUid":I
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 423
    .local v7, "pkgName":Ljava/lang/String;
    if-ltz p1, :cond_3

    if-eqz p2, :cond_3

    .line 424
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 425
    move v8, p1

    .line 426
    const/4 v3, 0x1

    .line 436
    :cond_0
    :goto_2
    if-ltz v8, :cond_1

    .line 440
    invoke-virtual {p0, v0, v8, v7, p4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 442
    :cond_1
    if-eqz v3, :cond_4

    .line 414
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "tmpUid":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v8    # "tmpUid":I
    :cond_3
    :try_start_0
    iget-object v9, p0, Lcom/android/server/AppOpsService;->pm:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 431
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 432
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 420
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "code":I
    .end local v2    # "featureMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "found":Z
    .end local v6    # "j":I
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "tmpUid":I
    :cond_5
    return-void
.end method

.method private isOpRestricted(IILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "code"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1651
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1652
    .local v2, "userHandle":I
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 1653
    .local v0, "opRestrictions":[Z
    if-eqz v0, :cond_1

    aget-boolean v3, v0, p2

    if-eqz v3, :cond_1

    .line 1654
    invoke-static {p2}, Landroid/app/AppOpsManager;->opAllowSystemBypassRestriction(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1656
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v1

    .line 1657
    .local v1, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    if-eqz v3, :cond_0

    .line 1658
    return v4

    .line 1667
    .end local v1    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_0
    return v5

    .line 1669
    :cond_1
    return v4
.end method

.method private isSkipUseSystem(II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .prologue
    .line 2505
    const/16 v0, 0x2710

    if-gt p2, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    .line 2506
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isskipsystem  code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v0, 0x1

    return v0

    .line 2509
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I
    .locals 18
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "proxyUid"    # I
    .param p5, "proxyPackageName"    # Ljava/lang/String;

    .prologue
    .line 1199
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v7

    .line 1200
    .local v7, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v7, :cond_0

    .line 1203
    const/4 v13, 0x2

    return v13

    .line 1205
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v6

    .line 1206
    .local v6, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1207
    const/4 v13, 0x1

    return v13

    .line 1209
    :cond_1
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    .line 1210
    const-string/jumbo v13, "AppOps"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Noting op not finished: uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1211
    const-string/jumbo v15, " code "

    .line 1210
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1211
    const-string/jumbo v15, " time="

    .line 1210
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1211
    iget-wide v0, v6, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v16, v0

    .line 1210
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1211
    const-string/jumbo v15, " duration="

    .line 1210
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1211
    iget v15, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1210
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_2
    const/4 v13, 0x0

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1214
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v9

    .line 1215
    .local v9, "switchCode":I
    iget-object v12, v7, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1216
    .local v12, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v13, :cond_3

    .line 1217
    iget-object v13, v12, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 1218
    .local v11, "uidMode":I
    if-eqz v11, :cond_3

    .line 1222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1223
    return v11

    .line 1226
    .end local v11    # "uidMode":I
    :cond_3
    move/from16 v0, p1

    if-eq v9, v0, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9, v13}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v10

    .line 1231
    .local v10, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1232
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget v13, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    .line 1233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v14, 0x4d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1238
    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1239
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    const/4 v13, 0x0

    return v13

    .line 1226
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_4
    move-object v10, v6

    .restart local v10    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    .line 1243
    :catch_0
    move-exception v4

    .line 1244
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1247
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v13, :cond_6

    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_6

    .line 1250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1251
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1252
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    return v13

    .line 1253
    :cond_6
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v13, :cond_7

    .line 1257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1258
    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1259
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1260
    const/4 v13, 0x0

    return v13

    .line 1262
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    if-ne v13, v14, :cond_8

    .line 1263
    const-string/jumbo v13, "AppOps"

    .line 1264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "noteOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1266
    const-string/jumbo v15, " uid: "

    .line 1264
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1268
    const-string/jumbo v15, " package: "

    .line 1264
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1269
    const-string/jumbo v15, ")"

    .line 1264
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1263
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget v13, v10, Lcom/android/server/AppOpsService$Op;->mode:I

    return v13

    .line 1272
    :cond_8
    iget v13, v6, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v6, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 1273
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v8

    .line 1281
    .local v8, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v8}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v13

    return v13
.end method

.method private printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "mode"    # I
    .param p3, "operation"    # Ljava/lang/String;

    .prologue
    .line 2459
    if-eqz p1, :cond_0

    .line 2460
    iget v1, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 2461
    .local v0, "switchCode":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 2458
    .end local v0    # "switchCode":I
    :cond_0
    :goto_0
    return-void

    .line 2465
    .restart local v0    # "switchCode":I
    :cond_1
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V
    .locals 10
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 639
    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->time:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 640
    invoke-direct {p0, p2, p3, v7}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 641
    .local v0, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v0, :cond_1

    .line 642
    iget v3, p1, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v0, v3}, Lcom/android/server/AppOpsService$Ops;->remove(I)V

    .line 643
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 644
    iget-object v2, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 645
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v1, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 646
    .local v1, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v1, :cond_1

    .line 647
    iget-object v3, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    iput-object v6, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 651
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 638
    .end local v0    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v1    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_1
    return-void
.end method

.method private readPolicy()V
    .locals 3

    .prologue
    .line 2285
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mStrictEnable:Z

    if-eqz v0, :cond_0

    .line 2286
    new-instance v0, Lcom/android/server/AppOpsPolicy;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/system/etc/appops_policy.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsPolicy;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    .line 2287
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->readPolicy()V

    .line 2288
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v0}, Lcom/android/server/AppOpsPolicy;->debugPoilcy()V

    .line 2284
    :goto_0
    return-void

    .line 2290
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    goto :goto_0
.end method

.method private recordOperationLocked(IILjava/lang/String;I)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 2420
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 2421
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v2, :cond_3

    .line 2422
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_0

    .line 2423
    const-string/jumbo v3, "noteOperartion"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2424
    :cond_0
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_1

    .line 2425
    const-string/jumbo v3, "startOperation"

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/AppOpsService;->printOperationLocked(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2426
    :cond_1
    const/4 v3, 0x1

    if-ne p4, v3, :cond_4

    .line 2427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2452
    :cond_2
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2453
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 2454
    iput v6, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    .line 2419
    :cond_3
    return-void

    .line 2428
    :cond_4
    if-nez p4, :cond_2

    .line 2429
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->noteOpCount:I

    if-eqz v3, :cond_5

    .line 2430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2431
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2433
    :cond_5
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    if-eqz v3, :cond_2

    .line 2434
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v3, :cond_6

    .line 2435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/AppOpsService$Op;->time:J

    .line 2436
    iput-wide v8, v2, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 2437
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 2439
    :cond_6
    iget v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    iget v4, v2, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 2440
    :goto_0
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 2441
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 2442
    .local v1, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 2443
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    if-eqz v0, :cond_7

    .line 2444
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 2445
    iget-object v3, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2448
    :cond_7
    iget-object v3, v2, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private scheduleFastWriteLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1599
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1600
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1601
    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 1602
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1603
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1598
    :cond_0
    return-void
.end method

.method private scheduleWriteLocked()V
    .locals 4

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-nez v0, :cond_0

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 1594
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1591
    :cond_0
    return-void
.end method

.method private verifyIncomingOp(I)V
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 1453
    if-ltz p1, :cond_0

    const/16 v0, 0x4d

    if-ge p1, v0, :cond_0

    .line 1454
    return-void

    .line 1456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad operation #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1443
    return-void

    .line 1445
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1446
    return-void

    .line 1448
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 1449
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 1448
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1441
    return-void
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1104
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->checkRestrictionLocked(IIILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1105
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1106
    return v0

    .line 1109
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1112
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    return v1

    .line 1108
    .end local v0    # "mode":I
    :catchall_0
    move-exception v1

    .line 1109
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1108
    throw v1
.end method

.method public checkOperation(IILjava/lang/String;)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1053
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1054
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1056
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1057
    return v7

    .line 1058
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1059
    return v7

    .line 1063
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1064
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1065
    iget-object v5, p0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v6, 0x4d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 1066
    return v7

    .line 1069
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1074
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v5, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1076
    :try_start_1
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    .line 1077
    const/4 v5, 0x1

    .line 1094
    iget-object v6, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1077
    return v5

    .line 1079
    :cond_3
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 1080
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v4

    .line 1081
    .local v4, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v5, :cond_4

    .line 1082
    iget-object v5, v4, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 1083
    .local v3, "uidMode":I
    if-eqz v3, :cond_4

    .line 1094
    iget-object v5, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1084
    return v3

    .line 1088
    .end local v3    # "uidMode":I
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v2

    .line 1089
    .local v2, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v2, :cond_5

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    .line 1094
    iget-object v6, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1090
    return v5

    .line 1092
    :cond_5
    :try_start_4
    iget v5, v2, Lcom/android/server/AppOpsService$Op;->mode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1094
    iget-object v6, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1092
    return v5

    .line 1093
    .end local v2    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v4    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v5

    .line 1094
    iget-object v6, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1093
    throw v5
.end method

.method public checkPackage(ILjava/lang/String;)I
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1159
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->getOpsRawLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    const/4 v0, 0x0

    return v0

    .line 1162
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 34
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const-string/jumbo v30, "android.permission.DUMP"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v29

    if-eqz v29, :cond_0

    .line 2001
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Permission Denial: can\'t dump ApOps service from from pid="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2002
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v30

    .line 2001
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2003
    const-string/jumbo v30, ", uid="

    .line 2001
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 2003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    .line 2001
    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    return-void

    .line 2007
    :cond_0
    if-eqz p3, :cond_6

    .line 2008
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v8, v0, :cond_6

    .line 2009
    aget-object v4, p3, v8

    .line 2010
    .local v4, "arg":Ljava/lang/String;
    const-string/jumbo v29, "-h"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 2011
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2012
    return-void

    .line 2013
    :cond_1
    const-string/jumbo v29, "-a"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 2008
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2015
    :cond_2
    const-string/jumbo v29, "write-settings"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 2016
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2018
    .local v26, "token":J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2019
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mWriteRunner:Ljava/lang/Runnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    .line 2021
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 2022
    const-string/jumbo v29, "Current settings written."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2024
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    return-void

    .line 2018
    :catchall_0
    move-exception v29

    :try_start_3
    monitor-exit p0

    throw v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2023
    :catchall_1
    move-exception v29

    .line 2024
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2023
    throw v29

    .line 2027
    .end local v26    # "token":J
    :cond_3
    const-string/jumbo v29, "read-settings"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 2028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 2030
    .restart local v26    # "token":J
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AppOpsService;->readState()V

    .line 2031
    const-string/jumbo v29, "Last settings read."

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2033
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2035
    return-void

    .line 2032
    :catchall_2
    move-exception v29

    .line 2033
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    throw v29

    .line 2036
    .end local v26    # "token":J
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_5

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v29

    const/16 v30, 0x2d

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 2037
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unknown option: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2038
    return-void

    .line 2040
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unknown command: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    return-void

    .line 2045
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2048
    :try_start_5
    const-string/jumbo v29, "Current AppOps Service state:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2050
    .local v12, "now":J
    const/4 v11, 0x0

    .line 2051
    .local v11, "needSep":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    if-lez v29, :cond_8

    .line 2052
    const/4 v11, 0x1

    .line 2053
    const-string/jumbo v29, "  Op mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_8

    .line 2055
    const-string/jumbo v29, "    Op "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    const-string/jumbo v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2059
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_7

    .line 2060
    const-string/jumbo v29, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2062
    const-string/jumbo v29, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2059
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2054
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2067
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_a

    .line 2068
    const/4 v11, 0x1

    .line 2069
    const-string/jumbo v29, "  Package mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_a

    .line 2071
    const-string/jumbo v29, "    Pkg "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    const-string/jumbo v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2075
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_9

    .line 2076
    const-string/jumbo v29, "      #"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 2078
    const-string/jumbo v29, ": "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2075
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2070
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2083
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_b

    .line 2084
    const/4 v11, 0x1

    .line 2085
    const-string/jumbo v29, "  All mode watchers:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_b

    .line 2087
    const-string/jumbo v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2089
    const-string/jumbo v29, " -> "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2086
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 2093
    .end local v8    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    if-lez v29, :cond_d

    .line 2094
    const/4 v11, 0x1

    .line 2095
    const-string/jumbo v29, "  Clients:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2096
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_d

    .line 2097
    const-string/jumbo v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2099
    const-string/jumbo v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AppOpsService$ClientState;

    .line 2101
    .local v7, "cs":Lcom/android/server/AppOpsService$ClientState;
    const-string/jumbo v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2102
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2103
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    if-eqz v29, :cond_c

    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-lez v29, :cond_c

    .line 2104
    const-string/jumbo v29, "      Started ops:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_7
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_c

    .line 2106
    iget-object v0, v7, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2107
    .local v15, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v29, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2108
    const-string/jumbo v29, "uid="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2109
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2110
    const-string/jumbo v29, " pkg="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    iget-object v0, v15, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2112
    const-string/jumbo v29, " op="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2113
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2105
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2096
    .end local v9    # "j":I
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 2118
    .end local v7    # "cs":Lcom/android/server/AppOpsService$ClientState;
    .end local v8    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    if-lez v29, :cond_11

    .line 2119
    const/16 v22, 0x0

    .line 2120
    .local v22, "printedHeader":Z
    const/4 v14, 0x0

    .local v14, "o":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v14, v0, :cond_11

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v29

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v16

    .line 2122
    .local v16, "op":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 2123
    .local v24, "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_10

    .line 2124
    if-nez v22, :cond_e

    .line 2125
    const-string/jumbo v29, "  Audio Restrictions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    const/16 v22, 0x1

    .line 2127
    const/4 v11, 0x1

    .line 2129
    :cond_e
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v28

    .line 2130
    .local v28, "usage":I
    const-string/jumbo v29, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    const-string/jumbo v29, " usage="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2133
    invoke-static/range {v28 .. v28}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/AppOpsService$Restriction;

    .line 2135
    .local v23, "r":Lcom/android/server/AppOpsService$Restriction;
    const-string/jumbo v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2136
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/AppOpsService$Restriction;->mode:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2137
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_f

    .line 2138
    const-string/jumbo v29, "      Exceptions:"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/ArraySet;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_f

    .line 2140
    const-string/jumbo v29, "        "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 2123
    .end local v9    # "j":I
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 2120
    .end local v23    # "r":Lcom/android/server/AppOpsService$Restriction;
    .end local v28    # "usage":I
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 2147
    .end local v8    # "i":I
    .end local v14    # "o":I
    .end local v16    # "op":Ljava/lang/String;
    .end local v22    # "printedHeader":Z
    .end local v24    # "restrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    :cond_11
    if-eqz v11, :cond_12

    .line 2148
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2150
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/util/SparseArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_1b

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AppOpsService$UidState;

    .line 2153
    .local v25, "uidState":Lcom/android/server/AppOpsService$UidState;
    const-string/jumbo v29, "  Uid "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2155
    const-string/jumbo v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    .line 2158
    .local v18, "opModes":Landroid/util/SparseIntArray;
    if-eqz v18, :cond_13

    .line 2159
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseIntArray;->size()I

    move-result v17

    .line 2160
    .local v17, "opModeCount":I
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_c
    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    .line 2161
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 2162
    .local v6, "code":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 2163
    .local v10, "mode":I
    const-string/jumbo v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2164
    invoke-static {v6}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    const-string/jumbo v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2160
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 2170
    .end local v6    # "code":I
    .end local v9    # "j":I
    .end local v10    # "mode":I
    .end local v17    # "opModeCount":I
    :cond_13
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    .line 2171
    .local v21, "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-nez v21, :cond_15

    .line 2150
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    .line 2175
    :cond_15
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "ops$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/AppOpsService$Ops;

    .line 2176
    .local v19, "ops":Lcom/android/server/AppOpsService$Ops;
    const-string/jumbo v29, "    Package "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2178
    const-string/jumbo v29, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_d
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_16

    .line 2180
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppOpsService$Op;

    .line 2181
    .restart local v15    # "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v29, "      "

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2182
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2183
    const-string/jumbo v29, ": mode="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 2185
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_17

    .line 2186
    const-string/jumbo v29, "; time="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2187
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->time:J

    move-wide/from16 v30, v0

    sub-long v30, v12, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2188
    const-string/jumbo v29, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    :cond_17
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-eqz v29, :cond_18

    .line 2191
    const-string/jumbo v29, "; rejectTime="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2192
    iget-wide v0, v15, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    move-wide/from16 v30, v0

    sub-long v30, v12, v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2193
    const-string/jumbo v29, " ago"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    :cond_18
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    .line 2196
    const-string/jumbo v29, " (running)"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2201
    :cond_19
    :goto_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 2179
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    .line 2197
    :cond_1a
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    if-eqz v29, :cond_19

    .line 2198
    const-string/jumbo v29, "; duration="

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    iget v0, v15, Lcom/android/server/AppOpsService$Op;->duration:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_e

    .line 2206
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v11    # "needSep":Z
    .end local v12    # "now":J
    .end local v15    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v18    # "opModes":Landroid/util/SparseIntArray;
    .end local v19    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v20    # "ops$iterator":Ljava/util/Iterator;
    .end local v21    # "pkgOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v25    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_3
    move-exception v29

    .line 2207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2206
    throw v29

    .line 2207
    .restart local v8    # "i":I
    .restart local v11    # "needSep":Z
    .restart local v12    # "now":J
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1998
    return-void
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1402
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1403
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    move-object v0, p1

    .line 1404
    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1406
    .local v0, "client":Lcom/android/server/AppOpsService$ClientState;
    const/4 v2, 0x1

    invoke-direct {p0, p2, p3, p4, v2}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v1

    .line 1407
    .local v1, "op":Lcom/android/server/AppOpsService$Op;
    if-nez v1, :cond_0

    .line 1408
    return-void

    .line 1410
    :cond_0
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1411
    iget-object v2, v0, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1412
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Operation not started: uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1413
    const-string/jumbo v4, " pkg="

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1413
    iget-object v4, v1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1413
    const-string/jumbo v4, " op="

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1413
    iget v4, v1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1416
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/AppOpsService;->finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V

    .line 1401
    return-void
.end method

.method finishOperationLocked(Lcom/android/server/AppOpsService$Op;)V
    .locals 4
    .param p1, "op"    # Lcom/android/server/AppOpsService$Op;

    .prologue
    const/4 v1, 0x1

    .line 1426
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-gt v0, v1, :cond_1

    .line 1427
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-ne v0, v1, :cond_0

    .line 1428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1429
    iget-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1435
    :goto_0
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1425
    :goto_1
    return-void

    .line 1431
    :cond_0
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finishing op nesting under-run: uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AppOpsService$Op;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    iget-object v2, p1, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    const-string/jumbo v2, " code "

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->op:I

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    const-string/jumbo v2, " time="

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    iget-wide v2, p1, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1431
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1433
    const-string/jumbo v2, " duration="

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1433
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1433
    const-string/jumbo v2, " nesting="

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1433
    iget v2, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1437
    :cond_1
    iget v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AppOpsService$Op;->nesting:I

    goto :goto_1
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 619
    iget-object v4, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.GET_APP_OPS_STATS"

    .line 620
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 619
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 622
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v0

    .line 623
    .local v0, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    if-nez v0, :cond_0

    .line 624
    return-object v8

    .line 626
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v2

    .line 627
    .local v2, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-nez v2, :cond_1

    .line 628
    return-object v8

    .line 630
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v3, Landroid/app/AppOpsManager$PackageOps;

    .line 632
    iget-object v4, v0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v5, v5, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 631
    invoke-direct {v3, v4, v5, v2}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 633
    .local v3, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    return-object v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 18
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.permission.GET_APP_OPS_STATS"

    .line 583
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const/16 v17, 0x0

    .line 582
    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 584
    const/4 v7, 0x0

    .line 586
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 588
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 589
    .local v12, "uidStateCount":I
    const/4 v2, 0x0

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppOpsService$UidState;

    .line 591
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v13, :cond_0

    iget-object v13, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 589
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_1
    iget-object v5, v11, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 595
    .local v5, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 596
    .local v4, "packageCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    move-object v8, v7

    .local v8, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-ge v3, v4, :cond_5

    .line 597
    :try_start_1
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;

    .line 598
    .local v6, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/server/AppOpsService;->collectOps(Lcom/android/server/AppOpsService$Ops;[I)Ljava/util/ArrayList;

    move-result-object v9

    .line 599
    .local v9, "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v9, :cond_4

    .line 600
    if-nez v8, :cond_3

    .line 601
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 603
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .local v7, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_3
    :try_start_2
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    .line 604
    iget-object v13, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iget-object v14, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v14, v14, Lcom/android/server/AppOpsService$UidState;->uid:I

    .line 603
    invoke-direct {v10, v13, v14, v9}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 605
    .local v10, "resPackage":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 596
    .end local v10    # "resPackage":Landroid/app/AppOpsManager$PackageOps;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move-object v8, v7

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .line 610
    .end local v3    # "j":I
    .end local v4    # "packageCount":I
    .end local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 613
    return-object v7

    .line 609
    .end local v2    # "i":I
    .end local v12    # "uidStateCount":I
    :catchall_0
    move-exception v13

    .line 610
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 609
    throw v13

    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "packageCount":I
    .restart local v5    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v11    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v12    # "uidStateCount":I
    :catchall_1
    move-exception v13

    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_5

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    :cond_3
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_3

    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_4

    .end local v6    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v9    # "resOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_5
    move-object v7, v8

    .end local v8    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    .restart local v7    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_1
.end method

.method public getToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 3
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1039
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$ClientState;

    .line 1040
    .local v0, "cs":Lcom/android/server/AppOpsService$ClientState;
    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Lcom/android/server/AppOpsService$ClientState;

    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    invoke-direct {v0, p0, p1}, Lcom/android/server/AppOpsService$ClientState;-><init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V

    .line 1042
    .restart local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1044
    return-object v0

    .line 1045
    .end local v0    # "cs":Lcom/android/server/AppOpsService$ClientState;
    :catchall_0
    move-exception v1

    .line 1046
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1045
    throw v1
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2277
    const/4 v0, 0x1

    .line 2278
    .local v0, "isShow":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    if-eqz v1, :cond_0

    .line 2279
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mPolicy:Lcom/android/server/AppOpsPolicy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AppOpsPolicy;->isControlAllowed(ILjava/lang/String;)Z

    move-result v0

    .line 2281
    .end local v0    # "isShow":Z
    :cond_0
    return v0
.end method

.method public isSkipPackage(ILjava/lang/String;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2480
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/AppOpsService;->isAboard:Z

    if-eqz v0, :cond_1

    .line 2481
    :cond_0
    return v1

    .line 2482
    :cond_1
    const-string/jumbo v0, "com.android.cts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.google.android.xts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.jobscheduler.cts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.camera.cts"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2483
    :cond_2
    const/16 v0, 0x2f

    if-eq p1, v0, :cond_3

    .line 2484
    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3

    .line 2485
    const/16 v0, 0x21

    if-eq p1, v0, :cond_3

    .line 2486
    const/16 v0, 0x22

    if-eq p1, v0, :cond_3

    .line 2487
    const/16 v0, 0x23

    if-eq p1, v0, :cond_3

    .line 2488
    const/16 v0, 0x24

    if-eq p1, v0, :cond_3

    .line 2489
    const/16 v0, 0x25

    if-eq p1, v0, :cond_3

    .line 2490
    const/16 v0, 0x26

    if-eq p1, v0, :cond_3

    .line 2491
    const/16 v0, 0x27

    if-eq p1, v0, :cond_3

    .line 2492
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_3

    .line 2493
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_3

    .line 2494
    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    .line 2495
    const/16 v0, 0x17

    if-eq p1, v0, :cond_3

    .line 2496
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3

    .line 2498
    const-string/jumbo v0, "AppOps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isskippackage  code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const/4 v0, 0x1

    return v0

    .line 2501
    :cond_3
    return v1
.end method

.method public noteOperation(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1184
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1185
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1187
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    return v4

    .line 1189
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    return v4

    .line 1192
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOperationEx(III)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2475
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroid/app/AppOpsManager;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2476
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "proxyPackageName"    # Ljava/lang/String;
    .param p3, "proxiedUid"    # I
    .param p4, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1170
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1172
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 1171
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    .line 1173
    .local v6, "proxyMode":I
    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 1174
    :cond_0
    return v6

    .line 1176
    :cond_1
    invoke-virtual {p0, p1, p4}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    return v7

    .line 1179
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p2

    .line 1178
    invoke-direct/range {v0 .. v5}, Lcom/android/server/AppOpsService;->noteOperationUnchecked(IILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyOperation(IILjava/lang/String;IZ)V
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p5, "remember"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2348
    invoke-direct {p0, p2}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 2349
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 2350
    const/4 v6, 0x0

    .line 2351
    .local v6, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v7

    .line 2353
    .local v7, "switchCode":I
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AppOpsService;->recordOperationLocked(IILjava/lang/String;I)V

    .line 2354
    const/4 v8, 0x1

    invoke-direct {p0, v7, p2, p3, v8}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v3

    .line 2355
    .local v3, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v3, :cond_8

    .line 2357
    iget-object v8, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v8}, Lcom/android/server/PermissionDialogReqQueue;->getDialog()Lcom/android/server/PermissionDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2358
    iget-object v8, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v8, p4}, Lcom/android/server/PermissionDialogReqQueue;->notifyAll(I)V

    .line 2359
    iget-object v8, v3, Lcom/android/server/AppOpsService$Op;->dialogReqQueue:Lcom/android/server/PermissionDialogReqQueue;

    invoke-virtual {v8, v9}, Lcom/android/server/PermissionDialogReqQueue;->setDialog(Lcom/android/server/PermissionDialog;)V

    .line 2361
    :cond_0
    if-eqz p5, :cond_8

    iget v8, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eq v8, p4, :cond_8

    .line 2362
    iput p4, v3, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 2363
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2364
    .local v0, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_1

    .line 2366
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2368
    .local v6, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2370
    .end local v6    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v8, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 2371
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v0, :cond_3

    .line 2372
    if-nez v6, :cond_2

    .line 2373
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2375
    :cond_2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2377
    :cond_3
    iget v8, v3, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-direct {p0, v8}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v8

    if-ne p4, v8, :cond_4

    .line 2380
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 2382
    :cond_4
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 2383
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    invoke-static {v8, p1}, Landroid/app/AppOpsUtils;->has([II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2385
    .local v4, "identity":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 2386
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8, p2, p3, p4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2388
    :cond_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2390
    .end local v2    # "i":I
    .end local v4    # "identity":J
    :cond_6
    iget-boolean v8, p0, Lcom/android/server/AppOpsService;->isCTA:Z

    if-nez v8, :cond_8

    .line 2391
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    invoke-static {v8, p1}, Landroid/app/AppOpsUtils;->has([II)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2392
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2393
    .restart local v4    # "identity":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 2394
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8, p2, p3, p4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2393
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2396
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2408
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    .end local v4    # "identity":J
    :cond_8
    :goto_2
    if-eqz v6, :cond_b

    .line 2409
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 2411
    :try_start_0
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AppOpsService$Callback;

    iget-object v8, v8, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v8, v7, p3}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2409
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2397
    .end local v2    # "i":I
    .restart local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_9
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    invoke-static {v8, p1}, Landroid/app/AppOpsUtils;->has([II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2399
    .restart local v4    # "identity":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    array-length v8, v8

    if-ge v2, v8, :cond_a

    .line 2400
    sget-object v8, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    aget v8, v8, v2

    invoke-virtual {p0, v8, p2, p3, p4}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    .line 2399
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2402
    :cond_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2347
    .end local v0    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    .end local v4    # "identity":J
    :cond_b
    return-void

    .line 2412
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public packageAdded(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 468
    if-ltz p1, :cond_0

    if-eqz p2, :cond_0

    .line 469
    const-string/jumbo v0, "FeatureTypeBlack"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/AppOpsService;->initBlackWhite(ILjava/lang/String;Ljava/lang/String;I)V

    .line 470
    const-string/jumbo v0, "FeatureTypeWhite"

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/AppOpsService;->initBlackWhite(ILjava/lang/String;Ljava/lang/String;I)V

    .line 467
    :cond_0
    return-void
.end method

.method public packageRemoved(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 477
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 478
    const/4 v2, 0x0

    .line 480
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/AppOpsService$UidState;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .local v2, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v2, :cond_0

    .line 502
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 482
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    .line 488
    .local v1, "changed":Z
    :try_start_1
    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 489
    const/4 v1, 0x1

    .line 493
    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, v2, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    invoke-static {p1}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_2

    .line 495
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 498
    :cond_2
    if-eqz v1, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 475
    return-void

    .line 501
    .end local v1    # "changed":Z
    .end local v2    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v3

    .line 502
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 501
    throw v3
.end method

.method public permissionToOpCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1422
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    .line 316
    const-string/jumbo v0, "appops"

    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 317
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->readPolicy()V

    .line 314
    return-void
.end method

.method readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 1776
    const-string/jumbo v4, "n"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1777
    .local v1, "pkgName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1779
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1780
    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1781
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1785
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1786
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1787
    invoke-virtual {p0, p1, v1}, Lcom/android/server/AppOpsService;->readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 1789
    :cond_2
    const-string/jumbo v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <pkg>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1790
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1789
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1775
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method readState()V
    .locals 18

    .prologue
    .line 1673
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v15

    .line 1674
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1679
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 1684
    .local v10, "stream":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1685
    .local v11, "success":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 1688
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1690
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    .local v13, "type":I
    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .line 1691
    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1695
    :cond_1
    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    .line 1696
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "no start tag found"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1718
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_0
    move-exception v3

    .line 1719
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1731
    if-nez v11, :cond_2

    .line 1732
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1735
    :cond_2
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1741
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v15

    .line 1672
    return-void

    .line 1680
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catch_1
    move-exception v1

    .line 1681
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "No existing app ops "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "; starting empty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1741
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v15

    .line 1682
    return-void

    .line 1699
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    .restart local v13    # "type":I
    :cond_3
    :try_start_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 1700
    .local v8, "outerDepth":I
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    .line 1701
    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v8, :cond_b

    .line 1702
    :cond_5
    const/4 v14, 0x3

    if-eq v13, v14, :cond_4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_4

    .line 1706
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1707
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1708
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1720
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_2
    move-exception v5

    .line 1721
    .local v5, "e":Ljava/lang/NullPointerException;
    :try_start_b
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1731
    if-nez v11, :cond_6

    .line 1732
    :try_start_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1735
    :cond_6
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1709
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NullPointerException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_7
    :try_start_e
    const-string/jumbo v14, "uid"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1710
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/AppOpsService;->readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .line 1722
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_4
    move-exception v6

    .line 1723
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_f
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1731
    if-nez v11, :cond_8

    .line 1732
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1735
    :cond_8
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1712
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_9
    :try_start_12
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <app-ops>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1713
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1712
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 1724
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "type":I
    :catch_6
    move-exception v7

    .line 1725
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1731
    if-nez v11, :cond_a

    .line 1732
    :try_start_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1735
    :cond_a
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1717
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "outerDepth":I
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "type":I
    :cond_b
    const/4 v11, 0x1

    .line 1731
    if-nez v11, :cond_c

    .line 1732
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 1735
    :cond_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1728
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "outerDepth":I
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "type":I
    :catch_9
    move-exception v4

    .line 1729
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_18
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1731
    if-nez v11, :cond_d

    .line 1732
    :try_start_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1735
    :cond_d
    :try_start_1a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_a
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1726
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_b
    move-exception v2

    .line 1727
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_1b
    const-string/jumbo v14, "AppOps"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failed parsing "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1731
    if-nez v11, :cond_e

    .line 1732
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 1735
    :cond_e
    :try_start_1d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    goto/16 :goto_0

    .line 1736
    :catch_c
    move-exception v2

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 1730
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v14

    .line 1731
    if-nez v11, :cond_f

    .line 1732
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 1735
    :cond_f
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 1730
    :goto_2
    :try_start_20
    throw v14
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 1740
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "success":Z
    :catchall_1
    move-exception v14

    .line 1741
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1740
    throw v14
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 1673
    :catchall_2
    move-exception v14

    monitor-exit v15

    throw v14

    .line 1736
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "success":Z
    :catch_e
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method readUid(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1798
    const-string/jumbo v22, "n"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 1799
    .local v20, "uid":I
    const-string/jumbo v22, "p"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1800
    .local v9, "isPrivilegedString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1801
    .local v8, "isPrivileged":Z
    if-nez v9, :cond_d

    .line 1803
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    .line 1804
    .local v14, "packageManager":Landroid/content/pm/IPackageManager;
    if-eqz v14, :cond_c

    .line 1805
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v22

    .line 1806
    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v24, 0x0

    .line 1805
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1807
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    .line 1808
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v22, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_b

    const/4 v8, 0x1

    .line 1821
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "isPrivileged":Z
    .end local v14    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 1823
    .local v13, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    .local v19, "type":I
    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 1824
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v13, :cond_f

    .line 1825
    :cond_2
    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    const/16 v22, 0x4

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1829
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1830
    .local v17, "tagName":Ljava/lang/String;
    const-string/jumbo v22, "op"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 1831
    const-string/jumbo v22, "n"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1832
    .local v5, "code":I
    new-instance v11, Lcom/android/server/AppOpsService$Op;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v22

    move/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v5, v2}, Lcom/android/server/AppOpsService$Op;-><init>(ILjava/lang/String;II)V

    .line 1833
    .local v11, "op":Lcom/android/server/AppOpsService$Op;
    const-string/jumbo v22, "m"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1834
    .local v10, "mode":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1835
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 1837
    :cond_3
    const-string/jumbo v22, "t"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1838
    .local v18, "time":Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 1839
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1841
    :cond_4
    const-string/jumbo v22, "r"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1842
    if-eqz v18, :cond_5

    .line 1843
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v11, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1845
    :cond_5
    const-string/jumbo v22, "d"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1846
    .local v6, "dur":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 1847
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1849
    :cond_6
    const-string/jumbo v22, "pu"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1850
    .local v16, "proxyUid":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 1851
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v11, Lcom/android/server/AppOpsService$Op;->proxyUid:I

    .line 1853
    :cond_7
    const-string/jumbo v22, "pp"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1854
    .local v15, "proxyPackageName":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 1855
    iput-object v15, v11, Lcom/android/server/AppOpsService$Op;->proxyPackageName:Ljava/lang/String;

    .line 1858
    :cond_8
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v21

    .line 1859
    .local v21, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 1860
    new-instance v22, Landroid/util/ArrayMap;

    invoke-direct/range {v22 .. v22}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 1863
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Ops;

    .line 1864
    .local v12, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v12, :cond_a

    .line 1865
    new-instance v12, Lcom/android/server/AppOpsService$Ops;

    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-direct {v12, v0, v1, v8}, Lcom/android/server/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;Z)V

    .line 1866
    .restart local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    :cond_a
    iget v0, v11, Lcom/android/server/AppOpsService$Op;->op:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v12, v0, v11}, Lcom/android/server/AppOpsService$Ops;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1808
    .end local v5    # "code":I
    .end local v6    # "dur":Ljava/lang/String;
    .end local v10    # "mode":Ljava/lang/String;
    .end local v11    # "op":Lcom/android/server/AppOpsService$Op;
    .end local v12    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v13    # "outerDepth":I
    .end local v15    # "proxyPackageName":Ljava/lang/String;
    .end local v16    # "proxyUid":Ljava/lang/String;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "time":Ljava/lang/String;
    .end local v19    # "type":I
    .end local v21    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "isPrivileged":Z
    .restart local v14    # "packageManager":Landroid/content/pm/IPackageManager;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1813
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c
    return-void

    .line 1815
    .end local v14    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v7

    .line 1816
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v22, "AppOps"

    const-string/jumbo v23, "Could not contact PackageManager"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1819
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_d
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .local v8, "isPrivileged":Z
    goto/16 :goto_0

    .line 1870
    .end local v8    # "isPrivileged":Z
    .restart local v13    # "outerDepth":I
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_e
    const-string/jumbo v22, "AppOps"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown element under <pkg>: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1871
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 1870
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1797
    .end local v17    # "tagName":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method readUidOps(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1748
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1749
    .local v5, "uid":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1751
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v11, :cond_4

    .line 1752
    if-ne v4, v12, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_4

    .line 1753
    :cond_1
    if-eq v4, v12, :cond_0

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    .line 1757
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1758
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "op"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1759
    const-string/jumbo v7, "n"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1760
    .local v0, "code":I
    const-string/jumbo v7, "m"

    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1761
    .local v1, "mode":I
    invoke-direct {p0, v5, v11}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v6

    .line 1762
    .local v6, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-nez v7, :cond_2

    .line 1763
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 1765
    :cond_2
    iget-object v7, v6, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 1767
    .end local v0    # "code":I
    .end local v1    # "mode":I
    .end local v6    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_3
    const-string/jumbo v7, "AppOps"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown element under <uid-ops>: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1768
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1767
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1747
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2251
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2250
    return-void
.end method

.method public resetAllModes(ILjava/lang/String;)V
    .locals 30
    .param p1, "reqUserId"    # I
    .param p2, "reqPackageName"    # Ljava/lang/String;

    .prologue
    .line 861
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 862
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 863
    .local v3, "callingUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.UPDATE_APP_OPS_STATS"

    .line 864
    const/4 v6, 0x0

    .line 863
    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 866
    const-string/jumbo v7, "resetAllModes"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move/from16 v4, p1

    .line 865
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 868
    const/16 v27, -0x1

    .line 869
    .local v27, "reqUid":I
    if-eqz p2, :cond_0

    .line 871
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v27

    .line 878
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 880
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 882
    const/4 v11, 0x0

    .line 883
    .local v11, "changed":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .local v18, "i":I
    :goto_1
    if-ltz v18, :cond_d

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/AppOpsService$UidState;

    .line 886
    .local v29, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 887
    .local v21, "opModes":Landroid/util/SparseIntArray;
    if-eqz v21, :cond_4

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v0, v27

    if-eq v4, v0, :cond_1

    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_4

    .line 888
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v28

    .line 889
    .local v28, "uidOpCount":I
    add-int/lit8 v20, v28, -0x1

    .local v20, "j":I
    :goto_2
    if-ltz v20, :cond_4

    .line 890
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    .line 891
    .local v12, "code":I
    invoke-static {v12}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 892
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 893
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 894
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-object v4, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 896
    :cond_2
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_3

    aget-object v22, v6, v5

    .line 898
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 897
    move-object/from16 v0, v22

    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 900
    .local v9, "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 899
    move-object/from16 v0, v22

    invoke-static {v9, v0, v12, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 896
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 889
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 906
    .end local v12    # "code":I
    .end local v20    # "j":I
    .end local v28    # "uidOpCount":I
    :cond_4
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_6

    .line 883
    :cond_5
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 910
    :cond_6
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_7

    .line 911
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 916
    :cond_7
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    .line 917
    .local v23, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 918
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    :cond_8
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 919
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 920
    .local v16, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 921
    .restart local v22    # "packageName":Ljava/lang/String;
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 925
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$Ops;

    .line 926
    .local v24, "pkgOps":Lcom/android/server/AppOpsService$Ops;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "j":I
    :goto_6
    if-ltz v20, :cond_b

    .line 927
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AppOpsService$Op;

    .line 928
    .local v13, "curOp":Lcom/android/server/AppOpsService$Op;
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-static {v4}, Landroid/app/AppOpsManager;->opAllowsReset(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 929
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 930
    iget v4, v13, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v4

    iput v4, v13, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 931
    const/4 v11, 0x1

    .line 932
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    iget v6, v13, Lcom/android/server/AppOpsService$Op;->op:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 932
    move-object/from16 v0, v22

    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 934
    .restart local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    iget v5, v13, Lcom/android/server/AppOpsService$Op;->op:I

    .line 935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 934
    move-object/from16 v0, v22

    invoke-static {v9, v0, v5, v4}, Lcom/android/server/AppOpsService;->addCallbacks(Ljava/util/HashMap;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v9

    .line 936
    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    iget-wide v4, v13, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 937
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService$Ops;->removeAt(I)V

    .line 926
    .end local v9    # "callbacks":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    :cond_a
    add-int/lit8 v20, v20, -0x1

    goto :goto_6

    .line 941
    .end local v13    # "curOp":Lcom/android/server/AppOpsService$Op;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/AppOpsService$Ops;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 942
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 953
    .end local v16    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v18    # "i":I
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v20    # "j":I
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v24    # "pkgOps":Lcom/android/server/AppOpsService$Ops;
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v4

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 953
    throw v4

    .line 945
    .restart local v18    # "i":I
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .restart local v21    # "opModes":Landroid/util/SparseIntArray;
    .restart local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .restart local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_c
    :try_start_2
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_4

    .line 950
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;>;"
    .end local v21    # "opModes":Landroid/util/SparseIntArray;
    .end local v23    # "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v29    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_d
    if-eqz v11, :cond_e

    .line 951
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 954
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 957
    if-eqz v9, :cond_10

    .line 958
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "ent$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 959
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AppOpsService$Callback;

    .line 960
    .local v10, "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 961
    .local v26, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/16 v18, 0x0

    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f

    .line 962
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/Pair;

    .line 964
    .local v25, "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v5, v10, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, v25

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 961
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 860
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_10
    return-void

    .line 965
    .restart local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .restart local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .restart local v17    # "ent$iterator":Ljava/util/Iterator;
    .restart local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_8

    .line 873
    .end local v10    # "cb":Lcom/android/server/AppOpsService$Callback;
    .end local v11    # "changed":Z
    .end local v14    # "e":Landroid/os/RemoteException;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/AppOpsService$Callback;Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;>;"
    .end local v17    # "ent$iterator":Ljava/util/Iterator;
    .end local v18    # "i":I
    .end local v25    # "rep":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catch_1
    move-exception v14

    .restart local v14    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method

.method public setAudioRestriction(IIII[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "mode"    # I
    .param p5, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1129
    invoke-direct {p0, p3}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1132
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1133
    .local v4, "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    if-nez v4, :cond_0

    .line 1134
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1135
    .restart local v4    # "usageRestrictions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/AppOpsService$Restriction;>;"
    iget-object v5, p0, Lcom/android/server/AppOpsService;->mAudioRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1137
    :cond_0
    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1138
    if-eqz p4, :cond_3

    .line 1139
    new-instance v3, Lcom/android/server/AppOpsService$Restriction;

    invoke-direct {v3, v6}, Lcom/android/server/AppOpsService$Restriction;-><init>(Lcom/android/server/AppOpsService$Restriction;)V

    .line 1140
    .local v3, "r":Lcom/android/server/AppOpsService$Restriction;
    iput p4, v3, Lcom/android/server/AppOpsService$Restriction;->mode:I

    .line 1141
    if-eqz p5, :cond_2

    .line 1142
    array-length v0, p5

    .line 1143
    .local v0, "N":I
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v0}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    .line 1144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1145
    aget-object v2, p5, v1

    .line 1146
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1147
    iget-object v5, v3, Lcom/android/server/AppOpsService$Restriction;->exceptionPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1144
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1128
    .end local v3    # "r":Lcom/android/server/AppOpsService$Restriction;
    :cond_3
    return-void
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 17
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-eq v12, v13, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "android.permission.UPDATE_APP_OPS_STATS"

    .line 774
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    const/16 v16, 0x0

    .line 773
    invoke-virtual/range {v12 .. v16}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 776
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 777
    const/4 v10, 0x0

    .line 778
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 780
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v11

    .line 781
    .local v11, "uidState":Lcom/android/server/AppOpsService$UidState;
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/AppOpsService;->getOpLocked(IILjava/lang/String;Z)Lcom/android/server/AppOpsService$Op;

    move-result-object v7

    .line 782
    .local v7, "op":Lcom/android/server/AppOpsService$Op;
    if-eqz v7, :cond_5

    .line 783
    iget v12, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    move/from16 v0, p4

    if-eq v12, v0, :cond_5

    .line 784
    move/from16 v0, p4

    iput v0, v7, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 785
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 786
    .local v4, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_1

    .line 788
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v10, "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 792
    .end local v10    # "repCbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 793
    .restart local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v4, :cond_3

    .line 794
    if-nez v10, :cond_2

    .line 795
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 797
    :cond_2
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 799
    :cond_3
    iget v12, v7, Lcom/android/server/AppOpsService$Op;->op:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_4

    .line 802
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v7, v1, v2}, Lcom/android/server/AppOpsService;->pruneOp(Lcom/android/server/AppOpsService$Op;ILjava/lang/String;)V

    .line 804
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V

    .line 808
    .end local v4    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    if-eqz v10, :cond_7

    .line 812
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 814
    .local v8, "identity":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-ge v6, v12, :cond_6

    .line 816
    :try_start_1
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/AppOpsService$Callback;

    iget-object v12, v12, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 821
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 771
    .end local v6    # "i":I
    .end local v8    # "identity":J
    :cond_7
    return-void

    .line 820
    .restart local v6    # "i":I
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v12

    .line 821
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw v12

    .line 817
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setUidMode(III)V
    .locals 26
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "android.permission.UPDATE_APP_OPS_STATS"

    .line 664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v24

    const/16 v25, 0x0

    .line 663
    invoke-virtual/range {v21 .. v25}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 666
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 667
    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 671
    invoke-direct/range {p0 .. p1}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v9

    .line 673
    .local v9, "defaultMode":I
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/AppOpsService$UidState;

    move-result-object v20

    .line 674
    .local v20, "uidState":Lcom/android/server/AppOpsService$UidState;
    if-nez v20, :cond_3

    .line 675
    move/from16 v0, p3

    if-ne v0, v9, :cond_1

    .line 676
    return-void

    .line 678
    :cond_1
    new-instance v20, Lcom/android/server/AppOpsService$UidState;

    .end local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService$UidState;-><init>(I)V

    .line 679
    .restart local v20    # "uidState":Lcom/android/server/AppOpsService$UidState;
    new-instance v21, Landroid/util/SparseIntArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 680
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    .line 705
    :cond_2
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 706
    .local v19, "uidPackageNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 708
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 709
    .local v7, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v7, :cond_8

    .line 710
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 711
    .local v5, "callbackCount":I
    const/4 v11, 0x0

    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_8

    .line 712
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 713
    .local v4, "callback":Lcom/android/server/AppOpsService$Callback;
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 714
    .local v8, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    invoke-static {v8, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 715
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 716
    .local v6, "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 683
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v6    # "callbackSpecs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/AppOpsService$Callback;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v19    # "uidPackageNames":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    if-nez v21, :cond_4

    .line 684
    move/from16 v0, p3

    if-eq v0, v9, :cond_2

    .line 685
    new-instance v21, Landroid/util/SparseIntArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 686
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto :goto_0

    .line 690
    :cond_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 691
    return-void

    .line 693
    :cond_5
    move/from16 v0, p3

    if-ne v0, v9, :cond_7

    .line 694
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 695
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v21

    if-gtz v21, :cond_6

    .line 696
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 701
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AppOpsService;->scheduleWriteLocked()V

    goto/16 :goto_0

    .line 699
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    .line 720
    .restart local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .restart local v19    # "uidPackageNames":[Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget-object v18, v19, v21

    .line 721
    .local v18, "uidPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    check-cast v7, Ljava/util/ArrayList;

    .line 722
    .restart local v7    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-eqz v7, :cond_b

    .line 723
    if-nez v6, :cond_9

    .line 724
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 726
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 727
    .restart local v5    # "callbackCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v5, :cond_b

    .line 728
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 729
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 730
    .restart local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v8, :cond_a

    .line 731
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 732
    .restart local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v6, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 727
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 720
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v5    # "callbackCount":I
    .end local v8    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11    # "i":I
    :cond_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 739
    .end local v18    # "uidPackageName":Ljava/lang/String;
    :cond_c
    if-nez v6, :cond_d

    .line 740
    return-void

    .line 746
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 748
    .local v12, "identity":J
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    :try_start_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_10

    .line 749
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppOpsService$Callback;

    .line 750
    .restart local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .local v17, "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v17, :cond_f

    .line 753
    :try_start_1
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V

    .line 748
    :cond_e
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 755
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v15

    .line 756
    .local v15, "reportedPackageCount":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_7
    if-ge v14, v15, :cond_e

    .line 757
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 758
    .local v16, "reportedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/AppOpsService$Callback;->mCallback:Lcom/android/internal/app/IAppOpsCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsCallback;->opChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 761
    .end local v14    # "j":I
    .end local v15    # "reportedPackageCount":I
    .end local v16    # "reportedPackageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 762
    .local v10, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v21, "AppOps"

    const-string/jumbo v22, "Error dispatching op op change"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 765
    .end local v4    # "callback":Lcom/android/server/AppOpsService$Callback;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v17    # "reportedPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v21

    .line 766
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    throw v21

    .line 766
    :cond_10
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    return-void
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2219
    const-string/jumbo v3, "setUserRestrictions"

    invoke-direct {p0, v3}, Lcom/android/server/AppOpsService;->checkSystemUid(Ljava/lang/String;)V

    .line 2220
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 2221
    .local v1, "opRestrictions":[Z
    if-nez v1, :cond_0

    .line 2222
    const/16 v3, 0x4d

    new-array v1, v3, [Z

    .line 2223
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2225
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 2226
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToRestriction(I)Ljava/lang/String;

    move-result-object v2

    .line 2227
    .local v2, "restriction":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2228
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v0

    .line 2225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2230
    :cond_1
    aput-boolean v4, v1, v0

    goto :goto_1

    .line 2218
    .end local v2    # "restriction":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 534
    const-string/jumbo v1, "AppOps"

    const-string/jumbo v2, "Writing app ops before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, "doWrite":Z
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 538
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    if-eqz v1, :cond_0

    .line 539
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/AppOpsService;->mWriteScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    const/4 v0, 0x1

    .line 543
    :cond_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 547
    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {p0}, Lcom/android/server/AppOpsService;->writeState()V

    .line 533
    :cond_1
    return-void

    .line 542
    :catchall_0
    move-exception v1

    .line 543
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 542
    throw v1
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1287
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingUid(I)V

    .line 1288
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->verifyIncomingOp(I)V

    .line 1290
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppOpsService;->isSkipUseSystem(II)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1291
    const/4 v15, 0x0

    return v15

    .line 1292
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppOpsService;->isSkipPackage(ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1293
    const/4 v15, 0x0

    return v15

    :cond_1
    move-object/from16 v4, p1

    .line 1295
    check-cast v4, Lcom/android/server/AppOpsService$ClientState;

    .line 1298
    .local v4, "client":Lcom/android/server/AppOpsService$ClientState;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v9

    .line 1299
    .local v9, "ops":Lcom/android/server/AppOpsService$Ops;
    if-nez v9, :cond_2

    .line 1302
    const/4 v15, 0x2

    return v15

    .line 1304
    :cond_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v9, v1, v15}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v8

    .line 1305
    .local v8, "op":Lcom/android/server/AppOpsService$Op;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->isOpRestricted(IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1306
    const/4 v15, 0x1

    return v15

    .line 1308
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v11

    .line 1309
    .local v11, "switchCode":I
    iget-object v14, v9, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 1310
    .local v14, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget-object v15, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v15, :cond_4

    .line 1311
    iget-object v15, v14, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    .line 1312
    .local v13, "uidMode":I
    if-eqz v13, :cond_4

    .line 1316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1317
    return v13

    .line 1320
    .end local v13    # "uidMode":I
    :cond_4
    move/from16 v0, p2

    if-eq v11, v0, :cond_7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v15}, Lcom/android/server/AppOpsService;->getOpLocked(Lcom/android/server/AppOpsService$Ops;IZ)Lcom/android/server/AppOpsService$Op;

    move-result-object v12

    .line 1325
    .local v12, "switchOp":Lcom/android/server/AppOpsService$Op;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 1326
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget v15, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_8

    .line 1327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v16, 0x4d

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1331
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v15, :cond_5

    .line 1332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1333
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1334
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1335
    const/4 v15, -0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1337
    :cond_5
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1338
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v15, :cond_6

    .line 1339
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :cond_6
    const/4 v15, 0x0

    return v15

    .line 1320
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "switchOp":Lcom/android/server/AppOpsService$Op;
    :cond_7
    move-object v12, v8

    .restart local v12    # "switchOp":Lcom/android/server/AppOpsService$Op;
    goto :goto_0

    .line 1344
    :catch_0
    move-exception v6

    .line 1345
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1348
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    if-eqz v15, :cond_9

    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1352
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->ignoredCount:I

    .line 1353
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    return v15

    .line 1354
    :cond_9
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    if-nez v15, :cond_c

    .line 1358
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    if-nez v15, :cond_a

    .line 1359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->time:J

    .line 1360
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->allowedCount:I

    .line 1361
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/server/AppOpsService$Op;->rejectTime:J

    .line 1362
    const/4 v15, -0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->duration:I

    .line 1364
    :cond_a
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->nesting:I

    .line 1365
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    if-eqz v15, :cond_b

    .line 1366
    iget-object v15, v4, Lcom/android/server/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_b
    const/4 v15, 0x0

    return v15

    .line 1370
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mLooper:Landroid/os/Looper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 1371
    const-string/jumbo v15, "AppOps"

    .line 1372
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "startOperation: This method will deadlock if called from the main thread. (Code: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1374
    const-string/jumbo v17, " uid: "

    .line 1372
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1376
    const-string/jumbo v17, " package: "

    .line 1372
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1377
    const-string/jumbo v17, ")"

    .line 1372
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1371
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget v15, v12, Lcom/android/server/AppOpsService$Op;->mode:I

    return v15

    .line 1380
    :cond_d
    iget v15, v8, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v8, Lcom/android/server/AppOpsService$Op;->startOpCount:I

    .line 1381
    iget-object v5, v4, Lcom/android/server/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 1382
    .local v5, "clientToken":Landroid/os/IBinder;
    iget-object v15, v8, Lcom/android/server/AppOpsService$Op;->clientTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/AppOpsService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/AppOpsService$Op;)Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;

    move-result-object v10

    .line 1396
    .local v10, "req":Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;
    invoke-virtual {v10}, Lcom/android/server/PermissionDialogReqQueue$PermissionDialogReq;->get()I

    move-result v15

    return v15
.end method

.method public startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    const/4 v4, -0x1

    .line 975
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 977
    if-eq p1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p1

    .line 978
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 979
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-nez v0, :cond_1

    .line 980
    new-instance v0, Lcom/android/server/AppOpsService$Callback;

    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    invoke-direct {v0, p0, p3}, Lcom/android/server/AppOpsService$Callback;-><init>(Lcom/android/server/AppOpsService;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 981
    .restart local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p3}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :cond_1
    if-eq p1, v4, :cond_3

    .line 984
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 985
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_2

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_3
    if-eqz p2, :cond_5

    .line 992
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 993
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    if-nez v1, :cond_4

    .line 994
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    iget-object v2, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_5
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 973
    return-void

    .line 999
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v2

    .line 1000
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 999
    throw v2
.end method

.method public stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsCallback;

    .prologue
    .line 1008
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1010
    :try_start_0
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsService$Callback;

    .line 1011
    .local v0, "cb":Lcom/android/server/AppOpsService$Callback;
    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual {v0}, Lcom/android/server/AppOpsService$Callback;->unlinkToDeath()V

    .line 1013
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1015
    .local v1, "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1016
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1013
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1020
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1021
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1022
    .restart local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1023
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1024
    iget-object v3, p0, Lcom/android/server/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1029
    .end local v1    # "cbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AppOpsService$Callback;>;"
    .end local v2    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1006
    return-void

    .line 1028
    .end local v0    # "cb":Lcom/android/server/AppOpsService$Callback;
    :catchall_0
    move-exception v3

    .line 1029
    iget-object v4, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1028
    throw v3
.end method

.method public systemReady()V
    .locals 14

    .prologue
    .line 322
    iget-object v10, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "changed":Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 326
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AppOpsService$UidState;

    .line 328
    .local v9, "uidState":Lcom/android/server/AppOpsService$UidState;
    iget v10, v9, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v10}, Lcom/android/server/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "packageNames":[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 330
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->clear()V

    .line 331
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 332
    const/4 v0, 0x1

    .line 325
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-object v8, v9, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 337
    .local v8, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    if-eqz v8, :cond_0

    .line 341
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 342
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 343
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppOpsService$Ops;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .local v6, "ops":Lcom/android/server/AppOpsService$Ops;
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 347
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v12, v12, Lcom/android/server/AppOpsService$UidState;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 346
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 351
    .local v1, "curUid":I
    :goto_3
    :try_start_2
    iget-object v10, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    iget v10, v10, Lcom/android/server/AppOpsService$UidState;->uid:I

    if-eq v1, v10, :cond_2

    .line 352
    const-string/jumbo v10, "AppOps"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Pruning old package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 353
    const-string/jumbo v12, "/"

    .line 352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 353
    iget-object v12, v6, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 353
    const-string/jumbo v12, ": new uid="

    .line 352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 355
    const/4 v0, 0x1

    goto :goto_2

    .line 348
    .end local v1    # "curUid":I
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    .restart local v1    # "curUid":I
    goto :goto_3

    .line 359
    .end local v1    # "curUid":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "ops":Lcom/android/server/AppOpsService$Ops;
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/AppOpsService$UidState;->isDefault()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 360
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 366
    .end local v3    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AppOpsService$Ops;>;"
    .end local v7    # "packageNames":[Ljava/lang/String;
    .end local v8    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AppOpsService$Ops;>;"
    .end local v9    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :catchall_0
    move-exception v10

    .line 367
    iget-object v11, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 366
    throw v10

    .line 363
    .restart local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 364
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    :cond_5
    iget-object v10, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 372
    const-class v10, Landroid/os/storage/MountServiceInternal;

    .line 371
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/MountServiceInternal;

    .line 374
    .local v5, "mountServiceInternal":Landroid/os/storage/MountServiceInternal;
    new-instance v10, Lcom/android/server/AppOpsService$3;

    invoke-direct {v10, p0}, Lcom/android/server/AppOpsService$3;-><init>(Lcom/android/server/AppOpsService;)V

    .line 373
    invoke-virtual {v5, v10}, Landroid/os/storage/MountServiceInternal;->addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V

    .line 400
    iget-object v10, p0, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/AppOpsService;->pm:Landroid/content/pm/PackageManager;

    .line 401
    iget-boolean v10, p0, Lcom/android/server/AppOpsService;->firstInit:Z

    if-eqz v10, :cond_6

    .line 402
    const-string/jumbo v10, "AppOps"

    const-string/jumbo v11, "init white and black list"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string/jumbo v10, "FeatureTypeWhite"

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v10, v13}, Lcom/android/server/AppOpsService;->initBlackWhite(ILjava/lang/String;Ljava/lang/String;I)V

    .line 404
    const-string/jumbo v10, "FeatureTypeBlack"

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, v11, v12, v10, v13}, Lcom/android/server/AppOpsService;->initBlackWhite(ILjava/lang/String;Ljava/lang/String;I)V

    .line 320
    :goto_4
    return-void

    .line 407
    :cond_6
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->initBgAppWhite()V

    goto :goto_4
.end method

.method public uidRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 510
    const/4 v0, -0x1

    .line 512
    .local v0, "index":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 513
    if-ltz v0, :cond_1

    .line 514
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 515
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 517
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 518
    if-ltz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/server/AppOpsService;->scheduleFastWriteLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 524
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 507
    return-void

    .line 522
    :catchall_0
    move-exception v1

    .line 523
    :try_start_3
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 524
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 522
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 527
    :catchall_1
    move-exception v1

    .line 528
    iget-object v2, p0, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 527
    throw v1
.end method

.method writeState()V
    .locals 30

    .prologue
    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1879
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/AppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1883
    .local v4, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v20

    .line 1890
    .local v20, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v16, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1891
    .local v16, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v26, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v26 .. v26}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1892
    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1893
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 1896
    .local v25, "uidStateCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, v25

    if-ge v7, v0, :cond_2

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mUidStates:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AppOpsService$UidState;

    .line 1898
    .local v24, "uidState":Lcom/android/server/AppOpsService$UidState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseIntArray;->size()I

    move-result v26

    if-lez v26, :cond_1

    .line 1899
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1900
    const-string/jumbo v26, "n"

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/AppOpsService$UidState;->uid:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1901
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    .line 1902
    .local v21, "uidOpModes":Landroid/util/SparseIntArray;
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v13

    .line 1903
    .local v13, "opCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v13, :cond_0

    .line 1904
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    .line 1905
    .local v11, "op":I
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1906
    .local v10, "mode":I
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1907
    const-string/jumbo v26, "n"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1908
    const-string/jumbo v26, "m"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1909
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1903
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1884
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "mode":I
    .end local v11    # "op":I
    .end local v13    # "opCount":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .end local v25    # "uidStateCount":I
    :catch_0
    move-exception v6

    .line 1885
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v26, "AppOps"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to write state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v27

    .line 1886
    return-void

    .line 1911
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v13    # "opCount":I
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20    # "stream":Ljava/io/FileOutputStream;
    .restart local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    .restart local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    .restart local v25    # "uidStateCount":I
    :cond_0
    :try_start_4
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1896
    .end local v8    # "j":I
    .end local v13    # "opCount":I
    .end local v21    # "uidOpModes":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1915
    .end local v24    # "uidState":Lcom/android/server/AppOpsService$UidState;
    :cond_2
    if-eqz v4, :cond_e

    .line 1916
    const/4 v9, 0x0

    .line 1917
    .local v9, "lastPkg":Ljava/lang/String;
    const/4 v7, 0x0

    .end local v9    # "lastPkg":Ljava/lang/String;
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 1918
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    .line 1919
    .local v17, "pkg":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 1920
    if-eqz v9, :cond_3

    .line 1921
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1923
    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1924
    .local v9, "lastPkg":Ljava/lang/String;
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1925
    const-string/jumbo v26, "n"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1927
    .end local v9    # "lastPkg":Ljava/lang/String;
    :cond_4
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1928
    const-string/jumbo v26, "n"

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1929
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1930
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/AppOpsService;->getOpsLocked(ILjava/lang/String;Z)Lcom/android/server/AppOpsService$Ops;

    move-result-object v14

    .line 1933
    .local v14, "ops":Lcom/android/server/AppOpsService$Ops;
    if-eqz v14, :cond_b

    .line 1934
    const-string/jumbo v26, "p"

    iget-boolean v0, v14, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    monitor-exit p0

    .line 1939
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v15

    .line 1940
    .local v15, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v8, v0, :cond_c

    .line 1941
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 1942
    .local v12, "op":Landroid/app/AppOpsManager$OpEntry;
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1943
    const-string/jumbo v26, "n"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1944
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v26

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsService;->getDefaultMode(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 1945
    const-string/jumbo v26, "m"

    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1947
    :cond_5
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v22

    .line 1948
    .local v22, "time":J
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_6

    .line 1949
    const-string/jumbo v26, "t"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1951
    :cond_6
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getRejectTime()J

    move-result-wide v22

    .line 1952
    const-wide/16 v28, 0x0

    cmp-long v26, v22, v28

    if-eqz v26, :cond_7

    .line 1953
    const-string/jumbo v26, "r"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1955
    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v5

    .line 1956
    .local v5, "dur":I
    if-eqz v5, :cond_8

    .line 1957
    const-string/jumbo v26, "d"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1959
    :cond_8
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyUid()I

    move-result v19

    .line 1960
    .local v19, "proxyUid":I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 1961
    const-string/jumbo v26, "pu"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1963
    :cond_9
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getProxyPackageName()Ljava/lang/String;

    move-result-object v18

    .line 1964
    .local v18, "proxyPackageName":Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 1965
    const-string/jumbo v26, "pp"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1967
    :cond_a
    const-string/jumbo v26, "op"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1940
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 1936
    .end local v5    # "dur":I
    .end local v8    # "j":I
    .end local v12    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v18    # "proxyPackageName":Ljava/lang/String;
    .end local v19    # "proxyUid":I
    .end local v22    # "time":J
    :cond_b
    :try_start_7
    const-string/jumbo v26, "p"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 1929
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    :catchall_0
    move-exception v26

    :try_start_8
    monitor-exit p0

    throw v26
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1979
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .end local v25    # "uidStateCount":I
    :catch_1
    move-exception v6

    .line 1980
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v26, "AppOps"

    const-string/jumbo v28, "Failed to write state, restoring backup."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v6    # "e":Ljava/io/IOException;
    :goto_5
    monitor-exit v27

    .line 1877
    return-void

    .line 1969
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .restart local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .restart local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    .restart local v25    # "uidStateCount":I
    :cond_c
    :try_start_a
    const-string/jumbo v26, "uid"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1917
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1971
    .end local v8    # "j":I
    .end local v14    # "ops":Lcom/android/server/AppOpsService$Ops;
    .end local v15    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v17    # "pkg":Landroid/app/AppOpsManager$PackageOps;
    :cond_d
    if-eqz v9, :cond_e

    .line 1972
    const-string/jumbo v26, "pkg"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1976
    :cond_e
    const-string/jumbo v26, "app-ops"

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1977
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppOpsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 1878
    .end local v4    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v7    # "i":I
    .end local v16    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v20    # "stream":Ljava/io/FileOutputStream;
    .end local v25    # "uidStateCount":I
    :catchall_1
    move-exception v26

    monitor-exit v27

    throw v26
.end method
