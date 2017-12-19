.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelPoweroffAlarm(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->cancelPoweroffAlarmImpl(Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1533
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1536
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1537
    const-string/jumbo v4, ", uid="

    .line 1535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1535
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    return-void

    .line 1541
    :cond_0
    const/4 v2, 0x0

    .line 1542
    .local v2, "opti":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_1

    .line 1543
    aget-object v1, p3, v2

    .line 1544
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1560
    .end local v1    # "opt":Ljava/lang/String;
    :cond_1
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 1561
    aget-object v0, p3, v2

    .line 1562
    .local v0, "cmd":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1563
    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1564
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/server/AlarmManagerService;->configLogTag(Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 1565
    return-void

    .line 1544
    .end local v0    # "cmd":Ljava/lang/String;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 1547
    add-int/lit8 v2, v2, 0x1

    .line 1548
    const-string/jumbo v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1549
    const-string/jumbo v3, "alarm manager dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1550
    const-string/jumbo v3, "  log  [on/off]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    const-string/jumbo v3, "  Example:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1552
    const-string/jumbo v3, "  $adb shell dumpsys alarm log on"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    const-string/jumbo v3, "  $adb shell dumpsys alarm log off"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    return-void

    .line 1556
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    .end local v1    # "opt":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1532
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1524
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1526
    const-string/jumbo v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    move v4, v3

    .line 1524
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1528
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public lookForPackageFromAms(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageFromAmsImpl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1495
    const-string/jumbo v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "manual remove option = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 1494
    return-void
.end method

.method public removeFromAms(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->removeFromAmsImpl(Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method public set(IJJJILandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 14
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "flags"    # I
    .param p9, "operation"    # Landroid/app/PendingIntent;
    .param p10, "workSource"    # Landroid/os/WorkSource;
    .param p11, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 1421
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1422
    .local v12, "callingUid":I
    if-eqz p10, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1424
    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 1425
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string/jumbo v3, "AlarmManager.set"

    .line 1423
    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1430
    :cond_0
    and-int/lit8 p8, p8, -0xb

    .line 1435
    const/16 v0, 0x3e8

    if-eq v12, v0, :cond_1

    .line 1436
    and-int/lit8 p8, p8, -0x11

    .line 1443
    :cond_1
    const/16 v0, 0x2710

    if-ge v12, v0, :cond_2

    if-nez p10, :cond_2

    .line 1444
    or-int/lit8 p8, p8, 0x8

    .line 1448
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_3

    .line 1449
    or-int/lit8 p8, p8, 0x1

    .line 1454
    :cond_3
    if-eqz p11, :cond_4

    .line 1455
    or-int/lit8 p8, p8, 0x3

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1459
    const/4 v9, 0x0

    move v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 1458
    invoke-virtual/range {v0 .. v12}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1420
    return-void
.end method

.method public setTime(J)Z
    .locals 7
    .param p1, "millis"    # J

    .prologue
    const/4 v0, 0x0

    .line 1464
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1465
    const-string/jumbo v2, "android.permission.SET_TIME"

    .line 1466
    const-string/jumbo v3, "setTime"

    .line 1464
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNativeData:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1469
    :cond_0
    const-string/jumbo v1, "AlarmManager"

    const-string/jumbo v2, "Not setting time since no alarm driver is available."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return v0

    .line 1473
    :cond_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1474
    :try_start_0
    const-string/jumbo v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKernelTime  setTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService;->mNativeData:J

    invoke-static {v2, v4, v5, p1, p2}, Lcom/android/server/AlarmManagerService;->-wrap3(Lcom/android/server/AlarmManagerService;JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    return v0

    .line 1473
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 5
    .param p1, "tz"    # Ljava/lang/String;

    .prologue
    .line 1481
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1482
    const-string/jumbo v3, "android.permission.SET_TIME_ZONE"

    .line 1483
    const-string/jumbo v4, "setTimeZone"

    .line 1481
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1487
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    return-void

    .line 1488
    :catchall_0
    move-exception v2

    .line 1489
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    throw v2
.end method
