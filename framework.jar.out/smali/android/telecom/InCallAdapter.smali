.class public final Landroid/telecom/InCallAdapter;
.super Ljava/lang/Object;
.source "InCallAdapter.java"


# instance fields
.field private final mAdapter:Lcom/android/internal/telecom/IInCallAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    .line 49
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->answerCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public explicitCallTransfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->explicitCallTransfer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hangupActiveAndAnswerWaiting()V
    .locals 2

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->hangupActiveAndAnswerWaiting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hangupAll()V
    .locals 2

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->hangupAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hangupAllHoldCalls()V
    .locals 2

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->hangupAllHoldCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public holdCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->holdCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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
    .line 369
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public mergeConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mergeConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public mute(Z)V
    .locals 2
    .param p1, "shouldMute"    # Z

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onHideIncomingChanged(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->onHideIncomingChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->postDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAudioRoute(I)V
    .locals 2
    .param p1, "route"    # I

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->splitFromConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startVoiceRecording()V
    .locals 2

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->startVoiceRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopVoiceRecording()V
    .locals 2

    .prologue
    .line 301
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->stopVoiceRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public swapConference(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->swapConference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public turnProximitySensorOff(Z)V
    .locals 2
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOffProximitySensor(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public turnProximitySensorOn()V
    .locals 2

    .prologue
    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOnProximitySensor()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unholdCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->unholdCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updatePowerForSmartBook(Z)V
    .locals 2
    .param p1, "onOff"    # Z

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->updatePowerForSmartBook(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
