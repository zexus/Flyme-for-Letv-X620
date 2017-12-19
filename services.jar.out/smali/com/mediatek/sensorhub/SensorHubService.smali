.class public Lcom/mediatek/sensorhub/SensorHubService;
.super Lcom/mediatek/sensorhub/ISensorHubService$Stub;
.source "SensorHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;,
        Lcom/mediatek/sensorhub/SensorHubService$Holder;,
        Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;,
        Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
    }
.end annotation


# static fields
.field static final LOG:Z

.field private static final POST_EVENT_ACTION_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubService"


# instance fields
.field private mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mContext:Landroid/content/Context;

.field private mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerContext:J

.field private mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private final mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/mediatek/sensorhub/SensorHubService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/sensorhub/SensorHubService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/sensorhub/SensorHubService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/sensorhub/SensorHubService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    .line 359
    const-string/jumbo v0, "sensorhub_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/mediatek/sensorhub/SensorHubService;->nativeInit()V

    .line 26
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/sensorhub/ISensorHubService$Stub;-><init>()V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    .line 36
    new-instance v1, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    invoke-direct {v1, p0}, Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;-><init>(Lcom/mediatek/sensorhub/SensorHubService;)V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    .line 37
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 90
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    .line 94
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeSetup(Ljava/lang/Object;)V

    .line 95
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 96
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "SensorHubService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    return-void
.end method

