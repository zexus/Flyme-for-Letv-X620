.class public Lcom/mediatek/perfservice/PerfServiceManager;
.super Ljava/lang/Object;
.source "PerfServiceManager.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;,
        Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
    }
.end annotation


# static fields
.field private static final HEAP_UTILIZATION_DURING_FRAME_UPDATE:F = 0.5f

.field private static final RENDER_AWARE_DURATION_MS:I = 0xbb8

.field private static final RENDER_BIT:I = 0x800000

.field private static final TAG:Ljava/lang/String; = "PerfServiceManager"

.field private static final UI_UPDATE_DURATION_MS:I = 0x12c


# instance fields
.field private bDuringTouch:Z

.field private bRenderAwareValid:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultUtilization:F

.field private mDisplayType:I

.field private mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRuntime:Ldalvik/system/VMRuntime;

.field final mTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/perfservice/PerfServiceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    return v0
.end method

.method static synthetic -get2(Lcom/mediatek/perfservice/PerfServiceManager;)F
    .locals 1

    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mContext:Landroid/content/Context;

    .line 121
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PerfServiceManager"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 123
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 124
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-direct {v1, p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    .line 127
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    .line 128
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 129
    iput-boolean v4, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 130
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 131
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    .line 132
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDefaultUtilization:F

    .line 133
    const-string/jumbo v1, "Created and started PerfService thread"

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 729
    const-string/jumbo v0, "@M_PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string/jumbo v0, "@M_PerfServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfService] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public static native nativePerfBoostDisable(I)I
.end method

.method public static native nativePerfBoostEnable(I)I
.end method

.method public static native nativePerfDumpAll()I
.end method

.method public static native nativePerfGetClusterInfo(II)I
.end method

.method public static native nativePerfGetLastBoostPid()I
.end method

.method public static native nativePerfLevelBoost(I)I
.end method

.method public static native nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native nativePerfNotifyDisplayType(I)I
.end method

.method public static native nativePerfNotifyUserStatus(II)I
.end method

.method public static native nativePerfRestorePolicy(I)I
.end method

.method public static native nativePerfSetFavorPid(I)I
.end method

.method public static native nativePerfUserGetCapability(I)I
.end method

.method public static native nativePerfUserRegScn(II)I
.end method

.method public static native nativePerfUserRegScnConfig(IIIIII)I
.end method

.method public static native nativePerfUserScnDisable(I)I
.end method

.method public static native nativePerfUserScnDisableAll()I
.end method

.method public static native nativePerfUserScnEnable(I)I
.end method

.method public static native nativePerfUserScnReg(IIII)I
.end method

.method public static native nativePerfUserScnRegBigLittle(IIIIII)I
.end method

.method public static native nativePerfUserScnResetAll()I
.end method

.method public static native nativePerfUserScnRestoreAll()I
.end method

.method public static native nativePerfUserScnUnreg(I)I
.end method

.method public static native nativePerfUserUnregScn(I)I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 156
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchDisable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 162
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 154
    return-void
.end method

.method public boostEnable(I)V
    .locals 2
    .param p1, "scenario"    # I

    .prologue
    .line 142
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 150
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 151
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    return-void
.end method

.method public boostEnableTimeout(II)V
    .locals 2
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 170
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 176
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 179
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 180
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 168
    return-void
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    const/4 v2, 0x3

    .line 185
    if-ne v2, p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager;->touchEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 191
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 192
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 193
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 194
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 195
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method public dumpAll()V
    .locals 0

    .prologue
    .line 318
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfDumpAll()I

    .line 317
    return-void
.end method

.method public getClusterInfo(II)I
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "id"    # I

    .prologue
    .line 371
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetClusterInfo(II)I

    move-result v0

    return v0
.end method

.method public getLastBoostPid()I
    .locals 1

    .prologue
    .line 361
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfGetLastBoostPid()I

    move-result v0

    return v0
.end method

.method public levelBoost(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 401
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfLevelBoost(I)I

    .line 400
    return-void
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 201
    .local v6, "msg":Landroid/os/Message;
    const/4 v0, 0x4

    iput v0, v6, Landroid/os/Message;->what:I

    .line 202
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;-><init>(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public notifyDisplayType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDisplayType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 353
    iput p1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    .line 354
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyDisplayType(I)I

    .line 351
    return-void
.end method

.method public notifyFrameUpdate(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x5

    .line 334
    if-eqz p1, :cond_0

    .line 335
    const/high16 v1, 0x800000

    or-int/2addr v1, p1

    invoke-static {v1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    .line 337
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    if-nez v1, :cond_1

    .line 338
    return-void

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 344
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 346
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 347
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 348
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-void
.end method

.method public notifyUserStatus(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUserStatus - type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public restorePolicy(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 330
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfRestorePolicy(I)I

    .line 329
    return-void
.end method

.method public setFavorPid(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 324
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 325
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 321
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "systemReady, register ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public touchDisable()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 387
    const/4 v0, 0x4

    invoke-static {v0, v2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 389
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 391
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 393
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 394
    return v1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public touchEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    invoke-static {v0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyUserStatus(II)I

    .line 377
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mDisplayType:I

    if-nez v0, :cond_0

    .line 378
    return v2

    .line 380
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bDuringTouch:Z

    .line 381
    iput-boolean v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->bRenderAwareValid:Z

    .line 382
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V

    .line 383
    return v1
.end method

.method public userDisable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 291
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 293
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 294
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 295
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 296
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void
.end method

.method public userDisableAll()V
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    return-void
.end method

.method public userEnable(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 243
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public userEnableAsync(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 262
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 264
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 265
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 267
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method public userEnableTimeout(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 249
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 250
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;II)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userEnableTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public userEnableTimeoutAsync(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 271
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 273
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->what:I

    .line 275
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 276
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 277
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public userEnableTimeoutMs(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 256
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 257
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap1(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;II)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userEnableTimeoutMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager;->log(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public userEnableTimeoutMsAsync(II)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 281
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-static {v1, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->-wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 284
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 285
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 286
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public userGetCapability(I)I
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 223
    invoke-static {p1}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserGetCapability(I)I

    move-result v0

    return v0
.end method

.method public userReg(IIII)I
    .locals 1
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I
    .param p3, "pid"    # I
    .param p4, "tid"    # I

    .prologue
    .line 207
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnReg(IIII)I

    move-result v0

    return v0
.end method

.method public userRegBigLittle(IIIIII)I
    .locals 1
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I
    .param p5, "pid"    # I
    .param p6, "tid"    # I

    .prologue
    .line 211
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRegBigLittle(IIIIII)I

    move-result v0

    return v0
.end method

.method public userRegScn(II)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 227
    invoke-static {p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScn(II)I

    move-result v0

    return v0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 231
    invoke-static/range {p1 .. p6}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserRegScnConfig(IIIIII)I

    .line 230
    return-void
.end method

.method public userResetAll()V
    .locals 2

    .prologue
    .line 300
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method

.method public userRestoreAll()V
    .locals 2

    .prologue
    .line 312
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void
.end method

.method public userUnreg(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 216
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 218
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 219
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method

.method public userUnregScn(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager;->mHandler:Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;

    invoke-virtual {v1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 237
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 238
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    return-void
.end method
