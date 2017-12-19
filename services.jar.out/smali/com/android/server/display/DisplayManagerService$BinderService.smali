.class final Lcom/android/server/display/DisplayManagerService$BinderService;
.super Landroid/hardware/display/IDisplayManager$Stub;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/IDisplayManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method

.method private canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 5
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1618
    if-eqz p1, :cond_0

    .line 1620
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1621
    return v1

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DisplayManagerService"

    const-string/jumbo v4, "Unable to query projection service for permissions"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 1628
    const-string/jumbo v4, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    .line 1627
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private canProjectVideo(Landroid/media/projection/IMediaProjection;)Z
    .locals 4
    .param p1, "projection"    # Landroid/media/projection/IMediaProjection;

    .prologue
    const/4 v3, 0x1

    .line 1600
    if-eqz p1, :cond_0

    .line 1602
    :try_start_0
    invoke-interface {p1}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    return v3

    .line 1605
    :catch_0
    move-exception v0

    .line 1606
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DisplayManagerService"

    const-string/jumbo v2, "Unable to query projection service for permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1609
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 1610
    const-string/jumbo v2, "android.permission.CAPTURE_VIDEO_OUTPUT"

    .line 1609
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1612
    return v3

    .line 1614
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v1

    return v1
.end method

.method private validatePackageName(ILjava/lang/String;)Z
    .locals 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1586
    if-eqz p2, :cond_1

    .line 1587
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1588
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1589
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 1590
    .local v0, "n":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1591
    const/4 v2, 0x1

    return v2

    .line 1589
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1596
    .end local v0    # "n":Ljava/lang/String;
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_1
    return v3
.end method


