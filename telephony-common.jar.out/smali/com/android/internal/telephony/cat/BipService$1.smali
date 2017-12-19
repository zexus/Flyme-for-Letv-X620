.class Lcom/android/internal/telephony/cat/BipService$1;
.super Landroid/os/Handler;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    const/16 v22, 0x0

    .line 187
    .local v22, "timerMsg":Landroid/os/Message;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const/16 v16, 0x0

    .line 189
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    const/4 v6, 0x0

    .line 190
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v20, 0x0

    .line 192
    .local v20, "ret":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 185
    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    .end local v22    # "timerMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .restart local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    .restart local v22    # "timerMsg":Landroid/os/Message;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril message arrived, slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get11(Lcom/android/internal/telephony/cat/BipService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const/16 v17, 0x0

    .line 197
    .local v17, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 198
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 199
    .local v13, "ar":Landroid/os/AsyncResult;
    if-eqz v13, :cond_1

    iget-object v1, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 201
    :try_start_0
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17    # "data":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v13    # "ar":Landroid/os/AsyncResult;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get2(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 210
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/BipService;->-wrap2(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 213
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 214
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    check-cast v16, Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 217
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v1

    if-nez v1, :cond_2

    .line 218
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: skip open channel response because current cmd is null"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 223
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    .line 222
    if-eq v1, v2, :cond_3

    .line 224
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: skip open channel response because current cmd type is not OPEN_CHANNEL"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_3
    if-nez v20, :cond_4

    .line 230
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 231
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 230
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;II)V

    .line 232
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: open channel successfully"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 234
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_4
    const/4 v1, 0x3

    move/from16 v0, v20

    if-ne v0, v1, :cond_5

    .line 235
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 236
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 235
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;II)V

    .line 237
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: open channel with modified parameters"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MODIFICATION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 239
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 238
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 240
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_5
    const/4 v1, 0x6

    move/from16 v0, v20

    if-ne v0, v1, :cond_6

    .line 241
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 242
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 241
    const/4 v4, 0x0

    invoke-direct {v6, v4, v1, v2, v3}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;II)V

    .line 243
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: ME is busy on call"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v2}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 245
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    .line 246
    const/4 v5, 0x2

    .line 244
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 248
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_6
    new-instance v6, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 249
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 248
    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/OpenChannelResponseDataEx;-><init>(Lcom/android/internal/telephony/cat/ChannelStatus;Lcom/android/internal/telephony/cat/BearerDesc;II)V

    .line 250
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "SS-handleMessage: open channel failed"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 255
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 256
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    .line 257
    .local v21, "size":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    check-cast v16, Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 258
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    new-instance v6, Lcom/android/internal/telephony/cat/SendDataResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/android/internal/telephony/cat/SendDataResponseData;-><init>(I)V

    .line 259
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v20, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 261
    :cond_7
    const/4 v1, 0x7

    move/from16 v0, v20

    if-ne v0, v1, :cond_8

    .line 262
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    .line 263
    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 262
    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 265
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 269
    .end local v21    # "size":I
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    :pswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 270
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    check-cast v16, Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 271
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 272
    .local v15, "buffer":[B
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    move/from16 v19, v0

    .line 274
    .local v19, "remainingCount":I
    new-instance v6, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move/from16 v0, v19

    invoke-direct {v6, v15, v0}, Lcom/android/internal/telephony/cat/ReceiveDataResponseData;-><init>([BI)V

    .line 275
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v20, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 277
    :cond_9
    const/16 v1, 0x9

    move/from16 v0, v20

    if-ne v0, v1, :cond_a

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    .line 279
    const/4 v5, 0x0

    .line 278
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 281
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 285
    .end local v15    # "buffer":[B
    .end local v19    # "remainingCount":I
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    check-cast v16, Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 286
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_b

    .line 287
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 288
    :cond_b
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_c

    .line 289
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    .line 290
    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 289
    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 291
    :cond_c
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    .line 293
    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 292
    invoke-static/range {v7 .. v12}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 297
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    :pswitch_6
    const/4 v14, 0x0

    .line 298
    .local v14, "arrList":Ljava/util/ArrayList;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    .line 299
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    .end local v16    # "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    check-cast v16, Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 300
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .end local v14    # "arrList":Ljava/util/ArrayList;
    check-cast v14, Ljava/util/ArrayList;

    .line 302
    .local v14, "arrList":Ljava/util/ArrayList;
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SS-handleCmdResponse: MSG_ID_GET_CHANNEL_STATUS_DONE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v6, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;

    .end local v6    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v6, v14}, Lcom/android/internal/telephony/cat/GetMultipleChannelStatusResponseData;-><init>(Ljava/util/ArrayList;)V

    .line 305
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->-wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 308
    .end local v14    # "arrList":Ljava/util/ArrayList;
    .local v6, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    .local v16, "cmd":Lcom/android/internal/telephony/cat/BipCmdMessage;
    :pswitch_7
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "handleMessage MSG_ID_BIP_CONN_MGR_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/BipService;->-set0(Lcom/android/internal/telephony/cat/BipService;Z)Z

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-wrap1(Lcom/android/internal/telephony/cat/BipService;)V

    goto/16 :goto_0

    .line 313
    :pswitch_8
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "handleMessage MSG_ID_BIP_CONN_DELAY_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipService;->acquireNetwork()V

    goto/16 :goto_0

    .line 317
    :pswitch_9
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "handleMessage MSG_ID_BIP_DISCONNECT_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get5(Lcom/android/internal/telephony/cat/BipService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 319
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get7(Lcom/android/internal/telephony/cat/BipService;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/BipService;->-set1(Lcom/android/internal/telephony/cat/BipService;Z)Z

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v1

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipService;->-get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-result-object v3

    .line 321
    const/16 v4, 0x10

    .line 322
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 321
    invoke-virtual {v1, v4, v5, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 323
    .local v22, "timerMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/BipService$1;->this$0:Lcom/android/internal/telephony/cat/BipService;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipService;->-get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v22    # "timerMsg":Landroid/os/Message;
    :cond_d
    monitor-exit v2

    goto/16 :goto_0

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 202
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    .local v22, "timerMsg":Landroid/os/Message;
    :catch_0
    move-exception v18

    .local v18, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
