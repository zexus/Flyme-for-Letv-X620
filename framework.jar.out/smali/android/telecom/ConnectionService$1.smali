.class Landroid/telecom/ConnectionService$1;
.super Lcom/android/internal/telecom/IConnectionService$Stub;
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
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 143
    iput-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 146
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public answer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    return-void
.end method

.method public answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 176
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 177
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 178
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 179
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 228
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 229
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 226
    return-void
.end method

.method public createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 3
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            "Landroid/telecom/ConnectionRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 287
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 288
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 289
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 290
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 291
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 292
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void

    .line 291
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 4
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 161
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 162
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 163
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 164
    if-eqz p4, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 165
    if-eqz p5, :cond_1

    :goto_1
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 166
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void

    :cond_0
    move v1, v3

    .line 164
    goto :goto_0

    :cond_1
    move v2, v3

    .line 165
    goto :goto_1
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    return-void
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method

.method public hangupAll(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 265
    return-void
.end method

.method public hold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return-void
.end method

.method public inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 274
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 275
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 272
    return-void
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 209
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 210
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 211
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    return-void
.end method

.method public onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 250
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 251
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 252
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 253
    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void

    .line 252
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 217
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method

.method public reject(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 188
    return-void
.end method

.method public removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 150
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    return-void
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    return-void
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 244
    return-void
.end method

.method public unhold(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method
