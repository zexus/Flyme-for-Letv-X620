.class Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;
.super Landroid/os/Handler;
.source "PerfServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerfServiceThreadHandler"
.end annotation


# static fields
.field private static final MESSAGE_BOOST_DISABLE:I = 0x1

.field private static final MESSAGE_BOOST_ENABLE:I = 0x0

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT:I = 0x2

.field private static final MESSAGE_BOOST_ENABLE_TIMEOUT_MS:I = 0x3

.field private static final MESSAGE_DUMP_ALL:I = 0x18

.field private static final MESSAGE_GET_PACK_NAME:I = 0x1d

.field private static final MESSAGE_NOTIFY_APP_STATE:I = 0x4

.field private static final MESSAGE_NOTIFY_FRAME_UPDATE:I = 0x1a

.field private static final MESSAGE_SET_FAVOR_PID:I = 0x19

.field private static final MESSAGE_SW_FRAME_UPDATE_TIMEOUT:I = 0x1b

.field private static final MESSAGE_TIMER_RENDER_AWARE_DURATION:I = 0x28

.field private static final MESSAGE_TIMER_SCN_BASE:I = 0x64

.field private static final MESSAGE_TIMER_SCN_USER_BASE:I = 0xc8

.field private static final MESSAGE_TOUCH_BOOST_DURATION:I = 0x1c

.field private static final MESSAGE_USER_DISABLE:I = 0x14

.field private static final MESSAGE_USER_DISABLE_ALL:I = 0x16

.field private static final MESSAGE_USER_ENABLE:I = 0x11

.field private static final MESSAGE_USER_ENABLE_TIMEOUT:I = 0x12

.field private static final MESSAGE_USER_ENABLE_TIMEOUT_MS:I = 0x13

.field private static final MESSAGE_USER_GET_CAPABILITY:I = 0xd

.field private static final MESSAGE_USER_REG:I = 0xa

.field private static final MESSAGE_USER_REG_BIG_LITTLE:I = 0xb

.field private static final MESSAGE_USER_REG_SCN:I = 0xe

.field private static final MESSAGE_USER_REG_SCN_CONFIG:I = 0xf

.field private static final MESSAGE_USER_RESET_ALL:I = 0x15

.field private static final MESSAGE_USER_RESTORE_ALL:I = 0x17

.field private static final MESSAGE_USER_UNREG:I = 0xc

