.class Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;
.super Landroid/os/Handler;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 4080
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4083
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4082
    :goto_0
    return-void

    .line 4086
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string/jumbo v1, "WorkerHandler received EVENT_INIT_EMERGENCY_APN_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    .line 4087
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap1(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 4088
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$WorkerHandler;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-wrap0(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_0

    .line 4083
    nop

    :pswitch_data_0
    .packed-switch 0x421f6
        :pswitch_0
    .end packed-switch
.end method
