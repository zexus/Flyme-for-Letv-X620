.class public Lcom/letv/tracker/msg/bean/SEMSError;
.super Ljava/lang/Object;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;,
        Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;,
        Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;,
        Lcom/letv/tracker/msg/bean/SEMSError$Type;
    }
.end annotation


# static fields
.field private static final REMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private errorId:Lcom/letv/tracker/msg/bean/ID;

.field private errorType:Lcom/letv/tracker/msg/bean/SEMSError$Type;

.field private process:Ljava/lang/String;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private userContact:Ljava/lang/String;

.field private userDes:Ljava/lang/String;

.field private userFreq:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

.field private userMail:Ljava/lang/String;

.field private userSource:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field private userType:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$1;

    invoke-direct {v0}, Lcom/letv/tracker/msg/bean/SEMSError$1;-><init>()V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError;->REMAINS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/letv/tracker/msg/bean/ID;)V
    .locals 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 202
    iput-wide v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->time:J

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    .line 268
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorId:Lcom/letv/tracker/msg/bean/ID;

    .line 269
    return-void
.end method

.method public constructor <init>(Lcom/letv/tracker/msg/bean/SEMSError$Type;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 202
    iput-wide v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->time:J

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    .line 264
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorType:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    .line 265
    return-void
.end method

.method private generateErrId()V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/letv/tracker/msg/bean/ID;

    invoke-direct {v1, v0}, Lcom/letv/tracker/msg/bean/ID;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorId:Lcom/letv/tracker/msg/bean/ID;

    .line 289
    return-void
.end method


# virtual methods
.method public addProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 486
    sget-object v0, Lcom/letv/tracker/msg/bean/SEMSError;->REMAINS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    if-nez p2, :cond_2

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    if-eqz p2, :cond_0

    .line 488
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public buildMessage()Lcom/letv/agnes/service/beans/ISEMSError;
    .locals 4

    .prologue
    .line 502
    new-instance v0, Lcom/letv/agnes/service/beans/ISEMSError;

    invoke-direct {v0}, Lcom/letv/agnes/service/beans/ISEMSError;-><init>()V

    .line 503
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/letv/agnes/service/beans/ISEMSError;->setTime(J)V

    .line 504
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getErrorId()Lcom/letv/tracker/msg/bean/ID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/tracker/msg/bean/ID;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setId(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getErrorType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setType(I)V

    .line 506
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setDes(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getProcess()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setProc(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUType(I)V

    .line 509
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUSource(I)V

    .line 510
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserFreq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUFreq(I)V

    .line 511
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUDes(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUContact(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->getUserMail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setUMail(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    :goto_0
    return-object v0

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/letv/agnes/service/beans/ISEMSError;->setProps(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 335
    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorId()Lcom/letv/tracker/msg/bean/ID;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorId:Lcom/letv/tracker/msg/bean/ID;

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorId:Lcom/letv/tracker/msg/bean/ID;

    return-object v0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/letv/tracker/msg/bean/SEMSError;->generateErrId()V

    goto :goto_0
.end method

.method public getErrorType()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorType:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    if-nez v0, :cond_0

    const/16 v0, -0x64

    .line 312
    return v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->errorType:Lcom/letv/tracker/msg/bean/SEMSError$Type;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/SEMSError$Type;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->process:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 358
    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getProps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    return-object v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->time:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 279
    :cond_0
    iget-wide v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->time:J

    return-wide v0
.end method

.method public getUserContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userContact:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userDes:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFreq()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userFreq:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    if-nez v0, :cond_0

    const/16 v0, -0x64

    .line 424
    return v0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userFreq:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;->getFreqCode()I

    move-result v0

    return v0
.end method

.method public getUserMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userMail:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSource()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userSource:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    if-nez v0, :cond_0

    const/16 v0, -0x64

    .line 402
    return v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userSource:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->getSrcCode()I

    move-result v0

    return v0
.end method

.method public getUserType()I
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userType:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    if-nez v0, :cond_0

    const/16 v0, -0x64

    .line 380
    return v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userType:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    invoke-virtual {v0}, Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 476
    :cond_0
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->appName:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/letv/tracker/msg/bean/SEMSError;->props:Ljava/util/Map;

    const-string/jumbo v1, "appName"

    iget-object v2, p0, Lcom/letv/tracker/msg/bean/SEMSError;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->description:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->process:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setTime(J)V
    .locals 1

    .prologue
    .line 272
    iput-wide p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->time:J

    .line 273
    return-void
.end method

.method public setUserContact(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userContact:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public setUserDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userDes:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setUserFreq(Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userFreq:Lcom/letv/tracker/msg/bean/SEMSError$FreqByUser;

    .line 413
    return-void
.end method

.method public setUserMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userMail:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setUserSource(Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userSource:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 391
    return-void
.end method

.method public setUserType(Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/letv/tracker/msg/bean/SEMSError;->userType:Lcom/letv/tracker/msg/bean/SEMSError$TypeByUser;

    .line 369
    return-void
.end method