.field private static final MESSAGE_USER_UNREG_SCN:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManager;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p1, "timeout_ms"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckRenderAwareTimerMs(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;II)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;II)V
    .locals 0
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckRenderAwareTimer()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p1, "scenario"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckTimer(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopCheckUserTimer(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/perfservice/PerfServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/perfservice/PerfServiceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    .line 438
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 437
    return-void
.end method

.method private removeAllUserTimerList()V
    .locals 2

    .prologue
    .line 719
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 720
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 719
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 718
    :cond_0
    return-void
.end method

.method private startCheckRenderAwareTimerMs(I)V
    .locals 4
    .param p1, "timeout_ms"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 667
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x28

    iput v1, v0, Landroid/os/Message;->what:I

    .line 668
    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    return-void
.end method

.method private startCheckTimer(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 627
    if-lez p1, :cond_0

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    .line 629
    :cond_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 633
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 634
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 635
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 637
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 638
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_2
    return-void
.end method

.method private startCheckTimerMs(II)V
    .locals 4
    .param p1, "scenario"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 644
    if-lez p1, :cond_0

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    .line 646
    :cond_0
    return-void

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 650
    .local v0, "msg":Landroid/os/Message;
    add-int/lit8 v1, p1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 651
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 652
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 654
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_2
    return-void
.end method

.method private startCheckUserTimer(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 678
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 679
    mul-int/lit16 v1, p2, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 681
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    return-void
.end method

.method private startCheckUserTimerMs(II)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "timeout_ms"    # I

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 689
    .local v0, "msg":Landroid/os/Message;
    add-int/lit16 v1, p1, 0xc8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 690
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 691
    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 693
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v1, v1, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_0
    return-void
.end method

.method private stopAllUserTimer()V
    .locals 4

    .prologue
    .line 705
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 707
    iget-object v3, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    iget-object v3, v3, Lcom/mediatek/perfservice/PerfServiceManager;->mTimeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 708
    .local v0, "handle":I
    const/16 v3, 0xb

    if-ge v0, v3, :cond_0

    .line 709
    add-int/lit8 v2, v0, 0x64

    .line 713
    .local v2, "timer":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "timer":I
    :cond_0
    add-int/lit16 v2, v0, 0xc8

    .restart local v2    # "timer":I
    goto :goto_1

    .line 704
    .end local v0    # "handle":I
    .end local v2    # "timer":I
    :cond_1
    return-void
.end method

.method private stopCheckRenderAwareTimer()V
    .locals 1

    .prologue
    .line 672
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 671
    return-void
.end method

.method private stopCheckTimer(I)V
    .locals 1
    .param p1, "scenario"    # I

    .prologue
    .line 661
    add-int/lit8 v0, p1, 0x64

    .line 662
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 660
    return-void
.end method

.method private stopCheckUserTimer(I)V
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 700
    add-int/lit16 v0, p1, 0xc8

    .line 701
    .local v0, "timer":I
    invoke-virtual {p0, v0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeMessages(I)V

    .line 699
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0xc8

    const/4 v6, 0x5

    .line 444
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 588
    iget v1, p1, Landroid/os/Message;->what:I

    .line 589
    .local v1, "msgId":I
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_TIMEOUT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 591
    const/16 v5, 0x64

    if-lt v1, v5, :cond_4

    if-ge v1, v8, :cond_4

    .line 593
    add-int/lit8 v3, v1, -0x64

    .line 594
    .local v3, "scenario":I
    const/4 v5, 0x3

    if-ne v5, v3, :cond_2

    .line 595
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-virtual {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->touchDisable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 442
    .end local v1    # "msgId":I
    .end local v3    # "scenario":I
    :cond_0
    :goto_0
    return-void

    .line 448
    :sswitch_0
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception in PerfServiceThreadHandler.handleMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap1(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :sswitch_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto :goto_0

    .line 462
    :sswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 463
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimer(II)V

    goto :goto_0

    .line 469
    :sswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_1

    .line 471
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->-get1(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->-get3(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 480
    :cond_1
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostEnable(I)I

    .line 481
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckTimerMs(II)V

    goto :goto_0

    .line 487
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;

    .line 489
    .local v2, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->-get1(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->-get0(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->-get3(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v7

    invoke-static {v2}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;->-get2(Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;)I

    move-result v8

    .line 489
    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfNotifyAppState(Ljava/lang/String;Ljava/lang/String;II)I

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    const/4 v5, 0x0

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 498
    .end local v2    # "passedObject":Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceAppState;
    :sswitch_5
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string/jumbo v6, "MESSAGE_TIMER_RENDER_AWARE_DURATION timeout"

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-set0(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 500
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    goto/16 :goto_0

    .line 506
    :sswitch_6
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_ENABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 507
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    goto/16 :goto_0

    .line 513
    :sswitch_7
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_DISABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 514
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I

    goto/16 :goto_0

    .line 520
    :sswitch_8
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_ENABLE_TIMEOUT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 521
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 522
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimer(II)V

    goto/16 :goto_0

    .line 528
    :sswitch_9
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_ENABLE_TIMEOUT_MS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 529
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnEnable(I)I

    .line 530
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->startCheckUserTimerMs(II)V

    goto/16 :goto_0

    .line 536
    :sswitch_a
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_UNREG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 537
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnUnreg(I)I

    goto/16 :goto_0

    .line 543
    :sswitch_b
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MESSAGE_USER_UNREG_SCN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 544
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserUnregScn(I)I

    goto/16 :goto_0

    .line 550
    :sswitch_c
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string/jumbo v6, "MESSAGE_USER_RESET_ALL"

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->stopAllUserTimer()V

    .line 552
    invoke-direct {p0}, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->removeAllUserTimerList()V

    .line 553
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnResetAll()I

    goto/16 :goto_0

    .line 559
    :sswitch_d
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string/jumbo v6, "MESSAGE_USER_DISABLE_ALL"

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisableAll()I

    goto/16 :goto_0

    .line 567
    :sswitch_e
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const-string/jumbo v6, "MESSAGE_USER_RESTORE_ALL"

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnRestoreAll()I

    goto/16 :goto_0

    .line 575
    :sswitch_f
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfSetFavorPid(I)I

    goto/16 :goto_0

    .line 598
    .restart local v1    # "msgId":I
    .restart local v3    # "scenario":I
    :cond_2
    invoke-static {v3}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfBoostDisable(I)I

    .line 600
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 602
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->-get0(Lcom/mediatek/perfservice/PerfServiceManager;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 603
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-set0(Lcom/mediatek/perfservice/PerfServiceManager;Z)Z

    .line 607
    :cond_3
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->-get3(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-get2(Lcom/mediatek/perfservice/PerfServiceManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 608
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->-get3(Lcom/mediatek/perfservice/PerfServiceManager;)Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v4

    .line 609
    .local v4, "utilization":F
    iget-object v5, p0, Lcom/mediatek/perfservice/PerfServiceManager$PerfServiceThreadHandler;->this$0:Lcom/mediatek/perfservice/PerfServiceManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set utilization:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/perfservice/PerfServiceManager;->-wrap0(Lcom/mediatek/perfservice/PerfServiceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    .end local v3    # "scenario":I
    .end local v4    # "utilization":F
    :cond_4
    if-lt v1, v8, :cond_0

    .line 616
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/mediatek/perfservice/PerfServiceManager;->nativePerfUserScnDisable(I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0xc -> :sswitch_a
        0x10 -> :sswitch_b
        0x11 -> :sswitch_6
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x17 -> :sswitch_e
        0x19 -> :sswitch_f
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 600
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
