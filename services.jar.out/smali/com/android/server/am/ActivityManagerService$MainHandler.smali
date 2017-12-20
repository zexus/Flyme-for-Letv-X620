.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1804
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1803
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 74
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1809
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1808
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1811
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v65

    .line 1812
    .local v65, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v65

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto :goto_0

    .line 1815
    .end local v65    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1816
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v8

    goto :goto_0

    .line 1815
    :catchall_0
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1821
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x4e20

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1822
    const-string/jumbo v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skip SERVICE_TIMEOUT ANR due to DexOpt performing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1826
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_3

    .line 1827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 1829
    .local v53, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v53

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x4e20

    move-object/from16 v0, v53

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1831
    return-void

    .line 1834
    .end local v53    # "nmsg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1835
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Lcom/android/server/am/ProcessRecord;

    .line 1836
    .local v63, "record":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v28, 0x4e20

    .line 1837
    .local v28, "anrTimeout":J
    if-eqz v63, :cond_4

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v72, v0

    .line 1838
    .local v72, "userId":I
    :goto_2
    move/from16 v0, v72

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v40

    .line 1839
    .local v40, "extendTime":J
    const-wide/16 v8, 0x0

    cmp-long v4, v40, v8

    if-lez v4, :cond_5

    .line 1840
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "Skip SERVICE_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 1842
    .restart local v53    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v53

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v53

    move-wide/from16 v1, v40

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1844
    return-void

    .line 1837
    .end local v40    # "extendTime":J
    .end local v53    # "nmsg":Landroid/os/Message;
    .end local v72    # "userId":I
    :cond_4
    const/16 v72, -0x2710

    .restart local v72    # "userId":I
    goto :goto_2

    .line 1848
    .end local v28    # "anrTimeout":J
    .end local v63    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v72    # "userId":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1851
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1852
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .local v44, "i":I
    :goto_3
    if-ltz v44, :cond_1

    .line 1853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1854
    .local v62, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_6

    .line 1856
    :try_start_2
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1852
    :cond_6
    :goto_4
    add-int/lit8 v44, v44, -0x1

    goto :goto_3

    .line 1857
    :catch_0
    move-exception v38

    .line 1858
    .local v38, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to update time zone for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v62

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 1851
    .end local v38    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1865
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1866
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_5
    if-ltz v44, :cond_1

    .line 1867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1868
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_7

    .line 1870
    :try_start_5
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1866
    :cond_7
    :goto_6
    add-int/lit8 v44, v44, -0x1

    goto :goto_5

    .line 1871
    :catch_1
    move-exception v38

    .line 1872
    .restart local v38    # "ex":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to clear dns cache for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v62

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 1865
    .end local v38    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1879
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Landroid/net/ProxyInfo;

    .line 1880
    .local v60, "proxy":Landroid/net/ProxyInfo;
    const-string/jumbo v43, ""

    .line 1881
    .local v43, "host":Ljava/lang/String;
    const-string/jumbo v57, ""

    .line 1882
    .local v57, "port":Ljava/lang/String;
    const-string/jumbo v39, ""

    .line 1883
    .local v39, "exclList":Ljava/lang/String;
    sget-object v56, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1884
    .local v56, "pacFileUrl":Landroid/net/Uri;
    if-eqz v60, :cond_8

    .line 1885
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v43

    .line 1886
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v57

    .line 1887
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v39

    .line 1888
    invoke-virtual/range {v60 .. v60}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v56

    .line 1890
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1891
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_7
    if-ltz v44, :cond_1

    .line 1892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1893
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_9

    .line 1895
    :try_start_8
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    move-object/from16 v2, v39

    move-object/from16 v3, v56

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1891
    :cond_9
    :goto_8
    add-int/lit8 v44, v44, -0x1

    goto :goto_7

    .line 1896
    :catch_2
    move-exception v38

    .line 1897
    .restart local v38    # "ex":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to update http proxy for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1898
    move-object/from16 v0, v62

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1897
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    .line 1890
    .end local v38    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1906
    .end local v39    # "exclList":Ljava/lang/String;
    .end local v43    # "host":Ljava/lang/String;
    .end local v56    # "pacFileUrl":Landroid/net/Uri;
    .end local v57    # "port":Ljava/lang/String;
    .end local v60    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1907
    const-string/jumbo v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skip PROC_START_TIMEOUT due to DexOpt performing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1911
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_b

    .line 1912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x14

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 1914
    .restart local v53    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v53

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v53

    invoke-virtual {v4, v0, v8, v9}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1916
    return-void

    .line 1918
    .end local v53    # "nmsg":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1919
    .local v27, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1920
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->-wrap8(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_1

    .line 1919
    :catchall_4
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1924
    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 1925
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_1

    .line 1924
    :catchall_5
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1929
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1930
    :try_start_c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1931
    .local v6, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_f

    const/4 v7, 0x1

    .line 1932
    .local v7, "restart":Z
    :goto_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/os/Bundle;

    .line 1933
    .local v30, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1934
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-result-object v13

    .line 1938
    .local v13, "reason":Ljava/lang/String;
    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->isAppDouble(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v13, :cond_d

    const-string/jumbo v4, "uninstall shadow only"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1939
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "notification"

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/NotificationManager;

    .line 1942
    .local v54, "noMan":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->-wrap2(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 1948
    .end local v54    # "noMan":Landroid/app/NotificationManager;
    :cond_d
    if-nez v13, :cond_10

    .line 1949
    :goto_a
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_e
    :goto_b
    monitor-exit v16

    goto/16 :goto_0

    .line 1931
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v30    # "bundle":Landroid/os/Bundle;
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "restart":Z
    goto :goto_9

    .line 1948
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v13    # "reason":Ljava/lang/String;
    .restart local v30    # "bundle":Landroid/os/Bundle;
    :cond_10
    if-eqz v13, :cond_e

    :try_start_f
    const-string/jumbo v4, "uninstall shadow only"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    move-result v4

    if-nez v4, :cond_e

    goto :goto_a

    .line 1944
    :catch_3
    move-exception v35

    .line 1945
    .local v35, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "RemoveException when  call forceStopShadowPackageLocked !!!"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 1948
    if-nez v13, :cond_11

    .line 1949
    :goto_c
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_b

    .line 1929
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appid":I
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v30    # "bundle":Landroid/os/Bundle;
    .end local v35    # "e":Landroid/os/RemoteException;
    :catchall_6
    move-exception v4

    monitor-exit v16

    throw v4

    .line 1948
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "appid":I
    .restart local v7    # "restart":Z
    .restart local v13    # "reason":Ljava/lang/String;
    .restart local v30    # "bundle":Landroid/os/Bundle;
    .restart local v35    # "e":Landroid/os/RemoteException;
    :cond_11
    if-eqz v13, :cond_e

    :try_start_12
    const-string/jumbo v4, "uninstall shadow only"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_c

    .end local v35    # "e":Landroid/os/RemoteException;
    :catchall_7
    move-exception v4

    move-object v15, v4

    if-nez v13, :cond_13

    :goto_d

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityManagerService$FlymeActivityManagerServiceInjector;->isFlymePackageShouldRestart(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->forceStopFlymePackageLocked(Landroid/os/Message;)V

    monitor-exit v15

    return-void

    :cond_flyme_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-static/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->-wrap1(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1946
    :cond_12
    throw v15

    .line 1948
    :cond_13
    if-eqz v13, :cond_12

    const-string/jumbo v4, "uninstall shadow only"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    move-result v4

    if-nez v4, :cond_12

    goto :goto_d

    .line 1955
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appid":I
    .end local v7    # "restart":Z
    .end local v13    # "reason":Ljava/lang/String;
    .end local v30    # "bundle":Landroid/os/Bundle;
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1958
    :pswitch_b
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v46

    .line 1959
    .local v46, "inm":Landroid/app/INotificationManager;
    if-nez v46, :cond_14

    .line 1960
    return-void

    .line 1963
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v66, v0

    check-cast v66, Lcom/android/server/am/ActivityRecord;

    .line 1964
    .local v66, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v59, v0

    .line 1965
    .local v59, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v59, :cond_15

    .line 1966
    return-void

    .line 1970
    :cond_15
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v59

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v32

    .line 1971
    .local v32, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 1972
    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, #android:string@heavy_weight_notification#t

    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v68

    .local v68, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, v32

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, #android:drawable@stat_sys_adb#t

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, #android:color@system_notification_accent_color#t

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1982
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, #android:string@heavy_weight_notification_detail#t

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1973
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1983
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1984
    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    .line 1985
    new-instance v19, Landroid/os/UserHandle;

    move-object/from16 v0, v66

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1983
    const/4 v15, 0x0

    .line 1984
    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    .line 1983
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1973
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_5

    move-result-object v19

    .line 1988
    .local v19, "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_14
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .local v20, "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    move-object/from16 v0, v66

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v21, v0

    const/16 v17, 0x0

    const v18, #android:string@heavy_weight_notification#t

    move-object/from16 v14, v46

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_5

    goto/16 :goto_0

    .line 1992
    .end local v20    # "outId":[I
    :catch_4
    move-exception v37

    .line 1993
    .local v37, "e":Ljava/lang/RuntimeException;
    :try_start_15
    const-string/jumbo v4, "ActivityManager"

    .line 1994
    const-string/jumbo v8, "Error showing notification for heavy-weight app"

    .line 1993
    move-object/from16 v0, v37

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_5

    goto/16 :goto_0

    .line 1997
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v32    # "context":Landroid/content/Context;
    .end local v37    # "e":Ljava/lang/RuntimeException;
    .end local v68    # "text":Ljava/lang/String;
    :catch_5
    move-exception v34

    .line 1998
    .local v34, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "Unable to create context for heavy notification"

    move-object/from16 v0, v34

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2002
    .end local v34    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "inm":Landroid/app/INotificationManager;
    .end local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v66    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_16

    return-void

    :cond_16
    :try_start_16
    const-string v4, "android"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    const v10, #android:string@heavy_weight_notification#t

    invoke-interface {v14, v4, v9, v10, v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_10

    goto/16 :goto_0

    .line 2009
    :catch_6
    move-exception v37

    .line 2010
    .restart local v37    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityManager"

    .line 2011
    const-string/jumbo v8, "Error canceling notification for service"

    .line 2010
    move-object/from16 v0, v37

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2016
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v37    # "e":Ljava/lang/RuntimeException;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2017
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2018
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2019
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 2020
    .restart local v53    # "nmsg":Landroid/os/Message;
    sget v4, Lcom/android/server/am/ActivityManagerService;->POWER_CHECK_DELAY:I

    int-to-long v10, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto/16 :goto_1

    .line 2016
    .end local v53    # "nmsg":Landroid/os/Message;
    :catchall_8
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2024
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/ArrayList;

    .line 2025
    .local v48, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v69, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v69

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2030
    .local v69, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v69 .. v69}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 2034
    .end local v48    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v69    # "thread":Ljava/lang/Thread;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2038
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2042
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v4, v9, v10}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    goto/16 :goto_0

    .line 2046
    :pswitch_12
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_18

    const/16 v52, 0x1

    .line 2047
    .local v52, "nextState":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v52

    if-eq v4, v0, :cond_0

    .line 2048
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v4, :cond_17

    const-string/jumbo v8, "ActivityManager"

    .line 2049
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Applying new update lock state \'"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2050
    const-string/jumbo v9, "\' for "

    .line 2049
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2050
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2049
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2048
    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_17
    if-eqz v52, :cond_19

    .line 2052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    .line 2046
    .end local v52    # "nextState":Z
    :cond_18
    const/16 v52, 0x0

    .restart local v52    # "nextState":Z
    goto :goto_e

    .line 2054
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    .line 2060
    .end local v52    # "nextState":Z
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-wrap11(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2064
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2065
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v9, v12}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    goto/16 :goto_1

    .line 2064
    :catchall_9
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2070
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2071
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    goto/16 :goto_1

    .line 2070
    :catchall_a
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2076
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2077
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_f
    if-ltz v44, :cond_1

    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 2079
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    if-eqz v4, :cond_1a

    .line 2081
    :try_start_1b
    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    :goto_10
    invoke-interface {v9, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 2077
    :cond_1a
    :goto_11
    add-int/lit8 v44, v44, -0x1

    goto :goto_f

    .line 2081
    :cond_1b
    const/4 v4, 0x1

    goto :goto_10

    .line 2082
    :catch_7
    move-exception v38

    .line 2083
    .restart local v38    # "ex":Landroid/os/RemoteException;
    :try_start_1c
    const-string/jumbo v4, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to update preferences for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v62

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_11

    .line 2076
    .end local v38    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_b
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2091
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2092
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2091
    const v10, 0x8007

    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    .line 2097
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2099
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 2098
    const/16 v10, 0x4008

    .line 2097
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 2102
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 2101
    const v10, 0x8008

    .line 2100
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_0

    .line 2107
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2108
    :try_start_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v61

    .line 2109
    .local v61, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v61, :cond_1

    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    if-eqz v4, :cond_1

    .line 2111
    :try_start_1e
    move-object/from16 v0, v61

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v61

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v9}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_8
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    goto/16 :goto_1

    .line 2112
    :catch_8
    move-exception v35

    .restart local v35    # "e":Landroid/os/RemoteException;
    goto/16 :goto_1

    .line 2107
    .end local v35    # "e":Landroid/os/RemoteException;
    .end local v61    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_c
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2119
    :pswitch_1a
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1c

    .line 2120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2122
    :cond_1c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    .line 2123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    .line 2129
    :pswitch_1b
    :try_start_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/util/Locale;

    .line 2130
    .local v47, "l":Ljava/util/Locale;
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v67

    .line 2131
    .local v67, "service":Landroid/os/IBinder;
    invoke-static/range {v67 .. v67}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v49

    .line 2132
    .local v49, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Storing locale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for decryption UI"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual/range {v47 .. v47}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-interface {v0, v4, v8}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_a

    goto/16 :goto_0

    .line 2134
    .end local v47    # "l":Ljava/util/Locale;
    .end local v49    # "mountService":Landroid/os/storage/IMountService;
    .end local v67    # "service":Landroid/os/IBinder;
    :catch_9
    move-exception v35

    .line 2135
    .restart local v35    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "Error storing locale for decryption UI"

    move-object/from16 v0, v35

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2136
    .end local v35    # "e":Landroid/os/RemoteException;
    :catch_a
    move-exception v36

    .line 2137
    .local v36, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "Error storing locale for decryption UI"

    move-object/from16 v0, v36

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2142
    .end local v36    # "e":Ljava/lang/IllegalStateException;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2143
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    move-result v44

    .line 2144
    .restart local v44    # "i":I
    :goto_12
    if-lez v44, :cond_1d

    .line 2145
    add-int/lit8 v44, v44, -0x1

    .line 2148
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    goto :goto_12

    .line 2149
    :catch_b
    move-exception v35

    .restart local v35    # "e":Landroid/os/RemoteException;
    goto :goto_12

    .line 2153
    .end local v35    # "e":Landroid/os/RemoteException;
    :cond_1d
    :try_start_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get4(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    goto/16 :goto_1

    .line 2142
    .end local v44    # "i":I
    :catchall_d
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2158
    :pswitch_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 2159
    .local v71, "uid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, [B

    .line 2161
    .local v42, "firstPacket":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v8

    .line 2162
    const/16 v44, 0x0

    .restart local v44    # "i":I
    :goto_13
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_1f

    .line 2163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/am/ProcessRecord;

    .line 2164
    .local v55, "p":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    move/from16 v0, v71

    if-ne v4, v0, :cond_1e

    .line 2166
    :try_start_24
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v42

    invoke-interface {v4, v0}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    .line 2162
    :cond_1e
    :goto_14
    add-int/lit8 v44, v44, 0x1

    goto :goto_13

    .end local v55    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    monitor-exit v8

    goto/16 :goto_0

    .line 2161
    :catchall_e
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2179
    .end local v42    # "firstPacket":[B
    .end local v44    # "i":I
    .end local v71    # "uid":I
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2180
    :try_start_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 2181
    .local v58, "procName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move/from16 v71, v0

    .line 2182
    .restart local v71    # "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v58

    move/from16 v1, v71

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/util/Pair;

    .line 2183
    .local v73, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v73, :cond_20

    .line 2184
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    const/4 v9, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v4, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v73, Landroid/util/Pair;

    .line 2186
    .restart local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_20
    if-eqz v73, :cond_21

    .line 2187
    move-object/from16 v0, v73

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 2188
    .local v50, "memLimit":J
    move-object/from16 v0, v73

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :goto_15
    monitor-exit v8

    .line 2194
    if-nez v58, :cond_22

    .line 2195
    return-void

    .line 2190
    .end local v50    # "memLimit":J
    :cond_21
    const-wide/16 v50, 0x0

    .line 2191
    .restart local v50    # "memLimit":J
    const/16 v64, 0x0

    .local v64, "reportPackage":Ljava/lang/String;
    goto :goto_15

    .line 2179
    .end local v50    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v64    # "reportPackage":Ljava/lang/String;
    .end local v71    # "uid":I
    .end local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catchall_f
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2198
    .restart local v50    # "memLimit":J
    .restart local v58    # "procName":Ljava/lang/String;
    .restart local v71    # "uid":I
    .restart local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_22
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v4, :cond_23

    const-string/jumbo v4, "ActivityManager"

    .line 2199
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Showing dump heap notification from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v71

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2198
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    :cond_23
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2202
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_24

    .line 2203
    return-void

    .line 2206
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v58, v8, v9

    const v9, #android:string@dump_heap_notification#t

    invoke-virtual {v4, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v68

    .line 2209
    .restart local v68    # "text":Ljava/lang/String;
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 2210
    .local v33, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.server.am.DELETE_DUMPHEAP"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2211
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 2212
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android"

    const-class v8, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2213
    const-string/jumbo v4, "process"

    move-object/from16 v0, v23

    move-object/from16 v1, v58

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2214
    const-string/jumbo v4, "size"

    move-object/from16 v0, v23

    move-wide/from16 v1, v50

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2215
    if-eqz v64, :cond_25

    .line 2216
    const-string/jumbo v4, "direct_launch"

    move-object/from16 v0, v23

    move-object/from16 v1, v64

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2218
    :cond_25
    invoke-static/range {v71 .. v71}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v72

    .line 2219
    .restart local v72    # "userId":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, #android:drawable@stat_sys_adb#t

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, #android:color@system_notification_accent_color#t

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2229
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, #android:string@dump_heap_notification_detail#t

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2219
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2230
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 2232
    new-instance v26, Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move/from16 v1, v72

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2230
    const/16 v22, 0x0

    .line 2231
    const/high16 v24, 0x10000000

    const/16 v25, 0x0

    .line 2230
    invoke-static/range {v21 .. v26}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2219
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 2233
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2234
    sget-object v9, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 2233
    const/4 v10, 0x0

    .line 2234
    const/4 v11, 0x0

    .line 2233
    move-object/from16 v0, v33

    invoke-static {v8, v10, v0, v11, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2219
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 2238
    .restart local v19    # "notification":Landroid/app/Notification;
    const/4 v4, 0x1

    :try_start_26
    new-array v0, v4, [I

    move-object/from16 v20, v0

    .restart local v20    # "outId":[I
    const-string v15, "android"

    const-string v16, "android"

    const/16 v17, 0x0

    const v18, #android:string@dump_heap_notification#t

    move/from16 v21, v72

    invoke-interface/range {v14 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_e

    goto/16 :goto_0

    .line 2242
    .end local v20    # "outId":[I
    :catch_c
    move-exception v37

    .line 2243
    .restart local v37    # "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "ActivityManager"

    .line 2244
    const-string/jumbo v8, "Error showing notification for dump heap"

    .line 2243
    move-object/from16 v0, v37

    invoke-static {v4, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2249
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v33    # "deleteIntent":Landroid/content/Intent;
    .end local v37    # "e":Ljava/lang/RuntimeException;
    .end local v50    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v68    # "text":Ljava/lang/String;
    .end local v71    # "uid":I
    .end local v72    # "userId":I
    .end local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v8

    .line 2250
    sget-object v9, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    .line 2253
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 2251
    const/4 v11, 0x3

    .line 2249
    invoke-virtual {v4, v8, v9, v11, v10}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2255
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, -0x1

    iput v9, v4, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    goto/16 :goto_1

    .line 2254
    :catchall_10
    move-exception v4

    monitor-exit v8

    throw v4

    .line 2262
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchForegroundProfileChanged(I)V

    goto/16 :goto_0

    .line 2265
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Lcom/android/server/am/AppTimeTracker;

    .line 2266
    .local v70, "tracker":Lcom/android/server/am/AppTimeTracker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2269
    .end local v70    # "tracker":Lcom/android/server/am/AppTimeTracker;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitchComplete(I)V

    goto/16 :goto_0

    .line 2272
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/app/IUiAutomationConnection;

    .line 2274
    .local v31, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_28
    invoke-interface/range {v31 .. v31}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_d

    .line 2280
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/am/ActivityManagerService;->-set0(Lcom/android/server/am/ActivityManagerService;Z)Z

    goto/16 :goto_0

    .line 2275
    :catch_d
    move-exception v35

    .line 2276
    .restart local v35    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ActivityManager"

    const-string/jumbo v8, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2245
    .end local v31    # "connection":Landroid/app/IUiAutomationConnection;
    .end local v35    # "e":Landroid/os/RemoteException;
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v23    # "intent":Landroid/content/Intent;
    .restart local v33    # "deleteIntent":Landroid/content/Intent;
    .restart local v50    # "memLimit":J
    .restart local v58    # "procName":Ljava/lang/String;
    .restart local v68    # "text":Ljava/lang/String;
    .restart local v71    # "uid":I
    .restart local v72    # "userId":I
    .restart local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    :catch_e
    move-exception v35

    .restart local v35    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 2167
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v33    # "deleteIntent":Landroid/content/Intent;
    .end local v35    # "e":Landroid/os/RemoteException;
    .end local v50    # "memLimit":J
    .end local v58    # "procName":Ljava/lang/String;
    .end local v68    # "text":Ljava/lang/String;
    .end local v72    # "userId":I
    .end local v73    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v42    # "firstPacket":[B
    .restart local v44    # "i":I
    .restart local v55    # "p":Lcom/android/server/am/ProcessRecord;
    :catch_f
    move-exception v45

    .local v45, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_14

    .line 2012
    .end local v42    # "firstPacket":[B
    .end local v44    # "i":I
    .end local v45    # "ignored":Landroid/os/RemoteException;
    .end local v55    # "p":Lcom/android/server/am/ProcessRecord;
    .end local v71    # "uid":I
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    :catch_10
    move-exception v35

    .restart local v35    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 1995
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v35    # "e":Landroid/os/RemoteException;
    .restart local v19    # "notification":Landroid/app/Notification;
    .restart local v32    # "context":Landroid/content/Context;
    .restart local v46    # "inm":Landroid/app/INotificationManager;
    .restart local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v66    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v68    # "text":Ljava/lang/String;
    :catch_11
    move-exception v35

    .restart local v35    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 1809
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method private forceStopFlymePackageLocked(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->forceStopFlymePackageLocked(Landroid/os/Message;)V

    return-void
.end method
