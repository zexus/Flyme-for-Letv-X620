.class Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiIconColorLocked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/statusbar/StatusBarManagerService;
    .param p2, "val$color"    # I

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$color:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
