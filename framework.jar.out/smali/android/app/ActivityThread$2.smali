.class Landroid/app/ActivityThread$2;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread;->attach(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;

.field final synthetic val$mgr:Landroid/app/IActivityManager;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;Landroid/app/IActivityManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .param p2, "val$mgr"    # Landroid/app/IActivityManager;

    .prologue
    .line 5637
    iput-object p1, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iput-object p2, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    .line 5639
    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-boolean v6, v6, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    if-nez v6, :cond_0

    .line 5640
    return-void

    .line 5642
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 5643
    .local v5, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v5}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 5644
    .local v0, "dalvikMax":J
    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 5645
    .local v2, "dalvikUsed":J
    const-wide/16 v6, 0x3

    mul-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 5646
    invoke-static {}, Landroid/app/ActivityThread;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "ActivityThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Dalvik max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-long v8, v0, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5647
    const-string/jumbo v8, " total="

    .line 5646
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5647
    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    div-long/2addr v8, v10

    .line 5646
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5648
    const-string/jumbo v8, " used="

    .line 5646
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5648
    div-long v8, v2, v10

    .line 5646
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5649
    :cond_1
    iget-object v6, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/app/ActivityThread;->mSomeActivitiesChanged:Z

    .line 5651
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread$2;->val$mgr:Landroid/app/IActivityManager;

    iget-object v7, p0, Landroid/app/ActivityThread$2;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v7, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->releaseSomeActivities(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5638
    :cond_2
    :goto_0
    return-void

    .line 5652
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