# virtual methods
.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1373
    if-nez p1, :cond_0

    .line 1374
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1376
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1377
    const-string/jumbo v4, "Permission required to connect to a wifi display"

    .line 1376
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1381
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap6(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    return-void

    .line 1382
    :catchall_0
    move-exception v2

    .line 1383
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    throw v2
.end method

.method public createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    .locals 16
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "densityDpi"    # I
    .param p8, "surface"    # Landroid/view/Surface;
    .param p9, "flags"    # I

    .prologue
    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1478
    .local v5, "callingUid":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->validatePackageName(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1479
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "packageName must match the calling uid"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1481
    :cond_0
    if-nez p1, :cond_1

    .line 1482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appToken must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1484
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1485
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "name must be non-null and non-empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1487
    :cond_2
    if-lez p5, :cond_3

    if-gtz p6, :cond_4

    .line 1488
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width, height, and densityDpi must be greater than 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1487
    :cond_4
    if-lez p7, :cond_3

    .line 1492
    and-int/lit8 v2, p9, 0x1

    if-eqz v2, :cond_5

    .line 1493
    or-int/lit8 p9, p9, 0x10

    .line 1495
    :cond_5
    and-int/lit8 v2, p9, 0x8

    if-eqz v2, :cond_6

    .line 1496
    and-int/lit8 p9, p9, -0x11

    .line 1499
    :cond_6
    if-eqz p2, :cond_8

    .line 1501
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap1(Lcom/android/server/display/DisplayManagerService;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/media/projection/IMediaProjectionManager;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1502
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Invalid media projection"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :catch_0
    move-exception v13

    .line 1506
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "unable to validate media projection or flags"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1504
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result p9

    .line 1510
    :cond_8
    const/16 v2, 0x3e8

    if-eq v5, v2, :cond_9

    .line 1511
    and-int/lit8 v2, p9, 0x10

    if-eqz v2, :cond_9

    .line 1512
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1513
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1519
    :cond_9
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_a

    .line 1520
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService;->canProjectSecureVideo(Landroid/media/projection/IMediaProjection;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1521
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1527
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1529
    .local v14, "token":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/android/server/display/DisplayManagerService;->-wrap5(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 1532
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1529
    return v2

    .line 1531
    :catchall_0
    move-exception v2

    .line 1532
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    throw v2
.end method

.method public disconnectWifiDisplay()V
    .locals 3

    .prologue
    .line 1394
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1396
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap8(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1388
    return-void

    .line 1397
    :catchall_0
    move-exception v2

    .line 1398
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1569
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1572
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump DisplayManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1573
    const-string/jumbo v3, ", uid="

    .line 1572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    return-void

    .line 1577
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1579
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap9(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    return-void

    .line 1580
    :catchall_0
    move-exception v2

    .line 1581
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1580
    throw v2
.end method

.method public enableSink(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1646
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap10(Lcom/android/server/display/DisplayManagerService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    return-void

    .line 1647
    :catchall_0
    move-exception v2

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    throw v2
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1420
    if-nez p1, :cond_0

    .line 1421
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1423
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1424
    const-string/jumbo v4, "Permission required to forget to a wifi display"

    .line 1423
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1428
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap11(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1419
    return-void

    .line 1429
    :catchall_0
    move-exception v2

    .line 1430
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1429
    throw v2
.end method

.method public getCurrentDisplayDensity()I
    .locals 3

    .prologue
    .line 1695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1697
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService;->getCurrentDisplayDensityInternal()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    return v2

    .line 1698
    :catchall_0
    move-exception v2

    .line 1699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    throw v2
.end method

.method public getDisplayIds()[I
    .locals 4

    .prologue
    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1320
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1322
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap4(Lcom/android/server/display/DisplayManagerService;I)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    return-object v1

    .line 1323
    :catchall_0
    move-exception v1

    .line 1324
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 1305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1306
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1308
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap2(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1308
    return-object v1

    .line 1309
    :catchall_0
    move-exception v1

    .line 1310
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1309
    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 3

    .prologue
    .line 1465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1467
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap0(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/WifiDisplayStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1469
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1467
    return-object v2

    .line 1468
    :catchall_0
    move-exception v2

    .line 1469
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1468
    throw v2
.end method

.method public isSinkEnabled()Z
    .locals 3

    .prologue
    .line 1634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1636
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap3(Lcom/android/server/display/DisplayManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1636
    return v2

    .line 1637
    :catchall_0
    move-exception v2

    .line 1638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1637
    throw v2
.end method

.method public pauseWifiDisplay()V
    .locals 5

    .prologue
    .line 1436
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1437
    const-string/jumbo v4, "Permission required to pause a wifi display session"

    .line 1436
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1441
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap16(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1435
    return-void

    .line 1442
    :catchall_0
    move-exception v2

    .line 1443
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    throw v2
.end method

.method public registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/display/IDisplayManagerCallback;

    .prologue
    .line 1330
    if-nez p1, :cond_0

    .line 1331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "listener must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1334
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1335
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1337
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap19(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/IDisplayManagerCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    return-void

    .line 1338
    :catchall_0
    move-exception v1

    .line 1339
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    throw v1
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .prologue
    .line 1559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1561
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayManagerService;->-wrap22(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    return-void

    .line 1562
    :catchall_0
    move-exception v2

    .line 1563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1562
    throw v2
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 1404
    if-nez p1, :cond_0

    .line 1405
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1407
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1408
    const-string/jumbo v4, "Permission required to rename to a wifi display"

    .line 1407
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1412
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap23(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1403
    return-void

    .line 1413
    :catchall_0
    move-exception v2

    .line 1414
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1413
    throw v2
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 1539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1541
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lcom/android/server/display/DisplayManagerService;->-wrap25(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1538
    return-void

    .line 1542
    :catchall_0
    move-exception v2

    .line 1543
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1542
    throw v2
.end method

.method public resumeWifiDisplay()V
    .locals 5

    .prologue
    .line 1449
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1450
    const-string/jumbo v4, "Permission required to resume a wifi display session"

    .line 1449
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1454
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayManagerService;->-wrap26(Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    return-void

    .line 1455
    :catchall_0
    move-exception v2

    .line 1456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    throw v2
.end method

.method public sendUibcInputEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1675
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1677
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap28(Lcom/android/server/display/DisplayManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1674
    return-void

    .line 1678
    :catchall_0
    move-exception v2

    .line 1679
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1678
    throw v2
.end method

.method public setDisplayDensity(IZ)V
    .locals 3
    .param p1, "density"    # I
    .param p2, "reboot"    # Z

    .prologue
    .line 1685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1687
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap29(Lcom/android/server/display/DisplayManagerService;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    return-void

    .line 1688
    :catchall_0
    move-exception v2

    .line 1689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1688
    throw v2
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1551
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-interface {p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap33(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    return-void

    .line 1552
    :catchall_0
    move-exception v2

    .line 1553
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1552
    throw v2
.end method

.method public startWifiDisplayScan()V
    .locals 6

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1346
    const-string/jumbo v5, "Permission required to start wifi display scans"

    .line 1345
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1349
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1351
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap34(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1344
    return-void

    .line 1352
    :catchall_0
    move-exception v1

    .line 1353
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1352
    throw v1
.end method

.method public stopWifiDisplayScan()V
    .locals 6

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get0(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 1360
    const-string/jumbo v5, "Permission required to stop wifi display scans"

    .line 1359
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1363
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1365
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayManagerService;->-wrap35(Lcom/android/server/display/DisplayManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1358
    return-void

    .line 1366
    :catchall_0
    move-exception v1

    .line 1367
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1366
    throw v1
.end method

.method public suspendWifiDisplay(ZLandroid/view/Surface;)V
    .locals 3
    .param p1, "suspend"    # Z
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1664
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1666
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap36(Lcom/android/server/display/DisplayManagerService;ZLandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1663
    return-void

    .line 1667
    :catchall_0
    move-exception v2

    .line 1668
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1667
    throw v2
.end method

.method public waitWifiDisplayConnection(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1656
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-wrap38(Lcom/android/server/display/DisplayManagerService;Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    return-void

    .line 1657
    :catchall_0
    move-exception v2

    .line 1658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    throw v2
.end method
