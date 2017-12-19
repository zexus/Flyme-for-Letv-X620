.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2292
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2294
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Ljava/lang/String;

    .line 2295
    .local v29, "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternetPermissionCheckedProcesses:Ljava/util/HashSet;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2297
    const-string/jumbo v3, "connectivity"

    .line 2296
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/ConnectivityManager;

    .line 2298
    .local v15, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v15}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v20

    .line 2299
    .local v20, "info":Landroid/net/NetworkInfo;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 2300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->checkInternetPermission(I)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mInternetPermissionCheckedProcesses:Ljava/util/HashSet;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2306
    .end local v15    # "connectMgr":Landroid/net/ConnectivityManager;
    .end local v20    # "info":Landroid/net/NetworkInfo;
    .end local v29    # "processName":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 2307
    .local v32, "start":J
    const/16 v26, 0x0

    .line 2308
    .local v26, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2309
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v2, :cond_1

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2311
    new-instance v26, Lcom/android/internal/util/MemInfoReader;

    .end local v26    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-direct/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 2314
    if-eqz v26, :cond_7

    .line 2315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2316
    const-wide/16 v12, 0x0

    .line 2317
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    .line 2318
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v14

    .line 2319
    .local v14, "N":I
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v14, :cond_5

    .line 2320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v30

    .line 2321
    .local v30, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_2

    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x2710

    if-lt v2, v8, :cond_3

    .line 2319
    :cond_2
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 2308
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v21    # "j":I
    .end local v30    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2325
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v21    # "j":I
    .restart local v30    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2326
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v30

    iget v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    if-ltz v2, :cond_4

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 2317
    .end local v14    # "N":I
    .end local v21    # "j":I
    .end local v30    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v14    # "N":I
    .restart local v21    # "j":I
    .restart local v30    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4
    :try_start_5
    monitor-exit v8

    .line 2331
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v8

    add-long/2addr v12, v8

    goto :goto_2

    .line 2325
    :catchall_2
    move-exception v2

    monitor-exit v8

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v30    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_5
    monitor-exit v3

    .line 2334
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 2336
    :try_start_6
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Collected native and kernel memory in "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v32

    .line 2336
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2337
    const-string/jumbo v8, "ms"

    .line 2336
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_6
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v16

    .line 2339
    .local v16, "cachedKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v18

    .line 2340
    .local v18, "freeKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v34

    .line 2341
    .local v34, "zramKb":J
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v22

    .line 2342
    .local v22, "kernelKb":J
    const-wide/16 v2, 0x400

    mul-long v2, v2, v16

    const-wide/16 v8, 0x400

    mul-long v4, v18, v8

    const-wide/16 v8, 0x400

    mul-long v6, v34, v8

    .line 2343
    const-wide/16 v8, 0x400

    mul-long v8, v8, v22

    const-wide/16 v10, 0x400

    mul-long/2addr v10, v12

    .line 2342
    invoke-static/range {v2 .. v11}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    move-wide/from16 v8, v34

    move-wide/from16 v10, v22

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v36

    .line 2349
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v16    # "cachedKb":J
    .end local v18    # "freeKb":J
    .end local v21    # "j":I
    .end local v22    # "kernelKb":J
    .end local v34    # "zramKb":J
    :cond_7
    const/16 v27, 0x0

    .line 2350
    .local v27, "num":I
    const/4 v2, 0x1

    new-array v0, v2, [J

    move-object/from16 v31, v0

    .line 2356
    .local v31, "tmp":[J
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 2357
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v2, :cond_9

    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v2, :cond_a

    :cond_9
    const-string/jumbo v2, "ActivityManager"

    .line 2359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Collected PSS of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " processes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v32

    .line 2359
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2360
    const-string/jumbo v9, "ms"

    .line 2359
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2358
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v3

    .line 2362
    return-void

    .line 2335
    .end local v27    # "num":I
    .end local v31    # "tmp":[J
    .restart local v12    # "nativeTotalPss":J
    .restart local v14    # "N":I
    .restart local v21    # "j":I
    :catchall_3
    move-exception v2

    monitor-exit v36

    throw v2

    .line 2364
    .end local v12    # "nativeTotalPss":J
    .end local v14    # "N":I
    .end local v21    # "j":I
    .restart local v27    # "num":I
    .restart local v31    # "tmp":[J
    :cond_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2365
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2366
    .local v5, "procState":I
    iget-wide v0, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    move-wide/from16 v24, v0

    .line 2367
    .local v24, "lastPssTime":J
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_d

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v5, v2, :cond_d

    .line 2368
    const-wide/16 v8, 0x3e8

    add-long v8, v8, v24

    .line 2369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2368
    cmp-long v2, v8, v10

    if-gez v2, :cond_d

    .line 2370
    iget v0, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v28, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v28, "pid":I
    :goto_4
    monitor-exit v3

    .line 2376
    if-eqz v4, :cond_8

    .line 2377
    const/4 v2, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v31

    invoke-static {v0, v1, v2}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v6

    .line 2378
    .local v6, "pss":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v36, v0

    monitor-enter v36

    .line 2379
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_c

    :try_start_9
    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_c

    iget v2, v4, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v5, :cond_c

    .line 2380
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v28

    if-ne v2, v0, :cond_c

    iget-wide v2, v4, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v2, v24

    if-nez v2, :cond_c

    .line 2381
    add-int/lit8 v27, v27, 0x1

    .line 2382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    aget-wide v8, v31, v2

    .line 2383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2382
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_c
    monitor-exit v36

    goto/16 :goto_3

    .line 2372
    .end local v6    # "pss":J
    .end local v28    # "pid":I
    .restart local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_d
    const/4 v4, 0x0

    .line 2373
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    const/16 v28, 0x0

    .restart local v28    # "pid":I
    goto :goto_4

    .line 2356
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "procState":I
    .end local v24    # "lastPssTime":J
    .end local v28    # "pid":I
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2378
    .restart local v5    # "procState":I
    .restart local v6    # "pss":J
    .restart local v24    # "lastPssTime":J
    .restart local v28    # "pid":I
    :catchall_5
    move-exception v2

    monitor-exit v36

    throw v2

    .line 2292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
