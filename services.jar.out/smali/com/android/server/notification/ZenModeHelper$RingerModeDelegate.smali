.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    return v0

    .line 680
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    return p1

    .line 689
    :cond_0
    or-int/lit8 p1, p1, 0x26

    .line 694
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 695
    or-int/lit8 p1, p1, 0x18

    .line 701
    :goto_0
    return p1

    .line 698
    :cond_1
    and-int/lit8 p1, p1, -0x19

    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v7, 0x0

    .line 639
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 640
    return p2

    .line 642
    :cond_0
    move v3, p2

    .line 643
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_3

    const/4 v0, 0x1

    .line 644
    .local v0, "isChange":Z
    :goto_0
    const/4 v4, 0x1

    if-ne p4, v4, :cond_4

    const/4 v1, 0x1

    .line 646
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .line 647
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 666
    :cond_1
    :goto_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 667
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v5, "ringerModeExternal"

    const/4 v6, 0x0

    invoke-static {v4, v2, v6, v5, v7}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 670
    :cond_2
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 672
    return v3

    .line 643
    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 644
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isVibrate":Z
    goto :goto_1

    .line 649
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_7

    .line 650
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-nez v4, :cond_5

    .line 651
    const/4 v2, 0x3

    .line 653
    :cond_5
    if-eqz v1, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    .line 654
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 656
    :cond_7
    move v3, p4

    goto :goto_2

    .line 661
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 662
    const/4 v2, 0x0

    goto :goto_2

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 596
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get0(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    return p2

    .line 599
    :cond_0
    if-eq p1, p2, :cond_5

    const/4 v0, 0x1

    .line 601
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .line 603
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 604
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 625
    :cond_1
    :goto_1
    if-eq v1, v7, :cond_2

    .line 626
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v4, "ringerModeInternal"

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 629
    :cond_2
    if-nez v0, :cond_3

    if-eq v1, v7, :cond_9

    .line 630
    :cond_3
    :goto_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 633
    :cond_4
    return v2

    .line 599
    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 606
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_1

    iget-boolean v3, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v3, :cond_1

    .line 607
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 608
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v5, :cond_6

    .line 609
    const/4 v1, 0x3

    .line 611
    :cond_6
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_1

    .line 616
    :pswitch_1
    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 617
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_7

    .line 618
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-ne v3, v5, :cond_8

    .line 619
    :cond_7
    const/4 v1, 0x0

    .line 618
    goto :goto_1

    .line 620
    :cond_8
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get4(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 621
    const/4 v2, 0x0

    goto :goto_1

    .line 629
    :cond_9
    if-eq p4, v2, :cond_4

    goto :goto_2

    .line 604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
