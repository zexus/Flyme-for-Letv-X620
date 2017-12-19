.class Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;
.super Landroid/os/Handler;
.source "GlobalActionUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;->this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionUpdateMonitor$1;->this$0:Lcom/android/server/policy/global/GlobalActionUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionUpdateMonitor;->handleCloseSystemDialog()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x14d
        :pswitch_0
    .end packed-switch
.end method
