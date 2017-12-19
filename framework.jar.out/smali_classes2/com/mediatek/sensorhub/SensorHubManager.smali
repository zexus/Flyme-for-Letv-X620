.class public Lcom/mediatek/sensorhub/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Lcom/mediatek/sensorhub/ISensorHubManager;


# static fields
.field public static EXTRA_REQUEST_ID:Ljava/lang/String; = null

.field private static final LOG:Z

.field public static final REQUEST_ERROR_CONTEXT_INVALID:I = -0x3

.field public static final REQUEST_ERROR_NO_RESOURCE:I = -0x2

.field public static final REQUEST_ERROR_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field public static UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

.field public static WAKE_DEVICE_SENSORHUB:Ljava/lang/String;


# instance fields
.field private mContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/mediatek/sensorhub/ISensorHubService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 250
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
    sput-boolean v0, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    .line 261
    const-string/jumbo v0, "com.mediatek.permission.WAKE_DEVICE_SENSORHUB"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->WAKE_DEVICE_SENSORHUB:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "com.mediatek.permission.UPDATE_SENSORHUB_ACTION"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->UPDATE_SENSORHUB_ACTION:Ljava/lang/String;

    .line 273
    const-string/jumbo v0, "com.mediatek.sensorhub.EXTRA_REQUEST_ID"

    sput-object v0, Lcom/mediatek/sensorhub/SensorHubManager;->EXTRA_REQUEST_ID:Ljava/lang/String;

    .line 247
    return-void

    .line 250
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/sensorhub/ISensorHubService;)V
    .locals 1
    .param p1, "service"    # Lcom/mediatek/sensorhub/ISensorHubService;

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mGestureContextList:Ljava/util/List;

    .line 298
    iput-object p1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    .line 297
    return-void
.end method


# virtual methods
.method public addConfigurableGesture(II)V
    .locals 4
    .param p1, "cgesture"    # I
    .param p2, "ggesture"    # I

    .prologue
    .line 516
    iget-object v1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v1, :cond_1

    .line 518
    :try_start_0
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 519
    const-string/jumbo v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addConGesture: cgesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ggesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->addConGesture(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addConGesture: RemoteException! cgesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ggesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelAction(I)Z
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "success":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->cancelAction(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    .end local v1    # "success":Z
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 444
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAction: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string/jumbo v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    return v1

    .line 439
    .restart local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelAction: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "success":Z
    :cond_2
    const-string/jumbo v2, "failed!"

    goto :goto_1
.end method

.method public cancelConfigurableGesture(II)V
    .locals 4
    .param p1, "cgesture"    # I
    .param p2, "ggesture"    # I

    .prologue
    .line 548
    iget-object v1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v1, :cond_1

    .line 550
    :try_start_0
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 551
    const-string/jumbo v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelConGesture: cgesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ggesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->cancelConGesture(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelConGesture: RemoteException! cgesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ggesture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableGestureWakeup(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1}, Lcom/mediatek/sensorhub/ISensorHubService;->enableGestureWakeup(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 584
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_1

    .line 585
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableTouchGestureWakeup: enable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    if-eqz v1, :cond_2

    const-string/jumbo v2, " succeed."

    .line 585
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 580
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableTouchGestureWakeup: RemoteException! enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_2
    const-string/jumbo v2, " failed!"

    goto :goto_1
.end method

.method public getCGestureList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubManager;->getContextList()Ljava/util/List;

    move-result-object v2

    .line 460
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v3, 0x3ea

    .line 461
    const/16 v4, 0x3ec

    .line 462
    const/16 v5, 0x3ed

    .line 465
    const/16 v6, 0x3f4

    .line 459
    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v0

    .line 467
    .local v0, "cgesturessdata":[I
    const/4 v1, 0x0

    .line 457
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    .line 467
    if-ge v1, v3, :cond_2

    .line 468
    if-eqz v2, :cond_1

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mGestureContextList:Ljava/util/List;

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    sget-boolean v3, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cgesture contexts["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    sget-boolean v3, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SensorHubManager"

    const-string/jumbo v4, "cgesture list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 475
    :cond_2
    iget-object v3, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mGestureContextList:Ljava/util/List;

    return-object v3
.end method

.method public getContextList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_0

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2}, Lcom/mediatek/sensorhub/ISensorHubService;->getContextList()Lcom/mediatek/sensorhub/ParcelableListInteger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/sensorhub/ParcelableListInteger;->toList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mContextList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    :cond_1
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_2

    .line 320
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContextList: list="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    return-object v1

    .line 312
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    const-string/jumbo v3, "getContextList: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isCGestureSupported(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubManager;->getCGestureList()Ljava/util/List;

    move-result-object v0

    .line 489
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 490
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SensorHubManager"

    const-string/jumbo v2, "isCGestureSupported: null context list!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 493
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isContextSupported(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/mediatek/sensorhub/SensorHubManager;->getContextList()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 338
    sget-boolean v1, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SensorHubManager"

    const-string/jumbo v2, "isContextSupported: null context list!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 341
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    .locals 5
    .param p1, "condition"    # Lcom/mediatek/sensorhub/Condition;
    .param p2, "action"    # Lcom/mediatek/sensorhub/Action;

    .prologue
    .line 369
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 370
    :cond_0
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: failed! condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v2, -0x1

    return v2

    .line 373
    :cond_1
    const/4 v1, -0x1

    .line 374
    .local v1, "rid":I
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_2

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->requestAction(Lcom/mediatek/sensorhub/Condition;Lcom/mediatek/sensorhub/Action;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 381
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_3

    .line 382
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestAction: condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", action["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isRepeatable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, ","

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    invoke-virtual {p2}, Lcom/mediatek/sensorhub/Action;->isOnConditionChanged()Z

    move-result v4

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v4, "], rid="

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    const-string/jumbo v3, "requestAction: RemoteException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "condition"    # Lcom/mediatek/sensorhub/Condition;

    .prologue
    const/4 v5, 0x0

    .line 400
    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 401
    :cond_0
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: failed! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return v5

    .line 405
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, "result":Z
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    if-eqz v2, :cond_2

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/sensorhub/SensorHubManager;->mService:Lcom/mediatek/sensorhub/ISensorHubService;

    invoke-interface {v2, p1, p2}, Lcom/mediatek/sensorhub/ISensorHubService;->updateCondition(ILcom/mediatek/sensorhub/Condition;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    .end local v1    # "result":Z
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/mediatek/sensorhub/SensorHubManager;->LOG:Z

    if-eqz v2, :cond_3

    .line 414
    const-string/jumbo v3, "SensorHubManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: rid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", condition="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string/jumbo v2, " succeed."

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3
    return v1

    .line 409
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SensorHubManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCondition: RemoteException! rid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Z
    :cond_4
    const-string/jumbo v2, " failed!"

    goto :goto_1
.end method
