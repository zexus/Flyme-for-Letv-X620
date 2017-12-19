.class public Lcom/android/server/MasterClearReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MasterClear"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string/jumbo v1, "google.com"

    const-string/jumbo v2, "from"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    const-string/jumbo v1, "MasterClear"

    const-string/jumbo v2, "Ignoring master clear request -- not from trusted server."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 51
    :cond_0
    const-string/jumbo v1, "shutdown"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 52
    .local v5, "shutdown":Z
    const-string/jumbo v1, "android.intent.extra.REASON"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "reason":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 53
    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 57
    .local v7, "wipeExternalStorage":Z
    const-string/jumbo v1, "android.intent.extra.LEUI_REASON"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 60
    .local v3, "leui_erase_reason":Z
    const-string/jumbo v1, "MasterClear"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "!!! FACTORY RESET !!!  MasterClearReceiver leui_erase_reason is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string/jumbo v1, "MasterClear"

    const-string/jumbo v2, "!!! FACTORY RESET !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/android/server/MasterClearReceiver$1;

    const-string/jumbo v2, "Reboot"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/MasterClearReceiver$1;-><init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;ZLandroid/content/Context;ZLjava/lang/String;)V

    .line 84
    .local v0, "thr":Ljava/lang/Thread;
    if-eqz v7, :cond_1

    .line 86
    new-instance v1, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;-><init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
