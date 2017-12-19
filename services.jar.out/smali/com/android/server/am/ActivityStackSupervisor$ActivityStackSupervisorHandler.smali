.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4337
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4338
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4337
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4342
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4343
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4341
    return-void

    .line 4342
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4349
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 4348
    :cond_0
    :goto_0
    return-void

    .line 4351
    :pswitch_0
    sget-boolean v18, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v18, :cond_1

    const-string/jumbo v18, "ActivityManager"

    .line 4352
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleMessage: IDLE_TIMEOUT_MSG: r="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4351
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 4354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 4356
    .local v11, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4358
    return-void

    .line 4362
    .end local v11    # "nmsg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4365
    :pswitch_1
    sget-boolean v18, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v18, :cond_3

    const-string/jumbo v18, "ActivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "handleMessage: IDLE_NOW_MSG: r="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 4369
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4370
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v19

    goto/16 :goto_0

    .line 4369
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4374
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4375
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4376
    const-string/jumbo v18, "ActivityManager"

    const-string/jumbo v20, "Sleep timeout!  Sleeping now."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 4374
    :catchall_1
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4383
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 4384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x2710

    const/16 v19, 0x68

    invoke-virtual/range {v18 .. v21}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4386
    return-void

    .line 4388
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4389
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4390
    const-string/jumbo v18, "ActivityManager"

    const-string/jumbo v20, "Launch timeout has expired, giving up wake lock!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    .line 4388
    :catchall_2
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4400
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4403
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4406
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V

    goto/16 :goto_0

    .line 4409
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4410
    .local v5, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4411
    .local v4, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v4, :cond_0

    .line 4413
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v4, v0, v1}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4414
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 4413
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    .line 4421
    .end local v4    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    if-nez v18, :cond_7

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4424
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 4427
    const/4 v10, 0x0

    .line 4428
    .local v10, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 4429
    const/high16 v10, 0x3bf0000

    .line 4437
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v19

    .line 4438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 4437
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v10, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4440
    .end local v10    # "flags":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v19

    const-string/jumbo v20, "Lock-to-App"

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 4442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v19

    .line 4443
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 4442
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 4445
    :catch_1
    move-exception v9

    .line 4446
    .local v9, "ex":Landroid/os/RemoteException;
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 4431
    .end local v9    # "ex":Landroid/os/RemoteException;
    .restart local v10    # "flags":I
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 4432
    const/high16 v10, 0x29f0000

    goto/16 :goto_3

    .line 4452
    .end local v10    # "flags":I
    :pswitch_a
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 4453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v19

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 4453
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4456
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 4457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v18

    if-eqz v18, :cond_c

    .line 4458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v18

    .line 4459
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 4458
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4461
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    if-nez v18, :cond_d

    .line 4462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4464
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4467
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 4468
    const-string/jumbo v19, "lock_to_app_exit_locked"

    .line 4466
    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_f

    const/4 v14, 0x1

    .line 4469
    .local v14, "shouldLockKeyguard":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get2(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    if-eqz v14, :cond_e

    .line 4470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4472
    new-instance v18, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4473
    const/16 v19, -0x1

    .line 4472
    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4481
    .end local v14    # "shouldLockKeyguard":Z
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    goto/16 :goto_0

    .line 4466
    :cond_f
    const/4 v14, 0x0

    .restart local v14    # "shouldLockKeyguard":Z
    goto :goto_4

    .line 4478
    .end local v14    # "shouldLockKeyguard":Z
    :catch_2
    move-exception v9

    .line 4479
    .restart local v9    # "ex":Landroid/os/RemoteException;
    :try_start_8
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4480
    .end local v9    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v18

    .line 4481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->-set0(Lcom/android/server/am/ActivityStackSupervisor;I)I

    .line 4480
    throw v18

    .line 4485
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    if-nez v18, :cond_10

    .line 4486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    invoke-static/range {v18 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->-set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4488
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    goto/16 :goto_0

    .line 4491
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4492
    .restart local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4493
    .restart local v4    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v4, :cond_0

    .line 4495
    :try_start_9
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 4496
    :catch_3
    move-exception v7

    .restart local v7    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 4501
    .end local v4    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v5    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v7    # "e":Landroid/os/RemoteException;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4502
    :try_start_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/IBinder;

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 4503
    .local v13, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_4

    .line 4504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_1

    .line 4501
    .end local v13    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_4
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4510
    :pswitch_e
    const-string/jumbo v18, "ActivityManager"

    const-string/jumbo v19, "WMS runs the animation too long"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivityLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4512
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 4513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_11
    monitor-exit v19

    .line 4517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4518
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 4519
    .local v12, "numDisplays":I
    const/4 v6, 0x0

    .local v6, "displayNdx":I
    :goto_6
    if-ge v6, v12, :cond_4

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 4521
    .local v17, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v16, v18, -0x1

    .local v16, "stackNdx":I
    :goto_7
    if-ltz v16, :cond_13

    .line 4522
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStack;

    .line 4523
    .local v15, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v15, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 4524
    iget-object v0, v15, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4525
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/android/server/am/ActivityStack;->mDidResume:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 4521
    :cond_12
    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    .line 4511
    .end local v6    # "displayNdx":I
    .end local v12    # "numDisplays":I
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v16    # "stackNdx":I
    .end local v17    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_5
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4519
    .restart local v6    # "displayNdx":I
    .restart local v12    # "numDisplays":I
    .restart local v16    # "stackNdx":I
    .restart local v17    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 4517
    .end local v6    # "displayNdx":I
    .end local v12    # "numDisplays":I
    .end local v16    # "stackNdx":I
    .end local v17    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_6
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4535
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4536
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 4537
    .restart local v12    # "numDisplays":I
    const/4 v6, 0x0

    .restart local v6    # "displayNdx":I
    :goto_8
    if-ge v6, v12, :cond_4

    .line 4538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/am/ActivityStackSupervisor;->-get0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 4539
    .restart local v17    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v16, v18, -0x1

    .restart local v16    # "stackNdx":I
    :goto_9
    if-ltz v16, :cond_15

    .line 4540
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStack;

    .line 4541
    .restart local v15    # "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v0, v15, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 4542
    iget-object v0, v15, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4543
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v15, Lcom/android/server/am/ActivityStack;->mDidResume:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 4539
    :cond_14
    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    .line 4537
    .end local v15    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 4535
    .end local v6    # "displayNdx":I
    .end local v12    # "numDisplays":I
    .end local v16    # "stackNdx":I
    .end local v17    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_7
    move-exception v18

    monitor-exit v19

    throw v18

    .line 4475
    :catch_4
    move-exception v8

    .local v8, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto/16 :goto_5

    .line 4349
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
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
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
