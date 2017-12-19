.class Lcom/letv/leui/systemui/ProximitySensorHelper$1;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    .line 75
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 95
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 78
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 79
    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    const/4 v1, 0x1

    .line 80
    .local v1, "isCoverBySomething":Z
    :goto_0
    invoke-static {}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged(),distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isCoverBySomething:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get2(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v3}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get0(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    if-nez v1, :cond_2

    .line 83
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get3(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v3

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get3(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v2

    sget-object v4, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->LISTENING:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    if-ne v2, v4, :cond_1

    .line 85
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    sget-object v4, Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;->RELEASE:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    invoke-static {v2, v4}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-set0(Lcom/letv/leui/systemui/ProximitySensorHelper;Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    .line 86
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get4(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get4(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper$StateCallback;->AntiInadevertentlyRelease()V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get2(Lcom/letv/leui/systemui/ProximitySensorHelper;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$1;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-static {v4}, Lcom/letv/leui/systemui/ProximitySensorHelper;->-get5(Lcom/letv/leui/systemui/ProximitySensorHelper;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 77
    :cond_2
    return-void

    .line 79
    .end local v1    # "isCoverBySomething":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isCoverBySomething":Z
    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
