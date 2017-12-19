.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1281
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1282
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1283
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1281
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1290
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "handleMessage: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 1636
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    return-void

    .line 1294
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1297
    :cond_0
    return-void

    .line 1300
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1303
    :cond_1
    return-void

    .line 1306
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1309
    :cond_2
    return-void

    .line 1312
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get23(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v16

    .line 1313
    .local v16, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v16, :cond_4

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1325
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1327
    :cond_4
    return-void

    .line 1319
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get33(Landroid/hardware/Camera;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/hardware/Camera;->-wrap0(Landroid/hardware/Camera;ZZ)V

    goto :goto_0

    .line 1330
    .end local v16    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get22(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get22(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1333
    :cond_6
    return-void

    .line 1336
    :sswitch_5
    const/4 v7, 0x0

    .line 1337
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1338
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    monitor-exit v26

    .line 1340
    if-eqz v7, :cond_7

    .line 1341
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_8

    const/16 v19, 0x0

    .line 1342
    .local v19, "success":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v7, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1344
    .end local v19    # "success":Z
    :cond_7
    return-void

    .line 1337
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :catchall_0
    move-exception v25

    monitor-exit v26

    throw v25

    .line 1341
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :cond_8
    const/16 v19, 0x1

    .restart local v19    # "success":Z
    goto :goto_1

    .line 1347
    .end local v7    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    .end local v19    # "success":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v25

    if-eqz v25, :cond_9

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1350
    :cond_9
    return-void

    .line 1348
    :cond_a
    const/16 v25, 0x0

    goto :goto_2

    .line 1353
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v25

    if-eqz v25, :cond_b

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1356
    :cond_b
    return-void

    .line 1359
    :sswitch_8
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Error "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1363
    :cond_c
    return-void

    .line 1366
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    if-nez v25, :cond_e

    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1369
    :cond_d
    return-void

    .line 1367
    :cond_e
    const/16 v25, 0x1

    goto :goto_3

    .line 1372
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 1466
    :cond_f
    :goto_4
    :pswitch_0
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_10
    :goto_5
    return-void

    .line 1375
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto :goto_5

    .line 1381
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$GestureCallback;->onGesture()V

    goto :goto_5

    .line 1387
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AsdCallback;->onDetected(I)V

    goto :goto_5

    .line 1392
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1393
    new-instance v18, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1394
    .local v18, "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v9, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1395
    .local v9, "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/hardware/Camera;->getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1397
    new-instance v17, Landroid/hardware/camera2/CaptureResult;

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;I)V

    .line 1398
    .local v17, "result":Landroid/hardware/camera2/CaptureResult;
    new-instance v8, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1400
    .local v8, "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v8}, Landroid/hardware/Camera$MetadataCallback;->onMetadataReceived(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CameraCharacteristics;)V

    goto/16 :goto_5

    .line 1405
    .end local v8    # "characteristic":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v9    # "characteristic_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v17    # "result":Landroid/hardware/camera2/CaptureResult;
    .end local v18    # "result_meta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$ContinuousShotCallback;->onConinuousShotDone(I)V

    goto/16 :goto_5

    .line 1410
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_5

    .line 1415
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1416
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1422
    .local v15, "message":I
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1423
    .local v20, "type":[I
    const/16 v21, -0x1

    .line 1424
    .local v21, "warnType":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ge v11, v0, :cond_11

    .line 1425
    and-int/lit8 v25, v15, 0x1

    aput v25, v20, v11

    .line 1426
    shr-int/lit8 v15, v15, 0x1

    .line 1424
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1429
    :cond_11
    const/16 v25, 0x0

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 1430
    const/16 v21, 0x0

    .line 1438
    :goto_7
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    .line 1439
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Stereo Camera warning message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/hardware/Camera$StereoCameraWarningCallback;->onWarning(I)V

    goto/16 :goto_5

    .line 1431
    :cond_12
    const/16 v25, 0x2

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_13

    .line 1432
    const/16 v21, 0x2

    goto :goto_7

    .line 1433
    :cond_13
    const/16 v25, 0x1

    aget v25, v20, v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 1434
    const/16 v21, 0x1

    goto :goto_7

    .line 1436
    :cond_14
    const/16 v21, 0x3

    goto :goto_7

    .line 1446
    .end local v11    # "i":I
    .end local v15    # "message":I
    .end local v20    # "type":[I
    .end local v21    # "warnType":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1447
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1448
    .local v12, "info":Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 1449
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Distance info: Info = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Landroid/hardware/Camera$DistanceInfoCallback;->onInfo(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1455
    .end local v12    # "info":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_10

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_5

    .line 1461
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    if-eqz v25, :cond_f

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v25

    const/16 v26, 0x12

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_4

    .line 1472
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 1630
    :pswitch_b
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unknown MTK-extended data message type "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_15
    :goto_8
    return-void

    .line 1476
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1477
    .local v5, "byteArray":[B
    const/16 v25, 0x10

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 1478
    .local v6, "byteHead":[B
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x10

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1479
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1482
    .local v13, "intBuf":Ljava/nio/IntBuffer;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    if-nez v25, :cond_17

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    if-eqz v25, :cond_16

    .line 1484
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v22

    .line 1485
    .local v22, "x":I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v24

    .line 1486
    .local v24, "y":I
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    .line 1487
    .local v10, "dir":I
    const v25, 0xffff

    and-int v25, v25, v22

    shl-int/lit8 v25, v25, 0x10

    const v26, 0xffff

    and-int v26, v26, v24

    add-int v23, v25, v26

    .line 1488
    .local v23, "xy":I
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "call mAutoRamaMoveCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " dir:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " x:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " y:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " xy:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1, v10}, Landroid/hardware/Camera$AutoRamaMoveCallback;->onFrame(II)V

    .line 1506
    .end local v10    # "dir":I
    .end local v22    # "x":I
    .end local v23    # "xy":I
    .end local v24    # "y":I
    :cond_16
    :goto_9
    const/4 v6, 0x0

    .local v6, "byteHead":[B
    goto/16 :goto_8

    .line 1492
    .local v6, "byteHead":[B
    :cond_17
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "call mAutoRamaCallback: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    if-eqz v25, :cond_16

    .line 1494
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1495
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "capturing frame"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto :goto_9

    .line 1497
    :cond_18
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    .line 1498
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "image is merged over"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1500
    .local v14, "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_9

    .line 1512
    .end local v5    # "byteArray":[B
    .end local v6    # "byteHead":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    .end local v14    # "jpegData":[B
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1514
    .restart local v5    # "byteArray":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v5

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1525
    .local v4, "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1530
    .end local v4    # "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    .end local v5    # "byteArray":[B
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1532
    .restart local v5    # "byteArray":[B
    const-string/jumbo v25, "CameraFramework"

    .line 1533
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1534
    array-length v0, v5

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1532
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v25

    .line 1537
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    .line 1536
    invoke-virtual/range {v25 .. v26}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 1538
    .restart local v13    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v26

    monitor-enter v26

    .line 1539
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    if-eqz v25, :cond_19

    .line 1540
    const-string/jumbo v25, "CameraFramework"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "OT callback0:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v25

    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v25

    const/16 v27, 0x5

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v25

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v27

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    .line 1548
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_19
    :goto_a
    monitor-exit v26

    goto/16 :goto_8

    .line 1551
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    .line 1538
    :catchall_1
    move-exception v25

    monitor-exit v26

    throw v25

    .line 1559
    .end local v5    # "byteArray":[B
    .end local v13    # "intBuf":Ljava/nio/IntBuffer;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1560
    const-string/jumbo v25, "CameraFramework"

    const-string/jumbo v26, "HDR Original callback"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1562
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1563
    .restart local v14    # "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$HdrOriginalCallback;->onCapture([B)V

    goto/16 :goto_8

    .line 1568
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1569
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1570
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1571
    .restart local v14    # "jpegData":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1572
    const-string/jumbo v26, "CameraFramework"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "FB Original callback, VFB enable : "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1573
    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    const/16 v25, 0x1

    .line 1572
    :goto_b
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string/jumbo v25, "ro.mtk_cam_vfb"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    if-eqz v25, :cond_1c

    .line 1576
    const-string/jumbo v25, "CameraFramework"

    .line 1577
    const-string/jumbo v26, "FB Original callback,will call mJpegCallback.onPictureTaken"

    .line 1576
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v14, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1573
    :cond_1b
    const/16 v25, 0x0

    goto :goto_b

    .line 1580
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$FbOriginalCallback;->onCapture([B)V

    goto/16 :goto_8

    .line 1585
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1586
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1587
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1588
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_JPS: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onJpsCapture([B)V

    goto/16 :goto_8

    .line 1595
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1596
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1597
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1598
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v14

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onMaskCapture([B)V

    goto/16 :goto_8

    .line 1604
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1605
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1606
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1607
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHMAP: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1608
    array-length v0, v14

    move/from16 v27, v0

    .line 1607
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onDepthMapCapture([B)V

    goto/16 :goto_8

    .line 1615
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    if-eqz v25, :cond_15

    .line 1616
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1617
    .restart local v5    # "byteArray":[B
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 1618
    .restart local v14    # "jpegData":[B
    const-string/jumbo v25, "CameraFramework"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_DATA_STEREO_CLEAR_IMAGE: jpegData.length = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1619
    array-length v0, v14

    move/from16 v27, v0

    .line 1618
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    array-length v0, v5

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    const/16 v26, 0x4

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v5, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Landroid/hardware/Camera$StereoCameraDataCallback;->onClearImageCapture([B)V

    goto/16 :goto_8

    .line 1625
    .end local v5    # "byteArray":[B
    .end local v14    # "jpegData":[B
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/hardware/Camera;->-get26(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_8

    .line 1292
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_b
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x40000000 -> :sswitch_a
    .end sparse-switch

    .line 1372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_9
    .end packed-switch

    .line 1472
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_10
        :pswitch_b
        :pswitch_f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_15
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
