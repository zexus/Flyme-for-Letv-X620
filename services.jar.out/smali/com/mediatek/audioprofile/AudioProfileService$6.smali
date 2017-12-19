.class Lcom/mediatek/audioprofile/AudioProfileService$6;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 541
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mUpgradeReceiver start update profile: action = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const-string/jumbo v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 546
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get20(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 548
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap7(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 549
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get14(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, "profileKey":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get17(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 553
    .local v12, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get1()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 554
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 558
    :cond_1
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 559
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    iget-object v13, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-ne v0, v13, :cond_3

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get0()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 560
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 564
    :cond_3
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 566
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get3()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 565
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 569
    :cond_4
    iget-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get2()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 570
    iput-object v0, v12, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 549
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .restart local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v2

    .line 578
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 579
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-get1()I

    move-result v13

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 578
    :goto_1
    invoke-static {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-set5(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z

    .line 582
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get23(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, "volumePath":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v7, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 587
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 588
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 589
    .restart local v1    # "profileKey":Ljava/lang/String;
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mUpgradeReceive deal case: profileKey = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v9, 0x0

    .line 591
    .local v9, "newUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v12

    .line 593
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const-string/jumbo v0, "ro.mtk_multisim_ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 595
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileService;->-get24(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v10

    .line 596
    .local v10, "numSlots":I
    const-wide/16 v4, -0x1

    .line 597
    .local v4, "simId":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v10, :cond_8

    .line 598
    const-wide/16 v4, -0x1

    .line 600
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 601
    const/4 v2, 0x1

    .line 600
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 604
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 605
    const/16 v2, 0x8

    .line 604
    invoke-static/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 597
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 579
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v4    # "simId":J
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v10    # "numSlots":I
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 611
    .restart local v1    # "profileKey":Ljava/lang/String;
    .restart local v3    # "volumePath":[Ljava/lang/String;
    .restart local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "newUri":Landroid/net/Uri;
    .restart local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_8
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_2

    .line 625
    .end local v1    # "profileKey":Ljava/lang/String;
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v12    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_9
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 626
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 627
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 628
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService$6;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V

    .line 630
    .end local v3    # "volumePath":[Ljava/lang/String;
    .end local v7    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v0, "AudioProfileService"

    const-string/jumbo v2, "mUpgradeReceiver<<<"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return-void
.end method
