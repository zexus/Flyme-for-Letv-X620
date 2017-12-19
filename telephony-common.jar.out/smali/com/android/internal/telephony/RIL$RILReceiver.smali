.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 683
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 690
    const/4 v13, 0x0

    .line 691
    .local v13, "retryCount":I
    const-string/jumbo v14, "rild"

    .line 694
    .local v14, "rilSocket":Ljava/lang/String;
    :goto_0
    const/4 v15, 0x0

    .line 697
    .local v15, "s":Landroid/net/LocalSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_1

    .line 698
    :cond_0
    sget-object v18, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v14, v18, v19

    .line 718
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "rilSocket["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 720
    :try_start_1
    new-instance v16, Landroid/net/LocalSocket;

    invoke-direct/range {v16 .. v16}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 721
    .end local v15    # "s":Landroid/net/LocalSocket;
    .local v16, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v9, Landroid/net/LocalSocketAddress;

    .line 722
    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 721
    move-object/from16 v0, v18

    invoke-direct {v9, v14, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 723
    .local v9, "l":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 756
    const/4 v13, 0x0

    .line 758
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 759
    const-string/jumbo v18, "RILJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") Connected to \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 760
    const-string/jumbo v20, "\' socket"

    .line 759
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    monitor-enter v19
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 766
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queue size  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_8

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 768
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 700
    .end local v7    # "i":I
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v16    # "s":Landroid/net/LocalSocket;
    .restart local v15    # "s":Landroid/net/LocalSocket;
    :cond_1
    :try_start_5
    const-string/jumbo v18, "ro.mtk_dt_support"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 702
    sget-object v18, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v14, v18, v19

    goto/16 :goto_1

    .line 705
    :cond_2
    const-string/jumbo v18, "ro.evdo_dt_support"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 707
    sget-object v18, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v14, v18, v19

    goto/16 :goto_1

    .line 708
    :cond_3
    const-string/jumbo v18, "ro.telephony.cl.config"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 710
    sget-object v18, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    aget-object v14, v18, v19

    goto/16 :goto_1

    .line 713
    :cond_4
    const-string/jumbo v14, "rild-md2"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 724
    :catch_0
    move-exception v5

    .line 726
    .end local v15    # "s":Landroid/net/LocalSocket;
    .local v5, "ex":Ljava/io/IOException;
    :goto_3
    if-eqz v15, :cond_5

    .line 727
    :try_start_6
    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 736
    :cond_5
    :goto_4
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    .line 737
    :try_start_7
    const-string/jumbo v18, "RILJ"

    .line 738
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Couldn\'t find \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 739
    const-string/jumbo v20, "\' socket after "

    .line 738
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 740
    const-string/jumbo v20, " times, continuing to retry silently"

    .line 738
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 737
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 748
    :cond_6
    :goto_5
    const-wide/16 v18, 0xfa0

    :try_start_8
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 752
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 729
    :catch_1
    move-exception v6

    .local v6, "ex2":Ljava/io/IOException;
    goto :goto_4

    .line 741
    .end local v6    # "ex2":Ljava/io/IOException;
    :cond_7
    if-ltz v13, :cond_6

    const/16 v18, 0x8

    move/from16 v0, v18

    if-ge v13, v0, :cond_6

    .line 742
    :try_start_9
    const-string/jumbo v18, "RILJ"

    .line 743
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Couldn\'t find \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 744
    const-string/jumbo v20, "\' socket; retrying after timeout"

    .line 743
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 742
    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 833
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v17

    .line 834
    .local v17, "tr":Ljava/lang/Throwable;
    :goto_7
    const-string/jumbo v18, "RILJ"

    const-string/jumbo v19, "Uncaught exception"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;I)V

    .line 689
    return-void

    .line 749
    .end local v17    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .local v4, "er":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 772
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v9    # "l":Landroid/net/LocalSocketAddress;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "queue size  after "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    const-string/jumbo v20, "reset pending switch request"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 780
    .local v12, "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 781
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 782
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 785
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->resetSendChldRequest()V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v18

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v12    # "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    :cond_a
    :try_start_b
    monitor-exit v19
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 791
    const/4 v10, 0x0

    .line 793
    .local v10, "length":I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 796
    .local v8, "is":Ljava/io/InputStream;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Lcom/android/internal/telephony/RIL;->-wrap2(Ljava/io/InputStream;[B)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    move-result v10

    .line 797
    if-gez v10, :cond_b

    .line 818
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_9
    :try_start_d
    const-string/jumbo v18, "RILJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ") Disconnected from \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 819
    const-string/jumbo v20, "\' socket"

    .line 818
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    .line 824
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 828
    :goto_a
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 829
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RIL;IZ)V

    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .local v15, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 763
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v15    # "s":Landroid/net/LocalSocket;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    .line 833
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    :catch_4
    move-exception v17

    .restart local v17    # "tr":Ljava/lang/Throwable;
    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .restart local v15    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_7

    .line 801
    .end local v15    # "s":Landroid/net/LocalSocket;
    .end local v17    # "tr":Ljava/lang/Throwable;
    .restart local v7    # "i":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "l":Landroid/net/LocalSocketAddress;
    .restart local v10    # "length":I
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :cond_b
    :try_start_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 802
    .local v11, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 803
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Lcom/android/internal/telephony/RIL;->-wrap6(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 808
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_8

    .line 810
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "p":Landroid/os/Parcel;
    :catch_5
    move-exception v5

    .line 811
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_11
    const-string/jumbo v18, "RILJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' socket closed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 813
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v17

    .line 814
    .restart local v17    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v18, "RILJ"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Uncaught exception read length="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 815
    const-string/jumbo v20, "Exception:"

    .line 814
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 815
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v20

    .line 814
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_9

    .line 825
    .end local v17    # "tr":Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto/16 :goto_a

    .line 724
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "length":I
    :catch_8
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    move-object/from16 v15, v16

    .end local v16    # "s":Landroid/net/LocalSocket;
    .restart local v15    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_3
.end method
