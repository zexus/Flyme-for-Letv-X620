.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 299
    :goto_0
    return-void

    .line 302
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v3, v2}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-wrap15(Landroid/telecom/ConnectionService;)V

    goto :goto_0

    .line 306
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v3, v2}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    goto :goto_0

    .line 309
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 312
    .local v16, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 313
    .local v4, "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 314
    .local v5, "id":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 315
    .local v6, "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v7, 0x1

    .line 316
    .local v7, "isIncoming":Z
    :goto_1
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v8, 0x1

    .line 317
    .local v8, "isUnknown":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 318
    const-string/jumbo v2, "Enqueueing pre-init request %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v3, v9

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Landroid/telecom/ConnectionService$2$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 315
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "isIncoming":Z
    goto :goto_1

    .line 316
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "isUnknown":Z
    goto :goto_2

    .line 331
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v3 .. v8}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 338
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v8    # "isUnknown":Z
    :catchall_0
    move-exception v2

    .line 339
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 338
    throw v2

    .line 344
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 352
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 353
    .local v18, "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v22, v0

    .line 354
    .local v22, "videoState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 355
    .end local v18    # "callId":Ljava/lang/String;
    .end local v22    # "videoState":I
    :catchall_1
    move-exception v2

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 355
    throw v2

    .line 361
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 373
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 375
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 376
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/telecom/CallAudioState;

    .line 377
    .local v17, "audioState":Landroid/telecom/CallAudioState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v3, Landroid/telecom/CallAudioState;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 379
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 378
    .end local v17    # "audioState":Landroid/telecom/CallAudioState;
    .end local v18    # "callId":Ljava/lang/String;
    :catchall_2
    move-exception v2

    .line 379
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 378
    throw v2

    .line 384
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    invoke-static {v3, v2, v9}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V

    goto/16 :goto_0

    .line 387
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 390
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 392
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 393
    .local v19, "callId1":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 394
    .local v20, "callId2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 396
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 395
    .end local v19    # "callId1":Ljava/lang/String;
    .end local v20    # "callId2":Ljava/lang/String;
    :catchall_3
    move-exception v2

    .line 396
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 395
    throw v2

    .line 401
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 412
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 413
    .restart local v18    # "callId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v21, 0x1

    .line 414
    .local v21, "proceed":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v2, v0, v1}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 416
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 413
    .end local v21    # "proceed":Z
    :cond_3
    const/16 v21, 0x0

    .restart local v21    # "proceed":Z
    goto :goto_4

    .line 415
    .end local v18    # "callId":Ljava/lang/String;
    .end local v21    # "proceed":Z
    :catchall_4
    move-exception v2

    .line 416
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 415
    throw v2

    .line 422
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 434
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_6
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 435
    .local v12, "conferenceCallId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 436
    .local v14, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2, v12, v14}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 438
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 437
    .end local v12    # "conferenceCallId":Ljava/lang/String;
    .end local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5
    move-exception v2

    .line 438
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 437
    throw v2

    .line 443
    .end local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/os/SomeArgs;

    .line 446
    .restart local v16    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    .line 447
    .restart local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 448
    .restart local v12    # "conferenceCallId":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/ConnectionRequest;

    .line 449
    .restart local v6    # "request":Landroid/telecom/ConnectionRequest;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    .line 450
    .restart local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v7, 0x1

    .line 451
    .restart local v7    # "isIncoming":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 452
    const-string/jumbo v2, "Enqueueing pre-init request %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v3, v9

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v2}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v2

    new-instance v9, Landroid/telecom/ConnectionService$2$2;

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v13, v6

    move v15, v7

    invoke-direct/range {v9 .. v15}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 473
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 450
    .end local v7    # "isIncoming":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "isIncoming":Z
    goto :goto_5

    .line 465
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object v11, v4

    move-object v13, v6

    move v15, v7

    invoke-static/range {v10 .. v15}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_6

    .line 472
    .end local v4    # "connectionManagerPhoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "request":Landroid/telecom/ConnectionRequest;
    .end local v7    # "isIncoming":Z
    .end local v12    # "conferenceCallId":Ljava/lang/String;
    .end local v14    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6
    move-exception v2

    .line 473
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 472
    throw v2

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_11
        0x10 -> :sswitch_1
        0x11 -> :sswitch_5
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x3ea -> :sswitch_12
        0x3eb -> :sswitch_13
        0x3ec -> :sswitch_14
        0x3ed -> :sswitch_15
    .end sparse-switch
.end method