.method private buildData([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/sensorhub/DataCell;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x22

    .line 245
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    if-eqz p1, :cond_5

    .line 247
    const/4 v7, 0x0

    .line 248
    .local v7, "previousClock":Lcom/mediatek/sensorhub/DataCell;
    const/4 v1, 0x0

    .line 249
    .local v1, "currentClock":Lcom/mediatek/sensorhub/DataCell;
    const/4 v6, 0x0

    .line 250
    .local v6, "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    const/4 v0, 0x0

    .line 251
    .local v0, "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    const/4 v3, 0x0

    .end local v0    # "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .end local v1    # "currentClock":Lcom/mediatek/sensorhub/DataCell;
    .end local v6    # "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    .end local v7    # "previousClock":Lcom/mediatek/sensorhub/DataCell;
    .local v3, "i":I
    :goto_0
    array-length v8, p1

    if-ge v3, v8, :cond_4

    .line 252
    aget-object v4, p1, v3

    check-cast v4, Lcom/mediatek/sensorhub/DataCell;

    .line 253
    .local v4, "item":Lcom/mediatek/sensorhub/DataCell;
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->getIndex()I

    move-result v8

    const/16 v9, 0xc

    if-ne v9, v8, :cond_1

    .line 254
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->isPrevious()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 255
    move-object v7, v4

    .line 251
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 257
    :cond_0
    move-object v1, v4

    .local v1, "currentClock":Lcom/mediatek/sensorhub/DataCell;
    goto :goto_1

    .line 259
    .end local v1    # "currentClock":Lcom/mediatek/sensorhub/DataCell;
    :cond_1
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->getIndex()I

    move-result v8

    const/16 v9, 0x21

    if-ne v9, v8, :cond_3

    .line 260
    invoke-virtual {v4}, Lcom/mediatek/sensorhub/DataCell;->isPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    move-object v6, v4

    .local v6, "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    goto :goto_1

    .line 263
    .end local v6    # "previousActivityTime":Lcom/mediatek/sensorhub/DataCell;
    :cond_2
    move-object v0, v4

    .local v0, "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    goto :goto_1

    .line 266
    .end local v0    # "currentActivityTime":Lcom/mediatek/sensorhub/DataCell;
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v4    # "item":Lcom/mediatek/sensorhub/DataCell;
    :cond_4
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    .line 271
    new-instance v2, Lcom/mediatek/sensorhub/DataCell;

    .line 272
    invoke-virtual {v7}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v8

    invoke-virtual {v6}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 271
    const/4 v10, 0x1

    invoke-direct {v2, v12, v10, v8, v9}, Lcom/mediatek/sensorhub/DataCell;-><init>(IZJ)V

    .line 273
    .local v2, "datacell":Lcom/mediatek/sensorhub/DataCell;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    .end local v3    # "i":I
    :cond_5
    :goto_2
    return-object v5

    .line 274
    .restart local v3    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 275
    new-instance v2, Lcom/mediatek/sensorhub/DataCell;

    .line 276
    invoke-virtual {v1}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/mediatek/sensorhub/DataCell;->getLongValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 275
    const/4 v10, 0x0

    invoke-direct {v2, v12, v10, v8, v9}, Lcom/mediatek/sensorhub/DataCell;-><init>(IZJ)V

    .line 277
    .restart local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    .end local v2    # "datacell":Lcom/mediatek/sensorhub/DataCell;
    :cond_7
    if-eqz v7, :cond_8

    .line 280
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_8
    if-eqz v1, :cond_9

    .line 283
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_9
    if-eqz v6, :cond_a

    .line 286
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_a
    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private handleNativeMessage(III[Ljava/lang/Object;)V
    .locals 16
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # [Ljava/lang/Object;

    .prologue
    .line 298
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v2, :cond_0

    .line 299
    const-string/jumbo v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleNativeMessage: msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 302
    move/from16 v15, p2

    .line 303
    .local v15, "rid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "holder$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    .line 304
    .local v9, "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->rid:I

    if-ne v2, v15, :cond_1

    .line 305
    iget-boolean v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->repeat:Z

    if-nez v2, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/mediatek/sensorhub/SensorHubService;->buildData([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    .line 310
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    :try_start_0
    iget-object v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    if-nez v2, :cond_3

    .line 311
    const-string/jumbo v2, "SensorHubService"

    const-string/jumbo v3, "handleNativeMessage: null pendingintent!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 314
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/sensorhub/SensorHubService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    if-nez v2, :cond_4

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 318
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    .line 319
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNativeMessage: sending intent="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", wlCount="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService;->mBroadcastRefCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    monitor-exit v3

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 322
    .local v10, "elapsed":J
    new-instance v14, Lcom/mediatek/sensorhub/ActionDataResult;

    invoke-direct {v14, v15, v13, v10, v11}, Lcom/mediatek/sensorhub/ActionDataResult;-><init>(ILjava/util/List;J)V

    .line 323
    .local v14, "result":Lcom/mediatek/sensorhub/ActionDataResult;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.mediatek.sensorhub.EXTRA_ACTION_DATA_RESULT"

    invoke-virtual {v5, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    iget-object v2, v9, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->intent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/sensorhub/SensorHubService;->mResultReceiver:Lcom/mediatek/sensorhub/SensorHubService$ResultReceiver;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 326
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v10    # "elapsed":J
    .end local v14    # "result":Lcom/mediatek/sensorhub/ActionDataResult;
    :catch_0
    move-exception v8

    .line 327
    .local v8, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v2, "SensorHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleNativeMessage: exception for rid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 314
    .end local v8    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    .line 297
    .end local v9    # "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    .end local v12    # "holder$iterator":Ljava/util/Iterator;
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/sensorhub/DataCell;>;"
    .end local v15    # "rid":I
    :cond_6
    return-void
.end method

.method private native nativeAddConGesture(II)V
.end method

.method private native nativeCancelAction(I)Z
.end method

.method private native nativeCancelConGesture(II)V
.end method

.method private native nativeEnableGestureWakeup(Z)Z
.end method

.method private native nativeFinalize()V
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRequestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
.end method

.method private native nativeSetup(Ljava/lang/Object;)V
.end method

.method private native nativeUpdateCondition(ILcom/mediatek/sensorhub/Condition;)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III[Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "ext1"    # I
    .param p3, "ext2"    # I
    .param p4, "data"    # [Ljava/lang/Object;

    .prologue
    .line 337
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "selfRef":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/sensorhub/SensorHubService;

    .line 338
    .local v0, "service":Lcom/mediatek/sensorhub/SensorHubService;
    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v1, "SensorHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEventFromNative: Null SensorHubService! msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", arg1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", arg2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 343
    :cond_0
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mediatek/sensorhub/SensorHubService;->handleNativeMessage(III[Ljava/lang/Object;)V

    .line 335
    return-void
.end method


# virtual methods
.method public addConGesture(II)V
    .locals 8
    .param p1, "gesture"    # I
    .param p2, "cgesture"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, "permission":I
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 191
    if-eqz v4, :cond_0

    .line 192
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Need permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 193
    sget-object v7, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    .line 192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_0
    const/4 v0, 0x0

    .line 196
    .local v0, "count":I
    new-instance v3, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;

    invoke-direct {v3, p1, p2, v0}, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;-><init>(III)V

    .line 197
    .local v3, "mh":Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
    if-eqz v3, :cond_1

    .line 198
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 199
    iput v7, v3, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    .line 200
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeAddConGesture(II)V

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "holder$iterator":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;

    .line 204
    .local v1, "holder":Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
    iget v5, v1, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->gesture:I

    iget v6, v3, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->gesture:I

    if-ne v5, v6, :cond_3

    iget v5, v1, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->cgesture:I

    iget v6, v3, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->cgesture:I

    if-ne v5, v6, :cond_3

    .line 205
    iget v5, v1, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    goto :goto_0

    .line 208
    :cond_3
    iput v7, v3, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    .line 209
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeAddConGesture(II)V

    goto :goto_0
.end method

.method public cancelAction(I)Z
    .locals 10
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "find":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget-object v6, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "holder$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    .line 131
    .local v1, "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget v6, v1, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->rid:I

    if-ne v6, p1, :cond_0

    .line 132
    move-object v0, v1

    .line 136
    .end local v0    # "find":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    .end local v1    # "holder":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    :cond_1
    if-eqz v0, :cond_5

    .line 137
    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 138
    :cond_2
    const-string/jumbo v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cancelAction: current[pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    const-string/jumbo v8, "], old[pid="

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    iget v8, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    const-string/jumbo v8, ",uid="

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    iget v8, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 139
    const-string/jumbo v8, "]"

    .line 138
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 148
    .local v4, "origId":J
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeCancelAction(I)Z

    move-result v3

    .line 149
    .local v3, "removed":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    sget-boolean v6, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v6, :cond_4

    .line 151
    const-string/jumbo v7, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cancelAction: rid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_7

    const-string/jumbo v6, " succeed."

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_4
    if-nez v3, :cond_8

    .line 154
    const/4 v6, 0x0

    return v6

    .line 142
    .end local v3    # "removed":Z
    .end local v4    # "origId":J
    :cond_5
    sget-boolean v6, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v6, :cond_6

    .line 143
    const-string/jumbo v6, "SensorHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cancelAction: succeed due to no client. rid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    return v9

    .line 151
    .restart local v3    # "removed":Z
    .restart local v4    # "origId":J
    :cond_7
    const-string/jumbo v6, " failed!"

    goto :goto_0

    .line 157
    :cond_8
    iget-object v6, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    return v9
.end method

.method public cancelConGesture(II)V
    .locals 6
    .param p1, "gesture"    # I
    .param p2, "cgesture"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "permission":I
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 224
    if-eqz v2, :cond_0

    .line 225
    new-instance v3, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Need permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 226
    sget-object v5, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "holder$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;

    .line 230
    .local v0, "holder":Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
    iget v3, v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->gesture:I

    if-ne v3, p1, :cond_1

    iget v3, v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->cgesture:I

    if-ne v3, p2, :cond_1

    .line 231
    iget v3, v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    .line 232
    iget v3, v0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    if-nez v3, :cond_2

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeCancelConGesture(II)V

    .line 234
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubService;->mIntent:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    .end local v0    # "holder":Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
    .end local v1    # "holder$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public enableGestureWakeup(Z)Z
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "permission":I
    if-eqz v0, :cond_0

    .line 181
    new-instance v2, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Need permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/sensorhub/SensorHubService;->nativeEnableGestureWakeup(Z)Z

    move-result v1

    .line 184
    .local v1, "result":Z
    return v1
.end method

.method public getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/mediatek/sensorhub/ParcelableListInteger;

    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubService;->nativeGetContextList()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/sensorhub/ParcelableListInteger;-><init>([I)V

    return-object v0
.end method

.method public native nativeGetContextList()[I
.end method

.method public requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    .locals 8
    .param p1, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "action"    # Lcom/mediatek/sensorhub/Action;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "permission":I
    if-eqz v1, :cond_0

    .line 108
    new-instance v5, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Need permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 112
    .local v2, "origId":J
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeRequestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I

    move-result v4

    .line 113
    .local v4, "rid":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    sget-boolean v5, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v5, :cond_1

    .line 115
    const-string/jumbo v5, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestAction: rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    if-lez v4, :cond_2

    .line 118
    new-instance v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->getIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isRepeatable()Z

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;-><init>(ILandroid/app/PendingIntent;Z)V

    .line 119
    .local v0, "ah":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    iget-object v5, p0, Lcom/mediatek/sensorhub/SensorHubService;->mActionIntents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-boolean v5, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v5, :cond_2

    .line 121
    const-string/jumbo v5, "SensorHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestAction: add client[rid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0    # "ah":Lcom/mediatek/sensorhub/SensorHubService$ActionHolder;
    :cond_2
    return v4
.end method

.method public updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v4, p0, Lcom/mediatek/sensorhub/SensorHubService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "permission":I
    if-eqz v2, :cond_0

    .line 165
    new-instance v4, Lcom/mediatek/sensorhub/SensorHubPermissionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Need permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/sensorhub/SensorHubPermissionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 168
    .local v0, "origId":J
    invoke-direct {p0, p1, p2}, Lcom/mediatek/sensorhub/SensorHubService;->nativeUpdateCondition(ILcom/mediatek/sensorhub/Condition;)Z

    move-result v3

    .line 169
    .local v3, "result":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    sget-boolean v4, Lcom/mediatek/sensorhub/SensorHubService;->LOG:Z

    if-eqz v4, :cond_1

    .line 171
    const-string/jumbo v5, "SensorHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCondition: rid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_2

    const-string/jumbo v4, " succeed."

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    return v3

    .line 171
    :cond_2
    const-string/jumbo v4, " failed!"

    goto :goto_0
.end method
