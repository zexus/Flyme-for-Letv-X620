.class Lcom/android/server/NetworkTimeUpdateService$3;
.super Landroid/os/Handler;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 546
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 547
    .local v0, "timeoutMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$3;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-get0(Lcom/android/server/NetworkTimeUpdateService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 545
    return-void
.end method
