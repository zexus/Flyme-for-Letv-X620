.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 473
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 472
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 478
    const/16 v24, 0xa

    invoke-static/range {v24 .. v24}, Landroid/os/Process;->setThreadPriority(I)V

    .line 479
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 485
    .local v17, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 486
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .local v20, "probablyDone":Z
    monitor-exit v25

    .line 488
    if-eqz v20, :cond_4

    .line 490
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->clear()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    .line 493
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v24

    add-int/lit8 v23, v24, -0x1

    .local v23, "taskNdx":I
    :goto_1
    if-ltz v23, :cond_3

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get1(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/RecentTasks;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 497
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 500
    :cond_1
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    :cond_2
    add-int/lit8 v23, v23, -0x1

    goto :goto_1

    .line 485
    .end local v20    # "probablyDone":Z
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    .restart local v20    # "probablyDone":Z
    .restart local v23    # "taskNdx":I
    :cond_3
    monitor-exit v25

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap1(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 512
    .end local v23    # "taskNdx":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 513
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, -0x1

    cmp-long v24, v26, v28

    if-eqz v24, :cond_5

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x1f4

    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 521
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v24, v26, v28

    if-eqz v24, :cond_6

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->-set0(Lcom/android/server/am/TaskPersister;J)J

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 528
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 529
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 491
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v24

    monitor-exit v25

    throw v24

    .line 534
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 536
    .local v16, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 539
    .local v18, "now":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v26

    cmp-long v24, v18, v26

    if-gez v24, :cond_8

    .line 543
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/am/TaskPersister;->-get0(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v26

    sub-long v26, v26, v18

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 546
    :goto_4
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-wide v18

    goto :goto_3

    :cond_8
    monitor-exit v25

    .line 552
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v15, v16

    .line 553
    check-cast v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 554
    .local v15, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v12, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 555
    .local v12, "filename":Ljava/lang/String;
    iget-object v6, v15, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 557
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 559
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v24, Ljava/io/File;

    sget-object v25, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 560
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v14, "imageFile":Ljava/io/FileOutputStream;
    :try_start_8
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 564
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 512
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v18    # "now":J
    :catchall_2
    move-exception v24

    monitor-exit v25

    throw v24

    .line 561
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v18    # "now":J
    :catch_1
    move-exception v8

    .line 562
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "saveImage: unable to save "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 564
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_0

    .line 563
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v24

    .line 564
    :goto_6
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 563
    throw v24

    .line 566
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_9
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 568
    const/16 v21, 0x0

    .line 569
    .local v21, "stringWriter":Ljava/io/StringWriter;
    check-cast v16, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    .line 571
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->-get2(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v25

    monitor-enter v25

    .line 572
    :try_start_a
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v24, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v24, :cond_a

    .line 576
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->-wrap0(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result-object v21

    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    :cond_a
    :goto_7
    monitor-exit v25

    .line 582
    if-eqz v21, :cond_0

    .line 584
    const/4 v11, 0x0

    .line 585
    .local v11, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 587
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_c
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v24, Ljava/io/File;

    sget-object v25, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    .line 587
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 588
    const-string/jumbo v27, "_task"

    .line 587
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 588
    const-string/jumbo v27, ".xml"

    .line 587
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 589
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_d
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    move-result-object v11

    .line 590
    .local v11, "file":Ljava/io/FileOutputStream;
    invoke-virtual/range {v21 .. v21}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 591
    const/16 v24, 0xa

    move/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 592
    invoke-virtual {v5, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_0

    .line 593
    .end local v11    # "file":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 594
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    :goto_8
    if-eqz v11, :cond_b

    .line 595
    invoke-virtual {v4, v11}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 597
    :cond_b
    const-string/jumbo v24, "TaskPersister"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unable to open "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " for persisting. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 571
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catchall_4
    move-exception v24

    monitor-exit v25

    throw v24

    .line 593
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v11, "file":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 577
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "file":Ljava/io/FileOutputStream;
    .restart local v21    # "stringWriter":Ljava/io/StringWriter;
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_7

    .line 578
    .end local v7    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto/16 :goto_7

    .line 563
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v21    # "stringWriter":Ljava/io/StringWriter;
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "filename":Ljava/lang/String;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v16    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_5
    move-exception v24

    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .local v13, "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 561
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v14    # "imageFile":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v13, v14

    .end local v14    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v13    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 544
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "filename":Ljava/lang/String;
    .end local v13    # "imageFile":Ljava/io/FileOutputStream;
    .end local v15    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_7
    move-exception v9

    .restart local v9    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4
.end method
