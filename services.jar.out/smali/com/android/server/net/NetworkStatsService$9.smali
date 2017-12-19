.class Lcom/android/server/net/NetworkStatsService$9;
.super Landroid/net/INetworkStatsSession$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkStatsService;->createSession(Ljava/lang/String;Z)Landroid/net/INetworkStatsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

.field private mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$callingPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/net/NetworkStatsService;
    .param p2, "val$callingPackage"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService$9;->val$callingPackage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/INetworkStatsSession$Stub;-><init>()V

    .line 521
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->val$callingPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    .line 517
    return-void
.end method

.method private getUidComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get5(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidFreeComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get4(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get3(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->-get6(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 668
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidTagComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 669
    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->mUidFreeComplete:Lcom/android/server/net/NetworkStatsCollection;

    .line 666
    return-void
.end method

.method public getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 560
    new-instance v8, Landroid/net/NetworkStats;

    sub-long v0, p4, p2

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 561
    .local v8, "result":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 563
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    return-object v8

    .line 564
    :catchall_0
    move-exception v0

    .line 565
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    throw v0
.end method

.method public getHistoryForFreeflow(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->-wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "fields"    # I

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->-wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 645
    if-nez p4, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 657
    if-nez p4, :cond_0

    .line 658
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getMobileTotalBytes(IJJ)J
    .locals 16
    .param p1, "subSim"    # I
    .param p2, "start_time"    # J
    .param p4, "end_time"    # J

    .prologue
    .line 676
    const/4 v11, 0x0

    .line 677
    .local v11, "subscriberId":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 679
    .local v14, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->-get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 680
    .local v12, "tele":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_4

    .line 682
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 683
    const/4 v9, -0x1

    .line 684
    .local v9, "subId":I
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 685
    .local v10, "subIds":[I
    if-eqz v10, :cond_0

    array-length v2, v10

    if-eqz v2, :cond_0

    .line 686
    const/4 v2, 0x0

    aget v9, v10, v2

    .line 689
    :cond_0
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 691
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dual sim subSim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 692
    const-string/jumbo v5, " fetch subID fail, always fetch default"

    .line 691
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v9

    .line 696
    :cond_1
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    invoke-virtual {v12, v9}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 698
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 699
    .local v3, "templete":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 712
    .end local v3    # "templete":Landroid/net/NetworkTemplate;
    .end local v9    # "subId":I
    .end local v10    # "subIds":[I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileTotalBytes subSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " subscriberId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    const-string/jumbo v5, " start_time="

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    const-string/jumbo v5, " end_time"

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 714
    const-string/jumbo v5, " totalBytes="

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-wide v14

    .line 701
    .restart local v9    # "subId":I
    .restart local v10    # "subIds":[I
    .local v11, "subscriberId":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes subId not valid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 706
    .end local v9    # "subId":I
    .end local v10    # "subIds":[I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 707
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NetworkStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMobileTotalBytes Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 704
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v11    # "subscriberId":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes SimState != SIM_STATE_READY"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 710
    :cond_4
    const-string/jumbo v2, "NetworkStats"

    const-string/jumbo v4, "getMobileTotalBytes TelephonyManager is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getRelevantUids()[I
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids()[I

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "includeTags"    # Z

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 599
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v10

    .line 600
    .local v10, "stats":Landroid/net/NetworkStats;
    const/4 v13, 0x0

    .line 601
    .local v13, "uidentry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .end local v13    # "uidentry":Landroid/net/NetworkStats$Entry;
    .local v8, "ind":I
    :goto_0
    invoke-virtual {v10}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 602
    invoke-virtual {v10, v8, v13}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v13

    .line 603
    .local v13, "uidentry":Landroid/net/NetworkStats$Entry;
    iget v0, v13, Landroid/net/NetworkStats$Entry;->uid:I

    if-nez v0, :cond_7

    .line 607
    .end local v13    # "uidentry":Landroid/net/NetworkStats$Entry;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidFreeComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v11

    .line 608
    .local v11, "statsFree":Landroid/net/NetworkStats;
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 609
    new-instance v9, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 610
    .local v9, "result":Landroid/net/NetworkStats;
    const/4 v6, 0x0

    .line 611
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v7, 0x0

    .end local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .local v7, "i":I
    :goto_1
    invoke-virtual {v11}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 612
    invoke-virtual {v11, v7, v6}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 613
    .local v6, "entry":Landroid/net/NetworkStats$Entry;
    iget v0, v6, Landroid/net/NetworkStats$Entry;->uid:I

    if-nez v0, :cond_8

    .line 614
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 615
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 617
    :cond_1
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 618
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 620
    :cond_2
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 621
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 623
    :cond_3
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, v13, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 624
    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    neg-long v0, v0

    iput-wide v0, v6, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 626
    :cond_4
    invoke-virtual {v9, v6}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 627
    invoke-virtual {v10, v9}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 633
    .end local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v7    # "i":I
    .end local v9    # "result":Landroid/net/NetworkStats;
    :cond_5
    if-eqz p6, :cond_6

    .line 634
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidTagComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v12

    .line 636
    .local v12, "tagStats":Landroid/net/NetworkStats;
    invoke-virtual {v10, v12}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 638
    .end local v12    # "tagStats":Landroid/net/NetworkStats;
    :cond_6
    return-object v10

    .line 601
    .end local v11    # "statsFree":Landroid/net/NetworkStats;
    .restart local v13    # "uidentry":Landroid/net/NetworkStats$Entry;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 611
    .end local v13    # "uidentry":Landroid/net/NetworkStats$Entry;
    .restart local v6    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v7    # "i":I
    .restart local v9    # "result":Landroid/net/NetworkStats;
    .restart local v11    # "statsFree":Landroid/net/NetworkStats;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public getSummaryForFreeflow(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService$9;->getUidFreeComplete()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$9;->mCallingPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$9;->this$0:Lcom/android/server/net/NetworkStatsService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->-wrap2(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method
