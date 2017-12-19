.class Lcom/android/server/statusbar/StatusBarManagerService$8;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateStatusBarMoveUpOffset(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$offset:F


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$offset"    # F

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->val$offset:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 972
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$8;->val$offset:F

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->updateStatusBarMoveUpOffset(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
