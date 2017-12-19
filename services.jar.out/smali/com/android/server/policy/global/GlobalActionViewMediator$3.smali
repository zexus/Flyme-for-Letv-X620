.class Lcom/android/server/policy/global/GlobalActionViewMediator$3;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"

# interfaces
.implements Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBackKey()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap2(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    .line 241
    return-void
.end method

.method public hiddenWindow()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get0(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap2(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    .line 215
    return-void
.end method

.method public onActionStart()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-set0(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z

    .line 246
    return-void
.end method

.method public reboot()V
    .locals 3

    .prologue
    .line 223
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "reboot..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get4(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const-string/jumbo v1, "user_click_reboot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->leuiReboot(Ljava/lang/String;Z)V

    .line 227
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get1(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->onReboot()V

    .line 221
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 233
    const-string/jumbo v0, "GlobalAction"

    const-string/jumbo v1, "shutdown..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get4(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get1(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->onShutDown()V

    .line 231
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-get3(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 209
    return-void
.end method
