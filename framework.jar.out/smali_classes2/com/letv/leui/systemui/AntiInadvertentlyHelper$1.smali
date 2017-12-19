.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;
.super Landroid/os/Handler;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_SCREEN_TURN_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get5(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->start()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MSG_SCREEN_TURN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-wrap0(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V

    .line 130
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get5(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->stop()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
