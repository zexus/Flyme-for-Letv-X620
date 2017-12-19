.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 597
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 603
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 605
    :pswitch_0
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "handleMessage:H_SYSTEM_READY"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-wrap11(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 610
    :pswitch_1
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "H_DAEMON_CONNECTED"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 615
    :pswitch_2
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "H_FSTRIM"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-wrap1(Lcom/android/server/MountService;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 617
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 619
    const-wide/16 v20, 0x3e8

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 623
    :cond_1
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "Running fstrim idle maintenance"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/server/MountService;->-set7(Lcom/android/server/MountService;J)J

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->-get9(Lcom/android/server/MountService;)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;)Z

    move-result v15

    .line 637
    .local v15, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v20

    const-string/jumbo v21, "fstrim"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v15, :cond_2

    const-string/jumbo v19, "dotrimbench"

    :goto_2
    const/16 v23, 0x0

    aput-object v19, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 644
    :goto_3
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 645
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 646
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 629
    .end local v5    # "callback":Ljava/lang/Runnable;
    .end local v15    # "shouldBenchmark":Z
    :catch_0
    move-exception v7

    .line 630
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "Unable to record last fstrim!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 637
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v15    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string/jumbo v19, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 638
    :catch_1
    move-exception v12

    .line 639
    .local v12, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "Failed to run fstrim!"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 651
    .end local v12    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v15    # "shouldBenchmark":Z
    :pswitch_3
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "H_SHUTDOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-set3(Z)Z

    .line 653
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/storage/IMountShutdownObserver;

    .line 654
    .local v13, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/16 v16, 0x0

    .line 656
    .local v16, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string/jumbo v20, "volume"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const-string/jumbo v22, "shutdown"

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v16

    .line 659
    .end local v16    # "success":Z
    :goto_4
    if-eqz v13, :cond_3

    .line 661
    if-eqz v16, :cond_4

    const/16 v19, 0x0

    :goto_5
    :try_start_4
    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 665
    :cond_3
    :goto_6
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "finsh shut down"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-set3(Z)Z

    goto/16 :goto_0

    .line 661
    :cond_4
    const/16 v19, -0x1

    goto :goto_5

    .line 662
    :catch_2
    move-exception v9

    .local v9, "ignored":Landroid/os/RemoteException;
    goto :goto_6

    .line 670
    .end local v9    # "ignored":Landroid/os/RemoteException;
    .end local v13    # "obs":Landroid/os/storage/IMountShutdownObserver;
    :pswitch_4
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "H_VOLUME_MOUNT"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/storage/VolumeInfo;

    .line 672
    .local v18, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/MountService;->-wrap0(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 673
    const-string/jumbo v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Ignoring mount "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " due to policy"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 676
    :cond_5
    const/4 v14, 0x0

    .line 678
    .local v14, "rc":I
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v19

    const-string/jumbo v20, "volume"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const-string/jumbo v22, "mount"

    const/16 v23, 0x0

    aput-object v22, v21, v23

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aput-object v22, v21, v23

    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x2

    aput-object v22, v21, v23

    .line 679
    move-object/from16 v0, v18

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x3

    aput-object v22, v21, v23

    .line 678
    invoke-virtual/range {v19 .. v21}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    .line 684
    :goto_7
    if-nez v14, :cond_6

    .line 685
    const/4 v6, 0x0

    .line 686
    .local v6, "curVol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20

    .line 687
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get15(Lcom/android/server/MountService;)Landroid/util/ArrayMap;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "curVol":Landroid/os/storage/VolumeInfo;
    check-cast v6, Landroid/os/storage/VolumeInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v6, "curVol":Landroid/os/storage/VolumeInfo;
    monitor-exit v20

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/server/MountService;->-wrap2(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_0

    .line 680
    .end local v6    # "curVol":Landroid/os/storage/VolumeInfo;
    :catch_3
    move-exception v10

    .line 681
    .local v10, "ignored":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v10}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v14

    .line 682
    const-string/jumbo v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mount volume fail, ignored="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 686
    .end local v10    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 695
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/server/MountService;->-set1(Lcom/android/server/MountService;Z)Z

    .line 696
    const-string/jumbo v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mount volume fail, vol="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 697
    const-string/jumbo v21, ", return code="

    .line 696
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 702
    .end local v14    # "rc":I
    .end local v18    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    const-string/jumbo v19, "MountService"

    const-string/jumbo v20, "H_VOLUME_BROADCAST"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 704
    .local v17, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    .line 705
    .local v8, "envState":Ljava/lang/String;
    const-string/jumbo v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Volume "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " broadcasting "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 706
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v21

    .line 705
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {v8}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 710
    new-instance v11, Landroid/content/Intent;

    .line 711
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v19

    .line 710
    move-object/from16 v0, v19

    invoke-direct {v11, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 712
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "storage_volume"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 713
    const/high16 v19, 0x4000000

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 714
    const-string/jumbo v19, "MountService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "sendBroadcastAsUser, intent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 715
    const-string/jumbo v21, ", userVol="

    .line 714
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 723
    .end local v4    # "action":Ljava/lang/String;
    .end local v8    # "envState":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v17    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    .line 724
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v19

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 725
    const-string/jumbo v21, "android.permission.WRITE_MEDIA_STORAGE"

    .line 724
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v16    # "success":Z
    :catch_4
    move-exception v10

    .restart local v10    # "ignored":Lcom/android/server/NativeDaemonConnectorException;
    goto/16 :goto_4

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
