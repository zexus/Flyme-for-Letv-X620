.class Landroid/app/ActivityThread$H;
.super Landroid/os/Handler;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field public static final BACKGROUND_VISIBLE_BEHIND_CHANGED:I = 0x94

.field public static final BIND_APPLICATION:I = 0x6e

.field public static final BIND_SERVICE:I = 0x79

.field public static final CANCEL_VISIBLE_BEHIND:I = 0x93

.field public static final CLEAN_UP_CONTEXT:I = 0x77

.field public static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATE_BACKUP_AGENT:I = 0x80

.field public static final CREATE_SERVICE:I = 0x72

.field public static final DESTROY_ACTIVITY:I = 0x6d

.field public static final DESTROY_BACKUP_AGENT:I = 0x81

.field public static final DISPATCH_PACKAGE_BROADCAST:I = 0x85

.field public static final DUMP_ACTIVITY:I = 0x88

.field public static final DUMP_HEAP:I = 0x87

.field public static final DUMP_PROVIDER:I = 0x8d

.field public static final DUMP_SERVICE:I = 0x7b

.field public static final ENABLE_JIT:I = 0x84

.field public static final ENTER_ANIMATION_COMPLETE:I = 0x95

.field public static final EXIT_APPLICATION:I = 0x6f

.field public static final GC_WHEN_IDLE:I = 0x78

.field public static final HIDE_WINDOW:I = 0x6a

.field public static final INSTALL_PROVIDER:I = 0x91

.field public static final LAUNCH_ACTIVITY:I = 0x64

.field public static final LOW_MEMORY:I = 0x7c

.field public static final NEW_INTENT:I = 0x70

.field public static final ON_NEW_ACTIVITY_OPTIONS:I = 0x92

.field public static final PAUSE_ACTIVITY:I = 0x65

.field public static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field public static final PROFILER_CONTROL:I = 0x7f

.field public static final RECEIVER:I = 0x71

.field public static final RELAUNCH_ACTIVITY:I = 0x7e

.field public static final REMOVE_PROVIDER:I = 0x83

.field public static final REQUEST_ASSIST_CONTEXT_EXTRAS:I = 0x8f

.field public static final RESUME_ACTIVITY:I = 0x6b

.field public static final SCHEDULE_CRASH:I = 0x86

.field public static final SEND_RESULT:I = 0x6c

.field public static final SERVICE_ARGS:I = 0x73

.field public static final SET_CORE_SETTINGS:I = 0x8a

.field public static final SHOW_WINDOW:I = 0x69

.field public static final SLEEPING:I = 0x89

.field public static final STOP_ACTIVITY_HIDE:I = 0x68

.field public static final STOP_ACTIVITY_SHOW:I = 0x67

.field public static final STOP_SERVICE:I = 0x74

.field public static final SUICIDE:I = 0x82

.field public static final TRANSLUCENT_CONVERSION_COMPLETE:I = 0x90

.field public static final TRIM_MEMORY:I = 0x8c

.field public static final UNBIND_SERVICE:I = 0x7a

.field public static final UNSTABLE_PROVIDER_DIED:I = 0x8e

