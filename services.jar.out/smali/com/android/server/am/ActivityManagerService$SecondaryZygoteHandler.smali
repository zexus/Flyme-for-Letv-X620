.class Lcom/android/server/am/ActivityManagerService$SecondaryZygoteHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecondaryZygoteHandler"
.end annotation


# static fields
.field public static final STOP_ZYGOTE:I


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3644
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$SecondaryZygoteHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3645
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3644
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3650
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ZYGOTE_ON_DEMAND:Z

    if-eqz v0, :cond_0

    .line 3651
    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZygoteOnDemand: handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3649
    :goto_0
    return-void

    .line 3655
    :pswitch_0
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "ZygoteOnDemand: stop zygote"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    invoke-static {}, Landroid/os/Process;->stopSecondaryZygote()V

    goto :goto_0

    .line 3653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
