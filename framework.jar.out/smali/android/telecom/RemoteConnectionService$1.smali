.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 201
    new-instance v1, Landroid/telecom/RemoteConference;

    .line 202
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v4

    .line 201
    invoke-direct {v1, p1, v4}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 204
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    .line 206
    .local v0, "c":Landroid/telecom/RemoteConnection;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 211
    .end local v0    # "c":Landroid/telecom/RemoteConnection;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 215
    return-void

    .line 218
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 219
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 220
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v4, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v4, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 229
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 200
    return-void
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 328
    new-instance v0, Landroid/telecom/RemoteConnection;

    .line 329
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    .line 328
    invoke-direct {v0, p1, v1, p2}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V

    .line 331
    .local v0, "remoteConnction":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 326
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .locals 0
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcelConference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 399
    return-void
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v6, 0x6

    .line 64
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v5, "handleCreateConnectionSuccessful"

    invoke-static {v4, p1, v5}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    .line 65
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    move-result-object v4

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 66
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 69
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 73
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 74
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 76
    :cond_2
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v5

    .line 75
    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 80
    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 81
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 85
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "confId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "confId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 88
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/RemoteConnection;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v0    # "confId":Ljava/lang/String;
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_5
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_0

    .line 91
    .restart local v1    # "confId$iterator":Ljava/util/Iterator;
    .restart local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_6
    invoke-virtual {v3, v2}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 92
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 93
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 96
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 62
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_7
    return-void
.end method

.method public notifyAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 377
    return-void
.end method

.method public notifyActionFailed(Ljava/lang/String;I)V
    .locals 0
    .param p1, "connectionId"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 352
    return-void
.end method

.method public notifyCdmaCallAccepted(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 372
    return-void
.end method

.method public notifyConnectionLost(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectionId"    # Ljava/lang/String;

    .prologue
    .line 347
    return-void
.end method

.method public notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "alphaid"    # Ljava/lang/String;
    .param p4, "cli_validity"    # I

    .prologue
    .line 367
    return-void
.end method

.method public notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 362
    return-void
.end method

.method public notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "notiType"    # I
    .param p3, "type"    # I
    .param p4, "code"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 357
    return-void
.end method

.method public notifyVtStatusInfo(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 384
    return-void
.end method

.method public onCallForwardSsn()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 251
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialChar"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 250
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialWait"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 256
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 233
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    goto :goto_0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 103
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 102
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 290
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAddress"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 289
    return-void
.end method

.method public setAlerting(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAlerting"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 127
    const/4 v1, 0x7

    .line 126
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 125
    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 297
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setCallerDisplayName"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
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
    .line 309
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 311
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 316
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3, p1}, Landroid/telecom/RemoteConnectionService;->-wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 308
    :goto_1
    return-void

    .line 320
    :cond_2
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 159
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    goto :goto_0
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDialing"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 121
    const/4 v1, 0x3

    .line 120
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 119
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 132
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 131
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0
.end method

.method public setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 336
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setExtras"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setExtras(Landroid/os/Bundle;)V

    .line 335
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setExtras"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    invoke-static {v2, p1, v3}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .line 174
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 175
    if-nez p2, :cond_1

    .line 177
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    invoke-static {v2, p2, v3}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 183
    .local v0, "conference":Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get0()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setIsVoipAudioMode"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 277
    return-void
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 143
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 142
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRingbackRequested"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 153
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRinging"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 115
    const/4 v1, 0x2

    .line 114
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 113
    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 284
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setStatusHints"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 283
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_0

    .line 264
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    .end local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    invoke-direct {v0, p2}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    .line 266
    :cond_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v2, "setVideoProvider"

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 261
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 272
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setVideoState"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 271
    return-void
.end method

.method public updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 391
    return-void
.end method
