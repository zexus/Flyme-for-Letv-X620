.class Lcom/android/server/MuteKeyObserver$1;
.super Landroid/os/Handler;
.source "MuteKeyObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MuteKeyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MuteKeyObserver;


# direct methods
.method constructor <init>(Lcom/android/server/MuteKeyObserver;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MuteKeyObserver;
    .param p2, "$anonymous0"    # Z

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/MuteKeyObserver$1;->this$0:Lcom/android/server/MuteKeyObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 152
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 154
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/MuteKeyObserver$1;->this$0:Lcom/android/server/MuteKeyObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/MuteKeyObserver;->-wrap1(Lcom/android/server/MuteKeyObserver;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/MuteKeyObserver$1;->this$0:Lcom/android/server/MuteKeyObserver;

    invoke-static {v0}, Lcom/android/server/MuteKeyObserver;->-wrap0(Lcom/android/server/MuteKeyObserver;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
