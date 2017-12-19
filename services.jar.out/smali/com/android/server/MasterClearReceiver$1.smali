.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$leui_erase_reason:Z

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$leui_erase_reason"    # Z
    .param p4, "val$context"    # Landroid/content/Context;
    .param p5, "val$shutdown"    # Z
    .param p6, "val$reason"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-boolean p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$leui_erase_reason:Z

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    :try_start_0
    const-string/jumbo v2, "MasterClear"

    const-string/jumbo v3, "Call mtehod: rebootWipeUserData"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$leui_erase_reason:Z

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string/jumbo v5, "--wipe_all"

    invoke-static {v2, v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    const-string/jumbo v2, "MasterClear"

    const-string/jumbo v3, "Still running after master clear?!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    return-void

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string/jumbo v5, "--wipe_data"

    invoke-static {v2, v3, v4, v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "MasterClear"

    const-string/jumbo v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "MasterClear"

    const-string/jumbo v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
