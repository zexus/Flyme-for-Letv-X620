.class Lcom/android/server/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/AppOpsService;->mWriteScheduled:Z

    .line 123
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/AppOpsService;->mFastWriteScheduled:Z

    .line 124
    new-instance v0, Lcom/android/server/AppOpsService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/AppOpsService$1$1;-><init>(Lcom/android/server/AppOpsService$1;)V

    .line 130
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v1, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    iget-object v1, v1, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 118
    return-void

    .line 131
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    .line 132
    iget-object v2, p0, Lcom/android/server/AppOpsService$1;->this$0:Lcom/android/server/AppOpsService;

    iget-object v2, v2, Lcom/android/server/AppOpsService;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 131
    throw v1
.end method
