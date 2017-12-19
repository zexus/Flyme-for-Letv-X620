.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 104
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 108
    .local v1, "distance":F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v0, 0x1

    .line 109
    .local v0, "active":Z
    :goto_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap3(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 105
    return-void

    .line 108
    .end local v0    # "active":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "active":Z
    goto :goto_0

    .line 106
    .end local v0    # "active":Z
    .end local v1    # "distance":F
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