.field public static final UPDATE_PACKAGE_COMPATIBILITY_INFO:I = 0x8b


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    .line 1371
    iput-object p1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private maybeSnapshot()V
    .locals 8

    .prologue
    .line 1771
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1774
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    iget-object v3, v5, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1775
    .local v3, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1777
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1778
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1779
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-void

    .line 1782
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1783
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 1784
    const-string/jumbo v5, "ActivityThread"

    const-string/jumbo v6, "cannot get a valid PackageManager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-void

    .line 1788
    :cond_1
    const/4 v5, 0x1

    .line 1787
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1792
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    .line 1770
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    return-void

    .line 1789
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1790
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot get package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1424
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-eqz v0, :cond_0

    .line 1478
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1425
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1426
    :pswitch_1
    const-string/jumbo v0, "ACT-LAUNCH_ACTIVITY"

    return-object v0

    .line 1427
    :pswitch_2
    const-string/jumbo v0, "ACT-PAUSE_ACTIVITY"

    return-object v0

    .line 1428
    :pswitch_3
    const-string/jumbo v0, "ACT-PAUSE_ACTIVITY_FINISHING"

    return-object v0

    .line 1429
    :pswitch_4
    const-string/jumbo v0, "ACT-STOP_ACTIVITY_SHOW"

    return-object v0

    .line 1430
    :pswitch_5
    const-string/jumbo v0, "ACT-STOP_ACTIVITY_HIDE"

    return-object v0

    .line 1431
    :pswitch_6
    const-string/jumbo v0, "ACT-SHOW_WINDOW"

    return-object v0

    .line 1432
    :pswitch_7
    const-string/jumbo v0, "ACT-HIDE_WINDOW"

    return-object v0

    .line 1433
    :pswitch_8
    const-string/jumbo v0, "ACT-RESUME_ACTIVITY"

    return-object v0

    .line 1434
    :pswitch_9
    const-string/jumbo v0, "SEND_RESULT"

    return-object v0

    .line 1435
    :pswitch_a
    const-string/jumbo v0, "ACT-DESTROY_ACTIVITY"

    return-object v0

    .line 1436
    :pswitch_b
    const-string/jumbo v0, "BIND_APPLICATION"

    return-object v0

    .line 1437
    :pswitch_c
    const-string/jumbo v0, "EXIT_APPLICATION"

    return-object v0

    .line 1438
    :pswitch_d
    const-string/jumbo v0, "ACT-NEW_INTENT"

    return-object v0

    .line 1439
    :pswitch_e
    const-string/jumbo v0, "BDC-RECEIVER"

    return-object v0

    .line 1440
    :pswitch_f
    const-string/jumbo v0, "SVC-CREATE_SERVICE"

    return-object v0

    .line 1441
    :pswitch_10
    const-string/jumbo v0, "SVC-SERVICE_ARGS"

    return-object v0

    .line 1442
    :pswitch_11
    const-string/jumbo v0, "SVC-STOP_SERVICE"

    return-object v0

    .line 1443
    :pswitch_12
    const-string/jumbo v0, "CONFIGURATION_CHANGED"

    return-object v0

    .line 1444
    :pswitch_13
    const-string/jumbo v0, "CLEAN_UP_CONTEXT"

    return-object v0

    .line 1445
    :pswitch_14
    const-string/jumbo v0, "GC_WHEN_IDLE"

    return-object v0

    .line 1446
    :pswitch_15
    const-string/jumbo v0, "SVC-BIND_SERVICE"

    return-object v0

    .line 1447
    :pswitch_16
    const-string/jumbo v0, "SVC-UNBIND_SERVICE"

    return-object v0

    .line 1448
    :pswitch_17
    const-string/jumbo v0, "SVC-DUMP_SERVICE"

    return-object v0

    .line 1449
    :pswitch_18
    const-string/jumbo v0, "LOW_MEMORY"

    return-object v0

    .line 1450
    :pswitch_19
    const-string/jumbo v0, "ACT-ACTIVITY_CONFIGURATION_CHANGED"

    return-object v0

    .line 1451
    :pswitch_1a
    const-string/jumbo v0, "ACT-RELAUNCH_ACTIVITY"

    return-object v0

    .line 1452
    :pswitch_1b
    const-string/jumbo v0, "PROFILER_CONTROL"

    return-object v0

    .line 1453
    :pswitch_1c
    const-string/jumbo v0, "CREATE_BACKUP_AGENT"

    return-object v0

    .line 1454
    :pswitch_1d
    const-string/jumbo v0, "DESTROY_BACKUP_AGENT"

    return-object v0

    .line 1455
    :pswitch_1e
    const-string/jumbo v0, "SUICIDE"

    return-object v0

    .line 1456
    :pswitch_1f
    const-string/jumbo v0, "REMOVE_PROVIDER"

    return-object v0

    .line 1457
    :pswitch_20
    const-string/jumbo v0, "ENABLE_JIT"

    return-object v0

    .line 1458
    :pswitch_21
    const-string/jumbo v0, "DISPATCH_PACKAGE_BROADCAST"

    return-object v0

    .line 1459
    :pswitch_22
    const-string/jumbo v0, "SCHEDULE_CRASH"

    return-object v0

    .line 1460
    :pswitch_23
    const-string/jumbo v0, "DUMP_HEAP"

    return-object v0

    .line 1461
    :pswitch_24
    const-string/jumbo v0, "DUMP_ACTIVITY"

    return-object v0

    .line 1462
    :pswitch_25
    const-string/jumbo v0, "SLEEPING"

    return-object v0

    .line 1463
    :pswitch_26
    const-string/jumbo v0, "SET_CORE_SETTINGS"

    return-object v0

    .line 1464
    :pswitch_27
    const-string/jumbo v0, "UPDATE_PACKAGE_COMPATIBILITY_INFO"

    return-object v0

    .line 1465
    :pswitch_28
    const-string/jumbo v0, "TRIM_MEMORY"

    return-object v0

    .line 1466
    :pswitch_29
    const-string/jumbo v0, "DUMP_PROVIDER"

    return-object v0

    .line 1467
    :pswitch_2a
    const-string/jumbo v0, "UNSTABLE_PROVIDER_DIED"

    return-object v0

    .line 1468
    :pswitch_2b
    const-string/jumbo v0, "REQUEST_ASSIST_CONTEXT_EXTRAS"

    return-object v0

    .line 1469
    :pswitch_2c
    const-string/jumbo v0, "TRANSLUCENT_CONVERSION_COMPLETE"

    return-object v0

    .line 1470
    :pswitch_2d
    const-string/jumbo v0, "INSTALL_PROVIDER"

    return-object v0

    .line 1471
    :pswitch_2e
    const-string/jumbo v0, "ON_NEW_ACTIVITY_OPTIONS"

    return-object v0

    .line 1472
    :pswitch_2f
    const-string/jumbo v0, "CANCEL_VISIBLE_BEHIND"

    return-object v0

    .line 1473
    :pswitch_30
    const-string/jumbo v0, "BACKGROUND_VISIBLE_BEHIND_CHANGED"

    return-object v0

    .line 1474
    :pswitch_31
    const-string/jumbo v0, "ENTER_ANIMATION_COMPLETE"

    return-object v0

    .line 1425
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1536
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ">>> handling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1761
    :goto_0
    :pswitch_0
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MESSAGES:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<<< done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_1
    sget-boolean v0, Landroid/app/ActivityThread;->mIsUserBuild:Z

    if-nez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$H;->isDebuggableMessage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1764
    const-string/jumbo v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Landroid/app/ActivityThread$H;->codeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1765
    const-string/jumbo v2, ": "

    .line 1764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1765
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1765
    const-string/jumbo v2, " / "

    .line 1764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1765
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1764
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_2
    return-void

    .line 1539
    :pswitch_1
    const-string/jumbo v0, "activityStart"

    const-wide/16 v2, 0x1040

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1540
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1542
    .local v9, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    .line 1543
    iget-object v1, v9, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v9, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1542
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v0

    iput-object v0, v9, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1544
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Landroid/app/ActivityThread;->-wrap12(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    .line 1545
    const-wide/16 v0, 0x1040

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1548
    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_2
    const-string/jumbo v0, "activityRestart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1549
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1550
    .restart local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v9}, Landroid/app/ActivityThread;->-wrap16(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 1551
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1554
    .end local v9    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    :pswitch_3
    const-string/jumbo v0, "activityPause"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1555
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1556
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    .line 1555
    :goto_2
    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1557
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1558
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1555
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1556
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 1561
    :pswitch_4
    const-string/jumbo v0, "activityPause"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1562
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1563
    iget v2, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    .line 1562
    :goto_4
    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-wrap14(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZIZ)V

    .line 1564
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1562
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 1563
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 1567
    :pswitch_5
    const-string/jumbo v0, "activityStop"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1568
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v3, v2}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1569
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1572
    :pswitch_6
    const-string/jumbo v0, "activityStop"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1573
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/app/ActivityThread;->-wrap21(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V

    .line 1574
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1577
    :pswitch_7
    const-string/jumbo v0, "activityShowWindow"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1578
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1579
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1582
    :pswitch_8
    const-string/jumbo v0, "activityHideWindow"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1583
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/app/ActivityThread;->-wrap25(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V

    .line 1584
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1587
    :pswitch_9
    const-string/jumbo v0, "activityResume"

    const-wide/16 v2, 0x1040

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1588
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    :goto_5
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZIZ)V

    .line 1589
    const-wide/16 v0, 0x1040

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1588
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1592
    :pswitch_a
    const-string/jumbo v0, "activityDeliverResult"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1593
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ResultData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap17(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V

    .line 1594
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1597
    :pswitch_b
    const-string/jumbo v0, "activityDestroy"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1598
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 1599
    :goto_6
    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    .line 1598
    invoke-static {v2, v0, v1, v3, v4}, Landroid/app/ActivityThread;->-wrap6(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V

    .line 1600
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1598
    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    .line 1603
    :pswitch_c
    const-string/jumbo v0, "bindApplication"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1604
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/app/ActivityThread$AppBindData;

    .line 1605
    .local v7, "data":Landroid/app/ActivityThread$AppBindData;
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v7}, Landroid/app/ActivityThread;->-wrap2(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V

    .line 1606
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1609
    .end local v7    # "data":Landroid/app/ActivityThread$AppBindData;
    :pswitch_d
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v0, :cond_9

    .line 1610
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    .line 1612
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 1615
    :pswitch_e
    const-string/jumbo v0, "activityNewIntent"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1616
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap13(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V

    .line 1617
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1620
    :pswitch_f
    const-string/jumbo v0, "broadcastReceiveComp"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1621
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ReceiverData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap15(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V

    .line 1622
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1623
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1626
    :pswitch_10
    const-string/jumbo v0, "serviceCreate"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1627
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap5(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V

    .line 1628
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1631
    :pswitch_11
    const-string/jumbo v0, "serviceBind"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1632
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap3(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1633
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1636
    :pswitch_12
    const-string/jumbo v0, "serviceUnbind"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1637
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap23(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V

    .line 1638
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1641
    :pswitch_13
    const-string/jumbo v0, "serviceStart"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1642
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap18(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V

    .line 1643
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1646
    :pswitch_14
    const-string/jumbo v0, "serviceStop"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1647
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap22(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    .line 1648
    invoke-direct {p0}, Landroid/app/ActivityThread$H;->maybeSnapshot()V

    .line 1649
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1652
    :pswitch_15
    const-string/jumbo v0, "configChanged"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1653
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, v1, Landroid/app/ActivityThread;->mCurDefaultDisplayDpi:I

    .line 1654
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1655
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1658
    :pswitch_16
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/ActivityThread$ContextCleanupInfo;

    .line 1659
    .local v6, "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    iget-object v0, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    iget-object v1, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    iget-object v2, v6, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/ContextImpl;->performFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1662
    .end local v6    # "cci":Landroid/app/ActivityThread$ContextCleanupInfo;
    :pswitch_17
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto/16 :goto_0

    .line 1665
    :pswitch_18
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap10(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1668
    :pswitch_19
    const-string/jumbo v0, "lowMemory"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1669
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->handleLowMemory()V

    .line 1670
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1673
    :pswitch_1a
    const-string/jumbo v0, "activityConfigChanged"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1674
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ActivityConfigChangeData;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityConfigChangeData;)V

    .line 1675
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1678
    :pswitch_1b
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProfilerInfo;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/ActivityThread;->handleProfilerControl(ZLandroid/app/ProfilerInfo;I)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_7

    .line 1681
    :pswitch_1c
    const-string/jumbo v0, "backupCreateAgent"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1682
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap4(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1683
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1686
    :pswitch_1d
    const-string/jumbo v0, "backupDestroyAgent"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1687
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap7(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V

    .line 1688
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1691
    :pswitch_1e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    .line 1694
    :pswitch_1f
    const-string/jumbo v0, "providerRemove"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1695
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$ProviderRefCount;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->completeRemoveProvider(Landroid/app/ActivityThread$ProviderRefCount;)V

    .line 1696
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1699
    :pswitch_20
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    goto/16 :goto_0

    .line 1702
    :pswitch_21
    const-string/jumbo v0, "broadcastPackage"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1703
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->handleDispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 1704
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1707
    :pswitch_22
    new-instance v1, Landroid/app/RemoteServiceException;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/app/RemoteServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1709
    :pswitch_23
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    move v1, v0

    :goto_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->handleDumpHeap(ZLandroid/app/ActivityThread$DumpHeapData;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    .line 1712
    :pswitch_24
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap8(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1715
    :pswitch_25
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap9(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpComponentInfo;)V

    goto/16 :goto_0

    .line 1718
    :pswitch_26
    const-string/jumbo v0, "sleeping"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1719
    iget-object v3, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_9
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :goto_a
    invoke-static {v3, v0, v1, v2}, Landroid/app/ActivityThread;->-wrap20(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZ)V

    .line 1720
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1719
    :cond_c
    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 1723
    :pswitch_27
    const-string/jumbo v0, "setCoreSettings"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1724
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap19(Landroid/app/ActivityThread;Landroid/os/Bundle;)V

    .line 1725
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1728
    :pswitch_28
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap24(Landroid/app/ActivityThread;Landroid/app/ActivityThread$UpdateCompatibilityData;)V

    goto/16 :goto_0

    .line 1731
    :pswitch_29
    const-string/jumbo v0, "trimMemory"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1732
    iget-object v0, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->handleTrimMemory(I)V

    .line 1733
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 1736
    :pswitch_2a
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->handleUnstableProviderDied(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 1739
    :pswitch_2b
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleRequestAssistContextExtras(Landroid/app/ActivityThread$RequestAssistContextExtras;)V

    goto/16 :goto_0

    .line 1742
    :pswitch_2c
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    :goto_b
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    goto :goto_b

    .line 1745
    :pswitch_2d
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ProviderInfo;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto/16 :goto_0

    .line 1748
    :pswitch_2e
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    .line 1749
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityOptions;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->onNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 1752
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IBinder;Landroid/app/ActivityOptions;>;"
    :pswitch_2f
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->handleCancelVisibleBehind(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1755
    :pswitch_30
    iget-object v2, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_f

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v2, v0, v1}, Landroid/app/ActivityThread;->handleOnBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto :goto_c

    .line 1758
    :pswitch_31
    iget-object v1, p0, Landroid/app/ActivityThread$H;->this$0:Landroid/app/ActivityThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-wrap11(Landroid/app/ActivityThread;Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1537
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_11
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_25
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method isDebuggableMessage(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1483
    packed-switch p1, :pswitch_data_0

    .line 1530
    :pswitch_0
    return v0

    .line 1484
    :pswitch_1
    return v1

    .line 1485
    :pswitch_2
    return v1

    .line 1486
    :pswitch_3
    return v1

    .line 1487
    :pswitch_4
    return v1

    .line 1488
    :pswitch_5
    return v1

    .line 1489
    :pswitch_6
    return v1

    .line 1490
    :pswitch_7
    return v1

    .line 1491
    :pswitch_8
    return v1

    .line 1492
    :pswitch_9
    return v1

    .line 1493
    :pswitch_a
    return v1

    .line 1494
    :pswitch_b
    return v1

    .line 1495
    :pswitch_c
    return v1

    .line 1496
    :pswitch_d
    return v1

    .line 1497
    :pswitch_e
    return v1

    .line 1498
    :pswitch_f
    return v1

    .line 1499
    :pswitch_10
    return v1

    .line 1500
    :pswitch_11
    return v1

    .line 1501
    :pswitch_12
    return v0

    .line 1502
    :pswitch_13
    return v0

    .line 1503
    :pswitch_14
    return v0

    .line 1504
    :pswitch_15
    return v1

    .line 1505
    :pswitch_16
    return v1

    .line 1506
    :pswitch_17
    return v0

    .line 1507
    :pswitch_18
    return v1

    .line 1508
    :pswitch_19
    return v1

    .line 1509
    :pswitch_1a
    return v1

    .line 1510
    :pswitch_1b
    return v0

    .line 1511
    :pswitch_1c
    return v0

    .line 1512
    :pswitch_1d
    return v0

    .line 1513
    :pswitch_1e
    return v0

    .line 1514
    :pswitch_1f
    return v0

    .line 1515
    :pswitch_20
    return v0

    .line 1516
    :pswitch_21
    return v0

    .line 1517
    :pswitch_22
    return v0

    .line 1518
    :pswitch_23
    return v0

    .line 1519
    :pswitch_24
    return v0

    .line 1520
    :pswitch_25
    return v0

    .line 1521
    :pswitch_26
    return v0

    .line 1522
    :pswitch_27
    return v0

    .line 1523
    :pswitch_28
    return v0

    .line 1524
    :pswitch_29
    return v0

    .line 1525
    :pswitch_2a
    return v0

    .line 1526
    :pswitch_2b
    return v0

    .line 1527
    :pswitch_2c
    return v0

    .line 1528
    :pswitch_2d
    return v0

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch
.end method
