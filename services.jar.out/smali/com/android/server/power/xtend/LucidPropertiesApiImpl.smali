.class public Lcom/android/server/power/xtend/LucidPropertiesApiImpl;
.super Ljava/lang/Object;
.source "LucidPropertiesApiImpl.java"

# interfaces
.implements Lcom/android/server/power/xtend/LucidPropertiesAPI;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Xtend.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "libString":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 461
    .local v2, "isInstalled":Z
    if-eqz v2, :cond_1

    .line 463
    invoke-direct {p0, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->getMode(Ljava/lang/String;)Z

    move-result v0

    .line 464
    .local v0, "AutoMode":Z
    invoke-direct {p0, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->getParam(Ljava/lang/String;)I

    move-result v4

    .line 466
    .local v4, "param":I
    if-eqz v0, :cond_0

    .line 467
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->AUTOMATIC_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 472
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 458
    :goto_1
    :pswitch_0
    return-void

    .line 469
    :cond_0
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;->MANUAL_MODE:Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    goto :goto_0

    .line 474
    :pswitch_1
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NO_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    .line 477
    :pswitch_2
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->NORMAL_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    .line 480
    :pswitch_3
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->HIGH_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    .line 483
    :pswitch_4
    sget-object v5, Lcom/android/server/power/xtend/ModulePropertiesInfo$State;->ULTRA_SAVE:Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    invoke-virtual {p1, v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    goto :goto_1

    .line 489
    .end local v0    # "AutoMode":Z
    .end local v4    # "param":I
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 490
    .local v1, "e":Ljava/io/FileNotFoundException;
    throw v1

    .line 472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private SetModuleToManualMode(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v4

    .line 434
    .local v4, "isTestApplicationInstalled":Z
    if-eqz v4, :cond_0

    .line 435
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 436
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 438
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Xtend.so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "productLib":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 440
    .local v3, "isInstalled":Z
    if-eqz v3, :cond_2

    .line 442
    if-eqz p2, :cond_1

    const/4 v6, 0x2

    if-eq v6, p2, :cond_1

    const/4 v6, 0x3

    if-eq v6, p2, :cond_1

    const/4 v6, 0x4

    if-eq v6, p2, :cond_1

    .line 443
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    .line 444
    .local v2, "e":Ljava/security/InvalidParameterException;
    throw v2

    .line 446
    .end local v2    # "e":Ljava/security/InvalidParameterException;
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setParam(Ljava/lang/String;I)V

    .line 432
    return-void

    .line 450
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 451
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private SetModuleXtendToOff(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v3

    .line 360
    .local v3, "isTestApplicationInstalled":Z
    if-eqz v3, :cond_0

    .line 361
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 362
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 364
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lib"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Xtend.so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 365
    .local v2, "isInstalled":Z
    if-eqz v2, :cond_1

    .line 366
    invoke-direct {p0, p1, v6}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    .line 367
    invoke-direct {p0, p1, v6}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setParam(Ljava/lang/String;I)V

    .line 358
    return-void

    .line 370
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 371
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private SetProductToAutomaticMode(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v3

    .line 416
    .local v3, "isTestApplicationInstalled":Z
    if-eqz v3, :cond_0

    .line 417
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 418
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 420
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Xtend.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "productLib":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 422
    .local v2, "isInstalled":Z
    if-eqz v2, :cond_1

    .line 423
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->setMode(Ljava/lang/String;Z)V

    .line 414
    return-void

    .line 426
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 427
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method private getMode(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.lucid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Xtend.automode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "propName":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "valStr":Ljava/lang/String;
    const-string/jumbo v2, "1"

    if-ne v1, v2, :cond_0

    .line 409
    const/4 v2, 0x1

    return v2

    .line 411
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private getParam(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.lucid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Xtend.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "propName":Ljava/lang/String;
    const-string/jumbo v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "valStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    return v3
.end method

.method private isSoInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "SoName"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method private setMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isAuto"    # Z

    .prologue
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.lucid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Xtend.automode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "propName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 386
    .local v1, "propValue":I
    if-eqz p2, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 388
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private setParam(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # I

    .prologue
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.lucid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Xtend.state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "propName":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method


# virtual methods
.method public GetGameXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v0, "Game"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public GetNavXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 317
    const-string/jumbo v0, "Nav"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public GetPowerXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)Z
    .locals 19
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v14

    .line 134
    .local v14, "isTestApplicationInstalled":Z
    if-eqz v14, :cond_0

    .line 135
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    .line 136
    .local v9, "e":Ljava/lang/IllegalStateException;
    throw v9

    .line 138
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string/jumbo v17, "libGameXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v10

    .line 139
    .local v10, "isGameInstalled":Z
    const-string/jumbo v17, "libWebXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v16

    .line 140
    .local v16, "isWebInstalled":Z
    const-string/jumbo v17, "libNavXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v11

    .line 141
    .local v11, "isNavInstalled":Z
    const-string/jumbo v17, "libSocialXtend.so"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v13

    .line 142
    .local v13, "isSocialInstalled":Z
    if-nez v10, :cond_7

    if-nez v16, :cond_7

    if-nez v11, :cond_7

    move v12, v13

    .line 143
    :goto_0
    const/4 v7, 0x0

    .line 144
    .local v7, "areAllEquals":Z
    if-eqz v12, :cond_11

    .line 146
    :try_start_0
    new-instance v2, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .line 147
    .local v2, "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v10, :cond_1

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetGameXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    .line 150
    :cond_1
    new-instance v6, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .line 151
    .local v6, "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v16, :cond_2

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetWebXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    .line 154
    :cond_2
    new-instance v3, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .line 155
    .local v3, "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v11, :cond_3

    .line 156
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetNavXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    .line 158
    :cond_3
    new-instance v4, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .line 159
    .local v4, "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    if-eqz v13, :cond_4

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetSocialXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V

    .line 163
    :cond_4
    new-instance v5, Lcom/android/server/power/xtend/ModulePropertiesInfo;

    invoke-direct {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;-><init>()V

    .line 164
    .local v5, "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    const/4 v15, 0x0

    .line 166
    .local v15, "isTotalMPIinited":Z
    if-eqz v10, :cond_5

    .line 167
    invoke-virtual {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 168
    invoke-virtual {v2}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    .line 169
    const/4 v15, 0x1

    .line 170
    const/4 v7, 0x1

    .line 173
    :cond_5
    if-eqz v16, :cond_9

    .line 174
    if-eqz v15, :cond_8

    .line 175
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 176
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 177
    :cond_6
    const/4 v7, 0x0

    .line 178
    return v7

    .line 142
    .end local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v7    # "areAllEquals":Z
    .end local v15    # "isTotalMPIinited":Z
    :cond_7
    const/4 v12, 0x1

    .local v12, "isPowerXtendProductInstalled":Z
    goto :goto_0

    .line 181
    .end local v12    # "isPowerXtendProductInstalled":Z
    .restart local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .restart local v7    # "areAllEquals":Z
    .restart local v15    # "isTotalMPIinited":Z
    :cond_8
    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 182
    invoke-virtual {v6}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    .line 183
    const/4 v15, 0x1

    .line 184
    const/4 v7, 0x1

    .line 188
    :cond_9
    if-eqz v11, :cond_c

    .line 189
    if-eqz v15, :cond_b

    .line 190
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 191
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 192
    :cond_a
    const/4 v7, 0x0

    .line 193
    return v7

    .line 196
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 197
    invoke-virtual {v3}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    .line 198
    const/4 v15, 0x1

    .line 199
    const/4 v7, 0x1

    .line 203
    :cond_c
    if-eqz v13, :cond_f

    .line 204
    if-eqz v15, :cond_e

    .line 205
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getModeValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 206
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v17

    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getStateValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 207
    :cond_d
    const/4 v7, 0x0

    .line 208
    return v7

    .line 211
    :cond_e
    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 212
    invoke-virtual {v4}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V

    .line 213
    const/4 v15, 0x1

    .line 214
    const/4 v7, 0x1

    .line 218
    :cond_f
    if-eqz v15, :cond_10

    if-eqz v7, :cond_10

    .line 219
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getMode()Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setMode(Lcom/android/server/power/xtend/ModulePropertiesInfo$Mode;)V

    .line 220
    invoke-virtual {v5}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->getState()Lcom/android/server/power/xtend/ModulePropertiesInfo$State;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/power/xtend/ModulePropertiesInfo;->setState(Lcom/android/server/power/xtend/ModulePropertiesInfo$State;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v2    # "GameMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v3    # "NavMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v4    # "SocialMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v5    # "TotalMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v6    # "WebMPI":Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .end local v15    # "isTotalMPIinited":Z
    :cond_10
    :goto_1
    return v7

    .line 230
    :cond_11
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-direct {v8}, Ljava/io/FileNotFoundException;-><init>()V

    .line 231
    .local v8, "e":Ljava/io/FileNotFoundException;
    throw v8

    .line 223
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v9

    .restart local v9    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 225
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1
.end method

.method public GetSocialXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 323
    const-string/jumbo v0, "Social"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public GetWebXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .locals 1
    .param p1, "mpi"    # Lcom/android/server/power/xtend/ModulePropertiesInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 311
    const-string/jumbo v0, "Web"

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->GetModuleConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public SetGameXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 259
    const-string/jumbo v0, "Game"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public SetGameXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 280
    const-string/jumbo v0, "Game"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method public SetGameXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 239
    const-string/jumbo v0, "Game"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public SetNavXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 269
    const-string/jumbo v0, "Nav"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public SetNavXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 292
    const-string/jumbo v0, "Nav"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method public SetNavXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 249
    const-string/jumbo v0, "Nav"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public SetPowerXtendToAutomaticMode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v6

    .line 54
    .local v6, "isTestApplicationInstalled":Z
    if-eqz v6, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 56
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 58
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string/jumbo v8, "libGameXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 59
    .local v2, "isGameInstalled":Z
    const-string/jumbo v8, "libWebXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v7

    .line 60
    .local v7, "isWebInstalled":Z
    const-string/jumbo v8, "libNavXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 61
    .local v3, "isNavInstalled":Z
    const-string/jumbo v8, "libSocialXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v5

    .line 62
    .local v5, "isSocialInstalled":Z
    if-nez v2, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    move v4, v5

    .line 63
    :goto_0
    if-eqz v4, :cond_6

    .line 65
    if-eqz v2, :cond_1

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToAutomaticMode()V

    .line 68
    :cond_1
    if-eqz v7, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToAutomaticMode()V

    .line 71
    :cond_2
    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToAutomaticMode()V

    .line 74
    :cond_3
    if-eqz v5, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToAutomaticMode()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :cond_4
    :goto_1
    return-void

    .line 62
    :cond_5
    const/4 v4, 0x1

    .local v4, "isPowerXtendProductInstalled":Z
    goto :goto_0

    .line 83
    .end local v4    # "isPowerXtendProductInstalled":Z
    :cond_6
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 84
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .line 77
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 79
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1
.end method

.method public SetPowerXtendToManualMode(I)V
    .locals 10
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v7

    .line 93
    .local v7, "isTestApplicationInstalled":Z
    if-eqz v7, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 95
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 97
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string/jumbo v9, "libGameXtend.so"

    invoke-direct {p0, v9}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 98
    .local v3, "isGameInstalled":Z
    const-string/jumbo v9, "libWebXtend.so"

    invoke-direct {p0, v9}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v8

    .line 99
    .local v8, "isWebInstalled":Z
    const-string/jumbo v9, "libNavXtend.so"

    invoke-direct {p0, v9}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v4

    .line 100
    .local v4, "isNavInstalled":Z
    const-string/jumbo v9, "libSocialXtend.so"

    invoke-direct {p0, v9}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v6

    .line 101
    .local v6, "isSocialInstalled":Z
    if-nez v3, :cond_5

    if-nez v8, :cond_5

    if-nez v4, :cond_5

    move v5, v6

    .line 102
    :goto_0
    if-eqz v5, :cond_6

    .line 104
    if-eqz v3, :cond_1

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToManualMode(I)V

    .line 107
    :cond_1
    if-eqz v8, :cond_2

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToManualMode(I)V

    .line 110
    :cond_2
    if-eqz v4, :cond_3

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToManualMode(I)V

    .line 113
    :cond_3
    if-eqz v6, :cond_4

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToManualMode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :cond_4
    :goto_1
    return-void

    .line 101
    :cond_5
    const/4 v5, 0x1

    .local v5, "isPowerXtendProductInstalled":Z
    goto :goto_0

    .line 124
    .end local v5    # "isPowerXtendProductInstalled":Z
    :cond_6
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .line 116
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 118
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/security/InvalidParameterException;
    goto :goto_1
.end method

.method public SetPowerXtendToOff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isInternalTestAppInstalled()Z

    move-result v6

    .line 17
    .local v6, "isTestApplicationInstalled":Z
    if-eqz v6, :cond_0

    .line 18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    .local v1, "e":Ljava/lang/IllegalStateException;
    throw v1

    .line 21
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string/jumbo v8, "libGameXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v2

    .line 22
    .local v2, "isGameInstalled":Z
    const-string/jumbo v8, "libWebXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v7

    .line 23
    .local v7, "isWebInstalled":Z
    const-string/jumbo v8, "libNavXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v3

    .line 24
    .local v3, "isNavInstalled":Z
    const-string/jumbo v8, "libSocialXtend.so"

    invoke-direct {p0, v8}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->isSoInstalled(Ljava/lang/String;)Z

    move-result v5

    .line 25
    .local v5, "isSocialInstalled":Z
    if-nez v2, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_5

    move v4, v5

    .line 26
    :goto_0
    if-eqz v4, :cond_6

    .line 28
    if-eqz v2, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetGameXtendToOff()V

    .line 31
    :cond_1
    if-eqz v7, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetWebXtendToOff()V

    .line 34
    :cond_2
    if-eqz v3, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetNavXtendToOff()V

    .line 37
    :cond_3
    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {p0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetSocialXtendToOff()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :cond_4
    :goto_1
    return-void

    .line 25
    :cond_5
    const/4 v4, 0x1

    .local v4, "isPowerXtendProductInstalled":Z
    goto :goto_0

    .line 46
    .end local v4    # "isPowerXtendProductInstalled":Z
    :cond_6
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 47
    .local v0, "e":Ljava/io/FileNotFoundException;
    throw v0

    .line 40
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_0
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 42
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1
.end method

.method public SetSocialXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 274
    const-string/jumbo v0, "Social"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public SetSocialXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 298
    const-string/jumbo v0, "Social"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public SetSocialXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "Social"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public SetWebXtendToAutomaticMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 264
    const-string/jumbo v0, "Web"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetProductToAutomaticMode(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public SetWebXtendToManualMode(I)V
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 286
    const-string/jumbo v0, "Web"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleToManualMode(Ljava/lang/String;I)V

    .line 285
    return-void
.end method

.method public SetWebXtendToOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 244
    const-string/jumbo v0, "Web"

    invoke-direct {p0, v0}, Lcom/android/server/power/xtend/LucidPropertiesApiImpl;->SetModuleXtendToOff(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public isInternalTestAppInstalled()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method
