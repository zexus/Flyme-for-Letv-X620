.class public final Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StopwatchTimer"
.end annotation


# instance fields
.field mAcquireTime:J

.field mInList:Z

.field mNesting:I

.field mTimeout:J

.field final mTimerPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field mUpdateTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1464
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1465
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1466
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1463
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "type"    # I
    .param p4, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p5, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1456
    .local p3, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {p0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1457
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 1458
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    .line 1459
    invoke-virtual {p5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1455
    return-void
.end method

.method private static refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J
    .locals 12
    .param p0, "batteryRealtime"    # J
    .param p3, "self"    # Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ")J"
        }
    .end annotation

    .prologue
    .line 1567
    .local p2, "pool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    const-wide/16 v6, 0x0

    .line 1568
    .local v6, "selfTime":J
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1569
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1570
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 1571
    .local v8, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v2, p0, v10

    .line 1572
    .local v2, "heldTime":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_1

    .line 1573
    int-to-long v10, v0

    div-long v4, v2, v10

    .line 1574
    .local v4, "myTime":J
    if-ne v8, p3, :cond_0

    .line 1575
    move-wide v6, v4

    .line 1577
    :cond_0
    iget-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    add-long/2addr v10, v4

    iput-wide v10, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1579
    .end local v4    # "myTime":J
    :cond_1
    iput-wide p0, v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1569
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1581
    .end local v2    # "heldTime":J
    .end local v8    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    return-wide v6
.end method


# virtual methods
.method protected computeCurrentCountLocked()I
    .locals 1

    .prologue
    .line 1597
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    return v0
.end method

.method protected computeRunTimeLocked(J)J
    .locals 7
    .param p1, "curBatteryRealtime"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 1586
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 1587
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    add-long p1, v2, v4

    .line 1589
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v4, :cond_1

    .line 1590
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v4, p1, v0

    .line 1591
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    .line 1590
    div-long v0, v4, v0

    .line 1589
    :cond_1
    add-long/2addr v0, v2

    return-wide v0

    .line 1591
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method detach()V
    .locals 1

    .prologue
    .line 1613
    invoke-super {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 1614
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1612
    :cond_0
    return-void
.end method

.method isRunningLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1520
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1492
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    const-string/jumbo v1, " mAcquireTime="

    .line 1493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1494
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1493
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1479
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1483
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 1484
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1478
    :cond_0
    return-void
.end method

.method readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1621
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1622
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1620
    return-void
.end method

.method reset(Z)Z
    .locals 6
    .param p1, "detachIfReset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1602
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-gtz v2, :cond_1

    const/4 v0, 0x1

    .line 1603
    .local v0, "canDetach":Z
    :goto_0
    if-eqz v0, :cond_2

    .end local p1    # "detachIfReset":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(Z)Z

    .line 1604
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 1605
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1607
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1608
    return v0

    .line 1602
    .end local v0    # "canDetach":Z
    .restart local p1    # "detachIfReset":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "canDetach":Z
    goto :goto_0

    :cond_2
    move p1, v1

    .line 1603
    goto :goto_1
.end method

.method public setMark(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1632
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1633
    .local v0, "batteryRealtime":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v2, :cond_0

    .line 1635
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1636
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1642
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBeforeMark:J

    .line 1631
    return-void

    .line 1638
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1639
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    goto :goto_0
.end method

.method setTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1470
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeout:J

    .line 1469
    return-void
.end method

.method startRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v6, 0x0

    .line 1498
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_1

    .line 1499
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1500
    .local v0, "batteryRealtime":J
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    .line 1501
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1504
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1506
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 1510
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    .line 1497
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void
.end method

.method stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1557
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1558
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1556
    :cond_0
    return-void
.end method

.method stopRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1525
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_0

    .line 1526
    return-void

    .line 1528
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    if-nez v2, :cond_1

    .line 1529
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p1

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    .line 1530
    .local v0, "batteryRealtime":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1533
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->refreshTimersLocked(JLjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;)J

    .line 1535
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimerPool:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1548
    :goto_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mAcquireTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1551
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mCount:I

    .line 1523
    .end local v0    # "batteryRealtime":J
    :cond_1
    return-void

    .line 1537
    .restart local v0    # "batteryRealtime":J
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    .line 1538
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->computeRunTimeLocked(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTotalTime:J

    .line 1539
    iput v6, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mNesting:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 1474
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1475
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1473
    return-void
.end method
