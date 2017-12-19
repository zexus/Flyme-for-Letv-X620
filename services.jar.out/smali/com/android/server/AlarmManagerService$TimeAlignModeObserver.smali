.class public Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;
.super Landroid/database/ContentObserver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeAlignModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4077
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4078
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4077
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v8, 0x1

    .line 4083
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4084
    const-string/jumbo v5, "leui_key_timealign_enable"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x1

    .line 4083
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 4084
    const/4 v2, 0x1

    .line 4086
    .local v2, "tempAlign":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 4087
    const-string/jumbo v5, "leui_key_timealign_twilight_enable"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x0

    .line 4086
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 4087
    const/4 v3, 0x1

    .line 4089
    .local v3, "tempTwilight":Z
    :goto_1
    const/4 v1, 0x0

    .line 4090
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4091
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->-get7(Lcom/android/server/AlarmManagerService;)Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 4092
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4, v2}, Lcom/android/server/AlarmManagerService;->-set9(Lcom/android/server/AlarmManagerService;Z)Z

    .line 4093
    const/4 v1, 0x1

    .line 4098
    :cond_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->-get8(Lcom/android/server/AlarmManagerService;)Z

    move-result v4

    if-eq v4, v3, :cond_1

    .line 4099
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4, v3}, Lcom/android/server/AlarmManagerService;->-set10(Lcom/android/server/AlarmManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4100
    or-int/lit8 v1, v1, 0x2

    :cond_1
    :try_start_2
    monitor-exit v5

    .line 4106
    if-eqz v1, :cond_2

    .line 4107
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$TimeAlignModeObserver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4, p1, v1}, Lcom/android/server/AlarmManagerService;->-wrap11(Lcom/android/server/AlarmManagerService;ZI)V

    .line 4081
    .end local v1    # "flags":I
    .end local v2    # "tempAlign":Z
    .end local v3    # "tempTwilight":Z
    :cond_2
    :goto_2
    return-void

    .line 4084
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "tempAlign":Z
    goto :goto_0

    .line 4087
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "tempTwilight":Z
    goto :goto_1

    .line 4090
    .restart local v1    # "flags":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4110
    .end local v1    # "flags":I
    .end local v2    # "tempAlign":Z
    .end local v3    # "tempTwilight":Z
    :catch_0
    move-exception v0

    .line 4111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting observer onChange Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
