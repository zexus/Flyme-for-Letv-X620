.class Lcom/android/internal/telephony/cat/CatService$5;
.super Landroid/database/ContentObserver;
.source "CatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/CatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/CatService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cat/CatService$5;->onChange(ZLandroid/net/Uri;)V

    .line 2571
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2488
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2489
    const-string/jumbo v0, "mPowerOnSequenceObserver onChange"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get3(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2492
    const-string/jumbo v1, "dialog_sequence_settings"

    .line 2490
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2495
    .local v10, "seqValue":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPowerOnSequenceObserver onChange, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2496
    if-ne v10, v2, :cond_6

    .line 2498
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2500
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap1(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v8

    .line 2501
    .local v8, "isAlarmState":Z
    const/4 v9, 0x0

    .line 2502
    .local v9, "isFlightMode":Z
    const/4 v7, 0x0

    .line 2504
    .local v7, "flightMode":I
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get3(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2505
    const-string/jumbo v1, "airplane_mode_on"

    .line 2504
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2510
    :goto_0
    if-eqz v7, :cond_0

    const/4 v9, 0x1

    .line 2511
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAlarmState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isFlightMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2512
    const-string/jumbo v1, ", flightMode = "

    .line 2511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2514
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    .line 2515
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap5(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2516
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->-wrap6(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2517
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->-set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap7(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2519
    return-void

    .line 2506
    :catch_0
    move-exception v6

    .line 2507
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v0, "fail to get property from Settings"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2508
    const/4 v7, 0x0

    goto :goto_0

    .line 2510
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    .line 2523
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2524
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap5(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2525
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->-wrap6(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->-set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap7(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2529
    return-void

    .line 2533
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get1(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2534
    const-string/jumbo v0, "[IVSR send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2535
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap5(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->-wrap6(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2537
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->-set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap7(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2539
    return-void

    .line 2542
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get0(Lcom/android/internal/telephony/cat/CatService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2543
    const-string/jumbo v0, "[SIM Recovery send TR directly"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2544
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap5(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->-wrap6(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2546
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->-set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2547
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap7(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2548
    return-void

    .line 2550
    :cond_4
    const-string/jumbo v0, "send DISPLAY_TEXT to app"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2551
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->-wrap2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 2552
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatService;->-set2(Lcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 2556
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-wrap7(Lcom/android/internal/telephony/cat/CatService;)V

    .line 2486
    .end local v7    # "flightMode":I
    .end local v8    # "isAlarmState":Z
    .end local v9    # "isFlightMode":Z
    .end local v10    # "seqValue":I
    :cond_5
    :goto_2
    return-void

    .line 2558
    .restart local v10    # "seqValue":I
    :cond_6
    if-nez v10, :cond_5

    .line 2559
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get2(Lcom/android/internal/telephony/cat/CatService;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService$5;->this$0:Lcom/android/internal/telephony/cat/CatService;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->-get3(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2563
    const-string/jumbo v1, "dialog_sequence_settings"

    .line 2561
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method
