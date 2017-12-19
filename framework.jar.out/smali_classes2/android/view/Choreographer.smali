.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$FrameCallback;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$1;,
        Landroid/view/Choreographer$2;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG:Z

.field private static final DEBUG_FRAMES:Z

.field private static final DEBUG_JANK:Z

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field mFrameInfo:Landroid/view/FrameInfo;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/Choreographer;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    const-string/jumbo v0, "debug.choreographer.janklog"

    .line 83
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->DEBUG_JANK:Z

    .line 88
    const-string/jumbo v0, "debug.choreographer.frameslog"

    .line 87
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    .line 92
    const-string/jumbo v0, "debug.choreographer.mtklog"

    .line 91
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->DEBUG:Z

    .line 105
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 109
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    .line 108
    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 122
    const-string/jumbo v0, "debug.choreographer.vsync"

    .line 121
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 126
    const-string/jumbo v0, "debug.choreographer.frametime"

    .line 125
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 131
    const-string/jumbo v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 138
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 180
    const-string/jumbo v1, "input"

    aput-object v1, v0, v2

    const-string/jumbo v1, "animation"

    aput-object v1, v0, v3

    const-string/jumbo v1, "traversal"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "commit"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 179
    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v1, Landroid/view/FrameInfo;

    invoke-direct {v1}, Landroid/view/FrameInfo;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    .line 217
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 218
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 219
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    :goto_0
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 220
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 222
    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v1

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float v1, v3, v1

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 224
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue;)V

    aput-object v3, v1, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move-object v1, v2

    .line 219
    goto :goto_0

    .line 229
    .restart local v0    # "i":I
    :cond_1
    sget-boolean v1, Landroid/view/Choreographer;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 230
    const-string/jumbo v1, "Choreographer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Choreographer: mDisplayEventReceiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    const-string/jumbo v3, ",USE_VSYNC = "

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    sget-boolean v3, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 231
    const-string/jumbo v3, ",this = "

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 268
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 237
    const/4 v2, 0x0

    .line 236
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 238
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 740
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    .line 741
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .end local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord;)V

    .line 746
    .restart local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 747
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 748
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 749
    return-object v0

    .line 743
    :cond_0
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 744
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 379
    sget-boolean v3, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v3, :cond_0

    .line 380
    const-string/jumbo v3, "Choreographer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PostCallback: type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    const-string/jumbo v7, ", action="

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    const-string/jumbo v7, ", token="

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 382
    const-string/jumbo v7, ", delayMillis="

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 382
    const-string/jumbo v7, ",this = "

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 386
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 387
    .local v4, "now":J
    add-long v0, v4, p4

    .line 388
    .local v0, "dueTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 390
    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 391
    invoke-direct {p0, v4, v5}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v6

    .line 378
    return-void

    .line 393
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 394
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 395
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 396
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    .end local v0    # "dueTime":J
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    const/4 v0, 0x0

    .line 753
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 754
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 756
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 752
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 423
    sget-boolean v0, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v0, :cond_0

    .line 424
    const-string/jumbo v0, "Choreographer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RemoveCallbacks: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string/jumbo v2, ", action="

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string/jumbo v2, ", token="

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string/jumbo v2, ",this = "

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 431
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 422
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v8, 0x1

    .line 536
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_1

    .line 537
    iput-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 538
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_3

    .line 539
    sget-boolean v1, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v1, :cond_0

    .line 540
    const-string/jumbo v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling next frame on vsync case 1, this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 551
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 552
    sget-boolean v1, Landroid/view/Choreographer;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 553
    const-string/jumbo v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling next frame on vsync case 2, this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    iget-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v4, v6

    .line 557
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 559
    .local v2, "nextFrameTime":J
    sget-boolean v1, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v1, :cond_4

    .line 560
    const-string/jumbo v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling next frame in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v2, p1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 561
    const-string/jumbo v5, " ms, this = "

    .line 560
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_4
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 564
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 565
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 730
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 287
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 286
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .prologue
    .line 313
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 314
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    sub-long v2, p0, v0

    goto :goto_0
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 20
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 652
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 653
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v11, v11, p1

    .line 654
    const-wide/32 v16, 0xf4240

    div-long v16, v12, v16

    .line 653
    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 655
    .local v5, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v5, :cond_0

    monitor-exit v14

    .line 656
    return-void

    .line 658
    :cond_0
    const/4 v11, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 668
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v0, v11, :cond_2

    .line 669
    sub-long v6, v12, p2

    .line 670
    .local v6, "jitterNanos":J
    const-string/jumbo v11, "jitterNanos"

    long-to-int v15, v6

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v11, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 671
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v16, v16, v18

    cmp-long v11, v6, v16

    if-ltz v11, :cond_2

    .line 672
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v16, v6, v16

    .line 673
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    .line 672
    add-long v8, v16, v18

    .line 674
    .local v8, "lastFrameOffset":J
    sget-boolean v11, Landroid/view/Choreographer;->DEBUG_JANK:Z

    if-eqz v11, :cond_1

    .line 675
    const-string/jumbo v11, "Choreographer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Commit callback delayed by "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    long-to-float v0, v6

    move/from16 v16, v0

    const v17, 0x358637bd    # 1.0E-6f

    mul-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 676
    const-string/jumbo v16, " ms which is more than twice the frame interval of "

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 677
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x358637bd    # 1.0E-6f

    mul-float v16, v16, v17

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 677
    const-string/jumbo v16, " ms!  "

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 678
    const-string/jumbo v16, "Setting frame time to "

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 678
    long-to-float v0, v8

    move/from16 v16, v0

    const v17, 0x358637bd    # 1.0E-6f

    mul-float v16, v16, v17

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 679
    const-string/jumbo v16, " ms in the past."

    .line 675
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mDebugPrintNextFrameTimeDelta:Z

    .line 682
    :cond_1
    sub-long p2, v12, v8

    .line 683
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "jitterNanos":J
    .end local v8    # "lastFrameOffset":J
    :cond_2
    monitor-exit v14

    .line 688
    :try_start_2
    sget-object v11, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v11, v11, p1

    const-wide/16 v14, 0x8

    invoke-static {v14, v15, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 689
    move-object v4, v5

    .local v4, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v4, :cond_4

    .line 690
    sget-boolean v11, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v11, :cond_3

    .line 691
    const-string/jumbo v11, "Choreographer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "RunCallback: type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 692
    const-string/jumbo v15, ", action="

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 692
    iget-object v15, v4, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 692
    const-string/jumbo v15, ", token="

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 692
    iget-object v15, v4, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 693
    const-string/jumbo v15, ", latencyMillis="

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v0, v4, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 691
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 694
    const-string/jumbo v15, ",this = "

    .line 691
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 689
    iget-object v4, v4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 648
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .end local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v12    # "now":J
    :catchall_0
    move-exception v11

    monitor-exit v14

    throw v11

    .line 699
    .restart local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .restart local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local v12    # "now":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 700
    const/4 v11, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 702
    :cond_5
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 703
    .local v10, "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 704
    move-object v5, v10

    .line 705
    if-nez v5, :cond_5

    monitor-exit v14

    .line 707
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 646
    return-void

    .line 699
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_1
    move-exception v11

    monitor-exit v14

    throw v11

    .line 698
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    :catchall_2
    move-exception v11

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 700
    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 702
    :cond_6
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 703
    .restart local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 704
    move-object v5, v10

    .line 705
    if-nez v5, :cond_6

    monitor-exit v14

    .line 707
    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    .line 698
    throw v11

    .line 699
    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v11

    monitor-exit v14

    throw v11
.end method

.method doFrame(JI)V
    .locals 23
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 573
    :try_start_0
    sget-boolean v16, Landroid/view/Choreographer;->DEBUG:Z

    if-eqz v16, :cond_0

    .line 574
    const-string/jumbo v16, "Choreographer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "doFrame:  frameTimeNanos = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",frame = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 575
    const-string/jumbo v19, ",mFrameScheduled = "

    .line 574
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    move/from16 v19, v0

    .line 574
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 575
    const-string/jumbo v19, ",this = "

    .line 574
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    move/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v16, :cond_1

    monitor-exit v17

    .line 578
    return-void

    .line 581
    :cond_1
    :try_start_1
    sget-boolean v16, Landroid/view/Choreographer;->DEBUG_JANK:Z

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/Choreographer;->mDebugPrintNextFrameTimeDelta:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 582
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mDebugPrintNextFrameTimeDelta:Z

    .line 583
    const-string/jumbo v16, "Choreographer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Frame time delta: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v20, v0

    sub-long v20, p1, v20

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x358637bd    # 1.0E-6f

    mul-float v19, v19, v20

    .line 583
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 584
    const-string/jumbo v19, " ms"

    .line 583
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_2
    move-wide/from16 v6, p1

    .line 588
    .local v6, "intendedFrameTimeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 589
    .local v14, "startNanos":J
    sub-long v8, v14, p1

    .line 590
    .local v8, "jitterNanos":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    cmp-long v16, v8, v18

    if-ltz v16, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    div-long v12, v8, v18

    .line 592
    .local v12, "skippedFrames":J
    sget v16, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v12, v18

    if-ltz v16, :cond_3

    .line 593
    const-string/jumbo v16, "Choreographer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipped "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " frames!  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 594
    const-string/jumbo v19, "The application may be doing too much work on its main thread."

    .line 593
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    rem-long v10, v8, v18

    .line 597
    .local v10, "lastFrameOffset":J
    sget-boolean v16, Landroid/view/Choreographer;->DEBUG_JANK:Z

    if-eqz v16, :cond_4

    .line 598
    const-string/jumbo v16, "Choreographer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Missed vsync by "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    long-to-float v0, v8

    move/from16 v19, v0

    const v20, 0x358637bd    # 1.0E-6f

    mul-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " ms "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 599
    const-string/jumbo v19, "which is more than the frame interval of "

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 600
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x358637bd    # 1.0E-6f

    mul-float v19, v19, v20

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 600
    const-string/jumbo v19, " ms!  "

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 601
    const-string/jumbo v19, "Skipping "

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 601
    const-string/jumbo v19, " frames and setting frame "

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 602
    const-string/jumbo v19, "time to "

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 602
    long-to-float v0, v10

    move/from16 v19, v0

    const v20, 0x358637bd    # 1.0E-6f

    mul-float v19, v19, v20

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 602
    const-string/jumbo v19, " ms in the past."

    .line 598
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_4
    sub-long p1, v14, v10

    .line 607
    .end local v10    # "lastFrameOffset":J
    .end local v12    # "skippedFrames":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v18, v0

    cmp-long v16, p1, v18

    if-gez v16, :cond_7

    .line 608
    sget-boolean v16, Landroid/view/Choreographer;->DEBUG_JANK:Z

    if-eqz v16, :cond_6

    .line 609
    const-string/jumbo v16, "Choreographer"

    const-string/jumbo v18, "Frame time appears to be going backwards.  May be due to a previously skipped frame.  Waiting for next vsync."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    .line 613
    return-void

    .line 616
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/view/FrameInfo;->setVsync(JJ)V

    .line 617
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 618
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v17

    .line 622
    :try_start_3
    const-string/jumbo v16, "Choreographer#doFrame"

    const-wide/16 v18, 0x8

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/FrameInfo;->markInputHandlingStart()V

    .line 625
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/FrameInfo;->markAnimationsStart()V

    .line 628
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/FrameInfo;->markPerformTraversalsStart()V

    .line 631
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 633
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doCallbacks(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 635
    const-wide/16 v16, 0x8

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 638
    sget-boolean v16, Landroid/view/Choreographer;->DEBUG_FRAMES:Z

    if-eqz v16, :cond_8

    .line 639
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 640
    .local v4, "endNanos":J
    const-string/jumbo v16, "Choreographer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Frame "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ": Finished, took "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 641
    sub-long v18, v4, v14

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x358637bd    # 1.0E-6f

    mul-float v18, v18, v19

    .line 640
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 641
    const-string/jumbo v18, " ms, latency "

    .line 640
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 642
    sub-long v18, v14, p1

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x358637bd    # 1.0E-6f

    mul-float v18, v18, v19

    .line 640
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 642
    const-string/jumbo v18, " ms, this = "

    .line 640
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v4    # "endNanos":J
    :cond_8
    return-void

    .line 572
    .end local v6    # "intendedFrameTimeNanos":J
    .end local v8    # "jitterNanos":J
    .end local v14    # "startNanos":J
    :catchall_0
    move-exception v16

    monitor-exit v17

    throw v16

    .line 634
    .restart local v6    # "intendedFrameTimeNanos":J
    .restart local v8    # "jitterNanos":J
    .restart local v14    # "startNanos":J
    :catchall_1
    move-exception v16

    .line 635
    const-wide/16 v18, 0x8

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 634
    throw v16
.end method

.method doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    .prologue
    .line 720
    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 721
    :try_start_0
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v2, :cond_0

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 723
    .local v0, "now":J
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "now":J
    :cond_0
    monitor-exit v3

    .line 719
    return-void

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method doScheduleVsync()V
    .locals 2

    .prologue
    .line 712
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 711
    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 330
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-wide v2, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .prologue
    .line 526
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 527
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-nez v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 531
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 348
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 347
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 367
    if-nez p2, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_2
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 366
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 448
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 447
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .prologue
    .line 464
    if-nez p1, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    .line 468
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 463
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 415
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 480
    return-void
.end method
