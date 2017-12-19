.class Lcom/letv/tracker/agnes/ReportManager;
.super Ljava/lang/Object;
.source "ReportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    }
.end annotation


# static fields
.field private static final CACHE_MSG:Ljava/lang/String; = "Has not connected to service yet, cache it : "

.field private static final REP_FAILED:Ljava/lang/String; = "Report failed "

.field private static final TAG:Ljava/lang/String; = "AgnesClient_ReportManager"

.field protected static isConnected:Z

.field private static sInstance:Lcom/letv/tracker/agnes/ReportManager;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private ext:I

.field private intent:Landroid/content/Intent;

.field private isBind:Z

.field private listener:Lcom/letv/agnes/service/beans/ISEMSListener$Stub;

.field private mContext:Landroid/content/Context;

.field private mIReportService:Lcom/letv/agnes/service/beans/IReportService;

.field private msgQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/letv/tracker/agnes/ReportManager$SavedMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    .line 62
    new-instance v0, Lcom/letv/tracker/agnes/ReportManager$1;

    invoke-direct {v0, p0}, Lcom/letv/tracker/agnes/ReportManager$1;-><init>(Lcom/letv/tracker/agnes/ReportManager;)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->conn:Landroid/content/ServiceConnection;

    .line 93
    new-instance v0, Lcom/letv/tracker/agnes/ReportManager$2;

    invoke-direct {v0, p0}, Lcom/letv/tracker/agnes/ReportManager$2;-><init>(Lcom/letv/tracker/agnes/ReportManager;)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->listener:Lcom/letv/agnes/service/beans/ISEMSListener$Stub;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/letv/tracker/agnes/ReportManager;)Lcom/letv/agnes/service/beans/IReportService;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/letv/tracker/agnes/ReportManager;Lcom/letv/agnes/service/beans/IReportService;)Lcom/letv/agnes/service/beans/IReportService;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/letv/tracker/agnes/ReportManager;)Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->listener:Lcom/letv/agnes/service/beans/ISEMSListener$Stub;

    return-object v0
.end method

