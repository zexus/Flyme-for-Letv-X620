.class public Lcom/mediatek/perfservice/PerfServiceWrapper;
.super Ljava/lang/Object;
.source "PerfServiceWrapper.java"

# interfaces
.implements Lcom/mediatek/perfservice/IPerfServiceWrapper;


# static fields
.field private static final RENDER_THREAD_UPDATE_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "PerfServiceWrapper"


# instance fields
.field private inited:I

.field private mContext:Landroid/content/Context;

.field private mPreviousTime:J

.field private sService:Lcom/mediatek/perfservice/IPerfService;

.field private setTid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 54
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 56
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 83
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 54
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 56
    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    .line 77
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mContext:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 76
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 64
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    if-nez v1, :cond_0

    .line 65
    const-string/jumbo v1, "mtk-perfservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lcom/mediatek/perfservice/IPerfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/perfservice/IPerfService;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    .line 68
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->inited:I

    .line 63
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v1, "ERR: getService() sService is still null.."

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 463
    const-string/jumbo v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfServiceWrapper] "

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

    .line 462
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 467
    const-string/jumbo v0, "@M_PerfServiceWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[PerfServiceWrapper] ERR: "

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

    .line 466
    return-void
.end method

.method public static native nativeGetPid()I
.end method

.method public static native nativeGetTid()I
.end method


# virtual methods
.method public boostDisable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 101
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnable(I)V
    .locals 3
    .param p1, "scenario"    # I

    .prologue
    .line 89
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 90
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->boostEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeout(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 112
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public boostEnableTimeoutMs(II)V
    .locals 3
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 123
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->boostEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in boostEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpAll()V
    .locals 3

    .prologue
    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 346
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->dumpAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in dumpAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getClusterInfo(II)I
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "id"    # I

    .prologue
    .line 438
    const/4 v1, -0x1

    .line 441
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 442
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->getClusterInfo(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastBoostPid()I
    .locals 4

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 415
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 416
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 417
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2}, Lcom/mediatek/perfservice/IPerfService;->getLastBoostPid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in getLastBoostPid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public levelBoost(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 455
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->levelBoost(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "pid"    # I

    .prologue
    .line 133
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 134
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/perfservice/IPerfService;->notifyAppState(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDisplayType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 402
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 404
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyDisplayType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyDisplayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyFrameUpdate(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 380
    .local v2, "nowTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 382
    iget v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    if-nez v1, :cond_0

    .line 383
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result p1

    .line 384
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->setTid:I

    .line 387
    :cond_0
    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->notifyFrameUpdate(I)V

    .line 391
    :cond_2
    iput-wide v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->mPreviousTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_3
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERR: RemoteException in notifyFrameUpdate:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyUserStatus(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "status"    # I

    .prologue
    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 430
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->notifyUserStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in notifyUserStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePolicy(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 368
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->restorePolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in restorePolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorPid(I)V
    .locals 3
    .param p1, "pid"    # I

    .prologue
    .line 356
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 357
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->setFavorPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in setFavorPid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 306
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userDisable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userDisable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDisableAll()V
    .locals 3

    .prologue
    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 326
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userDisableAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userDisableAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnable(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 239
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 240
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableAsync(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 272
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 273
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userEnableAsync(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeout(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 251
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeout(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutAsync(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 284
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutAsync(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMs(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 262
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userEnableTimeoutMsAsync(II)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 295
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/perfservice/IPerfService;->userEnableTimeoutMsAsync(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userEnableTimeoutMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userGetCapability(I)I
    .locals 4
    .param p1, "cmd"    # I

    .prologue
    .line 185
    const/4 v1, -0x1

    .line 188
    .local v1, "value":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 189
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v2, p1}, Lcom/mediatek/perfservice/IPerfService;->userGetCapability(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERR: RemoteException in userGetCapability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userReg(II)I
    .locals 6
    .param p1, "scn_core"    # I
    .param p2, "scn_freq"    # I

    .prologue
    .line 142
    const/4 v1, -0x1

    .line 145
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 146
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 147
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 148
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userReg(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 154
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERR: RemoteException in userReg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegBigLittle(IIII)I
    .locals 9
    .param p1, "scn_core_big"    # I
    .param p2, "scn_freq_big"    # I
    .param p3, "scn_core_little"    # I
    .param p4, "scn_freq_little"    # I

    .prologue
    .line 158
    const/4 v8, -0x1

    .line 161
    .local v8, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 162
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v5

    .line 163
    .local v5, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v6

    .line 164
    .local v6, "tid":I
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegBigLittle(IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 170
    .end local v5    # "pid":I
    .end local v6    # "tid":I
    :cond_0
    :goto_0
    return v8

    .line 166
    :catch_0
    move-exception v7

    .line 167
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERR: RemoteException in userRegBigLittle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScn()I
    .locals 6

    .prologue
    .line 199
    const/4 v1, -0x1

    .line 202
    .local v1, "handle":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 203
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetPid()I

    move-result v2

    .line 204
    .local v2, "pid":I
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceWrapper;->nativeGetTid()I

    move-result v3

    .line 205
    .local v3, "tid":I
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v4, v2, v3}, Lcom/mediatek/perfservice/IPerfService;->userRegScn(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    .end local v2    # "pid":I
    .end local v3    # "tid":I
    :cond_0
    :goto_0
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ERR: RemoteException in userRegScn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRegScnConfig(IIIIII)V
    .locals 8
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I

    .prologue
    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 218
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/perfservice/IPerfService;->userRegScnConfig(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v7

    .line 221
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ERR: RemoteException in userRegScnConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userResetAll()V
    .locals 3

    .prologue
    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 316
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userResetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userResetAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userRestoreAll()V
    .locals 3

    .prologue
    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 336
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfService;->userRestoreAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userRestoreAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnreg(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 177
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnreg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userUnreg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userUnregScn(I)V
    .locals 3
    .param p1, "handle"    # I

    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceWrapper;->init()V

    .line 229
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceWrapper;->sService:Lcom/mediatek/perfservice/IPerfService;

    invoke-interface {v1, p1}, Lcom/mediatek/perfservice/IPerfService;->userUnregScn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR: RemoteException in userUnregScn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
