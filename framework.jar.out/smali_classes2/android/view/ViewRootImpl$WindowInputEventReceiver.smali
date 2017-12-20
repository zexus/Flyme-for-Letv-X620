.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 6774
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 6775
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6774
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 6809
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6810
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 6808
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 3

    .prologue
    .line 6797
    invoke-static {}, Landroid/view/ViewRootImpl;->-get3()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get5()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6798
    :cond_0
    const-string/jumbo v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchedInputEventPending: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6800
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_2

    .line 6801
    invoke-super {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 6796
    :goto_0
    return-void

    .line 6803
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    goto :goto_0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->processEventForMoveWinIfNeed(Landroid/view/InputEvent;)V

    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 6784
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/view/ViewRootImpl;->-set2(Landroid/view/ViewRootImpl;J)J

    .line 6785
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v1, "1: Start event from input"

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-set3(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 6792
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6779
    return-void

    .line 6787
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-set1(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 6788
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/view/ViewRootImpl;->-set4(Landroid/view/ViewRootImpl;J)J

    .line 6789
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v1, "1: Start event from input"

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-set5(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private processEventForMoveWinIfNeed(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->processEventForMoveWinIfNeed(Landroid/view/InputEvent;)V

    return-void
.end method