.method static synthetic access$202(Lcom/letv/tracker/agnes/ReportManager;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    return p1
.end method

.method static synthetic access$302(Lcom/letv/tracker/agnes/ReportManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method private connectToService()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 114
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "mContext is null"

    .line 124
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_2

    .line 129
    :goto_1
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/letv/tracker/agnes/ReportManager;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.letv.agnes.REPORT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "com.letv.agnes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Cannot bind to agnes service!"

    .line 127
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getExt()I
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 135
    :goto_0
    iget v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    return v0

    .line 133
    :cond_0
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Agnes;->getConfig()Lcom/letv/tracker/agnes/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/tracker/agnes/Configuration;->getExt()I

    move-result v0

    iput v0, p0, Lcom/letv/tracker/agnes/ReportManager;->ext:I

    goto :goto_0
.end method

.method static getInstance()Lcom/letv/tracker/agnes/ReportManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    sget-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/letv/tracker/agnes/ReportManager;

    invoke-direct {v0}, Lcom/letv/tracker/agnes/ReportManager;-><init>()V

    sput-object v0, Lcom/letv/tracker/agnes/ReportManager;->sInstance:Lcom/letv/tracker/agnes/ReportManager;

    goto :goto_0
.end method


# virtual methods
.method public onRemoveLog(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 363
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 367
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 369
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-interface {v0, p1}, Lcom/letv/agnes/service/beans/IReportService;->removeLog(Ljava/lang/String;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report remove log : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :goto_1
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 368
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 375
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 374
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 386
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 381
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 383
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 384
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 385
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IApp;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 195
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 201
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportApp(ILcom/letv/agnes/service/beans/IApp;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IApp;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_1
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 200
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 206
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 213
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 215
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 216
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 217
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 227
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 229
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportEvent(ILcom/letv/agnes/service/beans/IEvent;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IEvent;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :goto_1
    return-void

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 228
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 234
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 241
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 243
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 244
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 245
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/ILogFile;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 173
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportLog(ILcom/letv/agnes/service/beans/ILogFile;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report log : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ILogFile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    :goto_1
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 172
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 178
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 190
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 185
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 187
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 188
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 189
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IMusicPlay;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 279
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 283
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 285
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportMusicPlay(ILcom/letv/agnes/service/beans/IMusicPlay;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report music play : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IMusicPlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :goto_1
    return-void

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 284
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 291
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 290
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 302
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 297
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 299
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 300
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 301
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IResend;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 335
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 341
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportResend(ILcom/letv/agnes/service/beans/IResend;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report resend : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IResend;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    :goto_1
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 340
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 346
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 358
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 353
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 355
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 356
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 357
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/ISEMSError;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 145
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportError(ILcom/letv/agnes/service/beans/ISEMSError;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/ISEMSError;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :goto_1
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 144
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 150
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 157
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 159
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 160
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 161
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IVideoPlay;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 251
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 255
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 257
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportVideoPlay(ILcom/letv/agnes/service/beans/IVideoPlay;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report video play : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IVideoPlay;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_1
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 256
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 262
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 274
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 269
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 271
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 272
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 273
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public onReport(Lcom/letv/agnes/service/beans/IWidget;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 307
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    iget-boolean v0, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    if-eqz v0, :cond_1

    .line 313
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-eqz v0, :cond_2

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->getExt()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/letv/agnes/service/beans/IReportService;->reportWidget(ILcom/letv/agnes/service/beans/IWidget;)V

    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Report widget : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/letv/agnes/service/beans/IWidget;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :goto_1
    return-void

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AgnesClient_ReportManager"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Report failed "

    .line 312
    invoke-static {v0, v1, v2}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Has not connected to service yet, cache it : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 318
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 330
    :catch_1
    move-exception v0

    const-string/jumbo v1, "AgnesClient_ReportManager"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 325
    invoke-static {v1, v2, v3, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    iput-boolean v4, p0, Lcom/letv/tracker/agnes/ReportManager;->isBind:Z

    .line 327
    sput-boolean v4, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    .line 328
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->intent:Landroid/content/Intent;

    .line 329
    iput-object v5, p0, Lcom/letv/tracker/agnes/ReportManager;->mIReportService:Lcom/letv/agnes/service/beans/IReportService;

    goto :goto_1
.end method

.method public proccessMsgInQueue()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 391
    :goto_0
    sget-boolean v0, Lcom/letv/tracker/agnes/ReportManager;->isConnected:Z

    if-nez v0, :cond_1

    .line 438
    :cond_0
    return-void

    .line 394
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/letv/tracker/agnes/ReportManager;->msgQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_1
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getType()I

    move-result v2

    const-string/jumbo v3, "AgnesClient_ReportManager"

    const-string/jumbo v4, ""

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Process msg in cached queue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/letv/tracker/util/TrackerLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/ISEMSError;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/ISEMSError;)V

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    const-string/jumbo v2, "AgnesClient_ReportManager"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "Failed to get message from cached queue!"

    .line 396
    invoke-static {v2, v3, v4, v0}, Lcom/letv/tracker/util/TrackerLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 410
    :pswitch_1
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/ILogFile;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/ILogFile;)V

    goto :goto_0

    .line 413
    :pswitch_2
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IApp;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IApp;)V

    goto :goto_0

    .line 416
    :pswitch_3
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IEvent;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IEvent;)V

    goto :goto_0

    .line 419
    :pswitch_4
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IVideoPlay;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IVideoPlay;)V

    goto :goto_0

    .line 422
    :pswitch_5
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IMusicPlay;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IMusicPlay;)V

    goto/16 :goto_0

    .line 425
    :pswitch_6
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IWidget;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IWidget;)V

    goto/16 :goto_0

    .line 428
    :pswitch_7
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/letv/agnes/service/beans/IResend;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onReport(Lcom/letv/agnes/service/beans/IResend;)V

    goto/16 :goto_0

    .line 431
    :pswitch_8
    invoke-virtual {v0}, Lcom/letv/tracker/agnes/ReportManager$SavedMsg;->getMsg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/letv/tracker/agnes/ReportManager;->onRemoveLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/letv/tracker/agnes/ReportManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/letv/tracker/agnes/ReportManager;->connectToService()V

    .line 110
    return-void
.end method
