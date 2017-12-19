.class final Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;
.super Landroid/os/Handler;
.source "ActivePlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/activation/ActivePlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveWorkHandle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/ActivePlugInImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/activation/ActivePlugInImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    .line 554
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 553
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 559
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 562
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap3(Lcom/android/server/activation/ActivePlugInImpl;)V

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap5(Lcom/android/server/activation/ActivePlugInImpl;)V

    goto :goto_0

    .line 572
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap4(Lcom/android/server/activation/ActivePlugInImpl;)V

    goto :goto_0

    .line 577
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$ActiveWorkHandle;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->-wrap7(Lcom/android/server/activation/ActivePlugInImpl;)V

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
