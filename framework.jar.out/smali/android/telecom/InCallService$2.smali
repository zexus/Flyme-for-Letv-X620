.class Landroid/telecom/InCallService$2;
.super Landroid/telecom/Phone$Listener;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/InCallService;

    .prologue
    .line 265
    iput-object p1, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 268
    return-void
.end method

.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "showDialpad"    # Z

    .prologue
    .line 279
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onBringToForeground(Z)V

    .line 278
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 285
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    .line 284
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 273
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 272
    return-void
.end method

.method public onCallForwardSsnChanged()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->onCallForwardSsnChanged()V

    .line 314
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 291
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    .line 290
    return-void
.end method

.method public onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "canAddCall"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCanAddCallChanged(Z)V

    .line 296
    return-void
.end method

.method public onStorageFull()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->onStorageFull()V

    .line 309
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 304
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/InCallService;->onUpdateRecordState(II)V

    .line 303
    return-void
.end method

.method public onUpdateRedialTime(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 320
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->onUpdateRedialTime(I)V

    .line 319
    return-void
.end method
