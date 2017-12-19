.class Lcom/letv/leui/systemui/ProximitySensorHelper$2;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/ProximitySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/systemui/ProximitySensorHelper;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get3(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v1

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    sget-object v2, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->TIME_OUT:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-static {v0, v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-set0(Lcom/letv/leui/systemui/ProximitySensorHelper;Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 106
    invoke-static {}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SensorTimeOutRunnable.run(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get3(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get4(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get4(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;->SenosrTimeout()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$2;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->stop()V

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
